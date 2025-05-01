execute store result score &number mobheads.random run random value 1..10 minecraft:1

execute if score &number mobheads.random matches 1 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A camel just dropped its head!","italic":true}]

execute if score &number mobheads.random matches 2 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A camel head has been dropped!","italic":true}]

execute if score &number mobheads.random matches 3 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A camel lost its head!","italic":true}]

execute if score &number mobheads.random matches 4 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Whoa! A camel just lost its head!","italic":true}]

execute if score &number mobheads.random matches 5 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A camel’s head lies on the ground, lifeless…","italic":true}]

execute if score &number mobheads.random matches 6 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Legends say taking a camel’s head grants power…","italic":true}]

execute if score &number mobheads.random matches 7 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Heads up! A camel lost its head!","italic":true}]

execute if score &number mobheads.random matches 8 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Look what we have here - a camel head!","italic":true}]

execute if score &number mobheads.random matches 9 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A camel dropped a head!","italic":true}]

execute if score &number mobheads.random matches 10 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A new camel head has been dropped!","italic":true}]