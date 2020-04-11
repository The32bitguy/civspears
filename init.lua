local woodshield= {
    initial_properties = {
        hp_max = 30,
        physical = true,
        collide_with_objects = true,
        collisionbox = {-0.1, -0.5, -0.5, 0.1, 0.5, 0.5},
        visual = "upright_sprite",
        visual_size = {x = 1, y = 1},
        textures = {"spears_wooden_shield.png"},
        spritediv = {x = 1, y = 1},
        initial_sprite_basepos = {x = 0, y = 0},
    },  
}
minetest.register_entity("spears:woodshield", woodshield)
minetest.register_craftitem("spears:woodshield", {
    description = "Wooden Shield",
    inventory_image = "spears_wooden_shield.png",
    on_use = function(itemstack, player, pointed_thing)
    local bearer = player
    local pos = player:get_pos()
    local obj = minetest.add_entity(pos, "spears:woodshield", nil)
   obj:set_attach(player,
    "Arm_Right",           -- default bone
    {x=-2, y=4.5, z=2},   -- default position
    {x=180, y=120, z=0}) -- default rotation
    end
})

    