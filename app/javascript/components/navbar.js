
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-marmotton');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 30 && window.scrollY < 70 ) {
        navbar.classList.remove('navbar-marmotton-transparent-2');
        navbar.classList.add('navbar-marmotton-transparent-1');
      } else if (window.scrollY >= 70) {
        navbar.classList.add('navbar-marmotton-transparent-2');
      } else {
        navbar.classList.remove('navbar-marmotton-transparent-1');
        navbar.classList.remove('navbar-marmotton-transparent-2');
      }
    });
  }
};

const initUpdateIndexNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-marmotton-index');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100 && window.scrollY < 200 ) {
        navbar.classList.remove('navbar-marmotton-index-transparent-2');
        navbar.classList.add('navbar-marmotton-index-transparent-1');
      } else if (window.scrollY >= 200) {
        navbar.classList.add('navbar-marmotton-index-transparent-2');
      } else {
        navbar.classList.remove('navbar-marmotton-index-transparent-1');
        navbar.classList.remove('navbar-marmotton-index-transparent-2');
      }
    });
  }
};


export { initUpdateNavbarOnScroll };
export { initUpdateIndexNavbarOnScroll };
