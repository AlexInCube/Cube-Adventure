if instance_exists(obj_selectlevel){with (obj_selectlevel) instance_destroy()}
if instance_exists(obj_volumebar){with (obj_volumebar) instance_destroy()}	
if instance_exists(obj_resolutionbar){with (obj_resolutionbar) instance_destroy()}
if instance_exists(obj_checkbox){with (obj_checkbox) instance_destroy()}
if instance_exists(global.apply){with (global.apply) instance_destroy()}
if instance_exists(global.textboxheight){with (global.textboxheight) instance_destroy()}
if instance_exists(global.textboxwidth){with (global.textboxwidth) instance_destroy()}
if instance_exists(global.applyroomsize){with (global.applyroomsize) instance_destroy()}
if instance_exists(obj_textbox){with (obj_textbox) instance_destroy()}
if instance_exists(obj_window){with (obj_window) instance_destroy()}
if instance_exists(obj_dropbutton){with (obj_dropbutton) instance_destroy()}
if instance_exists(obj_dropablebutton){with (obj_dropablebutton) instance_destroy()}
if instance_exists(global.loadlevel){with (global.loadlevel) instance_destroy()}

if obj_mainmenu.info=1{obj_mainmenu.info=0}