execute store result score &number mobheads.random run random value 1..10 minecraft:1

execute if score &number mobheads.random matches 1 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A vindicator just dropped its head!","italic":true}]

execute if score &number mobheads.random matches 2 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A vindicator head has been dropped!","italic":true}]

execute if score &number mobheads.random matches 3 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A vindicator lost its head!","italic":true}]

execute if score &number mobheads.random matches 4 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Whoa! A vindicator just lost its head!","italic":true}]

execute if score &number mobheads.random matches 5 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A vindicator’s head lies on the ground, lifeless…","italic":true}]

execute if score &number mobheads.random matches 6 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Legends say taking a vindicator’s head grants power…","italic":true}]

execute if score &number mobheads.random matches 7 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Heads up! A vindicator lost its head!","italic":true}]

execute if score &number mobheads.random matches 8 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"Look what we have here - a vindicator head!","italic":true}]

execute if score &number mobheads.random matches 9 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A vindicator dropped a head!","italic":true}]

execute if score &number mobheads.random matches 10 run \
 tellraw @a[scores={mobheads.drop_notification=1}] ["",{"text":"A new vindicator head has been dropped!","italic":true}]