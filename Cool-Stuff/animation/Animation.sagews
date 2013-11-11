︠a79f8a82-f449-4ead-9c59-f83831bb5d8d︠
def p(i):
    return plot(exp(-x/i) * i * sin(i * x^2), (x, 0, 3*pi), ymin=-5, ymax=5)

filename_pattern = 'plt-%04d.png'

for idx, i in enumerate(srange(1, 5, .05)):
    p(i).save(filename_pattern % idx)

os.system("avconv -i '%s' -r 10 out.webm" % filename_pattern)

salvus.file("out.webm")
︡95915712-2b42-47f0-9051-c35216f9df2a︡{"stdout":"0"}︡{"stdout":"\n"}︡{"once":false,"file":{"show":true,"uuid":"8ff62b4d-f184-4b60-ae75-e1de2a12d474","filename":"out.webm"}}︡
︠65e3ec95-e570-4891-b54b-b6097a7a4b24︠
html("<video src='https://cloud.sagemath.com/7b360e55-8799-4355-915e-c0373c94c629/raw/out.webm' controls autoplay></video>", hide=False)
︡1abe927b-ff50-4102-bbc4-4ae647b13a36︡{"html":"<video src='https://cloud.sagemath.com/7b360e55-8799-4355-915e-c0373c94c629/raw/out.webm' controls autoplay></video>"}︡
︠653cca8a-674e-4b55-9da4-f9df611e4d91︠









