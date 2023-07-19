///scr_attack(type_self,type_other,opponent.hp,self_attack)
type_self=argument0
type_other=argument1
opponent.hp=argument2
self_attack=argument3
opponent.hp-=self.attack*20*get_type_bonus(type_self,type_other)
