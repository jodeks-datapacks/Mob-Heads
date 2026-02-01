scoreboard players set &number mobheads.random 0

execute store result score &number mobheads.random run random value 1..10 minecraft:1

$execute if score &number mobheads.random matches 1 run \
 tellraw @a [{"translate":"$(drop_message_1)","italic":true, with: [{translate:"entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 2 run \
 tellraw @a [{"translate":"$(drop_message_2)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 3 run \
 tellraw @a [{"translate":"$(drop_message_3)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 4 run \
 tellraw @a [{"translate":"$(drop_message_4)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 5 run \
 tellraw @a [{"translate":"$(drop_message_5)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 6 run \
 tellraw @a [{"translate":"$(drop_message_6)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 7 run \
 tellraw @a [{"translate":"$(drop_message_7)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 8 run \
 tellraw @a [{"translate":"$(drop_message_8)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 9 run \
 tellraw @a [{"translate":"$(drop_message_9)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]

$execute if score &number mobheads.random matches 10 run \
 tellraw @a [{"translate":"$(drop_message_10)","italic":true, with: [{translate: "entity.minecraft.$(entity)"}]}]