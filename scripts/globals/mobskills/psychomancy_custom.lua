---------------------------------------------------
-- Psychomancy
-- Steals MP from players in range.
-- Type: Magical
-- Utsusemi/Blink absorb: ignore shadow
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:AnimationSub() == 3) then
        return 0;
    end
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*1.6,ELE_DARK,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);

    skill:setMsg(msgBasic.DRAIN_MP);

    if (target:isUndead() == false) then
        -- can't go over limited mp
        if (target:getMP() < dmg) then
            dmg = target:getMP();
        end

        target:delMP(dmg);
        mob:addMP(dmg);
    else
        skill:setMsg(msgBasic.NO_EFFECT);
    end

    return dmg;
end;
