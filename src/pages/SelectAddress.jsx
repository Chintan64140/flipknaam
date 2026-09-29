import React, { useContext, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { AppContext } from "../context/AppContext";

export const SelectAddress = () => {
  const navigate = useNavigate();
  const { addresses, selectedAddressId, setSelectedAddressId, cart } = useContext(AppContext);

  const addressList = Object.entries(addresses.list || {}).map(([id, details]) => ({
    id,
    ...details
  }));

  // Redirect to Home if cart is empty
  useEffect(() => {
    if (cart.totalCount === 0) {
      navigate("/");
    }
  }, [cart, navigate]);

  // Set default selection if none active
  useEffect(() => {
    if (addressList.length > 0 && !selectedAddressId) {
      setSelectedAddressId(addressList[0].id);
    }
  }, [addressList, selectedAddressId, setSelectedAddressId]);

  const handleDeliverHere = () => {
    if (!selectedAddressId) {
      alert("Please select or add a delivery address");
      return;
    }
    navigate("/checkout/summary");
  };

  return (
    <main className="bg-gray-100 pb-20 min-h-screen">
      {/* Progress step indicator */}
      <div className="pb-2 shadow-sm bg-white">
        <img
          className="w-full mt-2 object-contain"
          alt="Step - 1"
          src="/images/address-1.png"
          style={{ filter: "hue-rotate(-60deg)" }}
        />
      </div>

      {/* Add New Address button banner */}
      <div className="px-4 py-3 border-b border-gray-100 bg-white shadow-sm flex items-center justify-between">
        <button
          onClick={() => navigate("/checkout/address")}
          className="flex items-center text-flip-blue text-sm font-semibold border-none bg-transparent cursor-pointer"
        >
          <span className="material-icons text-xl mr-2">add</span>
          Add a new address
        </button>
      </div>

      {/* Address List */}
      <div id="addressList" className="bg-white mt-2 shadow-sm">
        {addressList.length === 0 ? (
          <div className="p-6 text-sm text-gray-500 text-center">
            No saved addresses. Please add a new address to continue.
          </div>
        ) : (
          addressList.map((addr) => {
            const isSelected = selectedAddressId === addr.id;
            const badge = (addr.type || "").toUpperCase();
            const addrLine = `${addr.house || ""}, ${addr.road || ""}, ${addr.city || ""}, ${addr.state || ""} - ${addr.pincode || ""}`;

            return (
              <div
                key={addr.id}
                onClick={() => setSelectedAddressId(addr.id)}
                className={`address-item border-b border-gray-200 py-4 cursor-pointer transition-colors ${
                  isSelected ? "bg-slate-50 selected" : ""
                }`}
              >
                <div className="flex items-start space-x-3 px-4">
                  <div className="mt-1 flex-shrink-0">
                    <input
                      type="radio"
                      id={`address-${addr.id}`}
                      name="selectedAddress"
                      value={addr.id}
                      checked={isSelected}
                      onChange={() => setSelectedAddressId(addr.id)}
                      className="w-4 h-4 text-flip-blue border-gray-300 focus:ring-flip-blue cursor-pointer"
                    />
                  </div>
                  <div className="flex-1">
                    <div className="flex items-center justify-between">
                      <div className="flex items-center space-x-2">
                        <h3 className="text-sm font-bold text-gray-900 leading-tight">{addr.name}</h3>
                        {badge && (
                          <span className="bg-gray-600 text-white text-[9px] px-1.5 py-0.5 rounded font-bold uppercase">
                            {badge}
                          </span>
                        )}
                      </div>
                      
                      {/* Show Edit button only for the selected address */}
                      {isSelected && (
                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            navigate(`/checkout/address?edit=${addr.id}`);
                          }}
                          className="edit-btn text-flip-blue text-xs font-semibold shadow-sm border border-gray-200 px-2.5 py-1 rounded bg-white hover:bg-gray-50 transition"
                        >
                          Edit
                        </button>
                      )}
                    </div>
                    <p className="text-xs text-gray-700 mt-2 leading-relaxed">{addrLine}</p>
                    <p className="text-xs text-gray-500 mt-1 font-semibold">{addr.number}</p>
                  </div>
                </div>
              </div>
            );
          })
        )}
      </div>

      {/* Sticky Deliver Button at Bottom */}
      {addressList.length > 0 && (
        <div className="fixed bottom-0 left-0 right-0 bg-white border-t border-gray-200 p-4 max-w-[480px] mx-auto z-35 shadow">
          <button
            onClick={handleDeliverHere}
            className="w-full bg-orange-500 border-none text-white py-3 rounded-lg font-bold hover:bg-orange-600 transition text-sm shadow-sm cursor-pointer"
          >
            DELIVER HERE
          </button>
        </div>
      )}
    </main>
  );
};
