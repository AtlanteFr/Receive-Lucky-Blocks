local function give_random_item()
    for _, player in ipairs(minetest.get_connected_players()) do
        local random_amount = math.random(1, 15)
        player:get_inventory():add_item("main", "lucky_block:lucky_block " .. random_amount)
        minetest.chat_send_player(player:get_player_name(), "Congratulation ! You received " .. random_amount .. " lucky_block:lucky_block")
    end
    minetest.after(300, give_random_item)
end
minetest.after(300, give_random_item)
