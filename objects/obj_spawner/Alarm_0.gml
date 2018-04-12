//Creates n new enemies
repeat(n)
{ 
	instance_create_layer(random(room_width),random(room_height),"lay_enemy",obj_enemy);
}
n = random_range(2, maxRand);
maxRand++;
timer--;