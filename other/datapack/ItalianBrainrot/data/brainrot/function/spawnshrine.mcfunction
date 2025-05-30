

execute unless entity @e[tag=BOSSCHECK] run summon armor_stand 6900 ~ 6900 {Tags:["SPAWNSHRINE"]}
execute unless entity @e[tag=BOSSCHECK] run summon armor_stand -6900 ~ -6900 {Tags:["SPAWNSHRINE"]}
execute unless entity @e[tag=BOSSCHECK] run summon armor_stand -6900 ~ 6900 {Tags:["SPAWNSHRINE"]}
execute unless entity @e[tag=BOSSCHECK] run summon armor_stand 6900 ~ -6900 {Tags:["SPAWNSHRINE"]}
# pos: 6900 ~ 6900, -6900 ~ -6900, 6900 ~ -6900, -6900 ~ 6900