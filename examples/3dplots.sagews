︠b594f92a-d32e-4b64-addd-a83d8b7579b1︠
x, y, z = var('x y z')
T = RDF(golden_ratio)
p = 2 - (cos(x + T*y) + cos(x - T*y) + cos(y + T*z) + cos(y - T*z) + cos(z - T*x) + cos(z + T*x))
r = 4.77
show(implicit_plot3d(p, (x, -r, r), (y, -r, r), (z, -r, r), plot_points=100))
︠4659dbbf-c151-47dd-af84-4889c3016894︠
icosahedron()
︠42988616-0260-4930-8711-8891fb99ca92s︠
x, y, z = var('x y z')
r = 4
show(implicit_plot3d(2*x-3*y+z==-1, (x,-r,r), (y,-r,r), (z,-r,r), color='red', opacity=.6))
︠1dbbdca0-6d6f-4532-b7a4-b0a25f22ab2b︠









