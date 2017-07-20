﻿$(document).ready(function () {
    // Activate Carousel
    $("#myCarousel").carousel();

    // Enable Carousel Indicators
    $(".item1").click(function () {
        $("#myCarousel").carousel(0);
    });
    $(".item2").click(function () {
        $("#myCarousel").carousel(1);
    });
    $(".item3").click(function () {
        $("#myCarousel").carousel(2);
    });
   
    // Enable Carousel Controls
    $(".left").click(function () {
        $("#myCarousel").carousel("prev");
    });
    $(".right").click(function () {
        $("#myCarousel").carousel("next");
    });

    // Show process text when hover over image
    $("img#schedule-img").hover(function () {
        $("div.schedule").toggle();
    })
    $("img#consultation-img").hover(function () {
        $("div.consultation").toggle();
    })
    $("img#eval-img").hover(function () {
        $("div.evaluation").toggle();
    })
    $("img#recommendations-img").hover(function () {
        $("div.recommendations").toggle();
    })
    $("img#sessions-img").hover(function () {
        $("div.sessions").toggle();
    })


    //scroll down to section of page
    $("#company").click(function () {
        $('html,body').animate({
            scrollTop: $(".company").offset().top
        }, 'slow');
    });
    $("#therapist").click(function () {
        $('html,body').animate({
            scrollTop: $(".therapist").offset().top
        }, 'slow');
    });
    $("#teletherapy").click(function () {
        $('html,body').animate({
            scrollTop: $(".teletherapy").offset().top
        }, 'slow');
    });
        //up arrow
    $(".up-arrow").click(function () {
        $("html, body").animate({ scrollTop: 0 }, "slow");
    });


    //Displays result of marking a goal as met
    $('.complete').click(function () {
        var route = '#completed-goal-' + this.id;
        $.ajax({
            type: 'GET',
            url: 'Admin/Complete/' + this.id,
            success: function (result) {
                $(route).html(result);
            }
        });
    });
});

