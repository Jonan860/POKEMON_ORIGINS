event_inherited();
max_HP=120
HP=120;
attack=20;
defence_bonus=0;
attack_bonus=0;
active=0;
type=ELEMENTALTYPES.rock;
damage=1;
name="Geodude"
alarm_counter=5
sound=sound_its_geodude
if(global.player="jonathan"){alive=0}
if(room=difficulty){alarm[0]=45*room_speed}

info_bubble=spr_geodude_info
defenceCurl=global.defence_curl_struct
defenceCurlSprite=spr_geodude_defence_curl
leer=global.leer_struct
ds_list_add(movesList,defenceCurl,leer)

button=obj_geodude_button