$(document).ready(function() {
});

window.jumpPlayer = function(time) {
    var player = new MediaElementPlayer($('.mejs__player')[1])
    player.pause()
    player.play()
    player.setCurrentTime(time)
    return true
}
