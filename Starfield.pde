int cx = 500;
int cy = 375;

void setup()
{
	size(1000,750);
	for(){

	}
	
}
void draw()
{
	stroke(0);
	fill(0,0,0,30);
	rect(0,0,1000,750);


	fill(255,0,0);
	stroke(255,0,0);
	ellipse(cx,cy,10,10);
	cx++;
}

class Particle
{
	int myX;
	int myY;
	color myA;
	color myB;
	color myC;
	Particle(int x,int y,color a,color b, color c){
		myX = x;
		myY = y;
		myA = a;
		myB = b;
		myC = c;
	}
	void show(){
		fill(myA,myB,myC);
		ellipse(myX,myY,10,10);
	}
	void move(){
		
	}
}

class OddballParticle extends Particle
{
	//your code here
}


