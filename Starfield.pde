
int cx = 0;
int cy = 0;
int a;
int b;
int c;
double speed;
double angle;
Particle [] star;

void setup()
{
	size(1000,750);
	star = new Particle [1000];
	for(int i = 0; i < star.length-1; i++){
		a = (int)(Math.random()*255)+1;
		b = (int)(Math.random()*255)+1;
		c = (int)(Math.random()*255)+1;
		speed = Math.random()*10;
		angle = Math.random()*2*Math.PI;
		star[i] = new Particle(cx,cy,a,b,c,angle,speed);
	}
	star[999] = new OddballParticle(cx,cy,a,b,c,angle,speed);
}

void draw()
{	
	translate(width/2,height/2);
	stroke(0);
	background(0);
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
	double myAngle;
	double mySpeed;
	float size = 5;
	Particle(int x,int y,int a,int b, int c,double angle, double speed){
		myX = x;
		myY = y;
		myA = a;
		myB = b;
		myC = c;
		myAngle = angle;
		mySpeed = speed;
	}
	void show(){
		fill(myA,myB,myC);
		ellipse(myX,myY,size,size);

	}
	void move(){
		myX += Math.cos(myAngle) * mySpeed;
		myY += Math.sin(myAngle) * mySpeed;
		if(myX > 500){
			myX = 0;
		}
		if(myX < -500){
			myX = 0;
		}
		if(myY > 375){
			myY = 0;
		}
		if(myY < -375){
			myY = 0;
		}
	}
}

class OddballParticle extends Particle
{
	OddballParticle(int x,int y,int a,int b, int c,double angle, double speed){
		super(x,y,a,b,c,angle,speed);
		myX = x;
		myY = y;
	}
	void show(){
		fill(255,255,0);
		ellipse(myX, myY, 50,50);
	}
	void move(){
		myX += ((Math.random()*4)-2);
		myY += ((Math.random()*4)-2);
	}
}
