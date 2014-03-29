

![alphatex](https://raw.githubusercontent.com/Akollek/AlphaTeX/master/alphatex.png)

========

AlphaTeX is a LaTeX package allowing for calculation and plot generation inside LaTeX documents. 


# Commands

###### \calc{}

This command evaluates a mathematical expression, taking Wolfram Language syntax. For example 

``` \calc{Exp[I*Pi]} ```

will compile to 

![Neg1](https://raw.githubusercontent.com/Akollek/AlphaTeX/master/calc-example.png)

####### \graphic{}

This command gerenates a graphic.

``` \graphic{Plot[Sin[x],{x,0,2 Pi}]} ```

will generate the following graph and make it availible to your LaTeX document

![Sin](https://raw.githubusercontent.com/Akollek/AlphaTeX/master/pic.png)
