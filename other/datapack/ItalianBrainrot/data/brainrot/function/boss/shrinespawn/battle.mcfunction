execute if score @s deathTimer matches 0..10 run scoreboard players set @s bossHP 100
execute if score @s deathTimer matches 0 run bossbar add 69 {"text": "Tung Tung Tung Tung Tung Sahur", "color": "yellow", "bold": true}

# for death
execute if score @s bossHP matches ..0 run kill @e[tag=Boss,tag=BossStand, tag=BOSSCHECK]

# teleport to closest player:
execute if score @s tpToPlayer matches 200.. as @e[tag=Boss] at @s run tp @s @p[gamemode=survival]
execute if score @s tpToPlayer matches 200.. as @p[gamemode=survival] at @s run tp @e[tag=Boss] ^ ^ ^-2
execute if score @s tpToPlayer matches 200.. run scoreboard players set @s tpToPlayer 0

# "Gearbind Seal" move:
# rotate TT
execute as @e[tag=TT,type=armor_stand] at @s run tp @s ~ ~ ~ ~-25 ~

# nigga stuff
execute if score @s gearBindSeal matches 300 as @e[tag=Boss] as @s unless entity @e[tag=TT,type=armor_stand] run summon armor_stand ~ ~ ~ {NoGravity:1b, Invisible:1b, CustomName:'{"text":"Skibidi in paris (Pazi is not gay)", "color": "blue", "bold": true}',CustomNameVisible:true, Tags:["TT"]}
execute if score @s gearBindSeal matches 300.. as @e[tag=Boss] at @s run tag @p add GearBindSealTarget
execute as @a[tag=GearBindSealTarget] at @s unless entity @e[tag=GBSstand] run summon armor_stand ~ ~ ~ {Tags:["GBSstand"],Invisible:1b,NoGravity:1b}
tp @e[tag=GBSstand] @a[tag=GearBindSealTarget,sort=nearest,limit=1]
execute as @e[tag=GBSstand] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=TT,limit=1] Rotation[0]

execute if score @s gearBindSeal matches 340.. as @e[tag=Boss] at @s as @p at @s run function brainrot:sigma
execute if score @s gearBindSeal matches 340.. run tag @a remove GearBindSealTarget
execute if score @s gearBindSeal matches 340.. run kill @e[tag=GBSstand]
execute if score @s gearBindSeal matches 340.. run scoreboard players set @s gearBindSeal 0
execute if score @s gearBindSeal matches 340.. run scoreboard players set @s gearBindSeal 0

# circle of niggers
execute as @e[tag=GBSstand] at @s run particle dust{color:[0.0,0.0,1.0],scale:.5} ^ ^ ^4 0 0 0 0 5000 normal

scoreboard players add @s gearBindSeal 1
scoreboard players add @s deathTimer 1

execute if score @s animate matches 20 if score @s bossSpawned matches 1 if score @s moveTimer matches 0 if score @s inMove matches 0 run scoreboard players set @s animate 0
execute if score @s animate matches 20 if score @s bossSpawned matches 1 if score @s moveTimer matches 0 if score @s inMove matches 0 run data merge entity @e[limit=1, sort=nearest, tag=BossStand] {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:100}}]}
effect give @e[tag=Boss,type=silverfish] resistance infinite 255 true
# check for death:
execute if score @s deathTimer matches 600.. run function brainrot:boss/shrinespawn/moves/death

execute if score @s bossSpawned matches 0 run summon minecraft:silverfish ~ ~1 ~ {Tags:["Boss"], Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["BossStand"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,components:{custom_model_data:100}}],DisabledSlots:2039583}]}
effect give @e[tag=Boss] invisibility infinite 255 true
execute as @e[tag=Boss,type=silverfish] at @s store result entity @e[type=armor_stand,tag=Boss,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s
execute if score @s bossSpawned matches 0 run scoreboard players set @s bossSpawned 1

execute if score @s animate matches ..19 if score @s bossSpawned matches 1 if score @s moveTimer matches 100 if score @s inMove matches 1 if score @s BossMove matches 1 run function brainrot:boss/shrinespawn/moves/swing_attack
execute if score @s animate matches ..19 if score @s bossSpawned matches 1 if score @s moveTimer matches 100 if score @s inMove matches 1 if score @s BossMove matches 2 run function brainrot:boss/shrinespawn/moves/crimson_light

execute if score @s deathTimer matches ..599 if score @s animate matches 0 if score @s bossSpawned matches 1 unless score @s moveTimer matches 100 if score @s inMove matches 0 run scoreboard players add @s moveTimer 1
execute if score @s deathTimer matches ..599 if score @s animate matches 0 if score @s bossSpawned matches 1 if score @s moveTimer matches 100 if score @s inMove matches 0 run function brainrot:boss/shrinespawn/moves/random_move

# bossbar:
bossbar add 69 {"text": "Tung Tung Tung Tung Tung Sahur", "color": "yellow", "bold": true}
execute as @e[tag=Boss] at @s run bossbar set minecraft:69 players @a[distance=..50]
execute store result bossbar minecraft:69 value run scoreboard players add @s bossHP 0
bossbar set minecraft:69 color yellow

# tp to player
scoreboard players add @s tpToPlayer 1

# makes the boss rotate to the player he angro on
execute as @e[type=minecraft:silverfish,limit=1, sort=nearest,tag=Boss] at @s store result entity @e[type=armor_stand, tag=BossStand,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]