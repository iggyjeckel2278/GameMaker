/// scr_handleIncomingPackets(buffer)

var buffer = argument[0];
var msgId = buffer_read(buffer, buffer_u8);

switch(msgId)
// 1 - latency
// 2 - registration
{
    case 1://latency request
        var time = buffer_read(buffer, buffer_u32);
        latency = current_time - time;
    break;
    
    case 2: // registration
        var response = buffer_read(buffer, buffer_u8);
        
        switch(response)
        {
            case 0: // failure
                scr_showNotification("registration failed! username already exists!");
            break;
            
            case 1: // success
                room_goto(rm_gameWorld);
            break;
        }
}
