scoreboard players add @e[tag=CHECKBOSS] start 0
scoreboard players add @e[tag=BOSSCHECK] inMove 0

execute as @e[tag=Boss] at @s run forceload add ~ ~ ~ ~

execute as @e[tag=BOSSCHECK] at @s unless block ~ ~-1 ~ anvil run scoreboard players set @s playBoss 1
execute as @e[tag=BOSSCHECK] at @s if score @s playBoss matches 1.. run function brainrot:boss/shrinespawn/bossfight

# lighting sword abilities:
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword", components:{"minecraft:custom_model_data":6}}}] at @s if score @s sneak matches 1.. run function brainrot:lighting_sword/dash

scoreboard players set @a sneak 0

function brainrot:right_click_detect/detectrightclick
function brainrot:boss/shrinespawn/changepos