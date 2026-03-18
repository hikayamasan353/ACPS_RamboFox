function scr_collision_turn() {
	//script for collisions with other cars (note: doesn't work with buildings well at all)
	//created by Bravesaturn
	var dirToOther,dirDiff;
	dirToOther = point_direction(x,y,other.x,other.y)+(360-image_angle); //find relative direction to other (0 degrees always equals the direction the car is facing)
	dirToOther = scr_fix360(dirToOther); //make sure it's under 360

	//
	dirDiff = 45-abs(45-scrFind45(dirToOther)); //find how far away the reference angle is from 45 degrees
	//
	spin_diff = cos(degtorad(dirDiff))*sin(degtorad(dirDiff)); //get how much to spin (maximum 0.5 at 45 degrees)
	spinDif = spin_diff/2*other.speed+4; //the 4s are arbitrary; change them as you wnat

	if (dirToOther < 90) //is hit in the first quadrant
	        {
	         image_angle-= spinDif; //rotate clockwise
	         }
	else if (dirToOther < 180) //is hit in the second quadrant
	        {
	         image_angle+= spinDif ; //rotate counter-clockwise
	         }
	else if (dirToOther < 270) //third quadrant
	        {
	         image_angle-= spinDif; //rotate clockwise
	         }
	else //fourth quadrant
	        {
	         image_angle+= spinDif; //rotate counter-clockwise
	         }

	//speed /= 1.1; slow down a little (feel free to change this number)
	//image_angle += other.speed/1.5; //move in the new direction a little
	spin_diff*=10
	motion_add(point_direction(x,y,other.x,other.y)-180,other.speed/3.5); //now move a little in the opposide direction (change the 3.5 to whatever you need)



}
