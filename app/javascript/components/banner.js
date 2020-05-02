import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const bannerTypedText = document.querySelector('#banner-typed-text');
  if (bannerTypedText){
    new Typed('#banner-typed-text', {
      strings: ["Venez goûter les bonnes recettes de Marmotton - Miam Miam"],
      typeSpeed: 50,
      loop: true
    });
  };
}

export { loadDynamicBannerText };
