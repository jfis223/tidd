import Typed from 'typed.js';


  const loadDynamicBannerText = () => {
if (document.getElementById("main-title")) {
    new Typed('#banner-typed-text', {
      strings: ["your dog", "your cat", "your plants"],
      typeSpeed: 80,
      loop: true
    });
  }
}
export { loadDynamicBannerText };
