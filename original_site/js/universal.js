const storageKey = "appData";

// Default structure
const defaultData = {
  cart: {
    products: {},
    totalCount: 0,
    totalPrice: 0,
  },
  addresses: {
    list: {},
    totalCount: 0,
  },
};

const storageManager = {
  // Fetch all or a specific path
  get(path = null) {
    let data = JSON.parse(localStorage.getItem(storageKey)) || defaultData;
    if (!path) return data;

    return path
      .split(".")
      .reduce(
        (obj, key) => (obj && obj[key] !== undefined ? obj[key] : null),
        data
      );
  },

  // Replace (overwrite) whole data or specific path
  set(path, value) {
    let data = storageManager.get();
    if (!path) {
      data = value;
    } else {
      const keys = path.split(".");
      let obj = data;
      while (keys.length > 1) {
        let key = keys.shift();
        if (!obj[key]) obj[key] = {};
        obj = obj[key];
      }
      obj[keys[0]] = value;
    }
    localStorage.setItem(storageKey, JSON.stringify(data));
  },

  // Update object by merging new fields
  update(path, newFields) {
    let current = storageManager.get(path);
    if (current && typeof current === "object") {
      storageManager.set(path, {
        ...current,
        ...newFields,
      });
    }
  },

  // Delete a path (key from object)
  remove(path) {
    let data = storageManager.get();
    const keys = path.split(".");
    let obj = data;
    while (keys.length > 1) {
      let key = keys.shift();
      if (!obj[key]) return; // nothing to delete
      obj = obj[key];
    }
    delete obj[keys[0]];
    localStorage.setItem(storageKey, JSON.stringify(data));
  },
};

function updateCartCount() {
  const cartCountEl = document.getElementById("cartCount");

  if (!cartCountEl) return;

  let data = JSON.parse(localStorage.getItem("cartData")) || {};
  const products = data.cart && data.cart.products ? data.cart.products : {};

  // Show number of unique products (each id counted once)
  const uniqueCount = Object.keys(products).filter((id) => {
    const item = products[id];
    if (item == null) return false;
    if (typeof item === "object") return (item.quantity || 0) > 0;
    return Number(item) > 0; // backward compatibility if value is just a quantity number
  }).length;

  if (uniqueCount > 0) {
    cartCountEl.textContent = uniqueCount;
    cartCountEl.style.display = "flex";
  } else {
    cartCountEl.style.display = "none";
  }
}

document.addEventListener("DOMContentLoaded", updateCartCount);
