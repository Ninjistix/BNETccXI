--------------------------------------------------------------
-- func: BNETcc Server Shop
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops = {
    permission = 0,
    parameters = "s"
};

-- Notes:
-- ALWAYS comment your additions!

function onTrigger(player, page)
    player:PrintToPlayer("Welcome to BNET.cc's shop of wares to aid you on your adventure!", 0xF);

    if (page == "quest") then
        local stock_1 = {
            549, 1, -- Delkfutt Key
            548, 1, -- Tenshodo Invite
            494, 1, -- Qdv. Augury Shell
            495, 1, -- Quadav Charm
            4377, 1, -- Coeurl Meat
        };
        showShop(player, STATIC, stock_1);
        player:PrintToPlayer("For all questing needs.");
    end
end