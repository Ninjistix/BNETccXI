---------------------------------------------------------------------------------------------------
-- func: Teleports player to Dem Gate Crystal.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};

function onTrigger(player, x, y, z, zone)
    if (player:isEngaged() or player:hasEnmity()) then
        player:PrintToPlayer('This command cannot be used while in combat or under attack! Run away!', 0xF);
        return;
    end

    player:setPos('220', '19', '303', '245', '108');
end;