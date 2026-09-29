import React, { useContext } from "react";
import { useNavigate } from "react-router-dom";
import { AppContext } from "../context/AppContext";

export const Cart = () => {
  const navigate = useNavigate();
  const { cart, removeFromCart, updateCartQty, addresses } = useContext(AppContext);
  const hasAddresses = addresses && addresses.list && Object.keys(addresses.list).length > 0;

  // Helper for dynamic delivery date calculation
  const getDeliveryDateString = (daysAhead = 3) => {
    const date = new Date();
    date.setDate(date.getDate() + daysAhead);
    const weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    return `${weekdays[date.getDay()]}, ${date.getDate()} ${months[date.getMonth()]}`;
  };

  const productList = Object.entries(cart.products).map(([id, p]) => ({
    id,
    ...p
  }));

  const isEmpty = productList.length === 0;

  // Totals calculations
  let totalMrp = 0;
  productList.forEach((p) => {
    const qty = Number(p.quantity || 1);
    const mrp = Number(p.mrp || p.price);
    totalMrp += mrp * qty;
  });

  const totalDiscount = totalMrp - cart.totalPrice;
  const finalPayable = cart.totalPrice;

  if (isEmpty) {
    return (
      <main className="bg-white min-h-screen">
        <section id="emptyCartSection" className="flex flex-col items-center justify-center py-20 px-4 text-center bg-gray-100 min-h-[60vh]">
          <div className="w-24 h-24 mb-4 text-gray-400 flex items-center justify-center">
            <i className="bi bi-cart-x" style={{ fontSize: "72px" }}></i>
          </div>
          <p className="text-[22px] leading-[30px] text-[#111112] tracking-[-0.02px] text-center font-semibold m-0">
            Your cart is empty!
          </p>
          <button
            onClick={() => navigate("/")}
            className="mt-4 bg-blue-600 text-white px-10 py-2 rounded font-semibold text-sm hover:bg-blue-700 transition"
          >
            Shop now
          </button>
        </section>
      </main>
    );
  }

  return (
    <main className="bg-[#f1f3f6] pb-24 min-h-screen">
      {/* Full Cart Section */}
      <section id="fullCartSection">
        <div className="flex flex-col bg-[#f1f3f6]">
          <div id="cartItems">
            {productList.map((p) => {
              const butAt = Math.max(0, p.price - 50);

              return (
                <div key={p.id} className="flex flex-col bg-white pt-4 mb-2 shadow-sm" data-pid={p.id}>
                  <div className="flex items-start gap-4 px-4 pb-4">
                    <div className="flex flex-col items-center">
                      <div className="w-[76px] h-[76px] border border-[#f0f0f0] rounded-[4px] flex items-center justify-center p-1 bg-white">
                        <img
                          src={p.thumbnail}
                          alt={p.name}
                          className="max-w-full max-h-full object-contain"
                        />
                      </div>
                      <div className="mt-3">
                        <div className="relative w-[76px]">
                          <select
                            value={p.quantity}
                            onChange={(e) => updateCartQty(p.id, e.target.value)}
                            className="qtySelect w-full text-[13px] border border-[#d3d3d3] rounded-[4px] py-0.5 appearance-none bg-white outline-none pl-[34px] pr-[16px] text-[#212121] font-semibold"
                            style={{ height: "26px" }}
                          >
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                          </select>
                          <span className="absolute left-2 top-1/2 -translate-y-1/2 pointer-events-none text-[12px] text-[#878787]">
                            Qty:
                          </span>
                          <span className="absolute right-2 top-1/2 -translate-y-1/2 pointer-events-none text-[#878787] text-[8px]">
                            ▼
                          </span>
                        </div>
                      </div>
                    </div>

                    <div className="flex-1">
                      <p 
                        className="text-[14px] leading-[18px] font-normal text-[#212121] cursor-pointer hover:text-[#2874f0] m-0" 
                        onClick={() => navigate(`/product/${p.id}`)}
                      >
                        {p.name}
                      </p>
                      
                      <div className="flex items-center gap-1 mt-1.5 flex-wrap">
                        <div className="flex text-[#388e3c] text-[10px] gap-[1px]">
                          <i className="bi bi-star-fill"></i>
                          <i className="bi bi-star-fill"></i>
                          <i className="bi bi-star-fill"></i>
                          <i className="bi bi-star-fill"></i>
                          <i className="bi bi-star-fill"></i>
                        </div>
                        <span className="text-[12px] text-[#388e3c] font-semibold ml-0.5">4.4</span>
                        <span className="text-[12px] text-[#878787] font-medium">(NaN)</span>
                        <img
                          src="https://rukminim1.flixcart.com/www/120/40/promos/25/06/2024/71af54bd-9160-41ff-81cc-c55e534dedeb.png?q=90"
                          alt="Assured"
                          className="max-h-[15px] object-contain ml-1"
                        />
                      </div>

                      <div className="mt-2.5">
                        <div className="flex items-baseline gap-2 flex-wrap">
                          <span className="text-[#388e3c] text-[13px] font-semibold">↓{p.discount || '83%'}</span>
                          <span className="text-[#878787] line-through text-[13px]">₹{Math.round(p.mrp).toLocaleString("en-IN")}</span>
                          <span className="text-[18px] font-bold text-[#111112]">₹{Math.round(p.price).toLocaleString("en-IN")}</span>
                        </div>
                        <div className="mt-1 flex items-center gap-1.5">
                          <img
                            src="https://rukminim1.flixcart.com/www/78/24/promos/25/06/2025/9a7159fa-4de3-4092-af10-c306d6fcc383.png?q=90"
                            alt="WOW Coupon"
                            className="h-[14px] w-auto object-contain"
                          />
                          <span className="text-xs text-[#2874f0] font-medium">Buy at ₹{butAt.toLocaleString("en-IN")}</span>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="flex text-xs text-gray-500 flex-col">
                    <div className="flex items-center gap-2 mx-4 mb-2.5">
                      <img
                        className="w-[18px] h-[18px] object-contain"
                        src="https://rukminim1.flixcart.com/www/40/40/promos/08/02/2024/63b2986a-2e31-4812-ae8a-cc676b233161.png?q=90"
                        alt="express"
                      />
                      <span className="italic font-bold text-[#212121] tracking-wide">EXPRESS</span>
                      <span className="text-gray-500 font-normal">Delivery by {getDeliveryDateString(3)}, 11 PM</span>
                    </div>

                    <hr className="w-full border-t border-[#f0f0f0]" />
                    <div className="flex justify-between items-center text-xs text-[#878787]" style={{ height: "48px" }}>
                      <button
                        onClick={() => removeFromCart(p.id)}
                        className="removeBtn flex-1 flex items-center justify-center py-3 border-none bg-transparent cursor-pointer text-[14px] font-normal text-[#212121] hover:text-red-600 transition"
                      >
                        Remove
                      </button>
                      <div className="h-6 w-px bg-gray-200" />
                      <button className="flex-1 flex items-center justify-center py-3 border-none bg-transparent cursor-pointer text-[14px] font-normal text-[#212121] hover:text-blue-600 transition">
                        Save for later
                      </button>
                      <div className="h-6 w-px bg-gray-200" />
                      <button
                        onClick={() => navigate(`/product/${p.id}`)}
                        className="flex-1 flex items-center justify-center py-3 border-none bg-transparent cursor-pointer text-[14px] font-normal text-[#212121] hover:text-blue-600 transition"
                      >
                        Buy this now
                      </button>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        {/* Price Details summary box */}
        <div className="mt-3 border border-[#e0e0e0] rounded-[4px] bg-white mx-4 p-4 shadow-sm">
          <div className="flex justify-between items-center">
            <p className="font-bold text-[15px] text-[#212121] m-0">Price Details</p>
          </div>
          <div style={{ borderTop: "1px dotted #e0e0e0", margin: "10px 0" }} />
          <div className="flex flex-col gap-3 text-[14px] text-[#212121]">
            <div className="flex justify-between">
              <span>Price ( {cart.totalCount} item{cart.totalCount === 1 ? "" : "s"} )</span>
              <span>₹{totalMrp.toLocaleString("en-IN")}</span>
            </div>
            <div className="flex justify-between text-[#388e3c] font-medium">
              <span>Discount</span>
              <span>- ₹{totalDiscount.toLocaleString("en-IN")}</span>
            </div>
            <div className="flex justify-between">
              <span>Platform Fee</span>
              <span>₹0</span>
            </div>
            <div style={{ borderTop: "1px solid #f0f0f0", margin: "4px 0" }} />
            <div className="flex justify-between font-bold text-[16px] text-[#212121]">
              <span>Total Amount</span>
              <span>₹{finalPayable.toLocaleString("en-IN")}</span>
            </div>
            <div className="bg-[#eafaf1] text-[#388e3c] text-[13px] font-medium p-3 rounded-[4px] mt-2">
              You will save ₹{totalDiscount.toLocaleString("en-IN")} on this order
            </div>
          </div>
        </div>

        {/* Secure checkout footer icon */}
        <div className="mt-4 flex items-center justify-center gap-3 text-xs text-gray-500 bg-transparent border-none px-6 py-2 mx-4 my-6 text-left leading-normal">
          <img
            className="w-[28px] h-[28px] object-contain opacity-75"
            src="https://rukminim1.flixcart.com/www/52/64/promos/13/02/2019/9b179a8a-a0e2-497b-bd44-20aa733dc0ec.png?q=90"
            alt="secure"
          />
          <span className="font-semibold text-gray-600 text-[11px] leading-snug">
            Safe and secure payments. Easy returns.<br />100% Authentic products.
          </span>
        </div>

        {/* Sticky Bottom Checkout Bar */}
        <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 px-4 py-2.5 flex justify-between items-center max-w-[480px] mx-auto z-40" style={{ boxShadow: "0 -2px 10px 0 rgba(0,0,0,0.1)" }}>
          <div className="flex flex-col pl-2">
            <span className="text-[12px] text-gray-400 line-through leading-none">{totalMrp.toLocaleString("en-IN")}</span>
            <span className="text-[18px] font-bold text-[#111112] leading-tight mt-0.5">
              {finalPayable.toLocaleString("en-IN")}
            </span>
          </div>
          <button
            onClick={() => navigate(hasAddresses ? "/checkout/summary" : "/checkout/address")}
            className="bg-[#ffc200] border-none text-[#111112] px-10 py-2.5 rounded-[4px] font-bold hover:bg-[#ffd200] cursor-pointer text-sm shadow-sm"
            style={{ minWidth: "160px" }}
          >
            Place order
          </button>
        </div>
      </section>
    </main>
  );
};
