import React, { useContext, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { AppContext } from "../context/AppContext";

export const OrderSuccess = () => {
  const navigate = useNavigate();
  const { clearCart, addresses, selectedAddressId } = useContext(AppContext);

  useEffect(() => {
    clearCart();

    // Retrieve tracking properties
    const storedOrderId = localStorage.getItem("successOrderNumber") || "OD" + Math.floor(1000000000 + Math.random() * 9000000000);
    const storedAmount = localStorage.getItem("successAmount") || "0";
    const adsId = localStorage.getItem("googleAdsId");

    // 1. Google Ads Conversion Event
    if (window.gtag && adsId) {
      window.gtag("event", "conversion", {
        send_to: adsId,
        value: parseFloat(storedAmount) || 0,
        currency: "INR",
        transaction_id: storedOrderId
      });
      console.log(`[Google Ads] Conversion event sent to ${adsId} (Value: ${storedAmount}, Order ID: ${storedOrderId})`);
    }

    // 2. Facebook Pixel Purchase Event
    if (window.fbq) {
      window.fbq("track", "Purchase", {
        value: parseFloat(storedAmount) || 0,
        currency: "INR"
      });
      console.log(`[Facebook Pixel] Purchase conversion event sent (Value: ${storedAmount})`);
    }
  }, [clearCart]);

  // Retrieve values from localStorage
  const orderId = localStorage.getItem("successOrderNumber") || "OD" + Math.floor(1000000000 + Math.random() * 9000000000);
  const payType = localStorage.getItem("successPayType") || "UPI";
  const amount = localStorage.getItem("successAmount") || "0";

  const activeAddress = addresses.list && selectedAddressId
    ? addresses.list[selectedAddressId]
    : null;

  // Helper for dynamic delivery date calculation
  const getDeliveryDateString = (daysAhead = 3) => {
    const date = new Date();
    date.setDate(date.getDate() + daysAhead);
    const weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    return `${weekdays[date.getDay()]}, ${date.getDate()} ${months[date.getMonth()]}`;
  };

  return (
    <main className="bg-gray-100 pb-20 min-h-screen text-gray-900 font-sans max-w-[480px] mx-auto">
      {/* Header */}
      <div className="bg-white px-4 py-3 border-b border-gray-200 sticky top-0 z-50 flex items-center justify-center">
        <span className="text-sm font-bold text-gray-900">Order Confirmed</span>
      </div>

      <div className="p-4 flex flex-col gap-4">
        {/* Success check badge */}
        <div className="bg-white rounded-2xl border border-gray-200 p-6 flex flex-col items-center text-center shadow-sm">
          <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center shadow-inner animate-bounce">
            <span className="material-icons text-green-600" style={{ fontSize: "40px" }}>
              check_circle
            </span>
          </div>
          <h1 className="text-lg font-bold text-gray-900 mt-4">
            Thank you for your order!
          </h1>
          <p className="text-xs text-gray-400 mt-1 font-semibold">
            Your order has been successfully placed.
          </p>
        </div>

        {/* Order Details & Customer Shipping Address */}
        <div className="bg-white rounded-2xl border border-gray-200 p-5 shadow-sm flex flex-col gap-3.5">
          <h2 className="text-xs font-bold text-gray-900 uppercase tracking-wide border-b border-gray-100 pb-2 flex items-center gap-1.5">
            <span className="material-icons text-base text-blue-600">receipt_long</span>
            Order Information
          </h2>
          
          <div className="flex flex-col gap-2.5 text-xs">
            <div className="flex justify-between items-baseline">
              <span className="text-gray-400 font-medium">Order ID:</span>
              <span className="font-bold text-gray-900 select-all">{orderId}</span>
            </div>
            <div className="flex justify-between items-baseline">
              <span className="text-gray-400 font-medium">Payment Mode:</span>
              <span className="font-bold text-gray-900 uppercase">{payType}</span>
            </div>
            <div className="flex justify-between items-baseline">
              <span className="text-gray-400 font-medium">Amount Paid:</span>
              <span className="font-bold text-blue-700">₹{parseFloat(amount).toLocaleString("en-IN")}</span>
            </div>
          </div>

          {activeAddress && (
            <div className="border-t border-gray-100 pt-3.5 flex flex-col gap-2">
              <h3 className="text-xs font-bold text-gray-900 uppercase tracking-wide flex items-center gap-1.5">
                <span className="material-icons text-base text-green-600">local_shipping</span>
                Shipping Address
              </h3>
              
              <div className="text-xs text-gray-800 leading-relaxed bg-gray-50 p-3 rounded-lg border border-gray-100">
                <div className="font-bold text-gray-900 flex items-center gap-1.5 mb-1">
                  <span>{activeAddress.name}</span>
                  {activeAddress.type && (
                    <span className="text-[9px] bg-gray-200/60 text-gray-600 px-1.5 py-0.5 rounded font-bold uppercase">
                      {activeAddress.type}
                    </span>
                  )}
                </div>
                <p className="text-gray-600 mt-1">
                  {activeAddress.house}, {activeAddress.road}
                  {activeAddress.landmark && `, near ${activeAddress.landmark}`}
                  <br />
                  {activeAddress.city}, {activeAddress.state} - <span className="font-bold text-gray-800">{activeAddress.pincode}</span>
                </p>
                <div className="font-bold text-gray-900 flex items-center gap-1 mt-2">
                  <span className="material-icons text-xs text-gray-400">phone</span>
                  <span>{activeAddress.number}</span>
                </div>
              </div>
            </div>
          )}
        </div>

        {/* Warning Alerts from thankyou.php */}
        <div className="bg-red-50 border border-red-100 rounded-2xl p-5 flex flex-col gap-2.5">
          <div className="flex items-center gap-1.5 text-red-800 font-bold text-[13px]">
            <span className="material-icons text-base">warning</span>
            <span>Important Notice</span>
          </div>
          <ul className="text-xs text-red-700 leading-relaxed list-disc pl-4 flex flex-col gap-1.5 font-medium">
            <li>
              If your payment is not completed successfully in the UPI application, your order will be <span className="font-bold">cancelled automatically</span>.
            </li>
            <li>
              Please make sure not to close or cancel any payment request inside your UPI app until payment is done!
            </li>
            <li>
              You will receive an order confirmation email with details of your order and a link to track its progress.
            </li>
          </ul>
        </div>

        {/* Delivery Timeline Card */}
        <div className="bg-white rounded-2xl border border-gray-200 p-5 shadow-sm">
          <h2 className="text-xs font-bold text-gray-900 uppercase tracking-wide border-b border-gray-100 pb-2 mb-4 flex items-center gap-1.5">
            <span className="material-icons text-base text-orange-500">schedule</span>
            Delivery Timeline
          </h2>
          
          <div className="flex flex-col gap-6 text-xs pl-2">
            {/* Step 1 */}
            <div className="flex items-start">
              <div className="flex flex-col items-center mr-3.5 mt-0.5">
                <div className="w-3.5 h-3.5 bg-green-500 rounded-full flex items-center justify-center">
                  <div className="w-1.5 h-1.5 bg-white rounded-full"></div>
                </div>
                <div className="w-0.5 h-10 bg-green-500"></div>
              </div>
              <div>
                <p className="font-bold text-gray-900">Order Confirmed</p>
                <p className="text-[10px] text-gray-400 mt-0.5">Your order has been placed and verified.</p>
              </div>
            </div>

            {/* Step 2 */}
            <div className="flex items-start">
              <div className="flex flex-col items-center mr-3.5 mt-0.5">
                <div className="w-3.5 h-3.5 bg-green-500 rounded-full flex items-center justify-center">
                  <div className="w-1.5 h-1.5 bg-white rounded-full"></div>
                </div>
                <div className="w-0.5 h-10 bg-gray-200"></div>
              </div>
              <div>
                <p className="font-bold text-gray-900">Packed &amp; Ready</p>
                <p className="text-[10px] text-gray-400 mt-0.5">Item will be packed by tonight.</p>
              </div>
            </div>

            {/* Step 3 */}
            <div className="flex items-start">
              <div className="flex flex-col items-center mr-3.5 mt-0.5">
                <div className="w-3.5 h-3.5 bg-gray-200 rounded-full flex items-center justify-center">
                  <div className="w-1.5 h-1.5 bg-gray-300 rounded-full"></div>
                </div>
                <div className="w-0.5 h-10 bg-gray-200"></div>
              </div>
              <div>
                <p className="font-bold text-gray-400">Shipped (Express Delivery)</p>
                <p className="text-[10px] text-gray-400 mt-0.5">Will be dispatched via premium courier.</p>
              </div>
            </div>

            {/* Step 4 */}
            <div className="flex items-start">
              <div className="flex flex-col items-center mr-3.5 mt-0.5">
                <div className="w-3.5 h-3.5 bg-gray-200 rounded-full flex items-center justify-center">
                  <div className="w-1.5 h-1.5 bg-gray-300 rounded-full"></div>
                </div>
              </div>
              <div>
                <p className="font-bold text-gray-400">Delivery by {getDeliveryDateString(3)}</p>
                <p className="text-[10px] text-gray-400 mt-0.5">Expected delivery by 11:00 PM, {getDeliveryDateString(3)}.</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Sticky Bottom Actions */}
      <div className="p-4 bg-white border-t border-gray-200 sticky bottom-0 z-40 max-w-[480px] w-full mx-auto shadow-md">
        <button
          onClick={() => {
            // Clean localStorage success traces
            localStorage.removeItem("successOrderNumber");
            localStorage.removeItem("successPayType");
            localStorage.removeItem("successAmount");
            localStorage.removeItem("pendingOrderNumber");
            localStorage.removeItem("pendingPayType");
            localStorage.removeItem("pendingAmount");
            navigate("/", { replace: true });
          }}
          className="w-full bg-blue-600 text-white font-bold py-3.5 rounded-lg text-xs uppercase hover:bg-blue-700 tracking-wider shadow transition cursor-pointer border-0 flex items-center justify-center gap-1.5"
        >
          <span className="material-icons text-base">shopping_bag</span>
          Continue Shopping
        </button>
      </div>
    </main>
  );
};
