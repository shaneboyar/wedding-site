var pointsArray = document.getElementsByClassName('info-item');
var photosArray = document.getElementsByClassName('photo');
var faqarray = document.getElementsByClassName('faq-item');

var animatePoints = function(points) {

    var revealPoint = function(i) {
        points[i].style.opacity = 1;
        points[i].style.transform = "scaleX(1) translateY(0)";
        points[i].style.msTransform = "scaleX(1) translateY(0)";
        points[i].style.WebkitTransform = "scaleX(1) translateY(0)";
    };

    for (var i = 0; i < points.length; i++) {
        revealPoint(i);
    }

};

window.onload = function() {

    // Info Points Animate Up on Scroll
     if (window.innerHeight > 950) {
        animatePoints(pointsArray);
    }

    var sellingPoints = document.getElementsByClassName('info')[0];
    var scrollDistance = sellingPoints.getBoundingClientRect().top - window.innerHeight + 200;

    window.addEventListener('scroll', function(event) {
        if (document.documentElement.scrollTop || document.body.scrollTop >= scrollDistance) {
            animatePoints(pointsArray);
        }
    });

    window.sr = ScrollReveal({
        origin: 'left',
        distance: '200%',
        rotate: { z: 10 },
        duration: 1000
    });
    sr.reveal('[data-photo-number="1"]', {origin: 'bottom'});
    sr.reveal('[data-photo-number="2"]', {origin: 'bottom', viewFactor: 0.8});
    sr.reveal('[data-photo-number="3"]', {origin: 'bottom'});
    sr.reveal('[data-photo-number="4"]', {origin: 'bottom', viewFactor: 0.8});
    sr.reveal('[data-photo-number="5"]', {origin: 'bottom'});
    sr.reveal('[data-photo-number="6"]', {origin: 'bottom', viewFactor: 0.8});
    sr.reveal('[data-photo-number="7"]', {origin: 'bottom'});
    sr.reveal('[data-photo-number="8"]', {origin: 'bottom', viewFactor: 0.8});
    sr.reveal('.faq-item-5');
    smoothScroll.init();

};