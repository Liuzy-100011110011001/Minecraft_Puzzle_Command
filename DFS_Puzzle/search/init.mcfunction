脉冲命令方块，红石控制。
kill @e[name=DFSSearch]
连锁命令方块，无条件。
summon minecraft:armor_stand 3 5 8 {CustomName:"DFSSearch"}
/scoreboard players set true DFS_search 1
/scoreboard players set false DFS_search 0
scoreboard players set search_done DFS_search 0
scoreboard players set back DFS_search 0
scoreboard players set step DFS_search 0
scoreboard players set already_started DFS_search 0
/fill 1 4 6 103 4 108 minecraft:quartz_block replace minecraft:gold_block
/fill 1 4 6 103 4 108 minecraft:quartz_block replace minecraft:redstone_block
scoreboard players set can_back DFS_search 0
scoreboard objectives setdisplay sidebar DFS_search
/fill 1 4 6 103 4 108 minecraft:quartz_block replace minecraft:netherite_block
scoreboard players set over DFS_search 0