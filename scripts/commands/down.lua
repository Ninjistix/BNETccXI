---------------------------------------------------------------------------------------------------
-- func: !down <optional number> <optional target>
-- desc: Alters vertical coordinate
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "is"
};

function onTrigger(player, number, target)
    local VALUE = 0;

    -- if (target == nil) then
        -- target = player:getName();
    -- end

    local targ = player
    -- if (targ == nil) then
        -- player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        -- return
    -- end

    if (number ~= nil and number > 0) then
        VALUE = targ:getYPos() +number;
    else
        VALUE = targ:getYPos() +1;
    end
    targ:setPos(targ:getXPos(), VALUE, targ:getZPos(), targ:getRotPos());
end;