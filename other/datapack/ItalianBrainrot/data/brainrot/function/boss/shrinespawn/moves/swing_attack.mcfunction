# Animation!
scoreboard players set @s inMove 1

execute as @e[type=minecraft:armor_stand,tag=BossStand, limit=1, sort=nearest] at @s run particle dust{color:[1.0,0.0,0.0],scale:.5} ^0 ^ ^2 2 0 2 0 500 normal

execute if score @s animate matches 0..3 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:100}}]}
execute if score @s animate matches 3..6 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:101}}]}
execute if score @s animate matches 6..9 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:102}}]}
execute if score @s animate matches 9..12 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:103}}]}
execute if score @s animate matches 12..15 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:104}}]}
execute if score @s animate matches 15..18 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:105}}]}
execute if score @s animate matches 18..20 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:106}}]}

execute if score @s animate matches ..19 run data merge entity @e[tag=Boss,limit=1,sort=nearest] {NoAI:1b}
# make the player take damage if it has been hit by the attack:

execute if score @s animate matches 19 run execute as @e[tag=BossStand,type=armor_stand,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["P.DIDDY"]}
execute if score @s animate matches 19 as @e[tag=P.DIDDY] at @s run damage @a[distance=..4,limit=1,gamemode=!creative,gamemode=!spectator] 60 minecraft:player_attack
execute if score @s animate matches 19 as @e[tag=P.DIDDY] at @s run clear @a[distance=..4,limit=1,gamemode=!creative,gamemode=!spectator] totem_of_undying 3
execute if score @s animate matches 19 run kill @e[tag=P.DIDDY,limit=1,sort=nearest]

execute if score @s animate matches 19 run execute as @e[type=minecraft:armor_stand,tag=BossStand, limit=1, sort=nearest] at @s run particle dust{color:[0.0,1.0,0.0],scale:.5} ^0 ^ ^2 2 0 2 0 500 normal
execute if score @s animate matches 19 run data merge entity @e[tag=Boss,limit=1,sort=nearest] {NoAI:0b}
execute if score @s animate matches 19 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:100}}]}
execute if score @s animate matches 19 run scoreboard players set @s inMove 0
execute if score @s animate matches 19 run scoreboard players set @s moveTimer 0

# repeat move untill animation finished!
scoreboard players add @s animate 1