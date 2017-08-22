//set sprite and sprite index


if (jumpKey) // changes body image index
{
    image_index ++;
   image_speed = 0;
}

if (duckKey)
{
    
}

if (!jumping && !falling)
{
    switch(state)
    {
        case "standing":
           // sprite_index = spr_body1;
            image_speed = 0;
        break;
        
        case "walking":
            sprite_index = spr_body;
            image_speed = 0;
        break;
        
        case "running":
            sprite_index = spr_body;
            image_speed = 0;
        break;
        
        case "ducking":
            sprite_index = spr_body;
            image_index = 0;
        break;
    }
}

switch (dir)
{
    case "left":
        image_xscale = -1;
    break;
    
    case "right":
        image_xscale = 1;
    break;
}
