NB. Test script for Addon: debug/tte

section_z_=: 3 : 0
	NB. print section ID and clear base of verbs (adverbs conjs)
cocurrent 'base'
smoutput <y
erase names 1 2 3
)

smoutput 0 : 0
NOTES .................
	done to: (look for HERE) <<<<<<<<<<<<<<<<<<<<<<<<
	4B. -could use redefined Y as char string/mx
		eliminate use of zux
	some EXPLICATION FAILS
		use: ttereport'' --to output relevant globals.

This script tests a selection of tacit verbs using: ttry_z_
Each test line generates these objects in _base_
	T=: u f.		NB. (verb) compiled tacit u
	U=: u f. tte		NB. (verb) explication of u
	L=: 5!:6<'u'		NB. paren rep of u
	LT=: 5!:6<'T'		NB. paren rep of T (-:L normally)
	LU=: 5!:6<'U'		NB. paren rep of U
	ZT=: [X] T Y		NB. result of running T with [X],Y
	ZU=: [X] U Y		NB. result of running U with [X],Y
-inspect them if a test line fails.
--
Each test line outputs a confirmation like this:
 X (1&#.) ttry Y		NB.dyad:SHORT
-allowing it to be re-entered at will.
The suffix ':SHORT' shows that the explication has not
broken down the tacit verb.
This is normal if the verb is trivial (as above),
but merits investigation if the verb is non-trivial.
--
>>> IF THE TEST LINE FAILS LIKE THIS:
X ((#@((2&#.)^:_1))"0) ttry Y		NB.dyad:SHORT
|tacit verb fails with x;y: error
|   x     13!:8 y
-then the test verb does not work with the given [X],Y
REMEDY: different [X],Y should be chosen.
--
>>> IF THE TEST LINE FAILS LIKE THIS:
 ZU ...
<result from [X] U Y>
 ZT ...
<result from [X] T Y>
|ZU-:ZT failure: error_tte_
|   x     13!:8 y
-then tte has failed to explicate T properly,
i.e. verbs T and U do not give the same result with [X],Y.
)

NB. =========================================================

NB. require 'debug/tte'
load 'debug/tte'	NB. force reload in case of alterations made
require 'format/zulu'
cocurrent 'base'	NB. avoid clashes with obs in _tte_
clear''

smclear''	NB. <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

Y=: i.6
X=: 1
m=: 1	NB. noun used inside tacit expr

	section '2A. Bond or Curry'
  ( 1&+ 	) ttry Y   NB. Increment >:                                              
  ( +&1 	) ttry Y   NB.  "                                                        
  ( _1&+	) ttry Y   NB. Decrement <:                                              
  ( -&1 	) ttry Y   NB.  "                                                        
  ( 1&- 	) ttry Y   NB. Not -. (logical and probability complement)               
  ( 1&~:	) ttry Y   NB. "                                                         
  ( 0&= 	) ttry Y   NB. "                                                         
  ( 0&- 	) ttry Y   NB. Negate - (arithmetic)                                     
  ( _1&* 	) ttry Y   NB. "                                                        
  ( *&_1 	) ttry Y   NB. "                                                        
  ( 2&* 	) ttry Y   NB. Double +:                                                 
  ( *&2 	) ttry Y   NB.     "                                                     
  ( 3&* 	) ttry Y   NB. Triple                                                    
  ( *&3 	) ttry Y   NB.     "                                                     
  ( 0j1&* 	) ttry Y   NB. j. (Multiply by √-1)                                  
  ( ^@j. 	) ttry Y   NB. r. (Complex # on unit circle at y radians)               
  ( 1p1&* 	) ttry Y   NB. π times                                                
  ( 0.5&* 	) ttry Y   NB. Halve -:                                                
  ( *&0.5 	) ttry Y   NB.     "                                                   
  ( %&2 	) ttry Y   NB.     "                                                     
  ( 1&% 	) ttry Y   NB. Reciprocal %                                              
  ( ^&_1	) ttry Y   NB.     "                                                     
  ( ^&2 	) ttry Y   NB. Square *:                                                 
  ( ^&3 	) ttry Y   NB. Cube                                                      
  ( ^&0.5	) ttry Y   NB. Square root %:                                           
  ( ^&1r2	) ttry Y   NB.     "                                                    
  ( 2&%: 	) ttry Y   NB.     "                                                    
  ( ^&(%3) 	) ttry Y   NB. Cube root                                              
  ( ^&1r3 	) ttry Y   NB.     "                                                   
  ( 3&%: 	) ttry Y   NB.     "                                                    
  ( (^1)&^ 	) ttry Y   NB. Exponential ^                                          
  ( 1x1&^ 	) ttry Y   NB.     "                                                   
  ( 1x1&^. 	) ttry Y   NB. Natural log ^.                                         
  ( 10&^ 	) ttry Y   NB. Antilog                                                  
  ( 10&^. 	) ttry Y   NB. Base-10 log                                             
  ( >:@<.@(10&^.)@(1&>.) 	) ttry Y   NB. # of digits needed to represent integer y
  ( #@(10&#.^:_1)"0 		) ttry Y   NB.     "                                        
  ( >:@<.@( 2&^.)@(1&>.) 	) ttry Y   NB. # of bits needed to represent integer y  
  ( #@( 2&#.^:_1)"0 		) ttry Y   NB.     "                                        
  ( 0&{ 	) ttry Y   NB. Head (first) {.                                           
  ( _1&{ 	) ttry Y   NB. Tail (last) {:                                           
  ( 1&}. 	) ttry Y   NB. Behead }.                                                
  ( _1&}.	) ttry Y   NB. Curtail }:                                               
  ( 0&< 	) ttry Y   NB. Positive test                                             
  ( 0&> 	) ttry Y   NB. Negative test                                             
  ( 0&>. 	) ttry Y   NB. Max (0,y)                                                
  ( 0&<. 	) ttry Y   NB. Min (0,y)                                                
  ( (0&=)@(2&|) 	) ttry Y   NB. Even test                                         
  ( (1&=)@(2&|) 	) ttry Y   NB. Odd test                                          
  ( _1&A. 	) ttry Y   NB. Reverse |.                                              
  ( (<0 _1)&C. 	) ttry Y   NB. Interchange first and last items                   
  ( <.@(0.5&+) 	) ttry Y   NB. Round                                              
  ( ,~ $ 1: , ] $ 0: 	) ttry Y   NB. Identity matrix of order y                   
  ( -.@('  '&E.) # ] 	) ttry Y   NB. Remove multiple blanks                       
  ( BC=:    i.@>: ! ] 	) ttry Y   NB. Binomial coefficients of order y           
  ( (0&,+,&0)^:([ `1:) 	) ttry Y   NB.     " (recursive)                          
  ( BCT=:   i. !/ i. 	) ttry Y   NB. BC table of orders to y-1                       
  ( PAT=:   |:@BCT 	) ttry Y   NB. Pascal’s triangle                          
  ( (0&,+,&0)^:(i.`1:) 	) ttry Y   NB.     " (recursive)                          
  ( IX=:    a.&i. 	) ttry Y   NB. Index in ASCII alphabet                        
  ( Lt=:(1&e.)@(e.&a.)@, 	) ttry Y   NB. Literal test                             
  ( 1&#. 	) ttry Y   NB. Sum over lists (last axis) +/"1                          
  ( 1&, 	) ttry Y   NB. Preface a row of 1’s                                    
  ( ,&1 	) ttry Y   NB. Append a row of 1’s                                     
  ( 1&,. 	) ttry Y   NB. Preface a column of 1’s                                
  ( ,.&1 	) ttry Y   NB. Append a column of 1’s                                 
  ( 1&,@$ $ , 	) ttry Y   NB. Itemize (append leading 1 to shape) ,:              
  ( sin=:     1&o. 	) ttry Y   NB. Sin                                            
  ( asin=:   _1&o. 	) ttry Y   NB. Arcsin                                       
  ( cos=:     2&o. 	) ttry Y   NB. Cos                                            
  ( acos=:   _2&o. 	) ttry Y   NB. Arccos                                       
  ( tan=:     3&o. 	) ttry Y   NB. Tan                                            
  ( atan=:   _3&o. 	) ttry Y   NB. Arctan                                       
  ( sinh=:    5&o. 	) ttry Y   NB. Sinh                                          
  ( asinh=:  _5&o. 	) ttry Y   NB. Arcsinh                                     
  ( cosh=:    6&o. 	) ttry Y   NB. Cosh                                          
  ( acosh=:  _6&o. 	) ttry Y   NB. Arccosh                                     
  ( tanh=:    7&o. 	) ttry Y   NB. Tanh                                          
  ( atanh=:  _7&o. 	) ttry Y   NB. Arctanh                                     


NB. =========================================================
	section '2B. Rank'
  ( +/		) ttry Y   NB. sum (column sums of a matrix)
  ( +/"1	) ttry Y   NB. sum vectors (row sums of a matrix)
X ( *"0 _	) ttry Y   NB. outer product; same as */
  ( +/@(*"1 _)	) ttry Y   NB. inner product; same as +/ .*


NB. =========================================================
	section '2C. Ambivalent functions'
  ( 10&^. : ^.	) ttry Y   NB. Base 10 log for monadic case
X ( 10&^. : ^.	) ttry Y   NB. Base 10 log for monadic case
NB.   ( 10&$: : ^.	) ttry Y   NB. Same using self-reference to dyad
NB.   ( 10&^. : ($:@] * ^.@(10"0) % ^.@[)	) ttry Y   NB. Same using self-reference to monad
NB.		cannot handle $:
X ( res=: [: : |) ttry Y   NB. Domain of monad is empty (dyadic only)
  ( abs=: | : [:) ttry Y   NB. Domain of dyad is empty (monadic only)


NB. =========================================================
	section '2F. Hooks'
  (It=: =<.	) ttry Y   NB. Integer test
  (Rt=: =+	) ttry Y   NB. Real test
X ($,:		) ttry Y   NB. x copies of y
X ($,		) ttry Y   NB. Reshape as in APL
  (cf=: (+%)/	) ttry Y   NB. Continued fraction
  (cfc=: (+%)/\) ttry Y   NB. Continued fraction convergents
  (ifb=: # i.@#) ttry Y   NB. Integers from boolean list
NB.   ([m		) ttry Y   NB. ([m)y invokes m y , then returns y


NB. =========================================================
	section '2G. Verb Trains'
  (>: @ +: @ i.	) ttry Y   NB. First odd integers
  (1: + 2: * i.	) ttry Y   NB. Same as m0
  (m2=: +/ @ (1: + 2: * i.)	) ttry Y   NB. Sum of odd integers
  ([: +/ 1: + 2: * i.	) ttry Y   NB. Same as m2 using cap
  (m2 -: *:	) ttry Y   NB. Sum of odds is square (Tautology)
  (< i. 1:	) ttry Y   NB. The first element where x<y ; also works for = ~: < <: >: > E.
  (< i. 0:	) ttry Y   NB. The first element where not x<y
  (< i: 1:	) ttry Y   NB. The last element where x<y
  (< i: 0:	) ttry Y   NB. The last element where not x<y
  ([: +/ <	) ttry Y   NB. The number of elements where x<y


NB. =========================================================
	section '2H. Gerunds'
  (horner=: +`*/  ) ttry Y   NB. m0 a,x,b,x,c is (a,b,c)p.x
  (grid=: +`(*i.)/  ) ttry (3 4 5)   NB. grid b,s,n From b in n s-steps
  (case1=: _1:`%:`*:@.*"0  ) ttry Y   NB. Sqr, _1, or sq root if neg, zero, or pos
X (sort=: /:~@]`(\:~@])@.[  ) ttry Y   NB. Sort up or down for left 0 or 1
	sel=: 1 : '] #~ ] x. {.'
  (qs=: ] ` ($:@(<sel), =sel, $:@(>sel)) @. (1:<#)  ) ttry Y   NB. Quicksort defined recursively
  ((0&,+,&0)^:([`1:)  ) ttry Y   NB. Binomial coefficients (gerundial power)


NB. =========================================================
	section '3B. Merge and Amend'
  (MRG=: /:@/:@[ { ] ) ttry Y   NB. b MRG x,y is equivalent to above
X (alt=: ,@,. ) ttry Y   NB. Merge items from x and y alternately
  (d=: (<0 1)&|: ) ttry (i.4 4)   NB. Function to select diagonal of table
  (ur=: 2 _3&{. ) ttry (i.4 4)   NB. Function to select upper right corner


NB. =========================================================
	section '4A. Intervals'
 class=: [: +/"1 [: * -/
 sgd=: *@(-~/~)
X (OO=: ({.@] < [)*.([ < {:@])  ) ttry Y   NB. x OinO y (Is x in open interval y)
X (OC=: ({.@] < [)*.([ <: {:@]) ) ttry Y   NB. x OinC y
X (CO=: ({.@] <: [)*.([ < {:@])  ) ttry Y   NB. x CinO y
X (CC=: ({.@] <: [)*.([ <: {:@])  ) ttry Y   NB. x CinC y
X (+/"1@CO  ) ttry Y   NB. Number of x OinC y
X (0: e.~ class  ) ttry Y   NB. x OinO y
X (0 1"_ e.~ class  ) ttry Y   NB. x OinC y
X (_1 0 "_ e.~ class  ) ttry Y   NB. x CinO y
X (_1 0 1"_ e.~ class  ) ttry Y   NB. x CinC y
X (class=: [: +/"1 [: * -/  ) ttry Y   NB. Class _2 to 2: <A ="a" CINC="b">b
X ([: ~:/ >:/~  ) ttry Y   NB. x OinC y
3 (] >/ .>~ [: ,.~ [  ) ttry 2.2 4.4   NB. x OinC y
X (sgd=: *@(-~/~)  ) ttry Y   NB. Signum of difference
X (0&=@(+/)@sgd  ) ttry Y   NB. OO
X (e.&0 1@(+/)@sgd  ) ttry Y   NB. OC
X (0&>:@(%/)@sgd  ) ttry Y   NB. CO
X (>/@sgd  ) ttry Y   NB. CC


NB. =========================================================
	section '4B. Locating & Selecting'

m27=: [: i. #
m38=: <"1
m39=: $ #: (# i.@$)@,
m20=: [: m38 m39
m43=: ' 0 '"_ E."1 ' '"_ ,. ] ,. ' '"_
m53=: *./ .=&' '
m82=: (= <./"1) *. (="1 >./)
d90=: [: , [ {.&> ] (<@#"0) 1:
m93=: 0: $~ [: >: >./
m95=: ' '&(+./ .~:)
m98=: +. 1&,@}:
m100=: *./ .=&' '
m101=: 1: , 2: +./\ ]
m103=: +./\.
m104=: m103@m95
m105=: +./\
m108=: +./ .~:&' '
m109=: m103@m108
m110=: m105@m108
m117=: +./\ *. +./\.
m41=: m20@m82
m97=: m105@m95

  (i.>./  ) ttry Y	NB. Index of (IO) first occurrence of maximum of y
  (i:>./  ) ttry Y	NB. IO last occurrence of maximum of y
  (i.<./  ) ttry Y	NB. IO first occurrence of minimum of y
  (i:<./  ) ttry Y	NB. IO last occurrence of minimum of y
  ({.@\:  ) ttry Y	NB. IO first occurrence of maximum of y
  ({.@/:  ) ttry Y	NB. IO first occurrence of minimum of y
X (~:i.1:  ) ttry Y	NB. IO first item where x and y differ
X (e.i.1:  ) ttry Y	NB. IO first occurrence in x of any item of y
  (' '&(=i:0:)  ) ttry Y	NB. IO last nonblank in y
X ([ + i.&1@}.  ) ttry Y	NB. IO first 1 in y after first x items
  (] i. 1:  ) ttry Y	NB. IO first 1 in y
  (] i: 1:  ) ttry Y	NB. IO last 1 in y
X (<:@($@]) - |.@] i. [  ) ttry Y	NB. IO last item of x in y
X ((<:@(#@[) - |.@[ i. ])"1  ) ttry Y	NB. IO last occurrence of y in x
X (|.@[ i. ]) ttry Y	NB. IO last occurrence of y in x, from rear
X (I.@:E.  ) ttry Y	NB. Indices of (ISO) beginnings of x in y

NB. EXPLICATION FAILS...
NB. X (e.~&, # i.@#@]  ) ttry Y	NB. ISO all occurrences of items of y in x

(1 2 3 4 3 5 6 3) (=#[:i.[:#[  ) ttry 3	NB. ISO all occurrences of items of y in x
  (+/{.\:  ) ttry (1 0 1 1 0 1 0)	NB. ISO 1s in Boolean list y
  ([: m38 m39  ) ttry Y		NB. ISO 1s in Boolean table y
  (] i."1 ' '"_  ) ttry Y	NB. ISO first blank in rows of table y
  (([:(</\&.|.i.1:)' '"_ ~: ])"1  ) ttry Y	NB. ISO last nonblank in rows of table y
  (I.  ) ttry Y		NB. ISO 1s in Boolean list y
  (# i.@#  ) ttry Y	NB. ISO 1s in Boolean list y
X (([: $ ]) #."1 ([: > [)  ) ttry Y	NB. Indices from (boxed) indices x to table y
X (+/i.  ) ttry Y	NB. ISO infixes of length y, starting at x
  ([: i. #  ) ttry Y	NB. All indices of list y
  ([: { [: i.&.> $  ) ttry Y	NB. Catalog of indices of y, in shape of y
  (+/\@}:@(0:,])  ) ttry Y	NB. Indices of start positions from counts y
  ($ #: [: i. [: # ,  ) ttry Y	NB. Table of all indices of array y (odometer)
X ({@(;/&i.)  ) ttry Y	NB. Catalog of all pairs from i.x and i.y
X ([: m20 [ e. [: , ]  ) ttry Y	NB. Indices in x of atoms of list y
  (a."_ i. ]  ) ttry Y	NB. Index in a. of character y
X (i."_1  ) ttry Y	NB. Itemwise index in table x of rows of y
X (E. i. 1:  ) ttry Y	NB. IO first occurrence of array x in y
X (<:@(+/@(</))  ) ttry Y	NB. Index in classes x of y
X (i.  ) ttry Y		NB. Index in rows of table x of list y
  (<"1  ) ttry Y	NB. (Boxed) indices from rows of open table y
  ($ #: (# i.@$)@,  ) ttry Y	NB. Open ISO 1s in array y (inverse of m85)
  (m20@m43  ) ttry (Y1=:'1 2 3 0 3')	NB. ISO free zeros in formatted y
  (m20@m82  ) ttry Y	NB. IO saddle point in y
  (<:@(+/\) i. i.@(+/)  ) ttry Y	NB. ISO 1s ub Boolean list y
  (' 0 '"_ E."1 ' '"_ ,. ] ,. ' '"_  ) ttry Y1	NB. Locate free zeros in formatted y
  (=&''''  ) ttry Y	NB. Locate quotes in y
  (= >./  ) ttry Y	NB. Locate all instances of maximum of y
  ('.'&~:  ) ttry Y	NB. Exclude periods in y
  (e.&' 0123456789'  ) ttry Y	NB. Locate digits and blanks in y
X (E.  ) ttry Y		NB. Locate beginning points of pattern x in y
  (2&=@(+/@(0&=@(|/~@i.)))  ) ttry Y	NB. Locate primes less than y
X (i.@(#@])e.[  ) ttry Y	NB. Locate indices x in y
X (] e.~ [: i. [: # [  ) ttry Y	NB. Locate indices y in x
  (] e.~ [: i. [: >: >./  ) ttry Y	NB. Locate indices y
  (*./ .=&' '  ) ttry Y4=: zux,''	NB. Locate blank rows in table y
  (] -:"1 [: {. ' '"_ , ]  ) ttry Y4	NB. Locate blank rows in table y
  (~:  ) ttry Y		NB. Locate first instance of each item
  ([: *./\ ' '"_ = ]  ) ttry Y2=: '  alpha   '	NB. Locate leading blanks
  ([: *./\. ' '"_ = ]  ) ttry Y2	NB. Locate trailing blanks
  (2:+./\0:,2:|+/\@(=&'''')  ) ttry Y3=: 'aa''bbb''cc'	NB. Locate text between and including quotes
  (2:*./\0:,2:|+/\@(=&'''')  ) ttry Y3	NB. Locate text between quotes
  (2: </\ 0: , ]  ) ttry Y	NB. Locate first 1 in each group of 1s in y
  (2: >/\ 0: , ]  ) ttry Y	NB. Locate first 0 after each group of 1s in y
X (* $ -@] {. 1:  ) ttry Y	NB. Locate ends of x fields of length y
X (* $ ] {. 1:  ) ttry Y	NB. Locate starts of x fields of length y
  (1: ,~ 2: ~:/\ ]  ) ttry Y	NB. Loc ends of fields of identical atoms in y
  (1: , 2: ~:/\ ]  ) ttry Y	NB. Loc starts of fields of identical atoms in y
  (1: ,~ 2: ~:/\ ]  ) ttry Y	NB. Loc where atom differs from nxt rgt in y
  (1: , 2: ~:/\ ]  ) ttry Y	NB. Loc where atom differs next left in y
  (] > [: }. 0: ,~ ]  ) ttry Y	NB. Loc last 1 in each group of 1s in y
  (] > [: }: 0: , ]  ) ttry Y	NB. Loc first 1 in each group of 1s
X (0: = [ | [: i. [: # ]  ) ttry Y	NB. Loc every xth item of y
  (2: | [: >: [: i. #  ) ttry Y	NB. Loc every 2d item of y
X (0: = |  ) ttry Y	NB. Loc atoms of y divisible by x
X ([: -. [ e.~ [: i. ]  ) ttry Y	NB. Loc atoms of i. y not in x
X ([ e.~ [: i. ]  ) ttry Y	NB. Loc atoms of i.y in x
X (i. = [: # [  ) ttry Y	NB. Loc items of y not in x
  (0: *. ]  ) ttry Y	NB. Loc nothing
X (<:  ) ttry Y		NB. Loc where x implies y
X (>  ) ttry Y		NB. Loc where x but not y
X (~:  ) ttry Y		NB. Loc exclusive or of x and y
X (=  ) ttry Y		NB. Loc Kronecker delta of x and y
X (#@[ > /:@(] ,~ i.@#@[)  ) ttry Y	NB. Loc fills formed by expanding y by x
  ((= <./"1) *. (="1 >./)  ) ttry Y	NB. Loc saddle points of table y
  ([: #: [: i. 2: ^ #  ) ttry Y	NB. Loc all subsets of order #n (truth table)
  ([: #: [: i. 2: ^ ]  ) ttry Y	NB. Loc all subsets of order n (truth table)

NB. gets: ill-formed name ????????
NB.   (1: [`(m38@])`(m93@])} ]  ) ttry Y	NB. Loc indices y in large enough table (connection matrix from table of indices) (inverse of m39)

NB. gets: domain error
NB.   (1: [`(<"1@])`((>:@(>./@])$0:)@]) } ] ttry Y	NB. Loc indices y in large enough table

  (' '&=  ) ttry Y	NB. Loc blanks in y
  (=  ) ttry Y		NB. Loc each item of set of y (position or distribution matrix)
  ((#~ (1: ~: +/"1))@=  ) ttry Y	NB. Table in which each row Locs an infix in y of 2 or more consecutive equal items

NB. EXPLICATION FAILS
NB. X ([: , [ {.&> ] (<@#"0) 1:  ) ttry Y	NB. Expansion mask for fields of length y to uniform field of length |x

NB. EXPLICATION FAILS
NB.   (_8&d90  ) ttry Y	NB. Expansion mask for fields of length y to uniform right justified fields of length 8

  ([: -. [: *./\. m53  ) ttry Y	NB. Loc rows preceding trailing blank rows
  (0: $~ [: >: >./  ) ttry Y	NB. Loc nothing in table large enough for y
X ([ -:"1 ([: # [) {."1 ]  ) ttry Y	NB. Loc rows of y beginning with x
  (' '&(+./ .~:)  ) ttry Y	NB. Loc nonblank columns
  ([: -. [: *./\. ' '"_ = ]  ) ttry Y	NB. Exclude trailing blanks
  (m105@m95  ) ttry Y	NB. Exclude leading blank columns
  (+. 1&,@}:  ) ttry Y	NB. Loc 1s and 1st 0 in each group of 0s
  (m98@m95  ) ttry Y	NB. Exclude all but first blank columns
  (*./ .=&' '  ) ttry Y	NB. Loc blank rows
  (1: , 2: +./\ ]  ) ttry Y	NB. Exclude all 0s but the first in a group
  (m101@m100  ) ttry Y	NB. Exclude all but first blank rows
  (+./\.  ) ttry Y	NB. Loc items left of leftmost trailing 0
  (m103@m95  ) ttry Y	NB. Exclude trailing blank columns
  (+./\  ) ttry Y	NB. Loc items right of rightmost leading 0
  (*./\  ) ttry Y	NB. Exclude all 1s right of first 0
  (*./\.  ) ttry Y	NB. Exclude all 1s left of last 0
  (+./ .~:&' '  ) ttry Y	NB. Loc nonblank rows
  (m103@m108  ) ttry Y	NB. Exclude trailing blank rows
  (m105@m108  ) ttry Y	NB. Exclude leading blank rows
  (m98@m95  ) ttry Y	NB. Include only first of group of blank cols
  (m98@m108) Y	NB. Include only first of group of blank rows
X (+./ .~:"1  ) ttry Y	NB. Loc rows of x having atoms not y
X (-:"1  ) ttry Y	NB. Loc rows of x matching y
3 4 5 (,@,. # $&1 0@#@,  ) ttry 2 3 4	NB. Alternate i{x 1s and i{y 0s
  (# $&1 0@#  ) ttry Y	NB. Alternate i{x 1s, (1+i){x 0s, etc [?? i{y...]
  (+./\ *. +./\.  ) ttry Y	NB. Loc atoms between leading & trailing 0s
  (*. *./\@(= +./\)"1  ) ttry Y	NB. Loc first infix of 1s
  (' '&~:  ) ttry Y2	NB. Loc nonblanks
X (]*.*.(]e.#)+/\@(2:</\0:,])@]  ) ttry Y	NB. Loc groups of ones in y indicated by x
  (+.~:/\  ) ttry Y	NB. Loc 1s in y and 0s between pairs of 1s
  (-. *. ~:/\  ) ttry Y5=: 1 0 0 1 0 1 1 0 1 0 0 0 1	NB. Loc 0s between pairs of 1s
  (</\  ) ttry Y5	NB. Loc leftmost 1
  (<:/\  ) ttry Y5	NB. Loc 1s and all 0s following leftmost 0
  (~:/\  ) ttry Y5	NB. Loc where odd number of 1s are at left
X (#"1  ) ttry Y	NB. 1s in x select from each row (list) of y
X (#.@[ { ]  ) ttry Y	NB. Boolean list x as integer selecting from y
X (<"1@[ { ]  ) ttry Y	NB. Scattered index table x select from y
X ({  ) ttry Y		NB. Selecting x from y	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
X (>./ . #  ) ttry Y	NB. Select maximum of x located by y
  (m41 { ]  ) ttry Y	NB. Select saddle point(s) of y

NB. gets length error
NB.   (([:-.(1:,''"_=])#.1:)}.]  ) ttry Y2	NB. Delete trailing blanks

  (m104 #"1 ]  ) ttry zux	NB. Delete trailing blank columns
  (m97 #"1 ]  ) ttry zux	NB. Delete leading blank columns
  (m110 # ]  ) ttry zux	NB. Delete leading blank rows
  (m109 # ]  ) ttry zux	NB. Delete trailing blank rows
  (m98@m108 # ]  ) ttry Y4	NB. Delete repeated blank rows
  (m98@m95 #"1 ]  ) ttry zux	NB. Delete repeated blank columns
  (] -. [: {. ' '"_ , ]  ) ttry Y4	NB. Delete blank rows
  (m108 # ]  ) ttry Y4	NB. Delete blank rows
  (m95 #"1 ]  ) ttry zux	NB. Delete blank columns
  (([: m117 ] ~: ' '"_) # ]  ) ttry Y2	NB. Delete leading & trailing blanks
  (+/@(*./\@(' '&=)) }. ]  ) ttry Y2	NB. Delete leading blanks
  (#~ ([: +./\. ' '&~:)  ) ttry Y2	NB. Delete trailing blanks
X (,  ) ttry Y		NB. Append atom or list to table
X (,.  ) ttry Y		NB. List or atom as new column of table
  (~.  ) ttry Y		NB. Delete repeated items
  (*/@}:@$  ) ttry Y	NB. Number of rows in array y
  (#~(+. 1&|.@(></\))@(' '&~:)  ) ttry Y	NB. Delete extra blanks
X (,.  ) ttry Y		NB. Join along last dimension
X (,.&.>/  ) ttry Y	NB. Join items of boxed array

NB. =========================================================
	section '4C. Test'

NB. EXPLICATION FAILS
NB. X (-:&(/:~)  ) ttry Y	NB. Are x and y permutations of each other?

  (/:~-:i.@#  ) ttry Y	NB. Is y a permutation vector?
  (-:-@|:  ) ttry Y	NB. Is y antisymmetric?
  (-:|:  ) ttry Y	NB. Is y symmetric?
  ([:+./[:*./]=/0 1"_  ) ttry Y	NB. Are all atoms of Boolean list y equal?
  (*./ .= +./  ) ttry Y	NB. Are all atoms of Boolean list y equal?
  (*./ .= *./  ) ttry Y	NB. Are all atoms of Boolean list y equal?
(2 4) (-.@(] <:/ .>: >.@] , [)"1  ) ttry 3	NB. Is y in the half open on the right interval x and is it an integer?
X (e.  ) ttry Y		NB. Is list x a row of array y?
  (*./@(= >./\)  ) ttry Y	NB. Are columns of y in ascending order?
  (*./@(= <./\)  ) ttry Y	NB. Are columns of y in descending order?
  (>./=<./  ) ttry Y	NB. Are atoms of numerical list y equal?
  (*./ +. -.@(+./)  ) ttry Y	NB. Are atoms of Boolean list y equal?
  (*./ = +./  ) ttry Y	NB. Are atoms of Boolean list y equal?
  (*./@(= {.)  ) ttry Y	NB. Are atoms of list y equal?
  (0:=#|+/  ) ttry Y	NB. Are atoms of Boolean list y equal?
  (*./@(#1&|.)  ) ttry Y	NB. Are atoms of Boolean list y equal?



NB. =========================================================
smoutput LF,'+++ TEST COMPLETE +++'
