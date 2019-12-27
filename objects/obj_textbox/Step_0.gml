/// @description Insert description here
// You can write your code in this editor
if (focus = true)
   {
     //if is focused, check for user hitting enter to stop input
     if (keyboard_check_pressed(vk_enter))
         {
           //stop focus on player hitting enter
              focus = false;
         }
     //Get input up to max characters.
       if (string_length(message)<limit)
         {
              message = keyboard_string;
         }
      /* If they entered max characters no longer get input unless
        it is backspace, then delete the last character and set
       the keyboard_string to the previous characters. */
       else if (keyboard_check_pressed(vk_backspace))
        {
            message = string_delete(message,limit,1);
            keyboard_string = message;
        }
 }
 
