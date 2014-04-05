


![latexalpha](https://raw.githubusercontent.com/Akollek/LaTeX-Alpha/master/latexalpha.png)

========

__LaTeX-Alpha is down until the Wolfram Cloud becomes publicly available! Please check back soon!__

LaTeX-Alpha is a LaTeX package which incorporates the typesetting ease and control of LaTeX with the power of the Wolfram Language. The goal of LaTeX-Alpha is to provide the most complete, powerful and self-sufficient typesetting environment.

__Please see LaTeX-Alpha-Demo.pdf for fuller documentation__

### Use Instructions

1. Download `latexalpha.sty` and put it in the same directory as your `.tex` document.
2. Add `\usepackage{latexalpha}` to your preamble.
3. Compile your document using `pdflatex --shell-escape your-document.tex` (this step requires that `curl` is installed, `wget` compatibility coming soon)
4. Enjoy cool documents!


__LaTeX-Alpha is a work in progress! For now it will only be available for a few months. Please email me with bugs/suggestions/comments!__


### Commands

###### \calc{}

This command evaluates a mathematical expression, taking Wolfram Language syntax. For example 

``` \calc{Exp[I*Pi]} ```

will compile to 

![Neg1](https://raw.githubusercontent.com/Akollek/LaTeX-Alpha/master/calc-example.png)

###### \graphic{}

This command generates a graphic. For example,

``` \graphic{Plot[Sin[x],{x,0,2 Pi}]}{sin} ```

will generate the following graph and make it available to your LaTeX document in the image file `sin.png`.

	\begin{figure} 
	\centering
	\includegraphics[width=0.8\textwidth]{sin.png}
	\caption{Plot of sin(x) generated with the Wolfram API}
	\end{figure}

![Sin](https://raw.githubusercontent.com/Akollek/LaTeX-Alpha/master/pic.png)

###### \WolframAlpha{} and \WolframAlphaMath{}

Take in a Wolfram Alpha query. For example 

``` $\WolframAlpha{ what is the biggest city in china }$ ```

will compile to Shanghai.

###### \dataplotTXT{}

`\dataplotTXT{}` allows for data which is stored in the same directory as a .tex file to be graphed in the compiled document. 

