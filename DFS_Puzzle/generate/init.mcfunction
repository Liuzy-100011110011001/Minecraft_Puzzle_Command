第一个脉冲命令方块，剩余的都是连锁。
/kill @e[name=DFSPuzzle]
/fill 2 5 7 102 6 107 dirt
/fill 101 6 106 3 5 8 stone
/fill 3 5 8 3 6 8 air
summon minecraft:armor_stand 3 5 8 {CustomName:"DFSPuzzle"}
/fill 1 4 6 103 4 108 minecraft:quartz_block
/scoreboard players set right DFS_temp 2
/scoreboard players set left DFS_temp 4
/scoreboard players set down DFS_temp 3
/scoreboard players set up DFS_temp 1
/scoreboard players set move_state DFS_temp 0
/scoreboard players set true DFS_temp 1
/scoreboard players set false DFS_temp 0
scoreboard players set rand_count DFS_temp 0
scoreboard objectives setdisplay sidebar DFS_temp
/setblock 3 4 8 minecraft:emerald_block
/fill 1 4 6 103 4 108 minecraft:quartz_block replace minecraft:netherite_block