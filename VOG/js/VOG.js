$(document).ready(function () {

    handleScrollables();

    $('.commentIcon').click(function () {
        $(this).closest('.cardFrame').toggleClass('flipped');
    });

});

function generateCardColor(randColor) {
    switch (randColor) {
        case 1: return randColor = softColors["Green"];
        case 2: return randColor = softColors["Violet"];
        case 3: return randColor = softColors["WebHeadBlue"];
        case 4: return randColor = softColors["Red"];
    }
}
