execute as @e[type=armor_stand,tag=SPAWNSHRINE] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=armor_stand, tag=SPAWNSHRINE] at @s if block ~ ~ ~ air unless block ~ ~-1 ~ air run function brainrot:boss/shrinespawn/spawn
execute as @e[type=armor_stand, tag=SPAWNSHRINE] at @s if block ~ ~ ~ air unless block ~ ~-1 ~ air run summon armor_stand ~ ~ ~ {Tags:["BOSSCHECK"], Invisible:1b, Invulnerable:1b}
execute as @e[type=armor_stand, tag=SPAWNSHRINE] at @s if block ~ ~ ~ air unless block ~ ~-1 ~ air run scoreboard players set @e[tag=BOSSCHECK, sort=nearest] talkScene 1
execute as @e[type=armor_stand, tag=SPAWNSHRINE] at @s if block ~ ~ ~ air unless block ~ ~-1 ~ air run scoreboard players set @e[tag=BOSSCHECK, sort=nearest] bossSpawned 0
execute as @e[type=armor_stand, tag=SPAWNSHRINE] at @s if block ~ ~ ~ air unless block ~ ~-1 ~ air run scoreboard players set @e[tag=BOSSCHECK, sort=nearest] animate 0
execute as @e[type=armor_stand, tag=SPAWNSHRINE] at @s if block ~ ~ ~ air unless block ~ ~-1 ~ air run kill @s