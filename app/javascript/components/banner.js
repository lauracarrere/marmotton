import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Venez goûter les bonnes recettes de Marmotton - Miam Miam"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
