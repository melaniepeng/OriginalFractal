int h = 0;
int x = 50;

public void setup()
{
	size(1100,1100);
}
public void draw()
{
	background(225);
	original(x,x,h);
}
public void mouseClicked()
{
	h = h + 50;
	if (h >= 300)
	{
		h = 0;
	}
}
public void original(int x, int y, int len)
{
	int r = 250;
	if(len <= 20)
	{
		fill(0);
		rect(x, y, len, len);
	}
	else
	{
		if ( h < 0 )
		{
			rotate(PI/2);
		}
		//left up
		original(x, y, len/2);
		original(x+len/2, y,len/2);
		original(x, y+len/2,len/2);
		original(x+len, y,len/2);
		original(x, y+len,len/2);
		original(x+len,y+len,len/2);

		//right down
		original(x+r,y+r,len/2);
		original(x+r-len/2,y+r,len/2);
		original(x+r,y+r-len/2,len/2);
		original(x+r-len,y+r,len/2);
		original(x+r,y+r-len,len/2);
		original(x+r-len,y+r-len,len/2);

		//right up
		original(x+r,y,len/2);
		original(x+r-len/2,y,len/2);
		original(x+r,y+len/2,len/2);
		original(x+r-len,y,len/2);
		original(x+r,y+len,len/2);
		original(x+r-len,y+len,len/2);

		//left down
		original(x, y+r, len/2);
		original(x+len/2,y+r,len/2);
		original(x,y+r-len/2,len/2);
		original(x+len,y+r,len/2);
		original(x,y+r-len,len/2);
		original(x+len,y+r-len,len/2);
	}
}
