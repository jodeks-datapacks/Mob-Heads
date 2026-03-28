# Drop message 
  # Drop message text
    data modify storage mob_heads:root data.drop_message_1 set value "A %s just dropped its head!"
    data modify storage mob_heads:root data.drop_message_2 set value "A %s head has been dropped!"
    data modify storage mob_heads:root data.drop_message_3 set value "A %s lost its head!"
    data modify storage mob_heads:root data.drop_message_4 set value "Whoa! A %s just lost its head!"
    data modify storage mob_heads:root data.drop_message_5 set value "A head from %s lies on the ground, lifeless"
    data modify storage mob_heads:root data.drop_message_6 set value "Legends say taking the head of %s grants power"
    data modify storage mob_heads:root data.drop_message_7 set value "Heads up! A %s lost its head!"
    data modify storage mob_heads:root data.drop_message_8 set value "Look what we have here - a %s head!"
    data modify storage mob_heads:root data.drop_message_9 set value "A %s dropped a head!"
    data modify storage mob_heads:root data.drop_message_10 set value "A new %s head has been dropped!"

  # Drop mnessage dialog
    data modify storage mob_heads:root data.dialog_drop_message_1 set value "'$(dialog_drop_message_1)'"
    data modify storage mob_heads:root data.dialog_drop_message_2 set value "'$(dialog_drop_message_2)'"
    data modify storage mob_heads:root data.dialog_drop_message_3 set value "'$(dialog_drop_message_3)'"
    data modify storage mob_heads:root data.dialog_drop_message_4 set value "'$(dialog_drop_message_4)'"
    data modify storage mob_heads:root data.dialog_drop_message_5 set value "'$(dialog_drop_message_5)'"
    data modify storage mob_heads:root data.dialog_drop_message_6 set value "'$(dialog_drop_message_6)'"
    data modify storage mob_heads:root data.dialog_drop_message_7 set value "'$(dialog_drop_message_7)'"
    data modify storage mob_heads:root data.dialog_drop_message_8 set value "'$(dialog_drop_message_8)'"
    data modify storage mob_heads:root data.dialog_drop_message_9 set value "'$(dialog_drop_message_9)'"
    data modify storage mob_heads:root data.dialog_drop_message_10 set value "'$(dialog_drop_message_10)'"

  scoreboard players set &drop_message mob_heads.config 1