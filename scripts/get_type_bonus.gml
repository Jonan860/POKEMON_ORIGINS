type_self=argument0
type_other=argument1
switch (type_self)
{
case "fire": 
switch (type_other)
{
case "grass":
return 1+type_bonus; break;
case "fire":
return 1/(1+type_bonus);break;
case "water":
return 1/(1+type_bonus);break;
case "psychic":
return 1; break;
case "rock":
return 1/(1+type_bonus);break;
case "normal":
return 1; break;
};break

case "grass":
switch (type_other)
{
case "grass":
return 1/(1+type_bonus); break;
case "fire":
return 1/(1+type_bonus); break;
case "water":
return 1+type_bonus; break;
case "psychic":
return 1; break;
case "normal":
return 1; break
case "rock":
return 1+type_bonus; break;
}; break;

case "water":
switch (type_other)
{
case "grass":
return 1/(1+type_bonus); break;
case "fire":
return 1+type_bonus; break;
case "water":
return 1/(1+type_bonus); break;
case "psychic":
return 1; break;
case "normal":
return 1; break
case "rock":
return 1+type_bonus; break;
}; break;

case "psychic":
switch (type_other)
{
case "grass":
return 1; break;
case "fire":
return 1; break;
case "water":
return 1; break;
case "psychic":
return 1/(1+type_bonus); break;
case "normal":
return 1; break
case "rock":
return 1; break;
}; break;

case "normal":
switch (type_other)
{
case "grass":
return 1; break;
case "fire":
return 1; break;
case "water":
return 1; break;
case "psychic":
return 1; break;
case "normal":
return 1; break
case "rock":
return 1/(1+type_bonus); break;
}; break;

case "rock":
switch (type_other)
{
case "grass":
return 1; break;
case "fire":
return 1+type_bonus; break;
case "water":
return 1; break;
case "psychic":
return 1; break;
case "normal":
return 1; break
case "rock":
return 1; break;
}; break;

}

