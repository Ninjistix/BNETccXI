---------------------------------------------------------------------------------------------------
-- func: Teleports player to Mea Gate Crystal.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player, x, y, z, zone)
    if (player:isEngaged() or player:hasEnmity()) then
        player:PrintToPlayer('This command cannot be used while in combat or under attack! Run away!', 0xF);
        return;
    end

    player:setPos('95', '35', '340', '245', '117');
end;