var temp_y = obj_inventory.ystart
instance_destroy(obj_inventory);
var new_inventory = instance_create_layer(x, temp_y, "User_interface", obj_inventory);
new_inventory.persistent = true;