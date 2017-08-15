require("util")

data:extend({
	{
		type = "recipe",
		name = "PM1225",
		enabled = true,
		ingredients =
		{
			{"engine-unit", 20},
			{"electronic-circuit", 10},
			{"steel-plate", 30}
		},
		result = "PM1225"
	},
	{
		type = "item-with-entity-data",
		name = "PM1225",
		icon = "__PM1225__/icon_x512.png",
		flags = {"goes-to-quickbar"},
		subgroup = "transport",
		order = "a[train-system]-f[PM1225]",
		place_result = "PM1225",
		stack_size = 50
	},
	{
		type = "locomotive",
		name = "PM1225",
		icon = "__PM1225__/icon_x512.png",
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
		minable = {mining_time = 1, result = "PM1225"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1000,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		weight = 2000,
		max_speed = 1.2,
		max_power = "600kW",
		reversing_power_modifier = 0.6,
		braking_force = 10,
		friction_force = 0.50,
		vertical_selection_shift = -0.5,
		air_resistance = 0.0075, -- this is a percentage of current speed that will be subtracted
		connection_distance = 3,
		joint_distance = 4,
		energy_per_hit_point = 5,
		resistances =
		{
			{
				type = "fire",
				decrease = 15,
				percent = 50
			},
			{
				type = "physical",
				decrease = 15,
				percent = 30
			},
			{
				type = "impact",
				decrease = 50,
				percent = 60
			},
			{
				type = "explosion",
				decrease = 15,
				percent = 30
			},
			{
				type = "acid",
				decrease = 10,
				percent = 20
			}
		},
		burner =
		{
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 3,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				}
			}
		},
		front_light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "extra-high",
					flags = { "light" },
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -16},
				size = 2,
				intensity = 0.6,
				color = {r = 1.0, g = 0.9, b = 0.9}
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "extra-high",
					flags = { "light" },
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -16},
				size = 2,
				intensity = 0.6,
				color = {r = 1.0, g = 0.9, b = 0.9}
			}
		},
		back_light = rolling_stock_back_light(),
		stand_by_light = rolling_stock_stand_by_light(),
		color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
		pictures =
		{
			layers =
			{
				{
					priority = "very-low",
					width = 512,
					height = 680/2,
					direction_count = 256,
					filenames =
					{
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_0.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_1.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_2.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_3.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_4.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_5.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_6.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_7.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_8.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_9.png",
						"__PM1225__/graphics/PM1225_lr_entity_spritesheet_10.png",
					},
					line_length = 4,
					lines_per_file = 6,
					shift = {0.0, -0.5},
					scale = 1,
					hr_version =
					{
						priority = "very-low",
						width = 476*2,
						height = 680,
						direction_count = 256,
						filenames =
						{
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_0.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_1.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_2.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_3.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_4.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_5.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_6.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_7.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_8.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_9.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_10.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_11.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_12.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_13.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_14.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_15.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_16.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_17.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_18.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_19.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_20.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_21.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_22.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_23.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_24.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_25.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_26.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_27.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_28.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_29.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_30.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_31.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_32.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_33.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_34.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_35.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_36.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_37.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_38.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_39.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_40.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_41.png",
							"__PM1225__/graphics/PM1225_hr_entity_spritesheet_42.png",
						},
						line_length = 2,
						lines_per_file = 3,
						shift = {0.0, -0.5},
						scale = 0.5
					}
				},
			}
		},
		wheels = {
			priority = "very-low",
			width = 115,
			height = 115,
			direction_count = 256,
			filenames =
			{
				"__base__/graphics/entity/diesel-locomotive/train-wheels-01.png",
				"__base__/graphics/entity/diesel-locomotive/train-wheels-02.png"
			},
			line_length = 8,
			lines_per_file = 16,
			hr_version =
			{
				priority = "very-low",
				width = 229,
				height = 227,
				direction_count = 256,
				filenames =
				{
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-1.png",
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-2.png",
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-3.png",
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-4.png",
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-5.png",
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-6.png",
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-7.png",
					"__base__/graphics/entity/diesel-locomotive/hr-train-wheels-8.png",
				},
				line_length = 4,
				lines_per_file = 8,
				--shift = {0.015625, -0.453125}, original shifting from spritesheeter (likely needs doubling or halving)
				scale = 0.00001
			}
		},
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-smoke",
				repeat_count = 125,
				entity_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-smoke",
				repeat_count = 125,
				entity_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = drive_over_tie(),
		tie_distance = 50,
		vehicle_impact_sound =	{ filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-engine.ogg",
				volume = 0.4
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
		sound_minimum_speed = 0.5;
	},
})