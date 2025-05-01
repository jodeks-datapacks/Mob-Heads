execute store result score &number mobheads.random run random value 1..10 minecraft:1

execute if score &number mobheads.random matches 1 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A silverfish just dropped its head!","italic":true}]

execute if score &number mobheads.random matches 2 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A silverfish head has been dropped!","italic":true}]

execute if score &number mobheads.random matches 3 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A silverfish lost its head!","italic":true}]

execute if score &number mobheads.random matches 4 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Whoa! A silverfish just lost its head!","italic":true}]

execute if score &number mobheads.random matches 5 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A silverfish’s head lies on the ground, lifeless…","italic":true}]

execute if score &number mobheads.random matches 6 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Legends say taking a silverfish’s head grants power…","italic":true}]

execute if score &number mobheads.random matches 7 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Heads up! A silverfish lost its head!","italic":true}]

execute if score &number mobheads.random matches 8 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Look what we have here - a silverfish head!","italic":true}]

execute if score &number mobheads.random matches 9 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A silverfish dropped a head!","italic":true}]

execute if score &number mobheads.random matches 10 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A new silverfish head has been dropped!","italic":true}]