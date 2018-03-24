---------------------------------------------------------------------------------------------------
-- func: signet
-- desc: Add signet and shit
---------------------------------------------------------------------------------------------------

cmdprops = {
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local duration = (player:getRank() + getNationRank(player:getNation()) + 3) * 3600;
    player:delStatusEffect(EFFECT_SIGIL);
    player:delStatusEffect(EFFECT_SANCTION);
    player:delStatusEffect(EFFECT_SIGNET);
    player:addStatusEffect(EFFECT_SIGNET,0,0,duration); -- Grant Signet
end