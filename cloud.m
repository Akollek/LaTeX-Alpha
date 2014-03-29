(*URL for graphics*)
CloudDeploy[
APIFunction[{x->"String"},
ExportForm[Rasterize[ToExpression[#x]], "PNG"]&],Permissions->"Public"]


(*URL for calculations*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][Evaluate[ToExpression[#x]]]&],Permissions->"Public"]

(*Wolfram Alpha*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][WolframAlpha[ #x,"WolframResult" ]〚1〛]&],Permissions->"Public"]

(*Wolfram Alpha Math*)
CloudDeploy[APIFunction[{x->"String"},ToExpression["TeXForm"][WolframAlpha[ #x,"WolframResult" ]]&],Permissions->"Public"]
