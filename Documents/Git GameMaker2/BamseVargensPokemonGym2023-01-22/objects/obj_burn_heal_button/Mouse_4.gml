with(global.amber.active_pokemon){
if(burned.applied>0){
owner.burnHeal.count-=1
burned.applied=0
action_bar+=max_action_bar
scr_turn_decision()
with(obj_item_buttons){instance_destroy()}
}
}