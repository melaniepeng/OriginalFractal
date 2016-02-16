int h = 350;
int x = 50;
public void setup()
{
	size(800,800);
}
public void draw()
{
	background(225);
	original(x,x,h);
	//noFill();
	//stroke(225,0,0);
	//rect(50,50,100,100);
}
public void mouseClicked()
{
	h = h - 50;
	if (h < 0)
	{
		x = 750;
	}
}
public void original(int x, int y, int len)
{
	if(len <= 20)
	{
		fill(0);
		rect(x, y, len, len);
	}
	else
	{
		original(x, y, len/2);
		original(x+len/2, y,len/2);
		original(x, y+len/2,len/2);
		original(x+len, y,len/2);
		original(x, y+len,len/2);
		original(x+len,y+len,len/2);
		if( h < 0)
		{
			
		}
		//original(x-len/2, y,len/2);
		//original(x, y-len/2,len/2);
		//original(x+len/2,y+len,len/2);
		//original(x+len,y+len/2,len/2);
		//original(x-len,y+len,len/2);
		//original(x+len, y-len,len/2);
	}
}
