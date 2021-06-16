function debounce(func, wait = 20, immediate = true) {
  var timeout;
  return function() {
    var context = this,
      args = arguments;
    var later = function() {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };
    var callNow = immediate && !timeout;
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
    if (callNow) func.apply(context, args);
  };
}



function checkSlide(e) {
  sliderImages.forEach(sliderImage => {
    // halfway through the image
    const slideInAt = (window.scrollY + window.innerHeight) - sliderImage.height / 4;
    // bottom of the image
    const imageBottom = sliderImage.offsetTop + sliderImage.height;
    const isHalfShown = slideInAt > sliderImage.offsetTop;
    const isNotScrolledPast = window.scrollY < imageBottom;
    if (isHalfShown && isNotScrolledPast) {
      sliderImage.classList.add('home-active-div');
    } else {
      sliderImage.classList.remove('home-active-div');
    }

    console.log(slideInAt);
  });
}


const initFadeIn = () => {
  const sliderImages = document.querySelectorAll('.fade-in');
  window.addEventListener('scroll', debounce(checkSlide));
};


export { initFadeIn };
