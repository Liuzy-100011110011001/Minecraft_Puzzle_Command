循环命令方块，需要红石。
/execute store result score direction DFS_temp run random value 1..4
连锁命令方块，无条件。
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = up DFS_temp if block ~2 ~ ~ stone if block ~2 ~1 ~ stone unless block ~2 ~-1 ~ minecraft:gold_block unless block ~1 ~ ~ dirt unless block ~1 ~1 ~ dirt run scoreboard players set move_state DFS_temp 1
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = up DFS_temp if block ~2 ~ ~ stone if block ~2 ~1 ~ stone unless block ~2 ~-1 ~ minecraft:gold_block unless block ~1 ~ ~ dirt unless block ~1 ~1 ~ dirt run tp @s ~2 ~ ~
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = up DFS_temp if score move_state DFS_temp = true DFS_temp run fill ~ ~ ~ ~-1 ~1 ~ air replace stone
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = right DFS_temp if block ~ ~ ~2 stone if block ~ ~1 ~2 stone unless block ~ ~-1 ~2 minecraft:gold_block unless block ~ ~ ~1 dirt unless block ~ ~1 ~1 dirt run scoreboard players set move_state DFS_temp 1
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = right DFS_temp if block ~ ~ ~2 stone if block ~ ~1 ~2 stone unless block ~ ~-1 ~2 minecraft:gold_block unless block ~ ~ ~1 dirt unless block ~ ~1 ~1 dirt run tp @s ~ ~ ~2
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = right DFS_temp if score move_state DFS_temp = true DFS_temp run fill ~ ~ ~ ~ ~1 ~-1 air replace stone
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = down DFS_temp if block ~-2 ~ ~ stone if block ~-2 ~1 ~ stone unless block ~-2 ~-1 ~ minecraft:gold_block unless block ~-1 ~ ~ dirt unless block ~-1 ~1 ~ dirt run scoreboard players set move_state DFS_temp 1
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = down DFS_temp if block ~-2 ~ ~ stone if block ~-2 ~1 ~ stone unless block ~-2 ~-1 ~ minecraft:gold_block unless block ~-1 ~ ~ dirt unless block ~-1 ~1 ~ dirt run tp @s ~-2 ~ ~
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = down DFS_temp if score move_state DFS_temp = true DFS_temp run fill ~ ~ ~ ~1 ~1 ~ air replace stone
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = left DFS_temp if block ~ ~ ~-2 stone if block ~ ~1 ~-2 stone unless block ~ ~-1 ~-2 minecraft:gold_block unless block ~ ~ ~-1 dirt unless block ~ ~1 ~-1 dirt run scoreboard players set move_state DFS_temp 1
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = left DFS_temp if block ~ ~ ~-2 stone if block ~ ~1 ~-2 stone unless block ~ ~-1 ~-2 minecraft:gold_block unless block ~ ~ ~-1 dirt unless block ~ ~1 ~-1 dirt run tp @s ~ ~ ~-2
execute as @e[name=DFSPuzzle] at @s if score direction DFS_temp = left DFS_temp if score move_state DFS_temp = true DFS_temp run fill ~ ~ ~ ~ ~1 ~1 air replace stone
execute as @e[name=DFSPuzzle] at @s if score move_state DFS_temp = false DFS_temp unless block ~2 ~ ~ stone unless block ~2 ~1 ~ stone unless block ~-2 ~ ~ stone unless block ~-2 ~1 ~ stone unless block ~ ~ ~2 stone unless block ~ ~1 ~2 stone unless block ~ ~ ~-2 stone unless block ~ ~1 ~-2 stone unless block ~1 ~ ~ stone unless block ~1 ~1 ~ stone unless block ~1 ~ ~ dirt unless block ~1 ~1 ~ dirt unless block ~2 ~-1 ~ minecraft:gold_block run setblock ~ ~-1 ~ minecraft:gold_block
execute as @e[name=DFSPuzzle] at @s if block ~ ~-1 ~ minecraft:gold_block run tp @s ~2 ~ ~
execute as @e[name=DFSPuzzle] at @s if score move_state DFS_temp = false DFS_temp unless block ~2 ~ ~ stone unless block ~2 ~1 ~ stone unless block ~-2 ~ ~ stone unless block ~-2 ~1 ~ stone unless block ~ ~ ~2 stone unless block ~ ~1 ~2 stone unless block ~ ~ ~-2 stone unless block ~ ~1 ~-2 stone unless block ~ ~ ~1 stone unless block ~ ~1 ~1 stone unless block ~ ~ ~1 dirt unless block ~ ~1 ~1 dirt unless block ~ ~-1 ~2 minecraft:gold_block run setblock ~ ~-1 ~ minecraft:gold_block
execute as @e[name=DFSPuzzle] at @s if block ~ ~-1 ~ minecraft:gold_block run tp @s ~ ~ ~2
execute as @e[name=DFSPuzzle] at @s if score move_state DFS_temp = false DFS_temp unless block ~2 ~ ~ stone unless block ~2 ~1 ~ stone unless block ~-2 ~ ~ stone unless block ~-2 ~1 ~ stone unless block ~ ~ ~2 stone unless block ~ ~1 ~2 stone unless block ~ ~ ~-2 stone unless block ~ ~1 ~-2 stone unless block ~-1 ~ ~ stone unless block ~-1 ~1 ~ stone unless block ~-1 ~ ~ dirt unless block ~-1 ~1 ~ dirt unless block ~-2 ~-1 ~ minecraft:gold_block run setblock ~ ~-1 ~ minecraft:gold_block
execute as @e[name=DFSPuzzle] at @s if block ~ ~-1 ~ minecraft:gold_block run tp @s ~-2 ~ ~
execute as @e[name=DFSPuzzle] at @s if score move_state DFS_temp = false DFS_temp unless block ~2 ~ ~ stone unless block ~2 ~1 ~ stone unless block ~-2 ~ ~ stone unless block ~-2 ~1 ~ stone unless block ~ ~ ~2 stone unless block ~ ~1 ~2 stone unless block ~ ~ ~-2 stone unless block ~ ~1 ~-2 stone unless block ~ ~ ~-1 stone unless block ~ ~1 ~-1 stone unless block ~ ~ ~-1 dirt unless block ~ ~1 ~-1 dirt unless block ~ ~-1 ~-2 minecraft:gold_block run setblock ~ ~-1 ~ minecraft:gold_block
execute as @e[name=DFSPuzzle] at @s if block ~ ~-1 ~ minecraft:gold_block run tp @s ~ ~ ~-2
scoreboard players set move_state DFS_temp 0
scoreboard players add rand_count DFS_temp 1
execute as @e[name=DFSPuzzle] at @s if block ~ ~-1 ~ minecraft:emerald_block unless block ~2 ~ ~ stone unless block ~2 ~1 ~ stone unless block ~ ~ ~2 stone unless block ~ ~1 ~2 stone run setblock -4 5 -4 minecraft:lever[powered=false,facing=east,face=floor]
连锁命令方块，条件制约。
title @a title {"color":"gold","text":"[DFS]迷宫生成完成！"}
/fill 1 4 6 103 4 108 minecraft:quartz_block replace minecraft:gold_block
/setblock 101 4 106 minecraft:diamond_block