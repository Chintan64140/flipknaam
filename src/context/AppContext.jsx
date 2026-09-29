import React, { createContext, useState, useEffect } from "react";
import productsData from "../../api/products.json";

export const AppContext = createContext();

const defaultCart = { products: {}, totalCount: 0, totalPrice: 0 };
const defaultAddresses = { list: {}, totalCount: 0 };

export const AppProvider = ({ children }) => {
  // --- Cart State ---
  const [cart, setCart] = useState(() => {
    try {
      const stored = localStorage.getItem("cartData");
      if (stored) {
        const parsed = JSON.parse(stored);
        if (parsed && parsed.cart) {
          const products = parsed.cart.products || {};
          let modified = false;
          Object.keys(products).forEach(id => {
            const p = products[id];
            if (p.thumbnail && p.thumbnail.startsWith('http')) {
              p.thumbnail = `/images/products/${id}_1.jpg`;
              modified = true;
            }
            const matchingProduct = productsData.find(item => String(item.id) === String(id));
            if (matchingProduct) {
              const currentSellingPrice = Number(matchingProduct.selling_price);
              if (p.price !== currentSellingPrice) {
                p.price = currentSellingPrice;
                p.mrp = Number(matchingProduct.mrp) || currentSellingPrice;
                const disc = p.mrp > p.price ? Math.round(((p.mrp - p.price) / p.mrp) * 100) : 0;
                p.discount = `${disc}%`;
                modified = true;
              }
            }
          });
          if (modified) {
            parsed.cart.totalPrice = Object.values(products).reduce((s, it) => s + (Number(it.quantity) || 1) * Number(it.price || 0), 0);
            parsed.cart.totalCount = Object.values(products).reduce((s, it) => s + (Number(it.quantity) || 1), 0);
            localStorage.setItem("cartData", JSON.stringify({ cart: parsed.cart }));
          }
          return parsed.cart;
        }
      }
    } catch (e) {
      console.error("Error reading cartData", e);
    }
    return defaultCart;
  });

  // --- Address State ---
  const [addresses, setAddresses] = useState(() => {
    try {
      const stored = localStorage.getItem("addressesData");
      if (stored) {
        const parsed = JSON.parse(stored);
        if (parsed && parsed.addresses) return parsed.addresses;
      }
    } catch (e) {
      console.error("Error reading addressesData", e);
    }
    return defaultAddresses;
  });

  // --- Selected Address ---
  const [selectedAddressId, setSelectedAddressId] = useState(() => {
    return localStorage.getItem("selectedAddressId") || null;
  });

  // --- Search and UI State ---
  const [searchQuery, setSearchQuery] = useState("");
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);
  const [loadingOverlay, setLoadingOverlay] = useState(false);

  // Sync cart to localStorage
  useEffect(() => {
    localStorage.setItem("cartData", JSON.stringify({ cart }));
  }, [cart]);

  // Sync addresses to localStorage
  useEffect(() => {
    localStorage.setItem("addressesData", JSON.stringify({ addresses }));
  }, [addresses]);

  // Sync selectedAddressId to localStorage
  useEffect(() => {
    if (selectedAddressId) {
      localStorage.setItem("selectedAddressId", selectedAddressId);
    } else {
      localStorage.removeItem("selectedAddressId");
    }
  }, [selectedAddressId]);

  // Auto-select first address if none is selected and we have addresses
  useEffect(() => {
    if (addresses.list && Object.keys(addresses.list).length > 0 && !selectedAddressId) {
      setSelectedAddressId(Object.keys(addresses.list)[0]);
    }
  }, [addresses, selectedAddressId]);

  // --- Cart Methods ---
  const addToCart = (product) => {
    return new Promise((resolve) => {
      setLoadingOverlay(true);
      setTimeout(() => {
        const id = String(product.id);
        const price = Number(product.selling_price) || 0;
        const mrp = Number(product.mrp) || price;
        const discountPercent = Math.round(((mrp - price) / mrp) * 100);

        setCart((prevCart) => {
          const products = { ...prevCart.products };
          if (products[id]) {
            products[id] = {
              ...products[id],
              quantity: products[id].quantity + 1,
            };
          } else {
            products[id] = {
              quantity: 1,
              price: price,
              name: product.name,
              mrp: mrp,
              thumbnail: product.img1 || "/assets/images/no-img.png",
              discount: `${discountPercent}%`,
              rating: "4.4",
              total_reviews: "23,411",
            };
          }

          const totalCount = Object.values(products).reduce((s, it) => s + it.quantity, 0);
          const totalPrice = Object.values(products).reduce((s, it) => s + it.quantity * it.price, 0);

          return { products, totalCount, totalPrice };
        });
        setLoadingOverlay(false);
        
        // Trigger toast notification
        showToastNotification();
        resolve();
      }, 500);
    });
  };

  const removeFromCart = (id) => {
    setCart((prevCart) => {
      const products = { ...prevCart.products };
      delete products[id];
      delete products[String(id)];
      delete products[Number(id)];

      const totalCount = Object.values(products).reduce((s, it) => s + it.quantity, 0);
      const totalPrice = Object.values(products).reduce((s, it) => s + it.quantity * it.price, 0);

      return { products, totalCount, totalPrice };
    });
  };

  const updateCartQty = (id, quantity) => {
    setCart((prevCart) => {
      const products = { ...prevCart.products };
      if (products[id]) {
        products[id] = { ...products[id], quantity: Math.max(1, Number(quantity)) };
      }

      const totalCount = Object.values(products).reduce((s, it) => s + it.quantity, 0);
      const totalPrice = Object.values(products).reduce((s, it) => s + it.quantity * it.price, 0);

      return { products, totalCount, totalPrice };
    });
  };

  const clearCart = () => {
    setCart(defaultCart);
  };

  // --- Address Methods ---
  const saveAddress = (id, newAddress) => {
    const targetId = id || "a" + Date.now();
    setAddresses((prev) => {
      const list = { ...prev.list };
      list[targetId] = newAddress;
      const totalCount = Object.keys(list).length;
      return { list, totalCount };
    });
    setSelectedAddressId(targetId);
    return targetId;
  };

  const deleteAddress = (id) => {
    setAddresses((prev) => {
      const list = { ...prev.list };
      delete list[id];
      const totalCount = Object.keys(list).length;
      return { list, totalCount };
    });
    if (selectedAddressId === id) {
      setSelectedAddressId(null);
    }
  };

  // Helper Toast Notification
  const showToastNotification = () => {
    let toast = document.getElementById("fk-cart-toast");
    if (!toast) {
      toast = document.createElement("div");
      toast.id = "fk-cart-toast";
      toast.innerHTML = `
        <div style="display:flex; justify-content:space-between; align-items:center; padding:12px 16px; color:#fff; background:#212121; border-radius:4px; box-shadow:0 4px 12px rgba(0,0,0,.2); width:100%; max-width:380px;">
          <span style="font-size:13px;">Item added to cart</span>
          <a href="/cart" style="color:#f5a623; font-weight:600; font-size:12px; text-transform:uppercase; letter-spacing:.08em; text-decoration:none;">Go to cart</a>
        </div>
      `;
      toast.style.position = "fixed";
      toast.style.left = "50%";
      toast.style.bottom = "16px";
      toast.style.transform = "translate(-50%, 20px)";
      toast.style.opacity = "0";
      toast.style.zIndex = "1000";
      toast.style.transition = "all 0.3s ease";
      document.body.appendChild(toast);
    }
    requestAnimationFrame(() => {
      toast.style.opacity = "1";
      toast.style.transform = "translate(-50%, 0)";
    });
    setTimeout(() => {
      toast.style.opacity = "0";
      toast.style.transform = "translate(-50%, 20px)";
    }, 3600);
  };

  return (
    <AppContext.Provider
      value={{
        cart,
        addresses,
        selectedAddressId,
        searchQuery,
        isSidebarOpen,
        setIsSidebarOpen,
        loadingOverlay,
        setSearchQuery,
        setLoadingOverlay,
        addToCart,
        removeFromCart,
        updateCartQty,
        clearCart,
        saveAddress,
        deleteAddress,
        setSelectedAddressId,
      }}
    >
      {children}
    </AppContext.Provider>
  );
};
