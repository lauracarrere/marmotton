
const initCommentButton = () => {
  const button = document.querySelector(".banner-button")
  // const banner = document.querySelector(".banner")
  $(document).ready(function() {
    $('.comment-link').on('click', function() { // Au clic sur un élément
      var page = $(this).attr('href'); // Page cible
      console.log(page);
      var speed = 1400; // Durée de l'animation (en ms)
      $('html, body').animate( { scrollTop: $(page).offset().top }, speed ); // Go
      return false;
    });
  });
}

export { initCommentButton };
