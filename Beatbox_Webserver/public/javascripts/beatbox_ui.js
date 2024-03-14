var socket = io.connect();

$(document).ready(function() {
    $('#modeNone').click(function() {
        socket.emit('message', 'mode_none');
    });
    $('#modeRock1').click(function() {
        socket.emit('message', 'mode_one');
    });
    $('#modeRock2').click(function() {
        socket.emit('message', 'mode_two');
    });
    $('#volumeDown').click(function() {
        socket.emit('message', 'volume_down');
    });
    $('#volumeUp').click(function() {
        socket.emit('message', 'volume_up');
    });
    $('#bpmDown').click(function() {
        socket.emit('message', 'bpm_down');
    });
    $('#bpmUp').click(function() {
        socket.emit('message', 'bpm_up');
    });
    $('#hiHatSound').click(function() {
        socket.emit('message', 'hi_hat');
    });
    $('#snareSound').click(function() {
        socket.emit('message', 'snare');
    });
    $('#bassSound').click(function() {
        socket.emit('message', 'bass');
    });
    $('#stop').click(function() {
        socket.emit('message', 'stop');
    });

    socket.on('command', function(command) {
        console.log('Received command: ' + command);
    });
});


