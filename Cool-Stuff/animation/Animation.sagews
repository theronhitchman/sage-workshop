︠a79f8a82-f449-4ead-9c59-f83831bb5d8ds︠
def p(i):
    return plot(exp(-x/i) * i * sin(i * x^2), (x, 0, 3*pi), ymin=-5, ymax=5)

filename_pattern = 'plt-%04d.png'

for idx, i in enumerate(srange(1, 5, .05)):
    p(i).save(filename_pattern % idx)

os.system("avconv -i '%s' -r 10 out.webm" % filename_pattern)

salvus.file("out.webm")
︡725614a6-17d4-470e-acce-337ce7a12ded︡{"stdout":"0"}︡{"stdout":"\n"}︡{"once":false,"file":{"url":"/9951941c-a526-4235-a3cf-8dcd24d14cc5/raw/Materials/Cool-Stuff/animation/out.webm","show":true,"filename":"out.webm"}}︡
︠65e3ec95-e570-4891-b54b-b6097a7a4b24s︠
html("<video src='https://cloud.sagemath.com/7b360e55-8799-4355-915e-c0373c94c629/raw/out.webm' controls autoplay></video>", hide=False)
︡5374f36c-c191-432d-b78d-5dba777f5301︡{"html":"<video src='https://cloud.sagemath.com/7b360e55-8799-4355-915e-c0373c94c629/raw/out.webm' controls autoplay></video>"}︡
︠653cca8a-674e-4b55-9da4-f9df611e4d91︠









