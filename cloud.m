(* ::Package:: *)

(*URL for graphics*)
CloudDeploy[
APIFunction[{x->"String"},
Needs["ErrorBarPlots`"];
ExportForm[Rasterize[ToExpression[# x]], "PNG"]&],Permissions->"Public"]


(*URL for calculations*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][Evaluate[ToExpression[# x]]]&],Permissions->"Public"]

(*Wolfram Alpha*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][WolframAlpha[ # x,"WolframResult" ][[1]]]&],Permissions->"Public"]

(*Wolfram Alpha Math*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][WolframAlpha[ # x,"WolframResult" ]]&],Permissions->"Public"]


(*Data Plot*)
CloudDeploy[APIFunction[{"x"->"String","list"->"String"},ExportForm[Rasterize[ToExpression[# x][ToExpression[# list]]],"PNG"]&],Permissions->"Public"]


(*3D Graphs*)
CloudDeploy[ExportForm[Plot3D[Sin[x]*Cos[y], {x, -10, 10}, {y, -10, 10}],"CloudCDF"],Permissions->"Public"]

CloudDeploy[Graphics3D[Sphere[{0,0,0}]],Permissions->"Public"]

CloudDeploy[ExportForm[Plot3D[x^2*y^2, {x, -10, 10}, {y, -10, 10}],"CloudCDF"],Permissions->"Public"]


