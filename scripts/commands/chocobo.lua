---------------------------------------------------------------------------------------------------
-- func: !chocobo
-- desc: Spawns a chocobo.
---------------------------------------------------------------------------------------------------

cmdprops = {
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    if (player:isEngaged() or player:hasEnmity()) then
        player:PrintToPlayer('!chocobo cannot be used while in combat or under attack! Run away!', 0xF);
    else
        player:setAnimation("5");
    end
end;
