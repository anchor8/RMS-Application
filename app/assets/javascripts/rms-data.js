$(document).ready(function() {

  // Timeout flash messages
  setTimeout(function(){
    $('#flash').remove();
  }, 5000);

  // Configure tooltips for collapsed side navigation
  $('.navbar-sidenav [data-toggle="tooltip"]').tooltip({
    template: '<div class="tooltip navbar-sidenav-tooltip" role="tooltip" style="pointer-events: none;"><div class="arrow"></div><div class="tooltip-inner"></div></div>'
  })

  // Toggle the side navigation
  $("#sidenavToggler").click(function(e) {
    e.preventDefault();
    $("body").toggleClass("sidenav-toggled");
    $(".navbar-sidenav .nav-link-collapse").addClass("collapsed");
    $(".navbar-sidenav .sidenav-second-level, .navbar-sidenav .sidenav-third-level").removeClass("show");
  });

  // Force the toggled class to be removed when a collapsible nav link is clicked
  $(".navbar-sidenav .nav-link-collapse").click(function(e) {
    e.preventDefault();
    $("body").removeClass("sidenav-toggled");
  });

  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
  $('body.fixed-nav .navbar-sidenav, body.fixed-nav .sidenav-toggler, body.fixed-nav .navbar-collapse').on('mousewheel DOMMouseScroll', function(e) {
    var e0 = e.originalEvent,
      delta = e0.wheelDelta || -e0.detail;
    this.scrollTop += (delta < 0 ? 1 : -1) * 30;
    e.preventDefault();
  });

  // Scroll to top button appear
  $(document).scroll(function() {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

  // Configure tooltips globally
  $('[data-toggle="tooltip"]').tooltip()

  // Smooth scrolling using jQuery easing
  $(document).on('click', 'a.scroll-to-top', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top)
    }, 1000, 'easeInOutExpo');
    event.preventDefault();
  });

  $('form').on('click', '.remove_record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr:not(:first-child)').hide();
    return event.preventDefault();
  });

  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });

  // On click collapse dashboard button
  $('a.collapse-dashboard').on( 'click', function (e) {

    if ($(".show")[0]){
      // Do something if class does not exist
      $('#collapseOne').removeClass('show')
      $('#collapseTwo').removeClass('show')
      $('#collapseThree').removeClass('show')
      $('#collapseFour').removeClass('show')
      $('#collapseFive').removeClass('show')
      $('#collapseSix').removeClass('show')

    } else {
      // Do something if class exists
      $('#collapseOne').addClass('show')
      $('#collapseTwo').addClass('show')
      $('#collapseThree').addClass('show')
      $('#collapseFour').addClass('show')
      $('#collapseFive').addClass('show')
      $('#collapseSix').addClass('show')
    }
  } );
});
