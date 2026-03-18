//DEPRECATED OLD CODE

/*function collision_line_init(argument0) {
	temp_object=object_add()
	//_u9f63s1g4bc2i3fg1v78s2t=object_a
	object_set_mask(temp_object,argument0)
	temp_instance=instance_create(x,y,temp_object)
	global._e56sd54f=1


}*/

///////////////////////

// Call this function with a sprite for collision (optional)
function collision_line_init(collision_mask_sprite) 
{
	inst=instance_create_depth(x,y,0,obj_collision_dummy);
	//inst = instance_create_layer(x, y, "Compatibility_Instances_Depth_0", obj_collision_dummy);

	inst.sprite_index = collision_mask_sprite;
	global.collision_line_ready = true;
}
