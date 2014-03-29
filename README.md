

<!---
![alphatex](https://raw.githubusercontent.com/Akollek/AlphaTeX/master/alphatex.png)

========

AlphaTeX is a LaTeX package which uses the Wolfram API to facilitate calculation and plot generation inside LaTeX documents. See the Demo PDF for full examples


# Commands

###### \calc{}

This command evaluates a mathematical expression, taking Wolfram Language syntax. For example 

``` \calc{Exp[I*Pi]} ```

will compile to 

![Neg1](https://raw.githubusercontent.com/Akollek/AlphaTeX/master/calc-example.png)

###### \graphic{}

This command gerenates a graphic. For example,

``` \graphic{Plot[Sin[x],{x,0,2 Pi}]}{sin} ```

will generate the following graph and make it availible to your LaTeX document in the image file `sin.png`.

	\begin{figure} 
	\centering
	\includegraphics[width=0.8\textwidth]{sin.png}
	\caption{Plot of sin(x) generated with the Wolfram API}
	\end{figure}

![Sin](https://raw.githubusercontent.com/Akollek/AlphaTeX/master/pic.png)

-->

![AlphaTeX](https://github.com/Akollek/AlphaTeX/blob/master/AlphaTeX-Demo.pdf)
