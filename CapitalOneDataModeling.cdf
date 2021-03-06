(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      8276,        198]
NotebookOptionsPosition[      8724,        191]
NotebookOutlinePosition[      9078,        207]
CellTagsIndexPosition[      9035,        204]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"Author", ":", " ", 
    RowBox[{"Sandip", " ", "Nirmel"}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
    "Import", " ", "the", " ", "csv", " ", "containing", " ", "latitude"}], 
    ",", " ", "longitude", ",", " ", 
    RowBox[{
     RowBox[{"and", " ", "pricing", " ", "data"}], ";", " ", 
     RowBox[{
     "this", " ", "csv", " ", "was", " ", "exported", " ", "by", " ", "my", 
      " ", "Python", " ", "script"}]}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"s", " ", "=", " ", 
     RowBox[{
     "Import", "[", 
      "\"\</Users/17SandipN/AnacondaProjects/CapitalOne/lat_lon_prices.csv\>\"\
", "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Interpolate", " ", "the", " ", "inputted", " ", "data"}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"li", " ", "=", " ", 
     RowBox[{"Interpolation", "[", "s", "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "Create", " ", "a", " ", "Mathematica", " ", "widget", " ", "where", " ", 
     "the", " ", "user", " ", "can", " ", "specify", " ", "the", " ", 
     "latitude", " ", "and", " ", "longitude", " ", "by", " ", "dragging", 
     " ", "the", " ", "sliders"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"GeoListPlot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           TemplateBox[{"\"San Francisco\"",RowBox[{"Entity", "[", 
               RowBox[{"\"City\"", ",", 
                 RowBox[{"{", 
                   
                   RowBox[{
                    "\"SanFrancisco\"", ",", "\"California\"", ",", 
                    "\"UnitedStates\""}], "}"}]}], "]"}],
             "\"Entity[\\\"City\\\", {\\\"SanFrancisco\\\", \
\\\"California\\\", \\\"UnitedStates\\\"}]\"","\"city\""},
            "Entity"], ",", 
           RowBox[{"GeoPosition", "[", 
            RowBox[{"{", 
             RowBox[{"y", ",", "x"}], "}"}], "]"}]}], "}"}], ",", 
         RowBox[{"GeoLabels", "\[Rule]", "True"}]}], "]"}], ",", 
       RowBox[{"li", "[", 
        RowBox[{"y", ",", "x"}], "]"}], ",", 
       RowBox[{"7", "*", 
        RowBox[{"li", "[", 
         RowBox[{"y", ",", "x"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "122.495"}], ",", 
       RowBox[{"-", "122.4"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"y", ",", "37.73", ",", "37.8"}], "}"}]}], 
    "\[IndentingNewLine]", "]"}]}]}]], "Input",
 CellChangeTimes->{{3.719184549967475*^9, 3.7191845507911673`*^9}, {
   3.7191846783547983`*^9, 3.719184797640834*^9}, {3.7191848328081713`*^9, 
   3.719184872019691*^9}, {3.719184941542554*^9, 3.7191849751869926`*^9}, {
   3.7191850153732224`*^9, 3.7191850289951897`*^9}, {3.719185091045137*^9, 
   3.719185130434895*^9}, {3.719222092882534*^9, 3.7192221750980787`*^9}, {
   3.7192222244087687`*^9, 3.7192222661051893`*^9}, {3.719222345752988*^9, 
   3.719222348100635*^9}, {3.719222461890216*^9, 3.719222512191325*^9}, {
   3.7192226130374393`*^9, 3.719222644682034*^9}, {3.719222723535595*^9, 
   3.719222760909102*^9}, {3.719222862905971*^9, 3.719222906815503*^9}, {
   3.7192231507287617`*^9, 3.719223257441736*^9}, {3.719223339178056*^9, 
   3.7192233701340714`*^9}, {3.7192234725639668`*^9, 
   3.7192234755615873`*^9}, {3.719223555193083*^9, 3.719223608628044*^9}, {
   3.7192236757158537`*^9, 3.719223696049285*^9}, {3.719223795760335*^9, 
   3.719223798412196*^9}, {3.719223829965518*^9, 3.719223867497135*^9}, {
   3.719223907309782*^9, 3.719223909272293*^9}, {3.7192239700568247`*^9, 
   3.7192239705970097`*^9}, {3.7192241375996437`*^9, 3.71922418434016*^9}, 
   3.719224272101242*^9, {3.719224342429101*^9, 3.7192243525777597`*^9}, {
   3.719224430489684*^9, 3.71922446310251*^9}, {3.7192246176910152`*^9, 
   3.7192246185193157`*^9}, {3.719224702605442*^9, 3.7192247057938643`*^9}, {
   3.7192257396669827`*^9, 3.7192257490534973`*^9}, {3.719225807861101*^9, 
   3.719225810385507*^9}, {3.719524370411167*^9, 3.719524436174382*^9}, {
   3.719524488623126*^9, 3.719524540675454*^9}}],

Cell[BoxData[
 TemplateBox[{
  "Interpolation","udeg",
   "\"Interpolation on unstructured grids is currently only supported for \
InterpolationOrder->1 or InterpolationOrder->All. Order will be reduced to 1.\
\"",2,22,6,28916404079363769109,"Local"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{
  3.719225811075179*^9, 3.719520783600341*^9, {3.71952435054845*^9, 
   3.719524364790872*^9}, 3.71952454335752*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`x$$ = -122.495, $CellContext`y$$ = 37.73, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`x$$], -122.495, -122.4}, {
      Hold[$CellContext`y$$], 37.73, 37.8}}, Typeset`size$$ = {
    332., {45., 50.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`x$49278$$ = 
    0, $CellContext`y$49279$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`x$$ = -122.495, $CellContext`y$$ = 37.73}, 
      "ControllerVariables" :> {
        Hold[$CellContext`x$$, $CellContext`x$49278$$, 0], 
        Hold[$CellContext`y$$, $CellContext`y$49279$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> {
        GeoListPlot[{
          Entity["City", {"SanFrancisco", "California", "UnitedStates"}], 
          GeoPosition[{$CellContext`y$$, $CellContext`x$$}]}, GeoLabels -> 
         True], 
        $CellContext`li[$CellContext`y$$, $CellContext`x$$], 
        7 $CellContext`li[$CellContext`y$$, $CellContext`x$$]}, 
      "Specifications" :> {{$CellContext`x$$, -122.495, -122.4}, \
{$CellContext`y$$, 37.73, 37.8}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{377., {104., 110.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.7192241610668364`*^9, 3.7192241850532627`*^9}, {
   3.719224447921226*^9, 3.719224463620878*^9}, {3.7192246188370953`*^9, 
   3.7192246471015778`*^9}, 3.719224706307315*^9, {3.71922574327455*^9, 
   3.719225749666918*^9}, 3.719225811336343*^9, 3.719520784437563*^9, {
   3.719524350857547*^9, 3.7195243650291967`*^9}, 3.719524543592791*^9}]
}, Open  ]],

Cell["", "PluginEmbeddedContent"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.719224466898479*^9, 3.7192244690448647`*^9}}]
},
WindowSize->{808, 702},
WindowMargins->{{Automatic, 243}, {Automatic, 0}},
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (July 28, \
2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 4228, 89, 293, "Input"],
Cell[5717, 126, 429, 9, 42, "Message"],
Cell[6149, 137, 2426, 46, 231, "Output"]
}, Open  ]],
Cell[8590, 186, 33, 0, 12, "PluginEmbeddedContent"],
Cell[8626, 188, 94, 1, 32, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 2wTq@fU0WabNGC1fMdcT7EGY *)
