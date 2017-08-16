/// scr_handleIncomingPackets(buffer, socket)

var buffer = argument[0];
var socket = argument[1];
var msgId = buffer_read(buffer, buffer_u8);

switch (msgId)
{
    case 1://latency request
        var time = buffer_read(buffer, buffer_u32);
        buffer_seek(global.buffer, buffer_seek_start, 0);
        buffer_write(global.buffer, buffer_u8, 1);
        buffer_write(global.buffer, buffer_u32, time);
        // send back to player who sent this message
        network_send_packet(socket, global.buffer, buffer_tell(global.buffer));
    break;
}
