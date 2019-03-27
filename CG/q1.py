import matplotlib.pyplot as plt
import numpy as np

def func(x,slope,intercept):
	 return slope*x + intercept

startx = int(input("Enter Xs : "))
starty = int(input("Enter Ys : "))
endx = int(input("Enter Xe : "))
endy = int(input("Enter Ye : "))

print("Starting Co-ordinates ",startx,starty)
print("End Co-ordinates ",endx,endy)

polynomial = np.polyfit([startx,endx],[starty,endy],1)
slope = round(polynomial[0],3)
intercept = round(polynomial[1],3)

while(abs(startx) < abs(endx)):
	startx += 1
	yk = starty
	y = func(startx,slope,intercept)
	if slope >= 0:
		 yk_1 = yk + 1
	else: 
		yk_1 = yk - 1
	d1 = abs(yk_1 - y)
	d2 = abs(y - yk)

	if(d1 < d2):
		starty = yk_1	
	else:
		starty = yk
	plt.plot(startx,starty,'bs')
plt.grid(True)
plt.show()	