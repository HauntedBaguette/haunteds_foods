local S = minetest.get_translator("haunteds_foods")

-- Ketchup Bottle
minetest.register_node("haunteds_foods:ketchup_bottle", {
    description = S("Ketchup Bottle"),
    inventory_image = "haunteds_foods_ketchup_overlay.png^vessels_glass_bottle.png",
    groups = {vessel = 1, food_ketchup_bottle = 1, dig_immediate = 3, attached_node = 1},
    on_use = minetest.item_eat(4, "vessels:glass_bottle"),
    drawtype = "plantlike",
    tiles = {"haunteds_foods_ketchup_overlay.png^vessels_glass_bottle.png"},
    wield_image = "haunteds_foods_ketchup_overlay.png^vessels_glass_bottle.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_glass_defaults()
})
-- Milk Bottle
minetest.register_node("haunteds_foods:milk_bottle", {
    description = S("Milk Bottle"),
    inventory_image = "vessels_steel_bottle.png^haunteds_foods_milk_overlay.png",
    groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
    on_use = minetest.item_eat(8, "vessels:steel_bottle"),
    drawtype = "plantlike",
    tiles = {"vessels_steel_bottle.png^haunteds_foods_milk_overlay.png"},
    wield_image = "vessels_steel_bottle.png^haunteds_foods_milk_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
-- Juice Bottles
minetest.register_node("haunteds_foods:cactus_juice_bottle", {
    description = S("Cactus Juice Bottle"),
    inventory_image = "vessels_steel_bottle.png^haunteds_foods_cactus_overlay.png",
    groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
    drawtype = "plantlike",
    tiles = {"vessels_steel_bottle.png^haunteds_foods_cactus_overlay.png"},
    wield_image = "vessels_steel_bottle.png^haunteds_foods_cactus_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults(),
    on_use = function(itemstack, user, pointed_thing)
        if user then
            local num = math.random(5) == 6 and -6 or 12
            return minetest.do_item_eat(num, "vessels:steel_bottle", itemstack, user, pointed_thing)
        end
    end
})
minetest.register_node("haunteds_foods:carrot_juice_bottle", {
    description = S("Carrot Juice Bottle"),
    inventory_image = "vessels_steel_bottle.png^haunteds_foods_carrot_overlay.png",
    groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
    on_use = minetest.item_eat(12, "vessels:steel_bottle"),
    drawtype = "plantlike",
    tiles = {"vessels_steel_bottle.png^haunteds_foods_carrot_overlay.png"},
    wield_image = "vessels_steel_bottle.png^haunteds_foods_carrot_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_node("haunteds_foods:pineapple_juice_bottle", {
    description = S("Pineapple Juice Bottle"),
    inventory_image = "vessels_steel_bottle.png^haunteds_foods_pineapple_overlay.png",
    groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
    on_use = minetest.item_eat(12, "vessels:steel_bottle"),
    drawtype = "plantlike",
    tiles = {"vessels_steel_bottle.png^haunteds_foods_pineapple_overlay.png"},
    wield_image = "vessels_steel_bottle.png^haunteds_foods_pineapple_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_node("haunteds_foods:smoothie_raspberry_bottle", {
    description = S("Raspberry Smoothie Bottle"),
    inventory_image = "vessels_steel_bottle.png^haunteds_foods_raspberry_overlay.png",
    groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
    on_use = minetest.item_eat(8, "vessels:steel_bottle"),
    drawtype = "plantlike",
    tiles = {"vessels_steel_bottle.png^haunteds_foods_raspberry_overlay.png"},
    wield_image = "vessels_steel_bottle.png^haunteds_foods_raspberry_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_node("haunteds_foods:smoothie_berry_bottle", {
    description = S("Triple Berry Smoothie Bottle"),
    inventory_image = "vessels_steel_bottle.png^haunteds_foods_berries_overlay.png",
    groups = {vessel = 1, dig_immediate = 3, attached_node = 1},
    on_use = minetest.item_eat(12, "vessels:steel_bottle"),
    drawtype = "plantlike",
    tiles = {"vessels_steel_bottle.png^haunteds_foods_berries_overlay.png"},
    wield_image = "vessels_steel_bottle.png^haunteds_foods_berries_overlay.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_defaults()
})
minetest.register_node("haunteds_foods:hot_cocoa", {
    description = S("Cup of Hot Cocoa"),
    groups = {vessel = 1, dig_immediate = 3, attached_node = 1, drink = 1, handy = 1},
    on_use = minetest.item_eat(2, "vessels:drinking_glass"),
    drawtype = "plantlike",
    tiles = {"haunteds_foods_hot_cocoa_overlay.png^vessels_drinking_glass.png"},
    inventory_image = "haunteds_foods_hot_cocoa_overlay.png^vessels_drinking_glass.png",
    wield_image = "haunteds_foods_hot_cocoa_overlay.png^vessels_drinking_glass.png",
    paramtype = "light",
    walkable = false,
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.25, 0.25}
    },
    is_ground_content = false,
    sounds = default.node_sound_glass_defaults()
})
if  minetest.registered_items["farming:mortar_pestle"] then
    minetest.register_craft({
        output = "haunteds_foods:ketchup_bottle",
        recipe = {
            {"vessels:glass_bottle", "group:food_tomato", "group:food_tomato"},
            {"group:food_sugar", "farming:mortar_pestle", ""}
        },
        replacements = {
            {"farming:mortar_pestle", "farming:mortar_pestle"}
        }
    })
else
    minetest.register_craft({
        output = "haunteds_foods:ketchup_bottle",
        recipe = {
            {"vessels:glass_bottle", "group:food_tomato", "group:food_tomato"},
            {"group:food_sugar", "", ""}
        }
    })
end

local milk_bucket = ""
if minetest.registered_items["animalia:bucket_milk"] then
    milk_bucket = "animalia:bucket_milk"
elseif minetest.registered_items["vegan_food:milk_bucket"] then
    milk_bucket = "vegan_food:milk_bucket"
elseif minetest.registered_items["animalworld:bucket_milk"] then
    milk_bucket = "animalworld:bucket_milk"
end
if milk_bucket then
    minetest.register_craft({
        output = "haunteds_foods:milk_bottle",
        recipe = {
            {"vessels:steel_bottle", "group:food_milk", "group:food_milk"}
        },
        replacements = {
            {"group:food_milk", "bucket:bucket_empty 2"}
        }
    })
    minetest.register_craft({
        output = milk_bucket .. " 2",
        recipe = {
            {"haunteds_foods:milk_bottle", "bucket:bucket_empty", "bucket:bucket_empty"}
        },
        replacements = {
            {"haunteds_foods:milk_bottle", "vessels:steel_bottle"}
        }
    })
end
minetest.register_craft({
    output = "vessels:drinking_glass 8",
    recipe = {
        {"vessels:steel_bottle", "group:food_milk_glass", "group:food_milk_glass"},
        {"group:food_milk_glass", "group:food_milk_glass", "group:food_milk_glass"},
        {"group:food_milk_glass", "group:food_milk_glass", "group:food_milk_glass"}
    },
    replacements = {
        {"vessels:steel_bottle", "haunteds_foods:milk_bottle"}
    }
})
if minetest.registered_items["mobs:glass_milk"] then
    minetest.register_craft({
        output = "mobs:glass_milk 8",
        recipe = {
            {"haunteds_foods:milk_bottle", "vessels:drinking_glass", "vessels:drinking_glass"},
            {"vessels:drinking_glass", "vessels:drinking_glass", "vessels:drinking_glass"},
            {"vessels:drinking_glass", "vessels:drinking_glass", "vessels:drinking_glass"}
        },
        replacements = {
            {"haunteds_foods:milk_bottle", "vessels:steel_bottle"}
        }
        })
end
-- Recipes
local drinks = {"cactus_juice", "carrot_juice", "pineapple_juice"}
for _, drink in ipairs(drinks) do
    minetest.register_craft({
        output = "haunteds_foods:" .. drink .. "_bottle",
        recipe = {
            {"vessels:steel_bottle", "farming:" .. drink, "farming:" .. drink},
            {"farming:" .. drink, "", ""}
        },
        replacements = {
            {"farming:" .. drink, "vessels:drinking_glass 3"}
        }
    })
    minetest.register_craft({
        output = "farming:" .. drink .. " 3",
        recipe = {
            {"haunteds_foods:" .. drink .. "_bottle", "vessels:drinking_glass", "vessels:drinking_glass"},
            {"vessels:drinking_glass", "", ""}
        },
        replacements = {
            {"haunteds_foods:" .. drink .. "_bottle", "vessels:steel_bottle"}
        }
    })
end
-- Cactus juice recipe for base game
minetest.register_craft({
    output = "haunteds_foods:cactus_juice_bottle",
    recipe = {
        {"vessels:steel_bottle", "default:cactus", "default:cactus"},
        {"default:cactus", "", ""}
    }
})
--Raspberry Smoothie is less filling
local raspberry_smoothie = "smoothie_raspberry"
minetest.register_craft({
    output = "haunteds_foods:" .. raspberry_smoothie .. "_bottle",
    recipe = {
        {"vessels:steel_bottle", "farming:" .. raspberry_smoothie, "farming:" .. raspberry_smoothie},
        {"farming:" .. raspberry_smoothie, "farming:" .. raspberry_smoothie, ""}
    },
    replacements = {
        {"farming:" .. raspberry_smoothie, "vessels:drinking_glass 4"}
    }
})
minetest.register_craft({
    output = "farming:" .. raspberry_smoothie .. " 4",
    recipe = {
        {"haunteds_foods:" .. raspberry_smoothie .. "_bottle", "vessels:drinking_glass", "vessels:drinking_glass"},
        {"vessels:drinking_glass", "vessels:drinking_glass", ""}
    },
    replacements = {
        {"haunteds_foods:" .. raspberry_smoothie .. "_bottle", "vessels:steel_bottle"}
    }
})
--Triple Berry Smoothie is more filling
minetest.register_craft({
    output = "haunteds_foods:smoothie_berry_bottle",
    recipe = {
        {"vessels:steel_bottle", "farming:smoothie_berry", "farming:smoothie_berry"}
    },
    replacements = {
        {"farming:smoothie_berry", "vessels:drinking_glass 2"}
    }
})
minetest.register_craft({
    output = "farming:smoothie_berry 2",
    recipe = {
        {"haunteds_foods:smoothie_berry_bottle", "vessels:drinking_glass", "vessels:drinking_glass"}
    },
    replacements = {
        {"haunteds_foods:smoothie_berry_bottle", "vessels:steel_bottle"}
    }
})
-- Hot Cocoa
if minetest.registered_items["farming:saucepan"] then
    minetest.register_craft( {
        output = "haunteds_foods:hot_cocoa",
        recipe = {
            {"group:food_cocoa", "group:food_glass_water", "group:food_saucepan"}
            },
        replacements = {
            {"group:food_saucepan", "farming:saucepan"}
        }
    })
else
    minetest.register_craft( {
        output = "haunteds_foods:hot_cocoa",
        recipe = {
            {"group:food_cocoa", "group:food_glass_water", "group:torch"}
            },
        replacements = {
            {"group:food_saucepan", "farming:saucepan"}
        }
    })
end