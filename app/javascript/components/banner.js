import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["your dog", "your cat", "your plants"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
