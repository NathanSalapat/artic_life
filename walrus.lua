mobs:register_mob("artic_life:walrus", {
	type = "animal",
	passive = false,
	attack_type = "dogfight",
   reach = 1,
	damage = 5,
	hp_min = 5,
	hp_max = 15,
	armor = 200,
	collisionbox = {-0.25, -0.4, -0.25, 0.25, 0.3, 0.25},
	visual = "mesh",
	mesh = "mobs_walrus.b3d",
	drawtype = "front",
	textures = {
		{"mobs_walrus1.png"},
		{"mobs_walrus2.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=8,y=8},
	makes_footstep_sound = false,
--	sounds = {
--		random = "penguin_chirrup",
--	},
	-- speed and jump
	walk_velocity = 1,
	run_velocity = 2,
	jump = true,
	jump_height = 1,
	stepheight = 1.1,
	floats = 1,
	-- drops raw meat when dead
	drops = {
		{name = "mobs:meat_raw",
		chance = 1, min = 2, max = 5},
	},
	-- damaged by
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	-- model animation
	animation = {
		speed_normal = 15,	speed_run = 15,
		stand_start = 0,		stand_end = 50, -- head down/up
		walk_start = 55,		walk_end = 95, -- walk
		run_start = 55,		run_end = 95, -- walk
		punch_start = 100,		punch_end = 145, -- attack
	},
	follow = "farming:wheat", view_range = 7,
	replace_rate = 50,
	replace_what = {"group:flora"},
	replace_with = "air",
})

mobs:register_spawn("artic_life:walrus", {"default:dirt_with_snow", "default:snowblock"}, 20, 0, 20000, 1, 31000)
mobs:register_egg("artic_life:walrus", "Walrus", "default_grass.png", 1)