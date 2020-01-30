int a = 600;
int b = 0;
public void setup()
{
	size(600, 600);
	background(0);
}
public void draw()
{
	sierpinski(b,600,a);
}
public void mousePressed()//optional
{
}
public void keyPressed()//optional
{
	if(key == 'w')
		a+= 10;
		background(0);
	if(key == 's')
		a-= 10;
		background(0);
	if(key == 'd')
		b+= 10;
		background(0);
	if(key == 'a')
		b-= 10;
		background(0);
}
public void sierpinski(int x, int y, int lens) 
{
	if (lens>20)
	{
		fill(0, (int)(Math.random()*255), 0);
		sierpinski(x, y, lens/2);
		sierpinski(x+lens/2, y, lens/2);
		sierpinski(x+lens/4, y-lens/2, lens/2);
	}
	else 
		triangle(x, y, x+lens/2, y-lens, x+lens, y);
}
