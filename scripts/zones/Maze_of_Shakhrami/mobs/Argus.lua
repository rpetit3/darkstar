-----------------------------------
-- Area: Maze of Shakhrami
--  MOB: Argus (NM)
-----------------------------------

require("scripts/zones/Maze_of_Shakhrami/MobIDs");

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local whichNM = math.random(0,19);

    if (whichNM < 10) then
        SetRespawnTime(Argus, 64800, 108000); -- 18-30 hours
        DeterMob(Leech_King, true);
    else
        SetRespawnTime(Leech_King, 64800, 108000); -- 18-30 hours
        DeterMob(Argus, true);
    end

end;
