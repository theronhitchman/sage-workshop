︠5ce3c347-5e63-4620-aa1b-026aeec514d5s︠
import numpy as np
N = 10000
x, y = 2 * np.random.rand(2, N) - 1
inside = np.sum(np.sqrt(x^2 + y^2) <= 1)
list_plot(zip(x, y), color='gray', size = 1) + circle((0,0), 1, color= 'green')
print("pi ~ %f" % (float(inside) / N * 4))
︡2403c9d4-918b-4deb-b3d3-5c5066be05b0︡{"once":false,"file":{"show":true,"uuid":"cea282dd-95f2-4987-8f17-595960e0490d","filename":"/projects/9951941c-a526-4235-a3cf-8dcd24d14cc5/.sage/temp/compute7dc1/22122/tmp_hI45yf.svg"}}︡{"stdout":"pi ~ 3.125200\n"}︡
︠bc7c5d3a-dbf7-48ee-9e2a-cbd692bf455d︠
