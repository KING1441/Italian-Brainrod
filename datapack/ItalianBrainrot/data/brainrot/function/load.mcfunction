scoreboard objectives add playBoss dummy
scoreboard objectives add bossHP dummy
scoreboard objectives add talkScene dummy
scoreboard objectives add talkTimer dummy

scoreboard objectives add useEgg minecraft.used:minecraft.egg

scoreboard objectives add bossSpawned dummy

# moves
scoreboard objectives add moveTimer dummy
scoreboard objectives add randomMove dummy
scoreboard objectives add BossMove dummy
scoreboard objectives add animate dummy
scoreboard objectives add inMove dummy

# DEATH
scoreboard objectives add deathTimer dummy
scoreboard objectives add dead dummy

scoreboard objectives add tpToPlayer dummy

# Gearbind Seal
scoreboard objectives add gearBindSeal dummy

# lighting sword abilities:
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

tellraw @a [{"text": "---------------------------------------------", "color": "white", "bold": true}, {"text": "\n"}]
tellraw @a [{"text": "The Italian Brainrot datapack has been loaded!", "color": "yellow", "bold": true}, {"text": "\n"}]
tellraw @a [{"text": "By Pazi and Itay", "color": "blue", "bold": true}, {"text": "\n"}]
tellraw @a [{"text": "---------------------------------------------", "color": "white", "bold": true}, {"text": "\n"}]

function brainrot:spawnshrine