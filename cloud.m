(* ::Package:: *)

(*URL for graphics*)
CloudDeploy[
APIFunction[{x->"String"},
Needs["ErrorBarPlots`"];
ExportForm[Rasterize[ToExpression[# x]], "PNG"]&],Permissions->"Public"]


(*Improved Wolfram Alpha *)
CloudDeploy[APIFunction[{x->"String"},
(result=WolframAlpha[ # x,"WolframResult" ];
If[Length[result]==1,ToExpression["TeXForm"][result[[1]]],
output = ToString[result[[1]]];
For[i = 2, i <= Length[result], i++,
output = output <> " " <> ToString[result[[i]]]];
Return[ToExpression["TeXForm"][output]]])&],Permissions->"Public"]

(*Wolfram Alpha Math*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][WolframAlpha[ # x,"WolframResult" ]]&],Permissions->"Public"]


(*Data Plot*)
CloudDeploy[APIFunction[{"x"->"String","list"->"String"},ExportForm[Rasterize[ToExpression[# x][ToExpression[# list]]],"PNG"]&],Permissions->"Public"]
(*Data Plot with Rules*)
CloudDeploy[APIFunction[{"plot"->"String","list"->"String","rules"->"String"},
(func=ToExpression[# plot];
data=ToExpression[# list];
rulesString=StringReplace[# rules,{"("->"{",")"->"}", "'" -> "\""}];
rules=ToExpression["{"<>rulesString<>"}"];
ExportForm[Rasterize[func[data, rules ] ],"PNG"])&],Permissions->"Public"]


(*Greek Character Support*)
CloudDeploy[APIFunction[{x->"String"},
(Greek[x_] := Module[{let},
(let = ToString[x];
ToExpression["\\"<>"[" <> let <> "]"])];
ToExpression["TeXForm"][Evaluate[ToExpression[# x]]])&],
Permissions->"Public"]


(*for solving equations*)
CloudDeploy[
APIFunction[{eq->"String",var->"String"},(
Greek[x_] := ToExpression["\\" <> "[" <> ToString[x] <> "]"];
eq=ToExpression[# eq];
var=ToExpression[# var];
print = {"\\begin{flalign*}"};
rules = Solve[eq, var];
sol = var /. rules;
For[i = 1, i <= Length[sol], i++,
AppendTo[print,
"&" <> ToString[ToExpression["TeXForm"][var]] <> "=" <> ToString[ToExpression["TeXForm"][sol[[i]]]] <>
"\\\\"]
];
AppendTo[print, "\\end{flalign*}"];
return="";
For[i = 1, i <= Length[print], i++,
return=return<>print[[i]]];
ExportForm[return,"Text"])&],Permissions->"Public"]
