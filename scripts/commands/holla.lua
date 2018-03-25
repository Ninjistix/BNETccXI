---------------------------------------------------------------------------------------------------
-- func: Teleports player to Holla Gate Crystal.
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

    player:setPos('420', '19', '22', '245', '102');
end;