execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon armor_stand ~ ~ ~10 {Tags:["DeathBeacon1", "DeathBeacon"]}
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon armor_stand ~ ~ ~-10 {Tags:["DeathBeacon2", "DeathBeacon"]}
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon armor_stand ~10 ~ ~ {Tags:["DeathBeacon3", "DeathBeacon"]}
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon armor_stand ~-10 ~ ~ {Tags:["DeathBeacon4", "DeathBeacon"]}
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~-1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~-1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~-1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~ ~ ~-1
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~1 ~ ~
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~1 ~ ~
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~1 ~ ~
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~1 ~ ~
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~-1 ~ ~
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~-1 ~ ~
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~-1 ~ ~
execute if score @s deathTimer matches 600 run execute as @e[tag=BossStand,type=armor_stand] at @s run summon wither_skeleton ~-1 ~ ~

execute as @e[tag=DeathBeacon] at @s if block ~ ~-3 ~ beacon run setblock ~ ~-1 ~ air
execute as @e[tag=DeathBeacon] at @s if block ~ ~-3 ~ beacon run tp @s ~ ~-1 ~

execute as @e[tag=DeathBeacon] at @s if block ~ ~-2 ~ beacon run setblock ~ ~-1 ~ air
execute as @e[tag=DeathBeacon] at @s if block ~ ~-2 ~ beacon run tp @s ~ ~-1 ~

execute as @e[tag=Boss,type=silverfish] at @s run data merge entity @s {NoAI:1b}

execute as @e[tag=DeathBeacon1,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high
execute as @e[tag=DeathBeacon2,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high
execute as @e[tag=DeathBeacon3,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high
execute as @e[tag=DeathBeacon4,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high

execute if score @s deathTimer matches 600..610 run execute as @e[tag=DeathBeacon] at @s run setblock ~ ~ ~ beacon

execute as @e[tag=DeathBeacon1,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high
execute as @e[tag=DeathBeacon2,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high
execute as @e[tag=DeathBeacon3,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high
execute as @e[tag=DeathBeacon4,limit=1] at @s unless block ~ ~ ~ air run function brainrot:boss/shrinespawn/moves/get_to_high

# particles to the beacons!
execute as @e[tag=DeathBeacon1] at @s if block ~ ~-1 ~ beacon as @e[tag=Boss] at @s run particle dust{color:[0.0,0.0,1.0],scale:1} ~2.5 ~ ~ 2.5 0 0 0 150 normal
execute as @e[tag=DeathBeacon2] at @s if block ~ ~-1 ~ beacon as @e[tag=Boss] at @s run particle dust{color:[0.0,0.0,1.0],scale:1} ~-2.5 ~ ~ -2.5 0 0 0 150 normal
execute as @e[tag=DeathBeacon3] at @s if block ~ ~-1 ~ beacon as @e[tag=Boss] at @s run particle dust{color:[0.0,0.0,1.0],scale:1} ~ ~ ~2.5 0 0 2.5 0 150 normal
execute as @e[tag=DeathBeacon4] at @s if block ~ ~-1 ~ beacon as @e[tag=Boss] at @s run particle dust{color:[0.0,0.0,1.0],scale:1} ~ ~ ~-2.5 0 0 -2.5 0 150 normal

execute as @e[tag=DeathBeacon] at @s unless block ~ ~-1 ~ beacon run scoreboard players remove @e[tag=BOSSCHECK] bossHP 20
execute as @e[tag=DeathBeacon] at @s unless block ~ ~-1 ~ beacon run kill @s
#execute as @e[tag=DeathBeacon1] at @s unless block ~ ~-1 ~ beacon as @e[tag=DeathBeacon2] at @s unless block ~ ~-1 ~ beacon as @e[tag=DeathBeacon3] at @s unless block ~ ~-1 ~ beacon as @e[tag=DeathBeacon4] at @s unless block ~ ~-1 ~ beacon run function brainrot:boss/shrinespawn/moves/remove_all_beacons

# when 5 seconds pass reset the beacons and the timer:
execute if score @s deathTimer matches 900.. run execute as @e[tag=DeathBeacon] at @s if block ~ ~-1 ~ beacon run setblock ~ ~-1 ~ air
execute if score @s deathTimer matches 900.. run kill @e[tag=DeathBeacon]
execute if score @s deathTimer matches 900.. run data merge entity @e[tag=Boss,limit=1] {NoAI:0b}
execute if score @s deathTimer matches 900.. run scoreboard players set @s deathTimer 20

execute if score @s bossHP matches 0 run tellraw @a [{"text": "[ Tung Tung Tung Tung Tung Sahur ] ", "color": "yellow", "bold": true}, {"text": "-> ","color": "gray", "bold": false}, {"text": "So this is the end, I have been killed, good luck on your journy up ahead and if u somehow summon me again, be prepared for HELL.", "color": "gray", "bold": true}]
scoreboard players set @s bossSpawned 0

scoreboard players add @s deathTimer 1