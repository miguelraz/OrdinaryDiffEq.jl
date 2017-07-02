immutable BS3ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  a21::T
  a32::T
  a41::T
  a42::T
  a43::T
  c1::T2
  c2::T2
  b1::T
  b2::T
  b3::T
  b4::T
end

"""
constructBogakiShampine3()

Constructs the tableau object for the Bogakai-Shampine Order 2/3 method.
"""
Base.@pure function BS3ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  a21 = T(0.5)
  a32 = T(0.75)
  a41 = T(0.2222222222222222)
  a42 = T(0.3333333333333333)
  a43 = T(0.4444444444444444)
  c1 = T2(0.5)
  c2 = T2(0.75)
  b1 = T(0.2916666666666667)
  b2 = T(0.25)
  b3 = T(0.3333333333333333)
  b4 = T(0.125)
  BS3ConstantCache(a21,a32,a41,a42,a43,c1,c2,b1,b2,b3,b4)
end

"""
constructBogakiShampine3()

Constructs the tableau object for the Bogakai-Shampine Order 2/3 method.
"""
function BS3ConstantCache(T::Type,T2::Type)
  a21 = T(1//2)
  a32 = T(3//4)
  a41 = T(2//9)
  a42 = T(1//3)
  a43 = T(4//9)
  c1 = T2(1//2)
  c2 = T2(3//4)
  b1 = T(7//24)
  b2 = T(1//4)
  b3 = T(1//3)
  b4 = T(1//8)
  BS3ConstantCache(a21,a32,a41,a42,a43,c1,c2,b1,b2,b3,b4)
end

immutable Tsit5ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  c1::T2
  c2::T2
  c3::T2
  c4::T2
  c5::T2
  c6::T2
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  a51::T
  a52::T
  a53::T
  a54::T
  a61::T
  a62::T
  a63::T
  a64::T
  a65::T
  a71::T
  a72::T
  a73::T
  a74::T
  a75::T
  a76::T
  b1::T
  b2::T
  b3::T
  b4::T
  b5::T
  b6::T
  b7::T
end

Base.@pure function Tsit5ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  c1 =       T2(0.161)
  c2 =       T2(0.327)
  c3 =       T2(0.9)
  c4 =       T2(0.9800255409045097)
  c5 =       T2(1)
  c6 =       T2(1)
  a21=       T(0.161)
  a31=       T(-0.008480655492356989)
  a32=       T(0.335480655492357)
  a41=       T(2.8971530571054935)
  a42=       T(-6.359448489975075)
  a43=       T(4.3622954328695815)
  a51=       T(5.325864828439257)
  a52=       T(-11.748883564062828)
  a53=       T(7.4955393428898365)
  a54=       T(-0.09249506636175525)
  a61=       T(5.86145544294642)
  a62=       T(-12.92096931784711)
  a63=       T(8.159367898576159)
  a64=       T(-0.071584973281401)
  a65=       T(-0.028269050394068383)
  a71=       T(0.09646076681806523)
  a72=       T(0.01)
  a73=       T(0.4798896504144996)
  a74=       T(1.379008574103742)
  a75=       T(-3.290069515436081)
  a76=       T(2.324710524099774)
  b1 =       T(0.09468075576583945)
  b2 =       T(0.009183565540343254)
  b3 =       T(0.4877705284247616)
  b4 =       T(1.234297566930479)
  b5 =       T(-2.7077123499835256)
  b6 =       T(1.866628418170587)
  b7 =       T(0.015151515151515152)
  Tsit5ConstantCache(c1,c2,c3,c4,c5,c6,a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,a61,a62,a63,a64,a65,a71,a72,a73,a74,a75,a76,b1,b2,b3,b4,b5,b6,b7)
end

function Tsit5ConstantCache(T::Type,T2::Type)
  c1 =       T2(161//1000)
  c2 =       T2(327//1000)
  c3 =       T2(9//10)
  c4 =       T2(parse(BigFloat,".9800255409045096857298102862870245954942137979563024768854764293221195950761080302604"))
  c5 =       T2(1)
  c6 =       T2(1)
  a21=       T(161//1000)
  a31=       T(parse(BigFloat,"-.8480655492356988544426874250230774675121177393430391537369234245294192976164141156943e-2"))
  a32=       T(parse(BigFloat,".3354806554923569885444268742502307746751211773934303915373692342452941929761641411569"))
  a41=       T(parse(BigFloat,"2.897153057105493432130432594192938764924887287701866490314866693455023795137503079289"))
  a42=       T(parse(BigFloat,"-6.359448489975074843148159912383825625952700647415626703305928850207288721235210244366"))
  a43=       T(parse(BigFloat,"4.362295432869581411017727318190886861027813359713760212991062156752264926097707165077"))
  a51=       T(parse(BigFloat,"5.325864828439256604428877920840511317836476253097040101202360397727981648835607691791"))
  a52=       T(parse(BigFloat,"-11.74888356406282787774717033978577296188744178259862899288666928009020615663593781589"))
  a53=       T(parse(BigFloat,"7.495539342889836208304604784564358155658679161518186721010132816213648793440552049753"))
  a54=       T(parse(BigFloat,"-.9249506636175524925650207933207191611349983406029535244034750452930469056411389539635e-1"))
  a61=       T(parse(BigFloat,"5.861455442946420028659251486982647890394337666164814434818157239052507339770711679748"))
  a62=       T(parse(BigFloat,"-12.92096931784710929170611868178335939541780751955743459166312250439928519268343184452"))
  a63=       T(parse(BigFloat,"8.159367898576158643180400794539253485181918321135053305748355423955009222648673734986"))
  a64=       T(parse(BigFloat,"-.7158497328140099722453054252582973869127213147363544882721139659546372402303777878835e-1"))
  a65=       T(parse(BigFloat,"-.2826905039406838290900305721271224146717633626879770007617876201276764571291579142206e-1"))
  a71=       T(parse(BigFloat,".9646076681806522951816731316512876333711995238157997181903319145764851595234062815396e-1"))
  a72=       T(1//100)
  a73=       T(parse(BigFloat,".4798896504144995747752495322905965199130404621990332488332634944254542060153074523509"))
  a74=       T(parse(BigFloat,"1.379008574103741893192274821856872770756462643091360525934940067397245698027561293331"))
  a75=       T(parse(BigFloat,"-3.290069515436080679901047585711363850115683290894936158531296799594813811049925401677"))
  a76=       T(parse(BigFloat,"2.324710524099773982415355918398765796109060233222962411944060046314465391054716027841"))
  b1 =       T(parse(BigFloat,".9468075576583945807478876255758922856117527357724631226139574065785592789071067303271e-1"))
  b2 =       T(parse(BigFloat,".9183565540343253096776363936645313759813746240984095238905939532922955247253608687270e-2"))
  b3 =       T(parse(BigFloat,".4877705284247615707855642599631228241516691959761363774365216240304071651579571959813"))
  b4 =       T(parse(BigFloat,"1.234297566930478985655109673884237654035539930748192848315425833500484878378061439761"))
  b5 =       T(parse(BigFloat,"-2.707712349983525454881109975059321670689605166938197378763992255714444407154902012702"))
  b6 =       T(parse(BigFloat,"1.866628418170587035753719399566211498666255505244122593996591602841258328965767580089"))
  b7 =       T(1//66)
  Tsit5ConstantCache(c1,c2,c3,c4,c5,c6,a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,a61,a62,a63,a64,a65,a71,a72,a73,a74,a75,a76,b1,b2,b3,b4,b5,b6,b7)
end

immutable BS5ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  c1::T2
  c2::T2
  c3::T2
  c4::T2
  c5::T2
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  a51::T
  a52::T
  a53::T
  a54::T
  a61::T
  a62::T
  a63::T
  a64::T
  a65::T
  a71::T
  a72::T
  a73::T
  a74::T
  a75::T
  a76::T
  a81::T
  a83::T
  a84::T
  a85::T
  a86::T
  a87::T
  bhat1::T
  bhat3::T
  bhat4::T
  bhat5::T
  bhat6::T
  btilde1::T
  btilde2::T
  btilde3::T
  btilde4::T
  btilde5::T
  btilde6::T
  btilde7::T
  btilde8::T
  c6::T2
  c7::T2
  c8::T2
  a91::T
  a92::T
  a93::T
  a94::T
  a95::T
  a96::T
  a97::T
  a98::T
  a101::T
  a102::T
  a103::T
  a104::T
  a105::T
  a106::T
  a107::T
  a108::T
  a109::T
  a111::T
  a112::T
  a113::T
  a114::T
  a115::T
  a116::T
  a117::T
  a118::T
  a119::T
  a1110::T
  r016::T
  r015::T
  r014::T
  r013::T
  r012::T
  r036::T
  r035::T
  r034::T
  r033::T
  r032::T
  r046::T
  r045::T
  r044::T
  r043::T
  r042::T
  r056::T
  r055::T
  r054::T
  r053::T
  r052::T
  r066::T
  r065::T
  r064::T
  r063::T
  r062::T
  r076::T
  r075::T
  r074::T
  r073::T
  r072::T
  r086::T
  r085::T
  r084::T
  r083::T
  r082::T
  r096::T
  r095::T
  r094::T
  r093::T
  r106::T
  r105::T
  r104::T
  r103::T
  r102::T
  r116::T
  r115::T
  r114::T
  r113::T
  r112::T
end

"""

An Efficient Runge-Kutta (4,5) Pair by P.Bogacki and L.F.Shampine
 Computers and Mathematics with Applications, Vol. 32, No. 6, 1996, pages 15 to 28
"""
Base.@pure function BS5ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  c1     =T2(0.16666666666666666)
  c2     =T2(0.2222222222222222)
  c3     =T2(0.42857142857142855)
  c4     =T2(0.6666666666666666)
  c5     =T2(0.75)

  a21    =T(0.16666666666666666)
  a31    =T(0.07407407407407407)
  a32    =T(0.14814814814814814)
  a41    =T(0.13338192419825073)
  a42    =T(-0.47230320699708456)
  a43    =T(0.7674927113702624)
  a51    =T(0.22895622895622897)
  a52    =T(-0.36363636363636365)
  a53    =T(0.2937062937062937)
  a54    =T(0.5076405076405076)
  a61    =T(0.026500355113636364)
  a62    =T(0.23011363636363635)
  a63    =T(0.10772747760052448)
  a64    =T(0.1602190777972028)
  a65    =T(0.225439453125)
  a71    =T(0.18159821692916506)
  a72    =T(-0.38707982536247293)
  a73    =T(0.41288268560074054)
  a74    =T(0.6409913191253497)
  a75    =T(-1.0121439383514517)
  a76    =T(1.1637515420586695)
  a81    =T(0.07279265873015874)
  a83    =T(0.28662437773692473)
  a84    =T(0.19513621794871794)
  a85    =T(0.008638392857142857)
  a86    =T(0.3595655806182122)
  a87    =T(0.07724277210884353)

  bhat1  =T(-0.00234375)
  bhat3  =T(0.0103760754048583)
  bhat4  =T(-0.016490384615384615)
  bhat5  =T(0.018984375)
  bhat6  =T(-0.010526315789473684)
  btilde1=T(0.07084476451760402)
  btilde2=T(0)
  btilde3=T(0.2956730769230769)
  btilde4=T(0.17965747482208388)
  btilde5=T(0.029861111111111113)
  btilde6=T(0.3462886755067825)
  btilde7=T(0.07176240133870539)
  btilde8=T(0.005912495780636172)
  c6,c7,c8,a91,a92,a93,a94,a95,a96,a97,a98,a101,a102,a103,a104,a105,a106,a107,a108,a109,a111,a112,a113,a114,a115,a116,a117,a118,a119,a1110 = BS5Interp(T,T2)
  r016,r015,r014,r013,r012,r036,r035,r034,r033,r032,r046,r045,r044,r043,r042,r056,r055,r054,r053,r052,r066,r065,r064,r063,r062,r076,r075,r074,r073,r072,r086,r085,r084,r083,r082,r096,r095,r094,r093,r106,r105,r104,r103,r102,r116,r115,r114,r113,r112 = BS5Interp_polyweights(T)
  BS5ConstantCache(c1,c2,c3,c4,c5,a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,a61,a62,a63,a64,a65,a71,a72,a73,a74,a75,a76,a81,a83,a84,a85,a86,a87,bhat1,bhat3,bhat4,bhat5,bhat6,btilde1,btilde2,btilde3,btilde4,btilde5,btilde6,btilde7,btilde8,c6,c7,c8,a91,a92,a93,a94,a95,a96,a97,a98,a101,a102,a103,a104,a105,a106,a107,a108,a109,a111,a112,a113,a114,a115,a116,a117,a118,a119,a1110,r016,r015,r014,r013,r012,r036,r035,r034,r033,r032,r046,r045,r044,r043,r042,r056,r055,r054,r053,r052,r066,r065,r064,r063,r062,r076,r075,r074,r073,r072,r086,r085,r084,r083,r082,r096,r095,r094,r093,r106,r105,r104,r103,r102,r116,r115,r114,r113,r112)
end

"""

An Efficient Runge-Kutta (4,5) Pair by P.Bogacki and L.F.Shampine
 Computers and Mathematics with Applications, Vol. 32, No. 6, 1996, pages 15 to 28
"""
function BS5ConstantCache(T::Type,T2::Type)
  c1     =T2(1//6)
  c2     =T2(2//9)
  c3     =T2(3//7)
  c4     =T2(2//3)
  c5     =T2(3//4)

  a21    =T(1//6)
  a31    =T(2//27)
  a32    =T(4//27)
  a41    =T(183//1372)
  a42    =T(-162//343)
  a43    =T(1053//1372)
  a51    =T(68//297)
  a52    =T(-4//11)
  a53    =T(42//143)
  a54    =T(1960//3861)
  a61    =T(597//22528)
  a62    =T(81//352)
  a63    =T(63099//585728)
  a64    =T(58653//366080)
  a65    =T(4617//20480)
  a71    =T(174197//959244)
  a72    =T(-30942//79937)
  a73    =T(8152137//19744439)
  a74    =T(666106//1039181)
  a75    =T(-29421//29068)
  a76    =T(482048//414219)
  a81    =T(587//8064)
  a83    =T(4440339//15491840)
  a84    =T(24353//124800)
  a85    =T(387//44800)
  a86    =T(2152//5985)
  a87    =T(7267//94080)

  bhat1  =T(-3//1280)
  bhat3  =T(6561//632320)
  bhat4  =T(-343//20800)
  bhat5  =T(243//12800)
  bhat6  =T(-1//95)
  btilde1=T(2479//34992)
  btilde2=T(0)
  btilde3=T(123//416)
  btilde4=T(612941//3411720)
  btilde5=T(43//1440)
  btilde6=T(2272//6561)
  btilde7=T(79937//1113912)
  btilde8=T(3293//556956)
  c6,c7,c8,a91,a92,a93,a94,a95,a96,a97,a98,a101,a102,a103,a104,a105,a106,a107,a108,a109,a111,a112,a113,a114,a115,a116,a117,a118,a119,a1110 = BS5Interp(T,T2)
  r016,r015,r014,r013,r012,r036,r035,r034,r033,r032,r046,r045,r044,r043,r042,r056,r055,r054,r053,r052,r066,r065,r064,r063,r062,r076,r075,r074,r073,r072,r086,r085,r084,r083,r082,r096,r095,r094,r093,r106,r105,r104,r103,r102,r116,r115,r114,r113,r112 = BS5Interp_polyweights(T)
  BS5ConstantCache(c1,c2,c3,c4,c5,a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,a61,a62,a63,a64,a65,a71,a72,a73,a74,a75,a76,a81,a83,a84,a85,a86,a87,bhat1,bhat3,bhat4,bhat5,bhat6,btilde1,btilde2,btilde3,btilde4,btilde5,btilde6,btilde7,btilde8,c6,c7,c8,a91,a92,a93,a94,a95,a96,a97,a98,a101,a102,a103,a104,a105,a106,a107,a108,a109,a111,a112,a113,a114,a115,a116,a117,a118,a119,a1110,r016,r015,r014,r013,r012,r036,r035,r034,r033,r032,r046,r045,r044,r043,r042,r056,r055,r054,r053,r052,r066,r065,r064,r063,r062,r076,r075,r074,r073,r072,r086,r085,r084,r083,r082,r096,r095,r094,r093,r106,r105,r104,r103,r102,r116,r115,r114,r113,r112)
end

"""

An Efficient Runge-Kutta (4,5) Pair by P.Bogacki and L.F.Shampine
 Computers and Mathematics with Applications, Vol. 32, No. 6, 1996, pages 15 to 28


Used in the lazy construction of the dense output

k9, k10, k11 are not computed until called in the dense routine
"""
Base.@pure function BS5Interp{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})

  c6    = T2(0.5)
  c7    = T2(0.8333333333333334)
  c8    = T2(0.1111111111111111)
  a91   = T(0.07405598958333333)
  a92   = T(0)
  a93   = T(0.28964485093442743)
  a94   = T(0.12839214966168092)
  a95   = T(-0.003779296875)
  a96   = T(0.014230019493177388)
  a97   = T(-0.03379371279761905)
  a98   = T(0.03125)
  a101  = T(-0.06358724036162344)
  a102  = T(0.5742461924818869)
  a103  = T(-0.06365063007249953)
  a104  = T(0.043159777438314964)
  a105  = T(0.8370112883898733)
  a106  = T(-0.34045447246719235)
  a107  = T(0.04926503818334922)
  a108  = T(-0.006882677669165967)
  a109  = T(-0.19577394258960973)
  a111  = T(0.0636090772400987)
  a112  = T(0.01057854182854183)
  a113  = T(0.06600100945670531)
  a114  = T(0.02048391555358402)
  a115  = T(0.003682270330219549)
  a116  = T(0.155258632271002)
  a117  = T(-0.08509702513818027)
  a118  = T(0.1)
  a119  = T(-0.1)
  a1110 = T(-0.12340531043086005)

  return c6,c7,c8,a91,a92,a93,a94,a95,a96,a97,a98,a101,a102,a103,a104,a105,a106,a107,a108,a109,a111,a112,a113,a114,a115,a116,a117,a118,a119,a1110
end


"""

An Efficient Runge-Kutta (4,5) Pair by P.Bogacki and L.F.Shampine
 Computers and Mathematics with Applications, Vol. 32, No. 6, 1996, pages 15 to 28


Used in the lazy construction of the dense output

k9, k10, k11 are not computed until called in the dense routine
"""
function BS5Interp(T::Type,T2::Type)

  c6    = T2(1//2)
  c7    = T2(5//6)
  c8    = T2(1//9)
  a91   = T(455//6144)
  a92   = T(0)
  a93   = T(10256301//35409920)
  a94   = T(2307361//17971200)
  a95   = T(-387//102400)
  a96   = T(73//5130)
  a97   = T(-7267//215040)
  a98   = T(1//32)
  a101  = T(-837888343715//13176988637184)
  a102  = T(30409415//52955362)
  a103  = T(-48321525963//759168069632)
  a104  = T(8530738453321//197654829557760)
  a105  = T(1361640523001//1626788720640)
  a106  = T(-13143060689//38604458898)
  a107  = T(18700221969//379584034816)
  a108  = T(-5831595//847285792)
  a109  = T(-5183640//26477681)
  a111  = T(98719073263//1551965184000)
  a112  = T(1307//123552)
  a113  = T(4632066559387//70181753241600)
  a114  = T(7828594302389//382182512025600)
  a115  = T(40763687//11070259200)
  a116  = T(34872732407//224610586200)
  a117  = T(-2561897//30105600)
  a118  = T(1//10)
  a119  = T(-1//10)
  a1110 = T(-1403317093//11371610250)

  return c6,c7,c8,a91,a92,a93,a94,a95,a96,a97,a98,a101,a102,a103,a104,a105,a106,a107,a108,a109,a111,a112,a113,a114,a115,a116,a117,a118,a119,a1110
end

"""
Coefficients for the polynomial
bᵢΘ = ri1*Θ + ri2*Θ^2 + ri3*Θ^3 + ...

These coefficients are taken from RKSuite

Note that RKSuite has an error: r081 should be 0
and r011 should be 1. This is pretty easy to spot
since the first order interpolation is linear from y₀.
"""
function BS5Interp_polyweights{T<:CompiledFloats}(::Type{T})
  r016   = T(-11.547607240534195)
  r015   = T(36.89579791207878)
  r014   = T(-45.470343197183475)
  r013   = T(27.298136302807084)
  r012   = T(-8.103191118438032)

  r036   = T(-27.245925284262768)
  r035   = T(74.85879078710211)
  r034   = T(-72.2759709558427)
  r033   = T(28.38602193195626)
  r032   = T(-3.4362921012159933)

  r046   = T(-14.307769126529058)
  r045   = T(38.240038148817945)
  r044   = T(-35.469854845413806)
  r043   = T(13.060399314592578)
  r042   = T(-1.3276772735189397)

  r056   = T(-0.7296779223862557)
  r055   = T(1.9817123385873385)
  r054   = T(-1.964240395021645)
  r053   = T(0.8847786781120115)
  r052   = T(-0.16393430643430643)

  r066   = T(19.121088881250603)
  r065   = T(-65.9928405785889)
  r064   = T(77.4690381021765)
  r063   = T(-34.163041154825144)
  r062   = T(3.9253203306051474)

  r076   = T(-14.676126700680273)
  r075   = T(42.17455357142857)
  r074   = T(-42.4062818877551)
  r073   = T(16.83892431972789)
  r072   = T(-1.853826530612245)

  r086   = T(19.453125)
  r085   = T(-54.359375)
  r084   = T(53.671875)
  r083   = T(-21.078125)
  r082   = T(2.3125)

  r096   = T(18.333333333333332)
  r095   = T(-39)
  r094   = T(23)
  r093   = T(-2.3333333333333335)

  r106   = T(-23.400440940191388)
  r105   = T(70.20132282057416)
  r104   = T(-73.55422182095978)
  r103   = T(30.106238940962648)
  r102   = T(-3.3528990003856314)

  r116   = T(35)
  r115   = T(-105)
  r114   = T(117)
  r113   = T(-59)
  r112   = T(12)

  return r016,r015,r014,r013,r012,r036,r035,r034,r033,r032,r046,r045,r044,r043,r042,r056,r055,r054,r053,r052,r066,r065,r064,r063,r062,r076,r075,r074,r073,r072,r086,r085,r084,r083,r082,r096,r095,r094,r093,r106,r105,r104,r103,r102,r116,r115,r114,r113,r112
end

"""
Coefficients for the polynomial
bᵢΘ = ri1*Θ + ri2*Θ^2 + ri3*Θ^3 + ...

These coefficients are taken from RKSuite

Note that RKSuite has an error: r081 should be 0
and r011 should be 1. This is pretty easy to spot
since the first order interpolation is linear from y₀.
"""
function BS5Interp_polyweights(T::Type)
  r016   = T(-12134338393//1050809760)
  r015   = T(12923488183//350269920)
  r014   = T(-2722545893//59875200)
  r013   = T(35856435071//1313512200)
  r012   = T(-3547880131//437837400)

  r036   = T(-33197340367//1218433216)
  r035   = T(65150312289//870309440)
  r034   = T(-27096444225//374902528)
  r033   = T(4323308999//152304152)
  r032   = T(-1046723109//304608304)

  r046   = T(-284800997201//19905339168)
  r045   = T(6343174409579//165877826400)
  r044   = T(-201150852119//5671036800)
  r043   = T(3249645975331//248816739600)
  r042   = T(-55058055073//41469456600)

  r056   = T(-540919//741312)
  r055   = T(85695583//43243200)
  r054   = T(-2903933//1478400)
  r053   = T(3586937//4054050)
  r052   = T(-1772261//10810800)

  r066   = T(7157998304//374350977)
  r065   = T(-41174140576//623918295)
  r064   = T(413114104//5332635)
  r063   = T(-9134977024//267393555)
  r062   = T(2449079168//623918295)

  r076   = T(-138073//9408)
  r075   = T(94471//2240)
  r074   = T(-1329861//31360)
  r073   = T(792103//47040)
  r072   = T(-7267//3920)

  r086   = T(1245//64)
  r085   = T(-3479//64)
  r084   = T(3435//64)
  r083   = T(-1349//64)
  r082   = T(37//16)

  r096   = T(55//3)
  r095   = T(-39)
  r094   = T(23)
  r093   = T(-7//3)

  r106   = T(-1774004627//75810735)
  r105   = T(1774004627//25270245)
  r104   = T(-26477681//359975)
  r103   = T(11411880511//379053675)
  r102   = T(-423642896//126351225)

  r116   = T(35)
  r115   = T(-105)
  r114   = T(117)
  r113   = T(-59)
  r112   = T(12)

  return r016,r015,r014,r013,r012,r036,r035,r034,r033,r032,r046,r045,r044,r043,r042,r056,r055,r054,r053,r052,r066,r065,r064,r063,r062,r076,r075,r074,r073,r072,r086,r085,r084,r083,r082,r096,r095,r094,r093,r106,r105,r104,r103,r102,r116,r115,r114,r113,r112
end

immutable DP5ConstantCache{T,T2} <: OrdinaryDiffEqConstantCache
  a21::T
  a31::T
  a32::T
  a41::T
  a42::T
  a43::T
  a51::T
  a52::T
  a53::T
  a54::T
  a61::T
  a62::T
  a63::T
  a64::T
  a65::T
  a71::T
  a73::T
  a74::T
  a75::T
  a76::T
  b1::T
  b3::T
  b4::T
  b5::T
  b6::T
  b7::T
  c1::T2
  c2::T2
  c3::T2
  c4::T2
  c5::T2
  c6::T2
  d1::T
  d3::T
  d4::T
  d5::T
  d6::T
  d7::T
end

Base.@pure function DP5ConstantCache{T<:CompiledFloats,T2<:CompiledFloats}(::Type{T},::Type{T2})
  a21 = T(0.2)
  a31 = T(0.075)
  a32 = T(0.225)
  a41 = T(0.9777777777777777)
  a42 = T(-3.7333333333333334)
  a43 = T(3.5555555555555554)
  a51 = T(2.9525986892242035)
  a52 = T(-11.595793324188385)
  a53 = T(9.822892851699436)
  a54 = T(-0.2908093278463649)
  a61 = T(2.8462752525252526)
  a62 = T(-10.757575757575758)
  a63 = T(8.906422717743473)
  a64 = T(0.2784090909090909)
  a65 = T(-0.2735313036020583)
  a71 = T(0.09114583333333333)
  a73 = T(0.44923629829290207)
  a74 = T(0.6510416666666666)
  a75 = T(-0.322376179245283)
  a76 = T(0.13095238095238096)
  b1  = T(0.08991319444444444)
  b3  = T(0.4534890685834082)
  b4  = T(0.6140625)
  b5  = T(-0.2715123820754717)
  b6  = T(0.08904761904761904)
  b7  = T(0.025)
  c1 = T2(0.2)
  c2 = T2(0.3)
  c3 = T2(0.8)
  c4 = T2(0.8888888888888888)
  c5 = T2(1)
  c6 = T2(1)
  d1,d3,d4,d5,d6,d7 = DP5_dense_ds(T)
  DP5ConstantCache(a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,a61,a62,a63,a64,a65,a71,a73,a74,a75,a76,b1,b3,b4,b5,b6,b7,c1,c2,c3,c4,c5,c6,d1,d3,d4,d5,d6,d7)
end

Base.@pure function DP5_dense_ds{T<:CompiledFloats}(::Type{T})
  d1  = T(-1.1270175653862835)
  d3  = T(2.675424484351598)
  d4  = T(-5.685526961588504)
  d5  = T(3.5219323679207912)
  d6  = T(-1.7672812570757455)
  d7  = T(2.382468931778144)
  return d1,d3,d4,d5,d6,d7
end

function DP5ConstantCache(T::Type,T2::Type)
  a21 = T(1//5)
  a31 = T(3//40)
  a32 = T(9//40)
  a41 = T(44/45)
  a42 = T(-56//15)
  a43 = T(32//9)
  a51 = T(19372//6561)
  a52 = T(-25360//2187)
  a53 = T(64448//6561)
  a54 = T(-212//729)
  a61 = T(9017//3168)
  a62 = T(-355//33)
  a63 = T(46732//5247)
  a64 = T(49//176)
  a65 = T(-5103//18656)
  a71 = T(35//384)
  a73 = T(500//1113)
  a74 = T(125//192)
  a75 = T(-2187//6784)
  a76 = T(11//84)
  b1  = T(5179//57600)
  b3  = T(7571//16695)
  b4  = T(393//640)
  b5  = T(-92097//339200)
  b6  = T(187//2100)
  b7  = T(1//40)
  c1 = T2(1//5)
  c2 = T2(3//10)
  c3 = T2(4//5)
  c4 = T2(8//9)
  c5 = T2(1)
  c6 = T2(1)
  d1,d3,d4,d5,d6,d7 = DP5_dense_ds(T)
  DP5ConstantCache(a21,a31,a32,a41,a42,a43,a51,a52,a53,a54,a61,a62,a63,a64,a65,a71,a73,a74,a75,a76,b1,b3,b4,b5,b6,b7,c1,c2,c3,c4,c5,c6,d1,d3,d4,d5,d6,d7)
end

function DP5_dense_ds(T)
  d1  = T(-12715105075//11282082432)
  d3  = T(87487479700//32700410799)
  d4  = T(-10690763975//1880347072)
  d5  = T(701980252875//199316789632)
  d6  = T(-1453857185//822651844)
  d7  = T(69997945//29380423)
  return d1,d3,d4,d5,d6,d7
end

#=
function DP5_dense_bs(T)
  b1  = T(5179//57600)
  b3  = T(7571//16695)
  b4  = T(393//640)
  b5  = T(-92097//339200)
  b6  = T(187//2100)
  b7  = T(1//40)
  return b1,b3,b4,b5,b6,b7
end
=#
