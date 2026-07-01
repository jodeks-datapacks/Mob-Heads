advancement revoke @a only mob_heads:killed_mob_check/sulfur_cube

schedule function mob_heads:app/notification/check/sulfur_cube 1t

scoreboard players add &sulfur_cube mob_heads.killed.mob 1
