︠efc61c11-3543-4d5a-a024-f7a418a28511s︠
x = var('x')
x0  = 0
f   = sin(x)*e^(-x)
p   = plot(f,-1,5, thickness=2)
dot = point((x0,f(x=x0)),pointsize=80,rgbcolor=(1,0,0))
@interact
def _(order=(1..12)):
  ft = f.taylor(x,x0,order)
  pt = plot(ft,-1, 5, color='green', thickness=2)
  html('$f(x)\;=\;%s$ <br />'%latex(f))
  html('$\hat{f}(x;%s)\;=\;%s+\mathcal{O}(x^{%s})$ <br />'%(x0,latex(ft),order+1))
  show(dot + p + pt, ymin = -.5, ymax = 1)
︡4248f6ae-86df-4009-9058-ae1df5ecf036︡{"interact":{"style":"None","flicker":false,"layout":[[["order",12,null]],[["",12,null]]],"id":"bab6099e-6c4e-4ece-9b6d-af8813786e85","controls":[{"control_type":"slider","default":0,"var":"order","width":null,"vals":["1","2","3","4","5","6","7","8","9","10","11","12"],"animate":true,"label":"order","display_value":true}]}}︡
︠79f32be1-a2ba-49fc-8aee-4e2e3cd91843︠









