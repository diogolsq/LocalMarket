import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["access to local business", "near you"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

