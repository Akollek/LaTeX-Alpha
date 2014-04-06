(* ::Package:: *)

(*URL for graphics*)
CloudDeploy[
APIFunction[{x->"String"},
Needs["ErrorBarPlots`"];
ExportForm[Rasterize[ToExpression[# x]], "PNG"]&],Permissions->"Public"]


(*URL for calculations*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][Evaluate[ToExpression[# x]]]&],Permissions->"Public"]

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


(*3D Graphs*)
CloudDeploy[ExportForm[Plot3D[Sin[x]*Cos[y], {x, -10, 10}, {y, -10, 10}],"CloudCDF"],Permissions->"Public"]

CloudDeploy[Graphics3D[Sphere[{0,0,0}]],Permissions->"Public"]

CloudDeploy[ExportForm[Plot3D[x^2*y^2, {x, -10, 10}, {y, -10, 10}],"CloudCDF"],Permissions->"Public"]




(*Greek Character Support*)
CloudDeploy[APIFunction[{x->"String"},
(Greek[x_] := Module[{let},
(let = ToString[x];
ToExpression["\\"<>"[" <> let <> "]"])];
ToExpression["TeXForm"][Evaluate[ToExpression[# x]]])&],
Permissions->"Public"]
