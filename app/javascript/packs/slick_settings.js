export default {
  speed: 500,
  slidesToShow: 6,
  slidesToScroll: 6,
  initialSlide: 0,
  dots: true,
  arrows: true,
  infinite: false,
  responsive: [
   {
      breakpoint: 1024,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 5,
     }
   },
   {
      breakpoint: 768,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
     }
   },
   {
      breakpoint: 480,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
     }
   }
 ]
}
