-- The PM1225 is the base game locomotive with its own sprites, so it keeps up with the locomotive's sounds, triggers
-- and new fields between Factorio versions.

local filenames = {}
for i = 0, 10 do
	filenames[#filenames + 1] = "__ChooChoo__/graphics/PM1225_hr_entity_spritesheet_" .. i .. ".png"
end

local item = table.deepcopy(data.raw["item-with-entity-data"]["locomotive"])
item.name = "PM1225"
item.icon = "__ChooChoo__/icon_x512.png"
item.icon_size = 512
item.order = "c[rolling-stock]-a[locomotive]-b[PM1225]"
item.place_result = "PM1225"
item.stack_size = 50

local locomotive = table.deepcopy(data.raw["locomotive"]["locomotive"])
locomotive.name = "PM1225"
locomotive.icon = "__ChooChoo__/icon_x512.png"
locomotive.icon_size = 512
locomotive.minable = {mining_time = 1, result = "PM1225"}
locomotive.corpse = "medium-remnants"
locomotive.dying_explosion = "medium-explosion"
locomotive.color = {r = 0.92, g = 0.07, b = 0, a = 0.5}
locomotive.pictures = {
	rotated = {
		layers = {
			{
				priority = "very-low",
				width = 1024,
				height = 680,
				direction_count = 256,
				filenames = filenames,
				line_length = 4,
				lines_per_file = 6,
				shift = {0.0, -0.5},
				scale = 0.5,
				allow_low_quality_rotation = true,
				usage = "train",
			},
		},
	},
}
-- the model has its own wheels and lights; the base locomotive's would draw on top of it
locomotive.wheels = nil
locomotive.front_light_pictures = nil
locomotive.water_reflection = nil

data:extend({
	{
		type = "recipe",
		name = "PM1225",
		enabled = true,
		energy_required = 4,
		ingredients = {
			{type = "item", name = "engine-unit", amount = 20},
			{type = "item", name = "electronic-circuit", amount = 10},
			{type = "item", name = "steel-plate", amount = 30},
		},
		results = {{type = "item", name = "PM1225", amount = 1}},
	},
	item,
	locomotive,
})
