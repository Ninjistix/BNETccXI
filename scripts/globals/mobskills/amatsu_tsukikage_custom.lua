---------------------------------------------
--  Amatsu: Tsukikage
--
--  Additional effect: temporarily increases amount of TP stored with each hit. 
--  Type: Physical
--  Range: Melee
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    skill:setSkillchain(152);
	local numhits = 1;
	local accmod = 1;
	local dmgmod = 2.5;
	
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,3,3,3);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);
	
	local duration = 20;
	
	if (mob:getTP() == 300) then
		duration = 60;
	elseif (mob:getTP() >= 200) then
		duration = 40;
	end
	
	MobBuffMove(mob, EFFECT_STORE_TP, 7, 3, duration)
	
	target:delHP(dmg);
	return dmg;
	
end;