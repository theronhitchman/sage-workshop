︠6de5d1b0-4b44-47a4-97f0-cbe49631e380︠
%time
filename_pattern = 'animate-plot-%04d.png'

@parallel
def frame(n, filename):
    t = Tachyon(xres=800,yres=800, camera_center=(2,5,2), look_at=(2.5,0,0), antialiasing=True)
    t.light((0,0,100), 1, (1,1,1))
    t.texture('r', ambient=0.1, diffuse=0.9, specular=0.5, opacity=1.0, color=(1,0,0))
    for i in range(n):
        t.sphere((i/100, sin(i/10), cos(i/10)), 0.05, 'r')
    t.texture('white', color=(1,1,1), opacity=1, specular=1, diffuse=1)
    t.plane((0,0,-100), (0,0,-100), 'white')
    t.save(filename)
    print ".",

start = walltime()
len(list(frame([(n, filename_pattern % i) for i, n in enumerate(range(0,500,10))])))
print
print walltime() - start

os.system("ffmpeg -f image2 -i %s -b 5M out.ogg" % filename_pattern)
print walltime() - start
os.system("rm *.png")

salvus.file('out.ogg')
︠19cebabe-dbea-4a9d-a21b-65e1f4655563︠
html("<video src='https://cloud.sagemath.com/7b360e55-8799-4355-915e-c0373c94c629/raw/out.ogg' controls autoplay></video>", hide=False)
︡899cf121-99f3-4bb0-868e-1cf4b8c3d47b︡{"html":"<video src='https://cloud.sagemath.com/7b360e55-8799-4355-915e-c0373c94c629/raw/out.ogg' controls autoplay></video>"}︡
︠da752cfa-f15d-41a9-baa3-e98ca1ba2d39︠









