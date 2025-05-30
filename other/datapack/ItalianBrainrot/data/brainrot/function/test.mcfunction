# place barrier to trap the player
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~ ~ ~2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~ ~1 ~2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~ ~2 ~2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~1 ~1 ~2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~-1 ~1 ~2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~1 ~1 ~-2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~-1 ~1 ~-2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~2 ~1 ~1 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~-2 ~1 ~1 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~2 ~1 ~-1 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~-2 ~1 ~-1 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~ ~ ~-2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~ ~1 ~-2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~ ~2 ~-2 minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~2 ~ ~ minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~2 ~1 ~ minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~2 ~2 ~ minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~-2 ~ ~ minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~-2 ~1 ~ minecraft:barrier
execute at @e[type= minecraft:armor_stand,tag= BOSSCHECK] run setblock ~-2 ~2 ~ minecraft:barrier
# give effects to the player
effect give @a[distance=..10] minecraft:glowing 10 255 true
effect give @a[distance=..10] minecraft:mining_fatigue 30 10 true
give IM_KING_2021 zombie_spawn_egg[custom_name='[{"text":"Summong Tung Tung","italic":false,"color":"aqua","underlined":true,"bold":true}]',lore=['[{"text":"place to summon tung tung s","italic":false,"color":"yellow"}]'],entity_data={id:zombie,CustomName:'[{"text":"Tung Tung Tung","color":"yellow","bold":true}]',CustomNameVisible:1b,HandItems:[{id:mace,components:{customodeldata:100},count:1},{}],HandDropChances:[0f,0f]}] 1
