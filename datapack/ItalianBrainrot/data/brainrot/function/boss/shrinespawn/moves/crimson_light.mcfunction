
scoreboard players set @s inMove 1



execute as @e[tag=Boss] at @s as @a[distance=..20,limit=4] at @s run particle dust_pillar{block_state:{Name:redstone_block}} ~ ~ ~ 1 10 1 .1 5000 normal
# damage the player ALOT
execute as @e[tag=Boss] at @s as @a[distance=..20,limit=4] at @s run damage @s 80 player_attack




execute if score @s animate matches 19 run data merge entity @e[tag=Boss,limit=1,sort=nearest] {NoAI:0b}
execute if score @s animate matches 19 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:100}}]}
execute if score @s animate matches 19 run scoreboard players set @s inMove 0
execute if score @s animate matches 19 run scoreboard players set @s moveTimer 0

scoreboard players add @s animate 1