$(document).ready(function() {
});

window.getPlayer = function() {
    var hasPlayer = !!($('.mejs__player').length)
    if(hasPlayer) {
        return new MediaElementPlayer($('.mejs__player')[1]);
    } else {
        return false;
    }
}
