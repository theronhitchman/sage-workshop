︠b594f92a-d32e-4b64-addd-a83d8b7579b1︠
x, y, z = var('x y z')
T = RDF(golden_ratio)
p = 2 - (cos(x + T*y) + cos(x - T*y) + cos(y + T*z) + cos(y - T*z) + cos(z - T*x) + cos(z + T*x))
r = 4.77
show(implicit_plot3d(p, (x, -r, r), (y, -r, r), (z, -r, r), plot_points=100))
︡f937e00b-3661-434f-abb5-6c465d3d8ab7︡{"file":{"uuid":"757a74fb-7e0f-4cbb-b29e-cd9af1a0a235","filename":"757a74fb-7e0f-4cbb-b29e-cd9af1a0a235.sage3d"}}︡
︠4659dbbf-c151-47dd-af84-4889c3016894︠
icosahedron()
︡a16cf77f-0b08-4609-b07e-c4f1c8bce2c2︡{"file":{"uuid":"050e5091-3c95-45f2-ba83-90bffc6770bc","filename":"050e5091-3c95-45f2-ba83-90bffc6770bc.sage3d"}}︡
︠42988616-0260-4930-8711-8891fb99ca92s︠
x, y, z = var('x y z')
r = 4
show(implicit_plot3d(2*x-3*y+z==-1, (x,-r,r), (y,-r,r), (z,-r,r), color='red', opacity=.6))
︡0aa283fc-6dff-4c7d-a36d-3a3d62c7ff29︡{"file":{"uuid":"033dd73d-02d8-4c0c-8fae-28c3507961af","filename":"033dd73d-02d8-4c0c-8fae-28c3507961af.sage3d"}}︡
︠1dbbdca0-6d6f-4532-b7a4-b0a25f22ab2b︠









