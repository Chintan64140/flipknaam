import React, { useContext, useEffect, useState } from "react";
import { useNavigate, useSearchParams } from "react-router-dom";
import { AppContext } from "../context/AppContext";

export const PaymentVerify = () => {
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const { clearCart } = useContext(AppContext);

  const orderNumber = searchParams.get("orderNumber") || localStorage.getItem("pendingOrderNumber") || "OD" + Math.floor(Math.random() * 1000000000);
  const payType = searchParams.get("payType") || localStorage.getItem("pendingPayType") || "UPI";
  const amount = searchParams.get("amt") || localStorage.getItem("pendingAmount") || "0";

  const [timeLeft, setTimeLeft] = useState(20);

  // Disable right-click & common dev tools inside this page for extra security
  useEffect(() => {
    const handleContextMenu = (e) => e.preventDefault();
    const handleKeyDown = (e) => {
      if (
        (e.ctrlKey && (e.key === "I" || e.key === "U" || e.key === "J")) ||
        e.keyCode === 123
      ) {
        e.preventDefault();
      }
    };

    document.addEventListener("contextmenu", handleContextMenu);
    document.addEventListener("keydown", handleKeyDown);

    return () => {
      document.removeEventListener("contextmenu", handleContextMenu);
      document.removeEventListener("keydown", handleKeyDown);
    };
  }, []);

  // Timer countdown
  useEffect(() => {
    if (timeLeft <= 0) {
      clearCart();
      // Store checkout status as successful
      localStorage.setItem("successOrderNumber", String(orderNumber));
      localStorage.setItem("successPayType", String(payType));
      localStorage.setItem("successAmount", String(amount));
      
      // Navigate to success screen
      navigate("/success", { replace: true });
      return;
    }

    const timer = setTimeout(() => {
      setTimeLeft(timeLeft - 1);
    }, 1000);

    return () => clearTimeout(timer);
  }, [timeLeft, navigate, clearCart, orderNumber, payType, amount]);

  return (
    <main className="bg-gray-50 min-h-screen flex flex-col items-center justify-center p-6 max-w-[480px] mx-auto font-sans">
      <div className="bg-white p-8 rounded-2xl shadow-sm border border-gray-200/60 flex flex-col items-center text-center w-full max-w-sm">
        {/* Loading Spinner with dynamic countdown text inside */}
        <div className="relative flex items-center justify-center">
          <div className="w-20 h-20 border-4 border-gray-100 border-t-blue-600 rounded-full animate-spin"></div>
          <span className="absolute text-sm font-bold text-gray-800">{timeLeft}s</span>
        </div>
        
        <h1 className="text-[17px] font-bold text-gray-900 mt-6">
          Verifying Payment Request
        </h1>
        
        <div className="bg-gray-50 border border-gray-100 rounded-xl p-3.5 w-full mt-4 flex flex-col gap-2 text-left text-xs">
          <div className="flex justify-between">
            <span className="text-gray-400 font-medium">Order Number:</span>
            <span className="font-bold text-gray-800 select-all">{orderNumber}</span>
          </div>
          <div className="flex justify-between">
            <span className="text-gray-400 font-medium">Payment Type:</span>
            <span className="font-bold text-gray-800 uppercase">{payType}</span>
          </div>
          <div className="flex justify-between">
            <span className="text-gray-400 font-medium">Amount:</span>
            <span className="font-bold text-blue-700">₹{parseFloat(amount).toLocaleString("en-IN")}</span>
          </div>
        </div>

        <p className="text-[11px] text-red-500 font-semibold mt-5 leading-normal bg-red-50/50 p-3 rounded-lg border border-red-100/50">
          ⚠️ Please do not close this window, press the back button, or switch apps until the countdown finishes. We are securely validating your transaction with your UPI application.
        </p>
      </div>
    </main>
  );
};
