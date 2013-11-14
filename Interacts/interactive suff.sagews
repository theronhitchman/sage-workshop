︠7ca93c00-cea9-47e3-86f9-de30eb7ff508︠
x, y= var('x y')
@interact
def my_fancy_plot(a=slider(1, b=-1, c=-2):
    line_one = 3*x + y == 7
    line_two = a*x + b*y == c


    G = implicit_plot( line_one, (-5,5), (-5,5), color='blue')
    G+= implicit_plot(line_two, (-5,5), (-5,5), color='gold')
    G.show(axes=True, frame=False)


︡88fd30ef-d765-496b-8ec4-ee3320fc271e︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["b",12,null]],[["c",12,null]],[["",12,null]]],"id":"3afa6c0d-696a-48b9-9996-5ceeeeadb0d8","controls":[{"control_type":"input-box","default":1,"label":"a","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"a","type":null},{"control_type":"input-box","default":-1,"label":"b","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":-2,"label":"c","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"c","type":null}]}}︡
︠540291dc-5541-4307-ad2b-087d03d7c6f5︠
︠703a71d9-cde6-4b57-9e98-5ec96dbc9763︠


︡2da1f65b-c350-4232-ac1f-77b2b77cd5c1︡
︠1ddc837d-b6c7-4416-8620-7af90ccd6cb1︠
x, y= var('x y')
line_one = 3*x + y == 7
G = implicit_plot( line_one, (-5,5), (-5,5), color='blue')

@interact
def my_fancy_plot(a=slider([1..5],2), b=-1, c=-2):
    line_two = a*x + b*y == c
    G+= implicit_plot(line_two, (-5,5), (-5,5), color='gold')
    G.show(axes=True, frame=False)
︡9af47f91-6f9e-4ec2-92df-b5b92a8d71a1︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["b",12,null]],[["c",12,null]],[["",12,null]]],"id":"4793e434-06d6-447d-a364-6e0acd9d3a04","controls":[{"control_type":"slider","default":0,"var":"a","width":null,"vals":["1","2","3","4","5"],"animate":true,"label":"a","display_value":true},{"control_type":"input-box","default":-1,"label":"b","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"b","type":null},{"control_type":"input-box","default":-2,"label":"c","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"c","type":null}]}}︡
︠d85b46b6-1ff0-4c49-ae4c-1d34134e1289︠









