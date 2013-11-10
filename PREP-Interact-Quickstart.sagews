︠a32b5b02-8c96-480b-91bb-7cf58e5a3e6ai︠
%html
This worksheet is a .sagews translation of a .sws worksheet prepared for the MAA PREP Program. Alterations are only:
<ol>
    <li>those necessary for the change of file format</li>
    <li>some changes to make it necessary for the reader to interact, rather than click through</li>
</ol>
You should type out the commands as suggested to get a feel for how interacts work.
︡6ae44207-1dc3-408c-aa8d-5d9aa805959c︡{"html":"This worksheet is a .sagews translation of a .sws worksheet prepared for the MAA PREP Program. Alterations are only:\n<ol>\n    <li>those necessary for the change of file format</li>\n    <li>some changes to make it necessary for the reader to interact, rather than click through</li>\n</ol>\nYou should type out the commands as suggested to get a feel for how interacts work."}︡
︠ef2c3428-67b4-498e-88dc-df08b90e64bai︠
%html
<h1>Sage Interact Quickstart</h1>
<p><span id="cell_outer_0">This&nbsp;<a href="http://www.sagemath.org/" target="_blank">Sage</a>&nbsp;worksheet was developed for the MAA PREP  Workshop "Sage: Using Open-Source Mathematics Software with  Undergraduates" (funding provided by NSF DUE 0817071).</span></p>
<p>Invaluable resources are the Sage wiki <a href="http://wiki.sagemath.org/interact" target="_blank">http://wiki.sagemath.org/interact</a> (type "sage interact" into Google) and the <a href="http://sagemath.org/doc/reference/sagenb/notebook/interact.html#sagenb.notebook.interact.interact" target="_blank">interact documentation</a>.</p>
<p>&nbsp;</p>

︡1b4739f1-8d87-4eea-9ebd-fc863698df4f︡{"html": "<h1>Sage Interact Quickstart</h1>\r\n<p><span id=\"cell_outer_0\">This&nbsp;<a href=\"http://www.sagemath.org/\" target=\"_blank\">Sage</a>&nbsp;worksheet was developed for the MAA PREP  Workshop \"Sage: Using Open-Source Mathematics Software with  Undergraduates\" (funding provided by NSF DUE 0817071).</span></p>\r\n<p>Invaluable resources are the Sage wiki <a href=\"http://wiki.sagemath.org/interact\" target=\"_blank\">http://wiki.sagemath.org/interact</a> (type \"sage interact\" into Google) and the <a href=\"http://sagemath.org/doc/reference/sagenb/notebook/interact.html#sagenb.notebook.interact.interact\" target=\"_blank\">interact documentation</a>.</p>\r\n<p>&nbsp;</p>"}︡
︠0b0dd3f9-3d85-4d87-9d52-67a8bc6b71b5i︠
%html
<p>Start by getting the commands for what you want the output to look like. &nbsp;Here we just want a simple plot.</p>
<code><pre>plot(x^2, (x,-3,3)) </pre></code>

︡e27bc676-71b2-4313-afdf-7968882b5336︡{"html":"<p>Start by getting the commands for what you want the output to look like. &nbsp;Here we just want a simple plot.</p>\n<code><pre>plot(x^2, (x,-3,3)) </pre></code>"}︡
︠0a7f7af9-1d4a-4b70-8128-3cbdf1be34fb︠
︡7aa1eed1-7008-45ef-9da0-d79ab514f289︡
︠985d7e6c-5cc2-4e36-ba9d-cc3603cc0075i︠
%html
<p>Then abstract out the parts you want to change. &nbsp;We'll be letting the user change the function, so let's make that a variable $f$.</p>
<code><pre>f=x^3
plot(f, (x,-3,3)) </pre></code>

︡11e05a57-4628-47bc-84a0-b666092769ae︡{"html":"<p>Then abstract out the parts you want to change. &nbsp;We'll be letting the user change the function, so let's make that a variable $f$.</p>\n<code><pre>f=x^3\nplot(f, (x,-3,3)) </pre></code>"}︡
︠ca0eb5a0-73b4-442c-bad6-f25a67ae133c︠

︠e1bd5581-6fd4-4070-938f-40d901a7a77fi︠
%html
<p>Now make this a "def" function. &nbsp;The "show" or "print" is needed since the output is not automatically printed from within a function. &nbsp;Note also that we give the variable a default value of x^2. &nbsp;This is what $f$ is if the user does not specify a value for $f$.</p>
<code><pre>def myplot(f=x^2):
    show(plot(f,(x,-3,3))</pre></code>

︡6960dc68-500f-4374-93a5-98a59e015b72︡{"html":"<p>Now make this a \"def\" function. &nbsp;The \"show\" or \"print\" is needed since the output is not automatically printed from within a function. &nbsp;Note also that we give the variable a default value of x^2. &nbsp;This is what $f$ is if the user does not specify a value for $f$.</p>\n<code><pre>def myplot(f=x^2):\n    show(plot(f,(x,-3,3))</pre></code>"}︡
︠af7fe689-67e1-4f82-936b-20d4a6f1d078︠

︠81b4b647-8a34-49a3-93e1-367570f75d15i︠
%html
<p>Let's test the def function myplot by just calling it.</p>
<code><pre>myplot()</pre><code>

︡7ee2c143-1795-48e2-b0a3-176dfefc103a︡{"html":"<p>Let's test the def function myplot by just calling it.</p>\n<code><pre>myplot()</pre><code>"}︡
︠24fe30fa-bc0c-4ee7-9b24-f7520bb410e8︠

︠4f51fc8b-6f4b-4f85-87d6-a3cdb3c1a5b1i︠
%html
<p>If we call it with a different value for f, we should get a different plot.</p>
<code><pre>
myplot(x^3)
</pre></code>

︡54685d1b-6a18-4429-971a-3c239831ea1f︡{"html":"<p>If we call it with a different value for f, we should get a different plot.</p>\n<code><pre>\nmyplot(x^3)\n</pre></code>"}︡
︠a9803a60-7f8e-42c6-b4ef-5a9d9f598158︠

︠4d0b4d7a-04a2-4ddd-a4a8-81f9055e2d08i︠
%html
<p>Now to make a control to enter the function, we just preface the function with @interact.</p>
<code><pre>@interact
def myplot(f=x^2):
    show(plot(f,(x,-3,3)))</pre></code>

︡a40470ec-b50b-4392-ac08-3cb88b037926︡{"html":"<p>Now to make a control to enter the function, we just preface the function with @interact.</p>\n<code><pre>@interact\ndef myplot(f=x^2):\n    show(plot(f,(x,-3,3)))</pre></code>"}︡
︠21ac0472-18fa-49d4-88e1-78d5a12ae552︠

︠190c64c5-3200-4092-b62d-727ca97e3861i︠
%html
<p>Tech tip: Technically what the @interact does is wrap the function, so the above is equivalent to:</p>
<code><pre>def myplot(..):
    ...
myplot=interact(myplot)</pre></code>

︡f494b730-5eb7-4690-850c-a9734257f2ca︡{"html":"<p>Tech tip: Technically what the @interact does is wrap the function, so the above is equivalent to:</p>\n<code><pre>def myplot(..):\n    ...\nmyplot=interact(myplot)</pre></code>"}︡
︠8ee1bf94-0b27-4f61-a7b1-b7c9b50ababei︠
%html
<p>Note that we can still call our function, even when we've used @interact. &nbsp;This is often useful in debugging it.</p>
<code><pre>myplot(x^4)</pre></code>

︡91ecc1e0-bb0a-4fe1-83ec-906fece470f3︡{"html":"<p>Note that we can still call our function, even when we've used @interact. &nbsp;This is often useful in debugging it.</p>\n<code><pre>myplot(x^4)</pre></code>"}︡
︠0e8fee41-bb47-4b08-9943-bf9dcf84039c︠

︠ed855d87-416d-40b5-a558-27aff482d6d8i︠
%html
<p>We can go ahead and replace other parts of the expression with variables. &nbsp;Note the "_" is the function name now. &nbsp;That is a convention for throw-away names that we don't care about.</p>
<code><pre>@interact
def _(f=x^2,a=-3,b=3):
    show(plot(f,(x,a,b)))
</pre></code>

︡e2cb019c-6837-4fbf-9904-d8061a4f33fc︡{"html":"<p>We can go ahead and replace other parts of the expression with variables. &nbsp;Note the \"_\" is the function name now. &nbsp;That is a convention for throw-away names that we don't care about.</p>\n<code><pre>@interact\ndef _(f=x^2,a=-3,b=3):\n    show(plot(f,(x,a,b)))\n</pre></code>"}︡
︠50952aa7-3094-4ead-96a0-6791d2297586︠

︠6c32e7d6-17f2-4b09-8557-28929c9e2762i︠
%html
<p>If we pass ('label', default_value) in for a control, then the control gets the label when printed.</p>
<code><pre>@interact
def _(f=('$f$',x^2),a=('lower',-3),b=('upper',3)):
    show(plot(f,(x,a,b)))
</pre></code>

︡7406ecb8-9cbc-4892-86eb-c35b659c6494︡{"html":"<p>If we pass ('label', default_value) in for a control, then the control gets the label when printed.</p>\n<code><pre>@interact\ndef _(f=('$f$',x^2),a=('lower',-3),b=('upper',3)):\n    show(plot(f,(x,a,b)))\n</pre></code>"}︡
︠508edb45-b47b-49d2-a8d7-33d83f04b461︠

︠a2c0dca7-bfaf-44cd-8503-649ba2e4c75di︠
%html
<p>We can specify the type of control explicitly, along with options.</p>
<code><pre>
@interact
def _(f=input_box(x^2,width=20, label="$f$")):
    show(plot(f,(x,-3,3)))
</pre></code>

︡3720f244-28d5-4b90-af7d-8d4fdb45ceec︡{"html":"<p>We can specify the type of control explicitly, along with options.</p>\n<code><pre>\n@interact\ndef _(f=input_box(x^2,width=20, label=\"$f$\")):\n    show(plot(f,(x,-3,3)))\n</pre></code>"}︡
︠96a00cba-88da-452a-a622-f8b4f4f6d06b︠

︠68104d31-4b53-4364-92c3-30f44b94f2b5i︠
%html
<p>Here's another type of control: a color picker.</p>
<code><pre>
@interact
def _(f=input_box(x^2,width=20), color=color_selector()):
    show(plot(f,(x,-3,3), color=color))
</pre></code>

︡f9a444be-bb84-44d7-8574-a5da7b750376︡{"html":"<p>Here's another type of control: a color picker.</p>\n<code><pre>\n@interact\ndef _(f=input_box(x^2,width=20), color=color_selector()):\n    show(plot(f,(x,-3,3), color=color))\n</pre></code>"}︡
︠eae71415-49a6-42b8-93de-5dbf629b48d9︠

︠c5056d79-97e6-4a24-994e-703a5dadfd0ei︠
%html
<p>Here are a bunch of options. &nbsp;Notice the new controls:</p>
<ul>
<li>range slider, which passes in <em>two </em>values, zoom[0] and zoom[1]</li>
<li>True/False get converted to checkboxes</li>
</ul>
<code>
<pre>
@interact
def _(f=input_box(x^2,width=20),
      color=color_selector(widget='colorpicker', label=""),
      axes=True, fill=True,
      zoom=range_slider(-3,3,default=(-3,3))):
    show(plot(f,(x,zoom[0], zoom[1]), color=color, axes=axes,fill=fill))
</pre>
</code>
︡f8a8c07c-4f4c-4f08-a58a-9d70abc6530b︡{"html":"<p>Here are a bunch of options. &nbsp;Notice the new controls:</p>\n<ul>\n<li>range slider, which passes in <em>two </em>values, zoom[0] and zoom[1]</li>\n<li>True/False get converted to checkboxes</li>\n</ul>\n<code>\n<pre>\n@interact\ndef _(f=input_box(x^2,width=20),\n      color=color_selector(widget='colorpicker', label=\"\"),\n      axes=True, fill=True,\n      zoom=range_slider(-3,3,default=(-3,3))):\n    show(plot(f,(x,zoom[0], zoom[1]), color=color, axes=axes,fill=fill))\n</pre>\n</code>"}︡
︠73ab40c5-6455-4e4d-aeff-25dbd1c7f532︠

︠be6462f9-e552-4b4b-85c1-75861ce2788di︠
%html
<p>That was a bit ugly because all of the controls were stacked on top of each other. &nbsp;We can layout the controls in a grid in the top, bottom, left, or right using the 'layout' parameter.</p>
<code><pre>
@interact(layout=dict(top=[['f', 'color']],
                      left=[['axes'],['fill']],
                      bottom=[['zoom']]))
def _(f=input_box(x^2,width=20),
      color=color_selector(widget='colorpicker', label=""),
      axes=True, fill=True,
      zoom=range_slider(-3,3, default=(-3,3))):
    show(plot(f,(x,zoom[0], zoom[1]), color=color, axes=axes,fill=fill))
</pre></code>

︡222214d8-724b-40cc-957f-04e49bd053de︡{"html":"<p>That was a bit ugly because all of the controls were stacked on top of each other. &nbsp;We can layout the controls in a grid in the top, bottom, left, or right using the 'layout' parameter.</p>\n<code><pre>\n@interact(layout=dict(top=[['f', 'color']],\n                      left=[['axes'],['fill']],\n                      bottom=[['zoom']]))\ndef _(f=input_box(x^2,width=20),\n      color=color_selector(widget='colorpicker', label=\"\"),\n      axes=True, fill=True,\n      zoom=range_slider(-3,3, default=(-3,3))):\n    show(plot(f,(x,zoom[0], zoom[1]), color=color, axes=axes,fill=fill))\n</pre></code>"}︡
︠7deaccc0-475a-40fd-81e1-23b42c38fb97︠


︠ff306890-1d06-452a-af00-8ca322ba94a6i︠
%html
<hr />
<hr />
︡54e23ca3-58bb-4db7-8ca6-ea102ba6d928︡{"html":"<hr />\n<hr />"}︡
︠c61cc987-1b8a-4a89-a08e-960510174108i︠
%html
The rest of this is still set up so you can click through. --TJH
︡0b95d556-00f7-4f95-94b3-7b12aae98342︡{"html":"The rest of this is still set up so you can click through. --TJH"}︡
︠22f3bf54-d951-478a-928d-b20299eb4641i︠
%html
<h1>Control Types</h1>

<p>Sage has:</p>
<ul>
<li>boxes</li>
<li>sliders</li>
<li>range sliders</li>
<li>checkboxes</li>
<li>selectors (dropdown lists or buttons)</li>
<li>grid of boxes</li>
<li>color selectors</li>
<li>plain text</li>
</ul>
<p>We illustrate some of these.</p>

︡1b4d1438-31b6-489c-a218-91650c014af6︡{"html": "<h1>Control Types</h1>\r\n\r\n<p>Sage has:</p>\r\n<ul>\r\n<li>boxes</li>\r\n<li>sliders</li>\r\n<li>range sliders</li>\r\n<li>checkboxes</li>\r\n<li>selectors (dropdown lists or buttons)</li>\r\n<li>grid of boxes</li>\r\n<li>color selectors</li>\r\n<li>plain text</li>\r\n</ul>\r\n<p>We illustrate some of these.</p>"}︡
︠7291bb02-6f66-4172-ab19-e2995d351c0a︠
@interact
def _(frame=checkbox(True, label='Use frame')):
    show(plot(sin(x), (x,-5,5)), frame=frame)
︠21bacc00-f422-4329-930e-fffed57f6aa9︠
x, y = var('x,y')
colormaps=sage.plot.colors.colormaps.keys()
@interact
def _(cmap=selector(colormaps)):
    contour_plot(x^2-y^2,(x,-2,2),(y,-2,2),cmap=cmap).show()
︠8336774f-4068-480f-827c-9677cae62a90︠
x, y = var('x,y')
colormaps=sage.plot.colors.colormaps.keys()
@interact
def _(cmap=selector(['RdBu', 'jet', 'gray','gray_r'],buttons=True),
      type=['density','contour']):
    if type=='contour':
        contour_plot(x^2-y^2,(x,-2,2),(y,-2,2),cmap=cmap, aspect_ratio=1).show()
    else:
        density_plot(x^2-y^2,(x,-2,2),(y,-2,2),cmap=cmap, frame=True,axes=False,aspect_ratio=1).show()
︠3ccb1172-435f-492d-840a-4280bccc1b5ci︠
%html
<p>By default, ranges are sliders that divide the range into 500 steps (I think that's the right number...)</p>

︡557e7462-62ae-4003-8bae-9f8d6b18267c︡{"html":"<p>By default, ranges are sliders that divide the range into 500 steps (I think that's the right number...)</p>"}︡
︠0a9c8aab-85c4-4b93-9a85-53b566cadbe1︠
@interact
def _(n=(1,20)):
    print factorial(n)
︠026049fd-2061-4be3-bc5c-9248e7961dabi︠
%html
<p>You can set the step size to get, for example, just integer values.</p>

︡b570c054-9638-40d7-a7f1-5ad3688ef9fc︡{"html":"<p>You can set the step size to get, for example, just integer values.</p>"}︡
︠d37c638d-6d23-4818-b3e7-92433763fb18︠
@interact
def _(n=slider(1,20,step_size=1)):
    print factorial(n)
︠68452f0a-53b0-49e7-9f75-2ebd46b5889ci︠
%html
<p>Or you can explicitly specify the slider values.</p>

︡22f0a973-7ead-4fdb-b537-75aaa8da552b︡{"html":"<p>Or you can explicitly specify the slider values.</p>"}︡
︠a0c4d60b-055b-4b0b-a384-4cb11f51be88︠
@interact
def _(n=slider([1..20])):
    print factorial(n)
︠0cc1fe1d-2983-40d7-b2ec-a5a90e2dd2bei︠
%html
<p>And the slider values don't even have to be numbers!</p>

︡1d40ccb8-82e6-4467-9e0a-329fc6120228︡{"html":"<p>And the slider values don't even have to be numbers!</p>"}︡
︠e844a422-25cc-4305-bfea-002034748ac0︠
@interact
def _(fun=('function', slider([sin,cos,tan,sec,csc,cot]))):
    print fun(4.39293)
︠de507a11-9988-4ee4-aa3d-4589038775dai︠
%html
<p>Matrices are automatically converted to a grid of input boxes.</p>

︡72b8c141-4711-467d-aeb7-b16daa2b1fa8︡{"html":"<p>Matrices are automatically converted to a grid of input boxes.</p>"}︡
︠6a323f90-c6ea-4495-8053-dcafc2df38e4︠
@interact
def _(m=('matrix', identity_matrix(2))):
    print m.eigenvalues()
︠87ea7746-f73b-44a6-98bd-472914e0c7bdi︠
%html
<p>Here's how to get vectors from a grid of boxes.</p>

︡1653282a-3953-4827-a034-26c0e4b319fe︡{"html":"<p>Here's how to get vectors from a grid of boxes.</p>"}︡
︠b48ba27b-af20-47d9-a457-286c9b42e559︠
@interact
def _(v=('vector', input_grid(1, 3, default=[[1,2,3]], to_value=lambda x: vector(flatten(x))))):
    print v.norm()
︠48471fe8-bbcb-4cc1-b906-52d417826d51i︠
%html
<p>Sometimes we don't want any updates until we specifically say so. &nbsp;We can use the auto_update=False option for that.</p>

︡ec144b52-7967-4d2c-acd0-dd1fbb87d7af︡{"html":"<p>Sometimes we don't want any updates until we specifically say so. &nbsp;We can use the auto_update=False option for that.</p>"}︡
︠1f149330-dfba-470c-b0aa-75dfd0a92fea︠
@interact
def _(m=('matrix', identity_matrix(2)), auto_update=False):
    print m.eigenvalues()
︠31160dc1-f2da-422a-96bf-3d18a42c94c1︠
︡9410240e-53b4-4731-9123-89add44a422a︡
︠648f34cb-cce3-4955-82be-e5801ef26f70︠









