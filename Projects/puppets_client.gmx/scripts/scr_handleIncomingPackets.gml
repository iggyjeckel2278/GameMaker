var buffer = argument[0];
var msgId = buffer_read(buffer, buffer_u8);//find the tag

switch(msgId)
{
    case 1://latency request
        var time = buffer_read(buffer, buffer_u32);//read in the time from the server
        latency = current_time - time;//update our latency
    break;
    
    case 2://registration request
        var response = buffer_read(buffer, buffer_u8);
        
        switch(response)
        {
            case 0://failure
                scr_showNotification("Registration failed! Username already exists!");
            break;
            
            case 1://success
                room_goto(rm_gameWorld);
            break;
        }
    break;
    
    case 3://login request
        var response = buffer_read(buffer, buffer_u8);
        
        switch(response)
        {
            case 0://failure
                scr_showNotification("Login failed! Username doesn't exist or password is incorrect!");
            break;
            
            case 1://success
                room_goto(rm_gameWorld);
            break;
        }
    break;
}
