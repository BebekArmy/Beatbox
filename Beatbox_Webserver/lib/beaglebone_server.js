import socketio from 'socket.io';

var io;

exports.listen = function(server) {
    io = socketio.listen(server);
    io.set('log level', 1);
    io.sockets.on('connection', function(socket) {
        handleCommand(socket);
    });
}

function handleCommand(socket) {
    socket.on('command', function(command) {
        console.log('Received command: ' + command);
        socket.broadcast.emit('command', command);
    });
}