int cx = 500;
int cy = 375;
int a;
int b;
int c;
double sx;
double sy;
Particle [] star;

void setup()
{
	size(1000,750);
	star = new Particle [200];
	for(int i = 0; i < star.length; i++){
		a = (int)(Math.random()*255)+1;
		b = (int)(Math.random()*255)+1;
		c = (int)(Math.random()*255)+1;
		sx = (Math.random()*20)-10;
		sy = (Math.random()*20)-10;
		star[i] = new Particle(cx,cy,a,b,c,sx,sy);
	}
}

void draw()
{
	stroke(0);
	//background(0);
	fill(0,0,0,30);
	for(int i = 0; i < star.length; i++){
		star[i].show();
		star[i].move();
	}
}

class Particle
{
	int myX;
	int myY;
	int myA;
	int myB;
	int myC;
	double mySX;// = (Math.random()*20)-10;
	double mySY;// = (Math.random()*20)-10;
	Particle(int x,int y,int a,int b, int c,double sx, double sy){
		myX = x;
		myY = y;
		myA = a;
		myB = b;
		myC = c;
		mySX = sx;
		mySY = sy;
	}
	void show(){
		fill(myA,myB,myC);
		ellipse(myX,myY,10,10);
	}
	void move(){
		myX += mySX;
		myY += mySY;
	}
}
/*
class OddballParticle extends Particle
{
	OddballParticle(int x,int y){

	}
	void show(){

	}
	void move(){

	}
}
*/