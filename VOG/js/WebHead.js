// Everytime a page is loaded with this sheet linked; the popUps and scollables will be enabled.
$(document).ready(function () {
    handleHelpPopups();
    handleScrollables();
    closePopup();
    safetyLight();

});

function safetyLight() {
    $('#light span').on('click', function () {
        var self = $('.active');
        self.removeClass('active');
        $(this).addClass('active');
    });
}


function setSafetyLight(lightStatus) {

    var lightObj = $('#light span');
    var self = $('.active');
    self.removeClass('active');

    switch (lightStatus) {
        case 'red':
            $('#red').addClass('active');
            break;
        case 'yellow':
            $('#yellow').addClass('active');
            break;
        case 'green':
        default:
            $('#green').addClass('active');
            break;
    }
}
var chartColors = {
  
    "Green": "rgba(102, 255, 102,0.6)",
    "Violet": "rgba(172, 85, 138,0.6)",
    "Red": "rgba(255, 60, 30,0.6)",
    "LightBlue": "rgba(58, 194, 208,0.6)",
    "Yellow": "rgba(255, 255, 0,0.6)",
    "Macaroni": "rgba(250, 175, 60,0.6)",
    "WebHeadBlue": "rgba(8, 129, 194,0.6)",
    "WebHeadOrange": "rgba(243, 115, 42,0.6)",
    "Grey": "rgba(179, 179, 179,0.6)"
};
var softColors = {
   
    "Green": "rgba(102, 255, 102,0.3)",
    "Violet": "rgba(172, 85, 138,0.3)",
    "Red": "rgba(255, 60, 30,0.3)",
    "LightBlue": "rgba(58, 194, 208,0.3)",
    "Yellow": "rgba(255, 255, 0,0.3)",
    "Macaroni": "rgba(250, 175, 60,0.3)",
    "WebHeadBlue": "rgba(8, 129, 194,0.3)",
    "WebHeadOrange": "rgba(243, 115, 42,0.3)",
    "Grey": "rgba(179, 179, 179,0.3)"
};
var highlightColors = {
   
    "Green": "rgba(102, 255, 102,0.8)",
    "Violet": "rgba(172, 85, 138,0.8)",
    "Red": "rgba(255, 60, 30,0.8)",
    "LightBlue": "rgba(58, 194, 208,0.8)",
    "Yellow": "rgba(255, 255, 0,0.8)",
    "Macaroni": "rgba(250, 175, 60,0.8)",
    "WebHeadBlue": "rgba(8, 129, 194,0.8)",
    "WebHeadOrange": "rgba(243, 115, 42,0.8)",
    "Grey": "rgba(179, 179, 179,0.8)"

};
//These sets are descriptions of every helpBox on the page 
var helpDescriptions = {

    "NearMissLists": "<p><span>Your Reports</span></p><p>These are the open reports that you are associated with.</p><br/><p><span>Open Reports</span></p><p>These are all other open reports that you are not associated with.</p>",
    "data1": "<p><span>Your Total Reports Resolved</span></p><p>This notes the total number of resolved reports that you are associated with.</p>",
    "data2": "<p><span>Your Submission Rank</span></p><p>This shows your rank this year based on your Total Reports Resolved.</p>",
    "data3": "<p><span>All-Time Total Resolved</span></p><p>This shows the total number of reports that have been resolved since the beginning of time.</p>",
    "data4": "<p><span>Average Time of Resolution</span></p><p>This shows the average time, in days, taken to resolve a report this year.</p>",
    "ResolveGoals": "<p><span>Resolved Goals</span></p><p>These charts show the percentage of reports that are resolved compared to the Month's Goal and the Year's Goal.</p>",
    "ResolvedInCategory": "<p><span>Reports in Category</span></p><p>This chart compares the total number of resolved reports by their associated category. </p>",
    "ResolvedInArea": "<p><span>Reports in Area</span></p><p>This chart compares the total number of resolved reports in the respective location on the map.<br/><br/>Grey dots indicate that there are NO reports in that area.<br/><br/>The size of the colored, not grey, bubbles denote the number of reports from the respective area.</p>",
    "SafetyLight": "<p><span>Safety Light</span></p><p> The safety light indicates the time passed since a workplace incident.</p>",
    "Training": "<p><span>Training</span></p><p>This is a list of links that direct you to the associated training page.</p>",
    "ComingSoon": "<p><span>Comng Soon</span></p><p> This is a list of upcoming projects that will be deployed to the WebHead application in the near future.</p>",
    "default": "<p><span>Default</span></p><p>..</p>"
};
// Handles generating the popup data content by assigning the helpDescription[] to the respective popUp
function getHelpDescription(popup) {
    var popupId = popup.attr('id');
    switch (popupId) {
        case "NearMissLists":
            $('.popup-content').html(helpDescriptions["NearMissLists"]);
            break;
        case "data1":
            $('.popup-content').html(helpDescriptions["data1"]);
            break;
        case "data2":
            $('.popup-content').html(helpDescriptions["data2"]);
            break;
        case "data3":
            $('.popup-content').html(helpDescriptions["data3"]);
            break;
        case "data4":
            $('.popup-content').html(helpDescriptions["data4"]);
            break;
        case "ResolveGoals":
            $('.popup-content').html(helpDescriptions["ResolveGoals"]);
            break;
        case "polarArea":
            $('.popup-content').html(helpDescriptions["ResolvedInCategory"]);
            break;
        case "bubbleArea":
            $('.popup-content').html(helpDescriptions["ResolvedInArea"]);
            break;
        case "safetyLight":
            $('.popup-content').html(helpDescriptions["SafetyLight"]);
            break;
        case "training":
            $('.popup-content').html(helpDescriptions["Training"]);
            break;
        case "comingSoon":
            $('.popup-content').html(helpDescriptions["ComingSoon"]);
            break;
        default:
            $('.popup-content').html(helpDescriptions["default"]);
            break;
    }
}

// Prevents the window/page from scrolling when mouse is hovering any "scrolltable's body".
function handleScrollables() {
    $('.scrolltable > .body, .cardFrame').bind('mousewheel DOMMouseScroll', function (e) {
        var e0 = e.originalEvent,
        delta = e0.wheelDelta || -e0.detail;
        this.scrollTop += (delta < 0 ? 1 : -1) * 30;
        e.preventDefault();
    });
}
// Handles all of the Helper popups "?" on each page.
function handleHelpPopups() {
    $('.helpControl').bind('click', function (event) {

        var thisGGParent = $(this).parent().parent().parent();
        getHelpDescription(thisGGParent);
        var targeted_popup_class = $(this).attr('data-popup-open');
        $('[data-popup="' + targeted_popup_class + '"]').css('left', event.pageX + 10);
        $('[data-popup="' + targeted_popup_class + '"]').css('top', event.pageY);
        $('[data-popup="' + targeted_popup_class + '"]').css('display', 'inline');
        $('[data-popup="' + targeted_popup_class + '"]').css('position', 'absolute');
        e.preventDefault();
    });

    //$('.generalData-content').bind('click', function (event) {

    //    var targeted_popup_class = $(this).attr('data-popup-open');
    //    $("#overlay-back").fadeIn(300);
    //    $('.popup-content').html(helpDescriptions["default"]);
    //    $('[data-popup="' + targeted_popup_class + '"]').fadeIn(1000);
    //    evt.preventDefault();
    //});

}
// Closes any popup when user clicks "x"
function closePopup() {
    //----- CLOSE
    $('[data-popup-close]').on('click', function (e) {
        var targeted_popup_class = $(this).attr('data-popup-close');
        $("#overlay-back").fadeOut(300);
        $('[data-popup="' + targeted_popup_class + '"]').fadeOut(100);
        e.preventDefault();
    });
}

function multiDoughnutChart(bufferedTotal, yearResolvedTotal, yearResolvedGoal, monthResolvedTotal, monthResolvedGoal) {

    var doughnutData = [
                {
                    value: yearResolvedTotal,
                    color: chartColors["WebHeadOrange"],
                    highlight: highlightColors["WebHeadOrange"],
                    animationEasing: "easeOutBounce",
                    segmentStrokeColor: chartColors["WebHeadOrange"],
                    label: "Resolved This Year: " + bufferedTotal

                },
                {
                    value: getReportsRemaining(bufferedTotal,yearResolvedGoal),
                    color: softColors["WebHeadOrange"],
                    highlight: highlightColors["WebHeadOrange"],
                    segmentStrokeColor: softColors["WebHeadOrange"],
                    animationEasing: "easeOutBounce",
                    label: "Remaining to Yearly Goal: " + (yearResolvedGoal - bufferedTotal),

                }
    ];
    var doughnutData2 = [
                    {
                        value: monthResolvedTotal,
                        color: chartColors["WebHeadBlue"],
                        highlight: highlightColors["WebHeadBlue"],
                        segmentStrokeColor: chartColors["WebHeadBlue"],
                        animationEasing: "easeOutBounce",
                        label: "Resolved This Month"
                    },
                 {
                     value: getReportsRemaining(monthResolvedTotal,monthResolvedGoal),
                     color: softColors["WebHeadBlue"],
                     highlight: highlightColors["WebHeadBlue"],
                     segmentStrokeColor: softColors["WebHeadBlue"],
                     animationEasing: "easeOutBounce",
                     label: "Remaining to Monthly Goal"
                 }
    ];
    var ctx1 = $("#d1").get(0).getContext("2d");
    var myChart1 = new Chart(ctx1).Doughnut(doughnutData, {
        percentageInnerCutout: 82,
        tooltipTemplate: "<%=label%>"
    });
    var ctx2 = $("#d2").get(0).getContext("2d");
    var myChart2 = new Chart(ctx2).Doughnut(doughnutData2, {
        percentageInnerCutout: 80,
        tooltipTemplate: "<%=label%>: <%=value%>"
    });

}

function getReportsRemaining(reportCount, goalCount){

	if (reportCount >= goalCount){
		return 0;
	}
	else{
		return goalCount - reportCount;
	}
}
// This handles the click event of each segment in the chart.
// Calling getSegmentsAtEvent(event) on your Chart instance passing an argument of an event, or jQuery event,
// will return the segment elements that are at that the same position of that event.
function togglePopUp(thisElement, thisChart) {
    $(thisElement).click(function (evt) {
        var activePoints = thisChart.getSegmentsAtEvent(evt);
        // Checks to see that the click was a charts object and not an empty space on the canvas
        if (Object.keys(activePoints).length > 0) {
            var targeted_popup_class = $(this).attr('data-popup-open');
            $("#overlay-back").fadeIn(300);
            $('.popup-content').html(helpDescriptions["default"]);
            $('[data-popup="' + targeted_popup_class + '"]').fadeIn(1000);
            evt.preventDefault();
        }
    });
}