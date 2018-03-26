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

    if (page == "crystal") then
        local stock_1 = {
            4096, 1, -- Fire Crystal
            4097, 1, -- Ice Crystal
            4098, 1, -- Wind Crystal
            4099, 1, -- Earth Crystal
            4100, 1, -- Lightning Crystal
            4101, 1, -- Water Crystal
            4102, 1, -- Light Crystal
            4103, 1, -- Dark Crystal
        };
        showShop(player, STATIC, stock_1);
        player:PrintToPlayer("For all crystaling needs.");
    end

    if (page == "cluster") then
        local stock_1 = {
            4104, 1, -- Fire Cluster
            4105, 1, -- Ice Cluster
            4106, 1, -- Wind Cluster
            4107, 1, -- Earth Cluster
            4108, 1, -- Lightning Cluster
            4109, 1, -- Water Cluster
            4110, 1, -- Light Cluster
            4111, 1, -- Dark Cluster
        };
        showShop(player, STATIC, stock_1);
        player:PrintToPlayer("For all clustering needs.");
    end
end