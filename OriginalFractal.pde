int h = 100;
public void setup()
{
	size(800,800);
}
public void draw()
{
	background(225);
	original(50,50,h);
	//noFill();
	//stroke(225,0,0);
	//rect(50,50,100,100);
}
/*public void mouseClicked()
{
	h = h + 100;
	//limit = limit - 20;
	//if (limit < 10)
	//{
	//	limit = h;
	//}
}*/
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
		original(x+len, y+len,len/2);
		//original(x-len/2, y,len/2);
		//original(x, y-len/2,len/2);
	}
}
