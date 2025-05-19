# get the move:
execute as @e[tag=BossStand] at @s if entity @a[distance=..5] run scoreboard players set @e[tag=BOSSCHECK, sort=nearest, limit=1] BossMove 1
execute as @e[tag=BossStand] at @s unless entity @a[distance=..5] run scoreboard players set @e[tag=BOSSCHECK, sort=nearest, limit=1] BossMove 2

scoreboard players reset @s animate
execute if score @s BossMove matches 1 run tellraw @a [{"text": "[ Tung Tung Hurar Tung Tung Tung Sahur ] ", "color": "yellow", "bold": true}, {"text": "-> ","color": "gray", "bold": false}, {"text": "Swing Attack!", "color": "gray", "bold": true}]
execute if score @s BossMove matches 1 run function brainrot:boss/shrinespawn/moves/swing_attack
execute if score @s BossMove matches 2 run tellraw @a [{"text": "[ Tung Tung Hurar Tung Tung Tung Sahur ] ", "color": "yellow", "bold": true}, {"text": "-> ","color": "gray", "bold": false}, {"text": "Crimson Light!", "color": "red", "bold": true}]
execute if score @s BossMove matches 2 run function brainrot:boss/shrinespawn/moves/crimson_light

execute if score @s animate matches 20 run data merge entity @e[tag=Boss,limit=1,sort=nearest] {NoAI:0b}
execute if score @s animate matches 20 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",components:{custom_model_data:"100"}}]}