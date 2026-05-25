advancement revoke @a only mob_heads:killed_mob_check/tropical_fish

schedule function mob_heads:app/notification/check/tropical_fish 1t

scoreboard players add &tropical_fish mob_heads.killed.mob 1
