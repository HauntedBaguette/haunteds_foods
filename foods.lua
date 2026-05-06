local S = minetest.get_translator("haunteds_foods")

-- Clay bowl
local bowl = "haunteds_foods:clay_bowl"
local bowl_image = "haunteds_foods_clay_bowl.png"
minetest.register_node("haunteds_foods:clay_bowl", {
    description = S("Clay Bowl"),
    inventory_image = bowl_image,
    groups = {dig_immediate = 3, food_bowl = 1, attached_node = 1},
    drawtype = "plantlike",
    tiles = {bowl_image},
    wield_image = bowl_image,
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = bowl,
    recipe = {
        {"default:clay_brick"}
    }
})

-- Sugar cube
local sugar = "haunteds_foods:fruit_sugar_cube"
minetest.register_node(sugar, {
    description = S("Fruit Sugar Cube"),
    inventory_image = "haunteds_foods_fruit_sugar_cube.png",
    groups = {dig_immediate = 3, food_sugar = 1, flammable = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {"haunteds_foods_fruit_sugar_cube.png"},
    wield_image = "haunteds_foods_fruit_sugar_cube.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = sugar.." 2",
    recipe = {{"group:food_fruit", "group:food_fruit"}}
})
minetest.register_craft({
    output = sugar.." 2",
    recipe = {{"group:food_berry", "group:food_berry"}}
})
minetest.register_craft({
    type = "shapeless",
    output = sugar.." 2",
    recipe = {"group:food_fruit", "group:food_berry"}
})

-- Olive oil
local olive_oil = "haunteds_foods:olive_oil"
minetest.register_node(olive_oil, {
    description = S("Bottle of Olive Oil"),
    drawtype = "plantlike",
    tiles = {"haunteds_foods_olive_oil_overlay.png^vessels_glass_bottle.png"},
    inventory_image = "haunteds_foods_olive_oil_overlay.png^vessels_glass_bottle.png",
    wield_image = "haunteds_foods_olive_oil_overlay.png^vessels_glass_bottle.png",
    paramtype = "light",
    is_ground_content = false,
    walkable = false,
    selection_box = {
        type = "fixed", fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25}
    },
    groups = {
        food_oil = 1, vessel = 1, dig_immediate = 3, attached_node = 1,
        compostability = 45, handy = 1
    },
    sounds = default.node_sound_glass_defaults()
})
minetest.register_craft({
    output = olive_oil,
    recipe = {
        {"vessels:glass_bottle", "ebiomes:olives"}
    }
})

-- Trail mix
local trail_mix = "haunteds_foods:trail_mix"
minetest.register_craftitem(trail_mix, {
    description = S("Trail Mix"),
    inventory_image = "haunteds_foods_trail_mix.png",
    on_use = minetest.item_eat(5),
})
minetest.register_craft({
    output = trail_mix,
    recipe = {
        {"group:food_cereal", "group:food_berry"}
    }
})
minetest.register_craft({
    output = trail_mix,
    recipe = {
        {"group:food_nut", "group:food_berry"}
    }
})

-- Roasted Cereals
local roasted_cereals = "haunteds_foods:roasted_cereals"
minetest.register_craftitem(roasted_cereals, {
    description = S("Roasted Cereals"),
    inventory_image = "haunteds_foods_roasted_cereals.png",
    on_use = minetest.item_eat(1),
    groups = {food_cereal = 1}
})
minetest.register_craft({
    output = roasted_cereals,
    type = "cooking",
    recipe = "farming:wheat",
    cooktime = 3
})

-- Farming redo and df_caverns
local farming_redo_grasses = {"oat", "barley", "rye"}
for _, grass in ipairs(farming_redo_grasses) do
	if minetest.registered_items["farming:" .. grass] then
		minetest.register_craft({
            output = roasted_cereals,
            type = "cooking",
            recipe = "farming:" .. grass,
            cooktime = 3
        })
    end
end
if minetest.registered_items["df_farming:cave_wheat"] then
    minetest.register_craft({
        output = roasted_cereals,
        type = "cooking",
        recipe = "df_farming:cave_wheat",
        cooktime = 3
    })
end

-- Sweet Cereals
local sweet_cereals = "haunteds_foods:sweet_cereals"
minetest.register_craftitem(sweet_cereals, {
    description = S("Sweet Cereals"),
    inventory_image = "haunteds_foods_sweet_cereals.png",
    on_use = minetest.item_eat(1),
})
minetest.register_craft({
    output = sweet_cereals,
    type = "shapeless",
    recipe = {roasted_cereals, "group:food_sugar"}
})


-- Bowl of Cereals
minetest.register_node("haunteds_foods:cereal_bowl", {
    description = S("Bowl of Cereals"),
    inventory_image = bowl_image.."^haunteds_foods_cereal_bowl_overlay.png",
    on_use = minetest.item_eat(5, bowl),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {bowl_image.."^haunteds_foods_cereal_bowl_overlay.png"},
    wield_image = bowl_image.."^haunteds_foods_cereal_bowl_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
-- Bowl of Sweet Cereals
minetest.register_node("haunteds_foods:sweet_cereal_bowl", {
    description = S("Bowl of Sweet Cereals"),
    inventory_image = bowl_image.."^haunteds_foods_sweet_cereal_bowl_overlay.png",
    on_use = minetest.item_eat(6, bowl),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {bowl_image.."^haunteds_foods_sweet_cereal_bowl_overlay.png"},
    wield_image = bowl_image.."^haunteds_foods_sweet_cereal_bowl_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = "haunteds_foods:cereal_bowl",
    recipe = {
        {roasted_cereals, roasted_cereals, roasted_cereals},
        {"group:food_milk_glass", bowl, ""}
    }
})
minetest.register_craft({
    output = "haunteds_foods:cereal_bowl 2",
    recipe = {
        {roasted_cereals, roasted_cereals, roasted_cereals},
        {roasted_cereals, roasted_cereals, roasted_cereals},
        {"group:food_milk", bowl, bowl}
    }
})
minetest.register_craft({
    output = "haunteds_foods:sweet_cereal_bowl",
    recipe = {
        {sweet_cereals, sweet_cereals, sweet_cereals},
        {"group:food_milk_glass", bowl, ""}
    }
})
minetest.register_craft({
    output = "haunteds_foods:sweet_cereal_bowl 2",
    recipe = {
        {sweet_cereals, sweet_cereals, sweet_cereals},
        {sweet_cereals, sweet_cereals, sweet_cereals},
        {"group:food_milk", bowl, bowl}
    }
})

-- Berry pie
minetest.register_node("haunteds_foods:berry_pie", {
    description = S("Berry Pie"),
    inventory_image = "haunteds_foods_berry_pie.png",
    on_use = minetest.item_eat(3),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "torchlike",
    tiles = {"haunteds_foods_berry_pie.png"},
    wield_image = "haunteds_foods_berry_pie.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_node("haunteds_foods:berry_pie_cooked", {
    description = S("Cooked Berry Pie"),
    inventory_image = "haunteds_foods_berry_pie_cooked.png",
    on_use = minetest.item_eat(8),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "torchlike",
    tiles = {"haunteds_foods_berry_pie_cooked.png"},
    wield_image = "haunteds_foods_berry_pie_cooked.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = "haunteds_foods:berry_pie",
    recipe = {{"group:food_flour", "group:food_berry", "group:food_sugar"}}
})
minetest.register_craft({
    output = "haunteds_foods:berry_pie_cooked",
    type = "cooking",
    recipe = "haunteds_foods:berry_pie",
    cooktime = 15
})

-- Sandwich
minetest.register_node("haunteds_foods:sandwich", {
    description = S("Sandwich"),
    inventory_image = "farming_bread.png^haunteds_foods_sandwich_overlay.png",
    on_use = minetest.item_eat(10),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {"farming_bread.png^haunteds_foods_sandwich_overlay.png"},
    wield_image = "farming_bread.png^haunteds_foods_sandwich_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
if minetest.registered_items["farming:bread_slice"] then
    minetest.register_craft({
        output = "haunteds_foods:sandwich",
        recipe = {
            {"", "farming:bread_slice", ""},
            {"group:food_lettuce", "group:food_meat_raw", "group:food_tomato"},
            {"", "farming:bread_slice", ""}
        }
    })
    minetest.register_craft({
        output = "haunteds_foods:sandwich",
        recipe = {
            {"", "farming:bread_slice", ""},
            {"group:food_lettuce", "group:food_meat", "group:food_tomato"},
            {"", "farming:bread_slice", ""}
        }
    })
else
    minetest.register_craft({
        output = "haunteds_foods:sandwich",
        recipe = {
            {"", "farming:bread", ""},
            {"group:food_lettuce", "group:food_meat_raw", "group:food_tomato"}
        }
    })
    minetest.register_craft({
        output = "haunteds_foods:sandwich",
        recipe = {
            {"", "farming:bread", ""},
            {"group:food_lettuce", "group:food_meat", "group:food_tomato"}
        }
    })
end


-- Spinach Pasta
minetest.register_node("haunteds_foods:spinach_pasta", {
    description = S("Spinach Pasta"),
    inventory_image = bowl_image.."^haunteds_foods_spinach_pasta_overlay.png",
    on_use = minetest.item_eat(14, bowl),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {bowl_image.."^haunteds_foods_spinach_pasta_overlay.png"},
    wield_image = bowl_image.."^haunteds_foods_spinach_pasta_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = "haunteds_foods:spinach_pasta",
    recipe = {
        {"group:food_spinach", "farming:pasta", "group:food_spinach"},
        {"group:food_onion", "group:food_meat", "group:food_tomato"},
        {"group:food_oil", bowl, "farming:chili_powder"}
    }
})

-- Gombo Bowl
minetest.register_node("haunteds_foods:gombo_bowl", {
    description = S("Gombo Bowl"),
    inventory_image = bowl_image.."^haunteds_foods_gombo_overlay.png",
    on_use = minetest.item_eat(14, bowl),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {bowl_image.."^haunteds_foods_gombo_overlay.png"},
    wield_image = bowl_image.."^haunteds_foods_gombo_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = "haunteds_foods:gombo_bowl",
    recipe = {
        {"group:food_okra", "farming:chili_powder", "group:food_okra"},
        {"group:food_onion", "group:food_meat", "group:food_tomato"},
        {"group:food_oil", "group:food_cutting_board", bowl}
    },
    replacements = {
        {"group:food_cutting_board", "farming:cutting_board"}, {bowl, bowl}
    }
})

-- Butter Chicken
minetest.register_node("haunteds_foods:butter_chicken", {
    description = S("Butter Chicken"),
    inventory_image = bowl_image.."^farming_bread.png^haunteds_foods_butter_chicken.png",
    on_use = minetest.item_eat(20, bowl),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {"farming_bread.png^haunteds_foods_butter_chicken.png"},
    wield_image = "farming_bread.png^haunteds_foods_butter_chicken.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = "haunteds_foods:butter_chicken",
    recipe = {
        {"group:food_potato", "group:food_onion", "group:food_carrot"},
        {"group:food_rice", "group:food_chicken", "farming:chili_powder"},
        {"group:food_butter", bowl, "group:food_bread"}
    }
})

-- Chicken Nuggets
minetest.register_craftitem("haunteds_foods:chicken_nuggets", {
    description = S("Chicken Nuggets"),
    inventory_image = "haunteds_foods_chicken_nuggets.png",
    on_use = minetest.item_eat(6),
})
if minetest.registered_items["farming:skillet"] then
    minetest.register_craft({
        output = "haunteds_foods:chicken_nuggets 2",
        recipe = {
            {"group:food_flour", "group:food_chicken", "group:food_oil"},
            {"", "group:food_skillet", ""}
        },
        replacements = {
            {"group:food_skillet", "farming:skillet"}
        }
    })
else
    minetest.register_craft({
        output = "haunteds_foods:chicken_nuggets 2",
        recipe = {
            {"group:food_flour", "group:food_chicken", "group:food_oil"}
        }
    })
end


-- Lasagna Bowl
minetest.register_node("haunteds_foods:lasagna_bowl", {
    description = S("Lasagna Bowl"),
    inventory_image = bowl_image.."^haunteds_foods_lasagna_overlay.png",
    on_use = minetest.item_eat(12, bowl),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {bowl_image.."^haunteds_foods_lasagna_overlay.png"},
    wield_image = bowl_image.."^haunteds_foods_lasagna_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = "haunteds_foods:lasagna_bowl",
    recipe = {
        {"group:food_pasta", "group:food_cheese", "group:food_meat"},
        {"group:food_oil", "group:food_baking_tray", ""},
        {"", bowl, ""}
    },
    replacements = {
        {"group:food_baking_tray", "farming:baking_tray"}
    }
})

-- Mashed Potatoes
minetest.register_craftitem("haunteds_foods:mashed_potatoes", {
    description = S("Mashed Potatoes"),
    inventory_image = "haunteds_foods_mashed_potatoes.png",
    on_use = minetest.item_eat(4),
    groups = {food_mashed_potatoes = 1}
})
minetest.register_craft({
    output = "haunteds_foods:mashed_potatoes",
    recipe = {
        {"group:food_mortar_pestle", "group:food_potato", "group:food_potato"}
    },
    replacements = {
        {"group:food_mortar_pestle", "farming:mortar_pestle"}
    }
})

-- Sheperd's Pie Bowl
minetest.register_node("haunteds_foods:shepherds_pie_bowl", {
    description = S("Sheperd's Pie Bowl"),
    inventory_image = bowl_image.."^haunteds_foods_shepherds_pie_overlay.png",
    on_use = minetest.item_eat(14, bowl),
    groups = {dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {bowl_image.."^haunteds_foods_shepherds_pie_overlay.png"},
    wield_image = bowl_image.."^haunteds_foods_shepherds_pie_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_craft({
    output = "haunteds_foods:shepherds_pie_bowl",
    recipe = {
        {"group:food_ketchup_bottle", "group:food_mashed_potatoes", "group:food_meat"},
        {"group:food_corn", "group:food_baking_tray", "group:food_oil"},
        {"", bowl, ""}
    },
    replacements = {
        {"group:food_baking_tray", "farming:baking_tray"},
        {"group:food_ketchup_bottle", "haunteds_foods:food_ketchup_bottle"}
    }
})