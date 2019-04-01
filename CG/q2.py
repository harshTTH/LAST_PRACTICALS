import matplotlib.pyplot as plt
import numpy as np

g = int(input("Enter center's abscissa : "))
f = int(input("Enter center's ordinate : "))
r = int(input("Enter Radius : "))

def func(x1,y1):
	return abs((x1-g)**2 + (y1-f)**2 - r**2)

def getReflectedPoints(x,y):
	return[
		[
			x,
			y,
			-x,
			x,
			-y,
			y,
			-y,
			-x
		],
		[
			y,
			x,
			y,
			-y,
			x,
			-x,
			-x,
			-y
		]
	]

startx = g
starty = f+r
plt.plot([g,g+r,g,g-r],[f+r,f,f-r,f],'bs',label="Calculated")

while(abs(startx) <= abs(starty)):
	xk_1 = startx + 1
	d1 = func(xk_1,starty)
	d2 = func(xk_1,starty-1)
	if(d1 > d2):
		starty = starty - 1
	startx = startx + 1
	points = getReflectedPoints(startx,starty)
	print(points)
	plt.plot(points[0],points[1],'bs')	

plt.grid(True)
plt.legend()
plt.show()	
