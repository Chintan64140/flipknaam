// Loading Spinner Management
const loadingSpinner = {
  element: null,

  init() {
    this.element = document.getElementById("loading-spinner");
    if (!this.element) return;

    // Show spinner immediately
    this.show();

    // Hide spinner when page is fully loaded
    if (document.readyState === "loading") {
      document.addEventListener("DOMContentLoaded", () => {
        this.hide();
      });
    } else {
      // If DOM is already loaded, hide after a short delay for smooth UX
      setTimeout(() => {
        this.hide();
      }, 500);
    }

    // Also hide on window load event for images and other resources
    window.addEventListener("load", () => {
      this.hide();
    });

    // Hide spinner after maximum time (fallback)
    setTimeout(() => {
      this.hide();
    }, 3000);
  },

  show() {
    if (this.element) {
      this.element.style.display = "flex";
      this.element.style.opacity = "1";
    }
  },

  hide() {
    if (this.element) {
      this.element.style.opacity = "0";
      this.element.style.transition = "opacity 0.5s ease-out";

      setTimeout(() => {
        this.element.style.display = "none";
      }, 500);
    }
  },
};

// Initialize loading spinner
loadingSpinner.init();

// Global function to show/hide loading spinner for AJAX requests
window.showLoading = () => loadingSpinner.show();
window.hideLoading = () => loadingSpinner.hide();

// Bulletproof slider logic with smooth animations
(() => {
  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", initSlider);
  } else {
    initSlider();
  }

  function initSlider() {
    const slider = document.querySelector("[data-slider]");
    if (!slider) return;

    const slidesContainer = slider.querySelector(".slides-container");
    const slides = Array.from(slider.querySelectorAll(".slide"));
    const dots = Array.from(slider.querySelectorAll(".dot"));

    if (slides.length <= 1) {
      return;
    }

    let currentIndex = 0;
    let autoplayInterval;
    let isTransitioning = false;

    // Add CSS for smooth transitions
    const style = document.createElement("style");
    style.textContent = `
      .slides-container {
        position: relative;
        overflow: hidden;
        min-height: 150px;
      }
      
      .slide {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        opacity: 0;
        transform: translateX(100%);
        transition: all 0.5s cubic-bezier(0.4, 0.0, 0.2, 1);
        z-index: 1;
        display: block !important;
      }
      
      .slide.active {
        opacity: 1;
        transform: translateX(0);
        z-index: 2;
      }
      
      .slide.prev {
        opacity: 0;
        transform: translateX(-100%);
        z-index: 1;
      }
      
      .slide.next {
        opacity: 0;
        transform: translateX(100%);
        z-index: 1;
      }
      
      .dot {
        transition: all 0.3s ease;
        cursor: pointer;
      }
      
      .dot:hover {
        transform: scale(1.1);
      }
      
      .dot.active {
        transform: scale(1.2);
      }
    `;
    document.head.appendChild(style);

    function showSlide(index) {
      if (index < 0 || index >= slides.length || isTransitioning) return;

      isTransitioning = true;

      slides.forEach((slide) => {
        slide.classList.remove("active", "prev", "next");
      });

      const direction = index > currentIndex ? "next" : "prev";

      slides.forEach((slide, idx) => {
        if (idx === index) {
          slide.classList.add("active");
        } else if (idx === currentIndex) {
          slide.classList.add(direction === "next" ? "prev" : "next");
        }
      });

      dots.forEach((dot, idx) => {
        if (idx === index) {
          dot.classList.add("active", "bg-gray-500", "w-10");
          dot.classList.remove("bg-gray-100", "w-4");
        } else {
          dot.classList.remove("active", "bg-gray-500", "w-10");
          dot.classList.add("bg-gray-100", "w-4");
        }
      });

      currentIndex = index;

      setTimeout(() => {
        isTransitioning = false;
      }, 500);
    }

    function nextSlide() {
      if (isTransitioning) return;
      const next = (currentIndex + 1) % slides.length;
      showSlide(next);
    }

    function prevSlide() {
      if (isTransitioning) return;
      const prev = (currentIndex - 1 + slides.length) % slides.length;
      showSlide(prev);
    }

    dots.forEach((dot, index) => {
      dot.addEventListener("click", (e) => {
        e.preventDefault();
        if (isTransitioning) return;

        const ripple = document.createElement("span");
        ripple.style.cssText = `
          position: absolute;
          border-radius: 50%;
          background: rgba(255, 255, 255, 0.6);
          transform: scale(0);
          animation: ripple 0.6s linear;
          pointer-events: none;
        `;

        const rect = dot.getBoundingClientRect();
        const size = Math.max(rect.width, rect.height);
        ripple.style.width = ripple.style.height = size + "px";
        ripple.style.left = e.clientX - rect.left - size / 2 + "px";
        ripple.style.top = e.clientY - rect.top - size / 2 + "px";

        dot.style.position = "relative";
        dot.appendChild(ripple);

        setTimeout(() => {
          ripple.remove();
        }, 600);

        showSlide(index);
        resetAutoplay();
      });
    });

    let startX = 0;
    let endX = 0;
    let startTime = 0;
    let endTime = 0;

    slider.addEventListener("touchstart", (e) => {
      startX = e.touches[0].clientX;
      startTime = Date.now();
    });

    slider.addEventListener("touchend", (e) => {
      endX = e.changedTouches[0].clientX;
      endTime = Date.now();
      const diff = startX - endX;
      const duration = endTime - startTime;

      if (Math.abs(diff) > 30 || (Math.abs(diff) > 20 && duration < 300)) {
        if (diff > 0) {
          nextSlide();
        } else {
          prevSlide();
        }
        resetAutoplay();
      }
    });

    document.addEventListener("keydown", (e) => {
      if (isTransitioning) return;

      if (e.key === "ArrowLeft") {
        prevSlide();
        resetAutoplay();
      } else if (e.key === "ArrowRight") {
        nextSlide();
        resetAutoplay();
      }
    });

    function startAutoplay() {
      if (slides.length > 1 && !autoplayInterval) {
        autoplayInterval = setInterval(() => {
          if (!isTransitioning) {
            nextSlide();
          }
        }, 3000);
      }
    }

    function resetAutoplay() {
      if (autoplayInterval) {
        clearInterval(autoplayInterval);
        autoplayInterval = null;
        startAutoplay();
      }
    }

    function stopAutoplay() {
      if (autoplayInterval) {
        clearInterval(autoplayInterval);
        autoplayInterval = null;
      }
    }

    // Pause autoplay on interaction
    slider.addEventListener("mouseenter", stopAutoplay);
    slider.addEventListener("mouseleave", startAutoplay);
    slider.addEventListener("touchstart", stopAutoplay);
    slider.addEventListener("touchend", startAutoplay);

    // Add CSS animation for ripple effect
    const rippleStyle = document.createElement("style");
    rippleStyle.textContent = `
      @keyframes ripple {
        to {
          transform: scale(4);
          opacity: 0;
        }
      }
    `;
    document.head.appendChild(rippleStyle);

    try {
      // Initialize first slide
      slides.forEach((slide, idx) => {
        if (idx === 0) {
          slide.classList.add("active");
          slide.style.display = "block";
        } else {
          slide.classList.add("next");
          slide.style.display = "block";
        }
      });

      startAutoplay();
    } catch (error) {
      console.error("Error initializing slider:", error);
    }
  }
})();

document.querySelectorAll("[data-href]").forEach((btn) => {
  btn.addEventListener("click", () => {
    const target = btn.getAttribute("data-href");

    const current = window.location.pathname.replace(/\/+$/, "");
    const destination = target.replace(/\/+$/, "");

    if (current !== destination) {
      window.location.href = target;
    }
  });
});