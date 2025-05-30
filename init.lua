minetest.register_chatcommand("giveall", { 
    params = "<itemstring> [count]",
    description = "Give an item to all online players (max 99)",
    privs = {give = true},
    func = function(name, param)
        local item, count = param:match("^(%S+)%s*(%d*)$")
        count = tonumber(count) or 1
        -- Limit count to 99
        count = math.min(count, 99)

        if not item or item == "" then
            return false, "Usage: /giveall <itemstring> [count]"
        end

        if not minetest.registered_items[item] then
            return false, "Error: '" .. item .. "' is not a registered item."
        end

        for _, player in ipairs(minetest.get_connected_players()) do
            local inv = player:get_inventory()
            if inv then
                inv:add_item("main", ItemStack(item .. " " .. count))
            end
        end
        return true, "Gave " .. count .. " of " .. item .. " to all players."
    end,
})
