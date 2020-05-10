import "bootstrap";


//Navbar & Banner
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
import { initUpdateIndexNavbarOnScroll } from '../components/navbar';
initUpdateIndexNavbarOnScroll();

import { initCommentButton } from '../components/comments';
if (document.querySelector(".comment-button")) {
  initCommentButton();
}
