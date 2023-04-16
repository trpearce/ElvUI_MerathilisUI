local MER, F, E, L, V, P, G = unpack(ElvUI_MerathilisUI)

local IsAddOnLoaded = IsAddOnLoaded
local ReloadUI = ReloadUI

function MER:LoadDetailsProfile()
	if not IsAddOnLoaded('Details') then return end

	--[[----------------------------------
	--	Details - Settings
	--]]----------------------------------

	local main = "n33AZTroww(BzJ9dB1rm2laYeazUtSFqUSuvEkBzVMYvTDeomnfzkjgMIudjv5s1gT)TVNZfiZe5lz19mBh7mDzjrIejECFCUVa(K(tx8Pz3TF3vR3uXF9Wn7(68f7R2Uy((DBQMVE5UTF6YpnB5I7oE)(Q57RwSHT7g(ZxG2Fx1MnlxC4i)JBxFy5QfhxWFFX97LFwTTA)1pWFB1IBxCDf(TJFA2E8wUAXk0)BrVDU(tZWVCU5tNREUHF)DBw8q1(5RQoUy9MdZ)66TR29vz8TCbgO8bo8f8iZoDZV)Hx9PzxUy)8Jv)bhIFA2SV8WM1BRy)S9(BR2VgpZ8dpC4y1TYtE)bmp40C76BxCC9UTh4WBF1D72FCoNyZXJ)LdCAVV62D)EywF78R2V725BxCBvyUIN((BNJVE)InBMVC3TxU448JRVLdpfMUvloEZ8J72T5467Wmy1XB(05zwvZB64U5F9MDFAgN7hoUy7YQdZpuD9TvBpEy(MDl)s1k(IIBoZpSadK72jJvodWB74MQR3V7(TRWZThJJ53Typ(n5PomFXLxUV63xlZq8M)0SVUB)Mv1d01hMFC)Id3iD3DyxdVH7QWReBbwSGUB3xUDX(ViRQZpS(p5ScRDnRzHwphldOB(9Qn85YXdI)A5xMVgR1Z3uXphRIYoDtVRT9xCoGX9xydd7ZhEusJ2flSsD)8LBwJ3hwl3Dx1wozA2q2ubIITvFD5n4pR2kKEYk3HQnxHLHn72Z3jjyLgV9(7WY(17U)i)42xZQ1hwC5gUGVF(nRV(Mn4)KMiRFOJ2UeREBX)jmkSFNF5drMOJvlUvyh6UUH9dSHWH56TZ3TTksHFaZymfRFJhoUV64YBceECXcdHav5InKqB(Q74QWrSLFb504dTswW3T9yCgklH8)zK)nt(3C(V4ffgJ1p4lIp4HBwqUTzN)2ZpT(JceafGU)HJ3SE58v3JfumBsEPhwC7DCqlnfZUR2dwfSyF846TxFOr4YX1GSveDG1piRy2RF7Vb61DGq6tZU4TVlLhVMRrbUMh(05pttgR)aKcKJF5xwTF3DDMMQaHImnvY0ms00YoDtLS9DUjJFEKYhVBWaTqiIXixO53D1vySZomSeC1ILq2Yz7x)NF7Z)VUFXko4)2NVatRD3jcrMltyzhe98TqYX(hMJp6tN7Yjf)vlUFZX5xE98fBU7Mfr(S(cOWpU9YDBoqbOh31skeOpMt297era1FbNzZXMb)I5xE)XJrXzbcoS(VeYX30LI(W93D3(Qd1sa4Y5D)(DZxCi0)cxuConIK3JJifyXFulfiRZunS5GPQQmxNoe2UdczVm27xMSelekKZglbN(hYW8RlEGV0R2TFz18flpU(3xF8brs7CmS5OnWRhxfc7ZDfdeBxZ7pqVG30CrKk(LT72FBq12dF6SN5Zkn5GARWxOY0LfF6QNLNtsVZCLzEFEwPTWMvQlY43qzRF6mBzHol3OX)AlDAx8zW6Rg)etGdyXi8cir1FeOWJu3Ovg8tH05M1I0VgvkpCxGBGRrGPHCtIy5mObB5nC9nJcEjFfLrrUmrNTiFm2Ka)HjWGG3(b8o4VGxh2M2)PZYDoJ1QYD6CTn3KJrVLmX3VzZL72Vckxcm2cvRmcHGsWKehLjI(I0GpQGNOWmbEXCb7XSxrEqsb8XtwT6TBp8Xxgu()X1e2WHpM(ihMBcaaMV8(dh3DlvIsj7KNbSxRVE78Bbf465jlzCeoF(xbro1uef3Lm7Qx1efkhVbusxFtTqx5DYVe6C3VgZWkzdirMg4IfzGbrNxwVaRJctcRDLO3LXB4PN9)HGj(BP9rqRbhAYJfK5myLra98XFC3(Qp(MQvRx8XZ408JTSlp)4XR62TBWNkZGeb2DincugcDAOjZthQxghqtRt5yN33LxhW51qu2aol)DR)diNyg2JW4hsoGyi(GKKIVM72C)1GnLsI(ku9UVAza)c2WfILvvhwGEcI2K5qYFk4bcqZGmpQ2MOirVxVteLHgeKDwrP2Rn(S8cvPP0uej4dmFe17lAjtB6cWRC9K8kc)wG8SreFPrEOlN8HA0J1ScDoWdezMs3BoZxQngLxPCzk8lYaoNR(NbHuotwzjEb8)PcDTO(RrEYokpzBKQni7lHuy9wiU8GSba1G3lqy5ZI37tSHzp1gM)uBO9P2q3tTH(NAdlEQnS8P2qaC5P2YN8EJ(jV5OFY7o6N82J(PU)CSdNHij8ScTYLdcADUvxyBy(ipFWc0Aag8DW)aiVGnbn4sQrzbMZdZLxCuEqIvHF7ZZo(WMQV95xbdep811ejnreq7Abh6vqOkG3Cxva(XMn7G8HR57JC8pQGUeaZFxPIhfGUcm(GMXwHjXXeT4mO9OVcEtJcEVkkELpmN0J1CGO621TaxFgblhFha1JyGv0IlbWdmqC9M1hxd0qe1gXYxDB8VsSZQEy3rBXZm(48eTC2ric(WlwSFgGaUI99YkQY6tZE5PxCYRE9S5ZU4Kl(WSxCY7N)Ux)HF6vNp)hF9B)XFb73cw8PB27MD6p9Mtp)I099hP1V8DZydwF4NxVAvLOnpAq9fcgkty)6mrRAc4s5tpHWgcASHkSlQbDXVAwJ5V8V(XVRDvpPPu6a9f)dmqZ()Xd0Ww0f)dmYm)NYiJwTvD1XV3(D0zsR3ELGTM9(7j0uXdqbhuT8jIWuAAqkvWAGOACPtFDANg1vN4oGKohMiwTD1HZO1GF8dV6zX)(1RpC8z)C7degPctT4Zmz14fCX4fCTqGpDx1EYkLycaapTAEFHoqCQTm3zkaUIYCFHlcaWm53Kn53uJq)WDCl(Iipkwqc4KbRFwCJHJh(ljFhrivD8Rvvb6Za7nFIJTRzeWt0Rvl3q0FnEIPZY88d3gCR2JzDVoyxy00XP2MFIWLVAHa1mytcvt1vsAnqTEA9EcdWgKDr6TV9ziR8fYs23(C0FKjlfhcMp8N1gBF7UvvBejFWSDOZs(Bi1LEE9Whpz56vVyV4on89v7)P9y1)5VXqFE812w)B03FF80)3V7KZN9Q3EUY8Xx(23(YtE5mSUSz1I97x8XF8TV(LN8(3Fc47)WSNFRP(9L6UIqFMm9dFqtt01puBto21fsz17ZDTeISa6)2Z)2NLFl7Vv3QJ7xS9a0sfAxQ)B0TKup2((83ubRdUbA6o0LiOrR1Hp(AqVLFhTl55hVEr0qJukGZSEaxjd8l5GBX6kjZszuLCkDtTWH3p)s6hu8OZ(HGViGPiDjMFUp6vtFGEH)SgXEyUpTDy94sexB8iws)4lexewfp8XO32Fw1MJ7VF9HBtwmUEpSKsSB6YEYyBhbJWG)F0nMtV9UJpegg19ERb)JgQIxKkJuAFIysV3RGvFkvUQuzCfTIjN4BYM8Bs5TFDqk(27V9YQ9TlqJS9r)Yfyv01TAm2GV95Fq(nZF7V0F6Kk98XK8CMnZykDEDHo34CbX75Jlh(tZA3kKvCczDX(JrmY1RR1uXnIZITDGP9r(7Es0It3r)0)UL5VDxtKPe6ZiFA3NPXb3nKhJiwpX3U9HZiKpPJ364h0GtieCJdhNF3H5bxj3ka4q1DlWQkMjZ(x6t(oGXq0423eLgxakkeAbY39lOrx1r4PVfb5ngqOOZVA9cEW1GcPyx1z72UPcO4dXDrCrtT1gYeg2piKcBda8dBgjU0UN7Z2ZqAC5apY0ooqdWw0IHEySt3SEBy6IbNejX5ZpSDXDHyLexxcbxu4(65(02Hw3M2Dvu8CO8KIxKUiIX5YAqmIESwpwhCtSRW41(YSCxwzPwrx6K7fVe)mWY5ZuQImxMXh92JUjmhV4TxCXBFZ7F1p9ZnowFc)rjMps5HIRpJGCBNsrEY)d5NOABuLGX8MtF5R(WBQxI)vzbO7E0iExE(k(zr48oH77zMgpc2m(5tbfjxsFrDCN4q(oMa3DhjX3SpbbcY(3Y73d(9Jne4bE0baRXd9c6EPxqxhDznuxbyB0)T1XOozE)egdIZioWq7M43sDFcsXjN7oSE5ID))zXDiSN)ZCaktL(UGLpgKoD3I7geWXaf5zEJciLGUsm69fLrcSyy8ol35lTgT2485EhyhcduiOA5oSi3zXv3FXnI7du3wnyUWuf)amzStSn(YUXHZK)vIhLPptYurKOwlwcALF8NF1P)6P0A9ZE)jV5uAm3jlVzn6yAq8Z(5D7x)NqI7InZcKnsGnWFYqfpuU6dKgOjaBI6RKx2R(X3E(Sp(QZ)15qU76nZVath62RVJVLACWE96tUvN5HoFVnZAWMb3c6lwUnSBuD2OrkPVJ7N)FE(Jwg3XCGGA9pqEXzbfTrFekqk)U2RlpsvtZX2cnvwWD)pAaXfui1MyawPWh0f3UoIBpsI(CDmqZzTM6mza0vF3Gjxhe5jcwET85)Hc)9LTMpjm)XWRBSQM5(qBvNvbzQRjqVrJZDWHR)2UF7BFUz)kWYTFDiRp2Sz9kb7KeX2JnUrQ(VMdc9RxVDrGzLolDXTIa3TxTw8hlryHpiaWsOo)3VNj9bSxjkAsYjcGPlanB5IL3igQSLbdSA)r5zQdyE3eyOMjOnI2lwUSAtqdW2QVwh4Dz)7I21pDw76xMrw)QZiOozcKTjtaaZxf2t3SsqQTCZU7be(qwv1MDuaF3xQ2ohKY75WC71I(jje(1joIPjqwG()27QDiBrYEVjqs(mTi(F5nC0a1UvW(Kv9ymEObnmZSI0)4R66qJ)OGwSUIcT1zZkY9Q6GAHhKVXaPlurLdzbqNL1OkHi7aqP8aekyDLVmhwxP0fLqsElekl)uBrEHX4SQgj9)X8nvxVyjEwOkuRD(SmNcJHcvuLiv8P0CQv3WNbJ48oO3HySC5z(W7NIpXYIKrx0EsSC3KPfbaFRQwSAZURNlIwOJXnTjwWvBwCDqgb2lPvbqXWMvhcHqoy0auQjlG)8ho)ItFFxM0NRn2Abi83cmRw(w)TtE)7F1BNS9X2Qdn(DN86tE5RoFYoVPVZ8s7FZj)0PTIY43gsTkOYoh7nJ)oo9IV)JiVGWJjp0lF)hE1lBEmOtsvkTqE28YCDousm6R7nV98FP5bBEDzUY0hzWe7LNEYf)8VCUqEoYGDQhdl2rhD)ugOd2RE)B)Pp0UEMSKy62zdNLF48F583(BJmpNAb9DV)vNo7IN47AWa9dN)tV)TF4DV71N8xBjfFcV1tG4BggOjFVkd5PZlg)Xp98tFZFDsIZ(KmNIT(Uml1B7zXNDQTXFMO0FQBI9ET4Lo7X4p7pL(13(ljdqRkRm03YJnbn9SF(K3CY5pbUOE7Bh7LuKm7edzfj)TK0ISw9gen1yNDuug9A6UJl3TFl0IcdVelBViyxsqoxitgfBOcz86iPSiqwT(Ay3CDIEzBIm0H5lUD39BLmA9G48aBDkzbZ9UdABd5OvINu6ju8mhe1RHjm2mypTXMLeadSX51LzQCyfDPjjagwRwzkCoqaQG5gMgpC1r(5zEywKwdLtyBeyrlB7Aqwy18HnOpkktC6NvB9GMd9pGsNlwQe66u2DDy8bvFLER3MBTwLxN45WCOSPmtOpYZYB9axQi4qFa61SsxPnNu6z5n9rau6jV)0Zpz(F90x)6e5fLXn)Yi12KS451mbrcS8(cN1rpGI1bVjJ6CZufMw08q5UwSQZuc72Yf08((YPBHtFwEbmq1PHPE2Cp2uBCKXaj0NHDeSUJTaSew41229ghGmKPn5kyzRQmSd4gZHSuxUDGwQSEtAB764p9(tp98bG5lA4)gYTgPd9(mhGPKN7m6azuy9PGaq85GeoRaMOBAMV9LW3WUgfH1xOoSBYd0uydaIRq3LNWf4TLL5gkQqRWqjjmEGaSuvwyZH5WWQRM3EhGbNHVVqPi2lSWAkB766fPZSGXd9fwXv5LAvR)N6ic)5quQ2NANXZv6sxRfuD0NEM3KJUsdJrl06S0atc2fNTitBHHIfa8ypA(bQcW4JmzzK6e)JoPRCEG(dgJQYSoWfPcuecTIQeOlnz2mFMxP9nZPgNMcbPNF6hU49N86rmmunI4EtJoLAnEm2qcrZPV(S6vBaMv7ZYT5WW4CTPDS2BvoLmA0NjyJvJCwkHgWppeCqBTbzHK)TA1AX1xxUF3Ivld2mLG0xmpr8AA9V(oaV)C8YGXtlwT((denRkQwqCYBi36)Qy)WUv7AtNXROtRogYbb(31XNUt65hukin62f)XugsLBBnKcKOT(qPB5lyIUqH5PmS)86oM01nbBACtFtMp3ybEsYfJDcTPWxslh0KTM2euYx)Gci44U9xFtSexA2kUdQhxkrxn4)RnZd1SYbgsQOBEK8tC7dyKiP6y1Hd0VfrFQ(D0NpyuC5UdhgMyZXcwOr)knaoX0JZDMeSEqMCMEeiF9WCCoK(4BX30hyZZRBSl0AxwcUlBpCA97A6RHNIDnOH6hbgF)2AEeeTDBlMBfnnUf2MFIjhXIu36AmV6Xhd5pvd8qBTpMjk9BUZ93HbnOZFS9UHToz1iZuOhUIm8rkFSXtdy5IyZDtUJpOTwV)XmnP)EtcX9idKUW2p3wOFe60bDD(J04E9SXzFKv8bn29yKFdAD7csZWOy6w)OK2didDLtrBpSTE1Jnq638KwpTyN(ewaU90l6D5286jh59wt0QSP3C61PMjju7rEWy9n9cDVEn7Xishq3L90Tnhdd7JSP0t(Kt)enWfm4UhH4V)UwlX)3Z3tNNWunKpzOHVXyeCy5nv3gtzI20x9MQfs4iBcUyFO)z1tUArm0S0ldH87CFmJOyUMu9TppJkORDFFOmwcH9nftytM6mv4c8ndqwquZpUy)1v0RHMKmkId9Fl02Fw(XXUp0D1prmYQ7R2aeqWM6zmIPZgakk0mAD(U2AeQjxlJlstKKYampSqT)CkKwnbSBxgc0qmnrAiJlD1B1LU6DVOnaCDMDY9xkrGTnEHVODSfJQrt0qEcXLz5UBVDX2vX6JmDbljjMDHUByYCmsiCh(EeONXw2efKxSz9F(Nl2V6BF(IiPx9gZuzCIGUKL(2ibueMO(6x)I3(2F5JsY7XAS9zVdqcFMwGiV(wU4CB1XB2TkKlLPPfHoo9AlXO4ib4CRQ2gDwphnwLpMCzplZgT9n22OR8VC3rjjQAgSTagPLwwyNjSlRWOkmzbZqZJoQG(I3yYbQ5sxMkXzhoFUolxdJKTW2)SOnymrKO7v0(CyLQjlZx24geHNODbVogWZEFOUz0uq2Sxlwy6fCjWo5K)4fjn7yNPsAW6kQLkgPtlscl2X(1H8Jf8RABncXzkAPrD5ddtU(sKSrIKaSaAfOAMlbh7YboktkDJMGlizTFy)nmC4h26NmPs7NDn3Jz0bzUeV5HRwZHjEhFz3(fS0MXJE59xD1NMD397VBJu)q72iPLXShQyTn0u)9qS6QWK)6n7UCXld5EC8vVVA5I(z4AijoIZGMpyZ6RQMhZp5q832u97s9c0uc8Cp(2BdwAlc2yIFWKrqmvscq3DlxVAEipJwfR95yHfhZj66u7G1ShTck1PMr9dTe(62AsGwiftUK2aj2wyXDJjllPJ)4Us1XkjEAyTyt1XQyIcn)IF8TViepW2zdnZAnms9EqCekhxU8XnoUDTE71RyrDd7SJf0355mERsWqNZQf)AgrWnmCMhN)VFF1(hKqUnvNid5G9DHQELwAk8k1U68mBo4Wu5AT2LJFLEhjlV1BmNr3t60ARlxB0LI3tYCDDZYz52CvzrjyF9f5Umjrs0XIHQ5f595EVd9gJnNw8Bd7O2xKP06lZ90ZooTiIiRO1BuNvuazk2CTcJ3mBgDZrUQ2HKN5vqEJrBXCWbzfumsMV2TRN5lqx6S5zm)pcVBgWVO36GClLtt)CbR6vEJj8WnE7ew8xy8ovwjm8Vmlplo0BE8CG2gtVsL2w4fbv8D3mYDLEgfbpD0wjExnD)DCJuY4GofMFcluNG72KJrDBE8iVO9B7gr42oB0NkqkB6)QA(4op0ukctqb0P9nL(ZSaDAOc8d1XKSc05L(DBDN(EIr(FVdX46W)Gp2FFd54dn1wsAoKnohFiij0VB3ZzQe4QzrPklVHYZx9PzF7F7zp7BFgT4BF(R3uH)94naPA4D)TphAg0qb5pF7Z8bLE4pHeJE9WJ9WS5)l8lxJ)Gde081B2iVwP)wd5B1Du47pURZGkQP8)cgiOPqKi9Yg6Y7U)43(8nq7zt)EZ6L38TptN4L8s4hSSk0)HrXInh21Pbhtg)HJcf8Uoupjw9T)n(0Kkc91vXgkcs)2NHOuoGfL7Cag)2xYVf9qmozF7Z)q8el4BFg4L(lF7FloPE(ihHlF7Z)pLw9VgEVHfb2ZICEmeWYB6jZY)chm1lrhWGF7rUaeunfwnRprdWFbsimAUEh3BiW7qdKbn0MJhlCyAWvnm7Qw874pK3qC4FC)9vjJ)joXeK5aBACsiH3lz1dwtHrvZHJtN1NSKUVxacdlnzXoTjDxIZHqWdXuayrcltmTEesx(OTVcEmYm9lP9aNrEDSXXxi0TVj8UcjkuNPqD39)49vxXX1j1F1z3VvsHOd)WFj2paioP)iidUJ9NKbzLSJSV6F)(1KIg7Z)3bENDlItUVUB)xsNcqf03(m6L8out9Cc(ZBPNq7)xNUDb7ldnSHW7(dvXDRiHhpOziV2gU0U4q8lfqdnF8pmfHYihAn9jsAFHm50bn)YDBt4PQfTi0o1Cfuak3gAgKTdGRaFE6iySI5qgcsdJJHB4wYT3lmocRI8QR3U)6I9BfMdkDqst50xOoDRiESVeFcHXy39HLyT6FvK8jEWpiJPwayQysiA6WOYwLeJpqGlzsVqTecha7w5ZIjc8FpDBSVQFs5K3bVO)b6j55oe26IponWoK60Zbo457xaq5vBxstvQeJqoNbPtYH68mD8NzXFAd)u5c)uhBNws3AyezODaUy8NM4pZJ)m(CgtSFQ)zSFZuXFg)8S4ZzkJTZh(BB97j(ZS4NNfBNo(366(P(9w)CX2f73SYYGg8Vu9WHJehEBIz2yfbtJ7yrQFSrB)adAObISoZpWfx2bSNNPZjWbDM8Vg5F1Y)QIPKbS6z)6qMHF)w5u(jA0jqYm72fW0IBQ2CxZhAlkSmwT)4Bf08ZFX7p9KF5LV93oFU41Ht(W7pzMeDWMd2R6xaEPN923)tNo)IpCXBF)Ro51Sz1fD7Ro)S328f6qbmvbJUKvJODxxsGwxsCwxYb3LjoAJuwh3VjEkDfsuU0x8ByHg)238ItUy(fV6nNY()T)6PV)Kx)6xEYfNmhwvC(Ro)NagogysgRRThQNQXq4cSBBbH6YaGQrh2MGRM(TxDowpMtZuM)HZ5pK5ZlF1StEXRpD(BpxYpH5V7KZpvwcITxYPI5V5KFrgiVi5uJQN4JWBPHEjKfQxuJEKNStBLeHryVIM3wFCAL(zbIqwbk7ikTJsIQaJwyIOu4DgtTDpFbGKOZcDmbEEyoy(Xc7d1hVhINCkyEbWmwWuKx6KykxuN7lJ0LXd8JKSEWO0fm(9GV26nnjo55zDtfCRpZ6DfMsNQmxsrKqZ6etSZyYnaRcvfoNr7kDnnRJlKHHyAmKyXj7lDojXEcnZ1TzopZ)tyPNZ4Yu2MM570SCy0xbehPGnJwDw7lTOBZ80hvkiqP0WY5PPzLDNPmlIWANZx4Sov7mvR69wZv6s0xWCymaANdAD3jrPTmdMeRCL6cLUD0P7UryZk8WKvvzwMgd08221DNatbA3Soh))WG1K(R7wrHZqpgad01WACjTrYTnhRhjTdJTCfZZQsqcuNeUb3v1D(QHX3y7TWOHP7jZ3U7gfEqhr3h6k0zfb6Uq)1F7iNBAOLzUCRyRES)k71Ump2TG56LkvrY(Hr179M5uUI8ISCd4hANVgDVuXQmdRkCdgw6xu22UEmgwJjZGoZuYeFoP)6UFyzgKPv2cW8uKUFy6TFy9ffLLfy)vb6utB)1B)GfburUXbUJstE7(HP7(b6lnjvuSuYWlUTD94oCfy3cSzzy)W701JpjVdVJEvVK10)bwyfpeCXDaeqQ8j(OOB8fH8YQUQLIYNKs(EC5tEiTqPvy5MEeknpzYlSLSks0m1WIIkCjYNoZHzhiEPVAW2Kkj1XSwS5GLBW1xIF0UfMv)OgWPXwaEQKupIcO0yBh8yg8FGMY18O5npQZPblgD9LRijnQodFORKWIkZzIRPBEuB9Jc(cfWT49atIQmn)L0y3ceDy0QzA218OUMSJK7LkUJJT0g3UtXrA6moSmQWB1LSn7RZejtP4TmkPKJ6wF5Bb3Fj5TlWYrrchBrtcxb(zTJCIqeBPP9r9GV07jPVZdjQ6(YkHEhLrbOCgMACkBzm79KIgcThct4yYvwAMs(54KudLFcYGcOHZLbPNzQu5SMETlp3uqhxcePfQIPKF6u5mvqHauLxvK(E7PkttIUCDj1kwOAvx0t(PfAePuhlRynFERsQEYpX8WBanpWXYuLBs5Ny5K6q5Yd0C4sgFfdMVzqRVPK5yzIg5EYpDyIAWOZxcPS2s9uYpTq8k0XxylWsyPTD81t(jeY6alnDbTHu8TTZ0V)Yyti1fMnUHYDkudf8a9PDbgzj7GLeiwFzHnwIi1cEMuUtrjZ5umZH4EiHipCCoewpmgn6vwABGjv1xUtJA2XEXPdFZiJEj4(TJES2xYWLzHSAS1BcVRgyDtn6B35g5PhmsTQsYQbdH0mLslcfyt6iDS1zxxaOEWvW8yw7HixVGJe2l9DxNRXmn6t)9gc(Ulw(sirHMTbDvGmqK0v80hcJ(0FNHaTzT7Qa4mjEzRZvOQHVwpeMgfUtbHea6BEPiOnrlhqxjkdaFfWx5hqTra8qHbwmYb6lF6JcdGb2COEesG9aFXaTC4Dc53fGygK6qJvYJMdfrgVLu4qNVAGwUCG9XGPFbe9AvPPLntZ5mwzPsh0s33OLd6mu5oiSOeiYGOGwLgakxb0zAzSGZ0jaSB0YHhOqmZiNQoSjpQ1sJyS8ytKkq6J0)mkjb2DWGFbapAxZJEEMqS3OtZdP6EM9T5uICtQcljrSN1ya(kMwYUjX)pknWq9xIsoGUqZik5m5tQ)cIvbrzg4LH8CVFs8)EiKeGsHiAGHqBNs)ft6(maJear85Qc1u6VSexaWBIrjKIOZgk)LX(Aihrx5Vy)YZJpkOle64CQUCe(P5iyMo7PemWn6lsk3dwiiqvKLhBjkvMziUpyfsgHjtSlffPqg900iJK68AvPAiUpSEyKCqasdHc30Kr3a0xeYrbtL(H4(SGoI15CPU0HfHeeyohvAJxRoNmXd5iyjta9nGZpNvUEczndiBbX8Lr7CtWKuZrGnti2c23qn9f(uQvaAxbDTgWRHf(IbCe4LIfxglZcaz1BBrGbBVr3s9gWgWultlAt)diaWWq8AGChtYJAXcpyY0q1UkpbYyzZbSdmLKPrQdmt2qUE4RFumE5HBbdC7i2nlfUUJ2GBa288cvZZEoSt85G8kL7b2l5iOfy8kpneKLgxTtggJMCeeH5KoandyyD2PTOgthBo0XwcZhJwlmohLUG2malcHTuzQ8PqeMd5MzaDwHMSGzztHiKLzcSbMf4eWzonIqHzbSZLW8awRmtHiewbclwXoEzbR5w)iqwYhJJpVhIldRuOs0r0m5EUIY(iw6bZfisjfmWjl3MAPNN(IsvkFrqszhoEO2eRN0sfa3PmvhiebB1W(AAUUl1O(SgAQmAFOnJfnuUlvrwPLj3eyn0apBr(aoEmC0armmEbuyWCGe2wymwgn6ci1lsjCAT0J5HaPYHuDLlXWjyFjpxpagFWEoINTahpupbBpHEz0h(SK3kp2XGClwepuPYaoEh4wDq7g0q596WHUqz0xpqYfuiOlXmkvNqdhVr0AdrJyKzemI1pkqwaTekn9MGYyNsRimzsrTjqsil3Nj0kEoSm45fsXJ1xp440vJzhhKFth)r2ht6BQpxlRgkXIAhh9JOFZnIJnmD1VXkHJNTkEG)aVutphV(igyaswiyI2EZfeYu6mrhVI1hdnkgeVWS1whZuZPaBt8e5LZkfgkF0AiFI7yXaHh4qz2HK7LurdmlxZkYv2hDU4YRRmtQMoi2oRWoHdAHCUCsPu4eaCMMDHEIWk5waeic5jATTTzU((MJZqGvYaEf5enk0S(oOvCZRNiK1LfTB9DKFDoev)CTYpK4ZXdMpJ1dThgFhb(QEq3G(cirfSa0lk(jHKvabkmbJOoRoq86rk6zgncabLuPxHEssraWH8YaepRhTSPuGaAvSqbeSaqyr8KTzmfiodXWAq)jNUBtQaXbMed1oIxkaUmTlfGnjyKvqKTewXKUuaVxWHqNJsVZpPlzD8yScq3uwaZOJRc6brgc7b5H2sf1Uexu03Lcy8bHMk6WaBklFpxk4aPVMIpH0r6HV221B)aVr0n02OYok(75swhWNMrNqYLpFlDvRieQvUVmeTxsk)udxZX4HaPyjo7l6A7SQViKKEpTV1rhV21IuGGdl0L5GUoJNfzDXF)iYN8Sut1qsdvEwKwu0fqSQrCWergvFMMLcahRVbiIEE(cPtEuGiJgvk2QvgiK8DD8kLYt3kARfkxBskwKlHyNCach)x5ioEfsfDSKSzOE8fPwZcHmaaol6ywP1J441mnT9udzvmVMtTH2LZtnln0NaJo9J44vpnNKU7K4OthWL4zaecfaXJL(SboELEHwBjjenw27tqTGEIUMNPWiqW0oxBvhdkgScdBgYZdrtRX8BWX7agzSLHLHwnanoEvXitbXmojjjtFusTdaaAdHwK8wBbGdIHsL4nDfHWMwd(GDkJYwb(T8SKGf1qpXAPNXMqrSszjqEYPH1SezPPdg1q44KGIYVZL48KfwPYRd6vPe)mOS0eQT5Usy5ZQO9cwRJryj5zDWeVswTZQmgiPYbsDLEVSe7QynMBLj(3wkEDhfctibdHYZWNsXsqjmrw6Ys9no18Nbv8uYrQu3w)CaLgg6SxVnAku0QoOUbg)Mj2i5YhjiANXyDMt7(W7gKc6wdSgxuWiMbO8yErpjKXZoh)usXzL7ZZxnIbwLxmzG1OrredEbd(BQ2J(sXlPggWka6iO8YmPuCO)RumemV00592tko05I9vqtY4XAMukoLubepkSFqJPsAxpTQqCpKdam2q0uHTfHuVaRH3ljxlkycmhJUu(ibwdBsWUTmGjNNqrjo(3mWr9L2CEMgqV5LysGPZ(X5q53Z1bCrzd2bk4PgidigRT82y03FhWsVwX1bEsg06ZGSEUAcRNy25bZimiiXq2SE7ae(xg0G6GSoFIHXzd2b4XJa6jwmjLjJVE7aGqtRO3q4zasIKIS(X9haRP31kvY(qB789CzgL6WIvXP7yyCwrVKxqXZ2bVe(1X1ZB9Jfe0E(cdAtGs1YCb)CrzpDXtheuqYLrXBwGw2dvyD0fZtmrhJPo0Po00ygeFhnOhc4avwzNJxbOdaIIaKiyYz(i2kaAg2kMg((uTIEi4JS(0scyH7qDXfsiQiJLIzZrIWpQ8aYaciRcht29CpmuDJfiWuOjMOe51f8UXbCbabmjN0d1ft6raGamYqPSK(91pAb9TKfcIe8C6b6I9ICcwdQaRGoaEWgvJNlhiL0XGmyLdmngA3nIibiw3BCjcRHPUGquCXg1N7ggeufmvJbTfO2OuJKh1jhI4W8Hsy2I2mIZWOTh0R9oAzD4SJP2rAJrMnwILqKlGcqCZu50owglQq2NfCt0)LUjtSe0altKb5eFRC6elXwYGQHHon0kXFO9DdMJiJawfyNLhIBMYkgax0ITnkGSWhIZFS)6YTZ01WrF5rcBVRyQeljCyZvs8tkwRhTTRN(pRyARMXpXRss8LE6)yudGPo8v2nBdm9Jaf4LHHBaZCEEzsqx6P)Jg)bOD58KncIy0tLyjODwXQA6h4OJYTJO)dym42aePQ4bru2ujwIetFl9YDEHnZNpvILGPjJyA4a1YLe3PE6)iQiYmYacHzEY8O3(HRqea5LGzwKSU0pWl8GnLj3KYrhf1kqR3(HL56fdzgd3FA2F0B)aAIGXgWaATN56tB76TFqFIjsTWiip99M1dxfeVaKdEPdv6HUxLNBoJOfPR)vb4Bj1Oyc75S15hXtrlcZYpQiGUSl4l04b8depLQZGwtd9jyY7P2DxQJnTIVqb8x6jMS(j7htEJsJLHUhIEGQ30i0bu4mzEOHDQeK65Tk54jInw0HfCwFI7ubSFhlxlatc2WLKgF16mS0xRGag66WYRpza7YKqyWmDtN5sW214o1CjAh0AkY1LK9la8cqUdwdi(X4tCsrJ7ubLg9thqbd9lHLPqrRZuCUtAYqptG1oWlYmFOnCjalgJUlnDK6PlMW5PfqNphEAMLpDsDUEu2qxemGZZutO0KgApDF)VqhEtxCqNmRN2)vmqSAgSmBhCE99Ffp2oHIecNs7N2)vogJlp6oEaq7ut6)kWmX0(WXtVnMkGt6)k6pbiKgchGM00u2PhsBSfrAFdGKyvw3uw(armz84LdsMSqZzXuw(yXSOiNzrjwg12SjtjMcIcLUjK3LzjwsniLyG5wIDKaDxkU7(w(O4m2awa0RPPku)ukeVvMrU8ScdDQAslFORWyGMGOogqHPS8XMZPbJ0p(HjrZUPpUBT4UegTmU1nLLp8CWJaPP6yaSyslFSLmMvybMjmKl1FD92pO)ebnQpNw4M0UEs(TGpckiilRUin1T6j5hIhbGmGnZWJgmZi49ZgnNhDDdnag(8GUtvihyxfpDb1fWyj63hASPpR1NsN77kNUG6SbQua3fIvsf7P5jHgp23ysOMQ6QjSxqOyPNPOujbzLcvgIj5jnizRCjEYPhPd9GNNi5GTZgNDQe1E01GHjQTIUsNELn3yDUPsuBlf1AyOcqNAgMqIn9geBb4(y2vATjoCOhvJe1unxJ4g(KsvHjqGGHXnHPHDseU6jvL4EHavf0GrZxssC5(zgwbXfHvElmfspnEAlnovLhcjUzYe1i3X9m6Hdl1JnzIgMZmeb6B00rL(0(RFqzuk6ykNMx(IPrlPFIbZK)roXKzQ(mT)Kyw6xqns0Ns28PWtxW8BIVxOLuhk(6rXtdYE(QPtk9Xt6WXtu7cEGrQ0EIJjnX07NO20zyLmnByyft236jvL5GpmtKk6YP5gtHNMA6zk(cas(mxI3m6NO2LojdzH138KxupzIAtJPboEObgIdZhjS856rclVPFc6PcjPlqgdGi(UsJEKeW2rK8uITew5uFJxYZmvEwuM5QR1(oYNeTlLAUMHnaDhpYt9omeqy(eZLDxhCKm04ID18QUW0joaYnsxgyizqYBFR5TWYKRbJsJKiXjUvNj2lWx6ymWltb(3eha6Skp9YMHkq7mxTuPQNEtgZOYrIdqoZkFScZZ2ax6BLNpT58ekLmEQIHjGnyIODqLGbgROPolby4YyEzsW4rlV7ehagisMNXE6aIIuGVSMEYOtQz6V49d99aatZdgfWWLbAFBx)XtpJJVhg83rExTVhS8KtMRKwwkmPh)l2cT4SE6dXIy8s6iRKyoCmummTmOlKsnUWr4TqyHU5UYPBCa4X3GkNzKFHbmyQ0uvxRGjaw6BWUi3As2rntnhp9an1nMoMZyMhrvE(S6coPBCaO4gXAiSszcsMQZYQmjZ6z1t5ybvmmoaGZXZZjh6jNYOtPC1rLUqthfNXuLsnmkT8CYLPycERogQISKNL53g3ybjfajvomoaG9WZJixMZK(y8wkQJUeTsd0umcuPP1utoqc7zX6jzR5PGHVn1PgxkYir4LNBR0sV8CGjlrh3WydKtNgvsOeP6A6Jqgq7GWCyua4l9TXQjX2zZi5tT12nfHzQwW022spFPnfp58ZLS00xOK9UWN6awhZNsfmhqr)tos2i6P3JLdRem4n20yMX80qNXuxfMkRhieewiLziAb2IIo1dsoZUFSZqh0MNnsWqXBcBvoSyvYxBk1U4xxlVkGy0nhymnm2mZk1CdiokZ7KsHgMk5mU9a3yIj8ncbbAtkNeVz6X5eVO6yWkZTYfbtzmNw6ymnDTnd(iRXbs1NKGrJUNna0NhgxYiOJHhtPw3KzNlnQLNYXgg(c30PcsUuaIy)gJ9hj7C5IKuXfmLhMo7CLtiBg)AaYqL6nH(MsZRGciAdOQOdlSpTSsI1iDNinqpOZ6psXCsmW(L99RBaOWHbSI3ipEwGtTkapV0)CTrRI)F6oMHWddNmyAftnnFrkfoJHnD)I43o1q18fmX2lfAJIOH01pkeDakf(S88KwpqnppdFG6VswBpwDzrhwsWWWImbSKXcGZ1jedY9rcpjJeJ99DszEiQoJPujTfFOAEo)yyKvyRHv4rclPHPOptpnFHCXcmiedqpUI3nvsIe7t4Mjcia1MH4jRU(t7QMNxojqElJsgtfN0lVxiGgYDOFJvPyxBcXaewt7smAj)ptV3FDEMm9kwExUO4NEH7NiOfx5r7LDPLYgXvxW4yZ0lwpS2vz9ZaT5CBpJMUNkaINq5S8ezXoysdprdbLLfKi9TML21NwrAmIImfJPz5z2rc3pR6sW7aPtm)66KEKS8JLl9biBBS8ENocNbBrQNcEgwLypnpi5Zy1j4zrYzgQMh2)4zqtbMgtSQWA8Ji(tw(EG7pn4HTQ5XJHNbOvHHRUorld7PLmiimD7mrUGEH7xPzlW)c55fgxAAgOmIdwGIathZBBrpY4EQyk54mDkNcgAdwwOmss1XlRJAEwRI5SWGzunYdHITgAYOYEsu9lmroOGWtrNbpyhdDf93HKcqeXLojhp7bhGjMbpKWy6Qc2CvB76xdzugkjhOlSARH9eyd(XGniXjoX2j6y)c5IpG7i9kRh10ItzGvjQVm6R108sMHwGDjH2PIP5BxBNyuJGgr6QEMYmPPPdRyhvoHoOIjzxxBNO(xb0Pb0aDUdBjyeiPHgDvwmIqvFoVghKIjIr4pn5Gkzikb0BaFV25bDfQMXlzqMXimHOZtuDaDappVW0rmQKTBgwzC8MHt)eSrRn)wmmKwqjV1PJXmnUMsiYSu6zLqfli0oIrz5ojEBhpwESsxRThLg6yOSbJogU1oIr9m)cPwbdr30jdXKmHGaLZiXMBOyuqQJnBqcanCqvPRtIPr39YIFJVv1WSMIhJC88eixke5oj6fORyTVcgnQmRyG3Me4JmvElyfxAlBbTEoGx0nhPOsGsPUs5wC6SZ6OZr4zqqrHnvqFtosbBwPt9ZSSwl6u)zfs2RrTE5eGWi5ivbDNmKWtNdzY1DQAzI6nJXGRRTGUgyQqmIHPrQxg0jcClLmjtX4fQsR8LwBJS0kEEouKXJQW0IbRS85m0HDSgQWsuRkTKN3f5DEtmdjzEqcyiPQYAetYYog6)iPjZ9(erSm)ZznEqlks8bEQfnPvC4eDvOqi7gHqi2WNdZVyrdcOWf)9vlMJ)0F3cHSRHwmgEmtXzOp8XuUm7ju2TYvTdzgGEwTQdVsjDalVLFmCjlERv2PSVyiX5XbbOzZ7qeNX7ohMAImZtYDdlesEGush44zwGPltn0Ix3oapczeYsYzGwYFVlu72qSxzwh50SpPuEGhWPg6TjgvVsEV0banqjEzQnAoEL6WWOR7CKq0g1Ys6CZCMW(mslTAFhFHpnQLkmOeJOf0mjgAXdTairXbMIYAPrzJCmOuqFMZy1YRgJc1qDQm0gdiq0MEwIBeR(5PwGQPox((1fO4rxcn3OXwAz6wf9kHJrTM5mtE(GYMOaMNxsyhLGnwj(LT26uihcAsZLinLghXEjubrOXBwxddrODQsKy8P2GqJ4yX3I2aTX86CPCIqJ4ekA6ODEQJMijSFOrkz(hv441vsAWc6fAePQKyXFI1USsZewjZJFLmJoNf2eiLgP2ySJHAQSxPXyjAzmI0wJ9Pxiya1jqLMRzjHxwMAYcVDViSiMCI1gL3nIyOfS0OqJyko4tRJAhZdvOYeKbruP(EMIQzLUI9eSWK778wTYTcjmRStEd1GAILpDPOqstBhsTNeFeH5HvYCDIKNwtrLO6ZtGigEK0coTGjQlEm6C4s9WJ8dMq1u1yjeI47IMb69GkfpG9YQtzKSDZqhdNZJ5cJtLoGDsEuljThDQSzOPOLXdiyEFtvu0Xkw6VzMAM0LM2HyOOtRyw0bDymHzs9taS1dCcSSzjqKXWqrlCD8Euxt0NP7oEX)PC9lpx7gMZdSKtf4ScrvrAkEWe0N(FRWlN0iJK55SOxy91cbhGiUirgTxUArbTc1P0jdWBZFs6XFqs4y0k6KoI8iKrmc2XqEwmIhNP7MPrzEA6NKBErV3oox1i5qHclv8aGWqVhN1Ag2GIinn6HP9x)JLjEZJZGIZuVDeZjBltp6bXmPk4962k)QF0(45dTrUlRYCjXIVveJB0YVR)bKrbzb80D1(MsL9jCUNvgcXjV6izE(Ps5EybdZaXaM(yXjvo8uZy838aDg0snwdaS2UuPbDT)HTLILzatmgGIUmRVGIMusZrB3KAVRUa1Sd1zuiHveAOYyM(RgCM)0QjhtwgSAEWwBN6CpdObnmqfS2pTPh4v9cNonnQG1jgnj3zN(C7HrQcGzZ4j9wsAe21ZQNJ35Z5kXqFPkzTn1IPlPKOwjn6(6R53Z6ccwcPspjX6NaK8q7Mz0gtjX0edT7fxcezwF9x1ldu59qilIeEGwOtICD)mqfdhgBsLxogPkNmduZzKB45GgRKUSjJyolZEAWAzwRtLhjI5O7TpNNXsJKZPGkotsttEu0P1tfJCh449mCKe4KjjND7NZPLYrJdAsorIPNkg5mLol455fviRtur1VMlkc5GwolgQ8IjpmZOgVCXfS8mpXuovoN6YOxLlmSeKuXZWVE5GPASGPN3ly6IWBgaTs5aRP3Xz20OxbjcjsyPSceNPApPlzKlbrMVhfQbfvhJnzM4NorsHQt24B5HuKJXanw33DG2iERM5ffmLGP0rQdiyXcl2aZe5Wnmy6fu6GxI3o9fyAC4XSpZYWM2uBhDCiKJfGkdUvziFetDAnKGX62I8NbxgeE02GPd5x8G0GGGkSLPNHAscdq7s1DOdBoNxOPr0Vz0POQ0WcWZ)pM2naRLLYIhcTHoSKZ1s5aMi1TZ0l5gWbXdHo3iNQfKuNbfJxhSS4SsonZOMEmjjqG6KlPBW0zYpRKINJNonHZHdFD6Cocv2WyqXe4gms00wF6jNrIQ0IXsxTEXgTG(zUqX4c36F8gvPpYr1cDKhZBRCLnw9YnEXHzxgrhza2TGjWDp8Ik5rAgDJmp5i7ynhlSeYJWS1pvtxRn7m)buIjzQohxefsM2QjOTmGSZoGOgeTmtYOFTaygNQJ5(yFqdlYuMo1et7r1cinyiYKhofljD7qUKsuEMnrtLPBJVkpq1SKaGgEkoYZV0KCiQFbxxWATGHQNg(nv(dlhjqewtjf7AMu1mp7hGWrUMZcsFscoMNB0R0L8iP8rYFy5SPXkrQ22TscZgCKjXJ0NswhMDWWp4ijslH1otU5K1tw)7wjAXeAoZ(7jR)Dwfdmgh5uaLE6mDJrrKN9ISsyygCpj2xsY6ONe49JKVCY8hwXJaMsEsdyQR0JrZFyfl5jOXsoqPsZZyD)(JvJNuv98CoyYJuV8CPWTIhKvLtL)Wm)(5zchtLCxNJm1Ez6Mxopp4CgqLtZBzB)d(gMwvmn(zQv7Nm)HPk(mE4lYtbT089ThWvje(A50aYME6sA6FeXs3byyKtzbPNnv(dNlztkpDf8uNJAY8hMQSYzsvWItpbmFV8hwQCjOjYXsdPiz(2RYr4UbSbKPWvwPBSJ4qZy2aL174dGgxuucb)0(BNQNVwlM2rlIPPW(lwiZktNAdK1en96rjZEf1qFPXykYZlhW36l6uN(wEGhAZLmIXRgwwHEgrbg3hkjYAs1qZsSeSJqQgnXup0rlwjyazmhZmAv6blqMyqaJZHV(SzRxzfY7vzjl8LSGnntdu8qbJ1fpJ3SEmhTqnn8CTINTDPPHJeFuMa1A6zOHN4oemqHJxH8qdPVZCfmnCbUGxk1UKeLRnhSyu(yoOJrSo9GVf4lKJkcgT4y(c27m2cOBln86iVSopDAERmtMzDpX0SoFKZyl8SkQ8jZXR4DFNrmXydWrKzrPkgXrlgPaDahcph06uMQ8C8KhlnSEx8LMrkX)cMSHm49kLRta24P)PNhtjk((B93Cs4ROhsynrrPrAFQT8SMnz4ROw7yibZ6Qy55SEaTYr9jVqQQZADLxl2z7RtzZSUz1NC494aQB6rjF61sVu5ambsTnjyuh)UqN3ZSVJoEJxqwPWpOAiEO6QCsCTh4lMZKlWRsiKepAwqIBdwlcZIaPy14Ne29M4ybTeqintaYmbwvkylhGVYBrF6oeVBGpBc1cSxc7onBkjvqOJWbhap40Hg8Src3p9VewTWmYs1oDsZag0ecBI1RDY6CFRuzoUXtUryPBDwcow4(j9fTyeiPD1rRmBmRuzM6YGHZtTCBYXo0GkJujNJuEAPA0t(zJwzK8mylxm6TSmDnW1FEWHVN1tvUjT)65NGmwr3k5eYXNBt6VH(jag8XRAmrNuB76FK0RyUlq5mnhn8JDobWKFHgqXPrwwY6x)kJKknYzHLY4OMC6o1VYiPZC5PTJM(XpVD8L1F)a41l5jzsHe6Q221B)qoHMXwSC2oMWoNny)qYHygyfDE6711VIwz2cX6Iq3992B)aW1iNjZClxwY5pv)ZjaEyJZ0wNzDsScq6LUjUbEx4yZDI)MnvHleYdDVAiK7WWVYRkRpn7N(WRE9l)0S49CfVqEKB2R41G4(fOFxSK30KDVmsoYlISoxnjhh5YjH3WoYvR)nRpgVR12TDoVo5jyI49PpVLyo09fhBB460FEZTXOCB4396nJ3RzRQhmdEYKb0She4LmiMsrtRm1jjZS)Gck5johKscjx1bSZXjKC3L(6tpR)mTA)v72FRC5tgx6KBoZxgUkj7DDwgV8oKBtkXBo3U(Ws5Q34fHfz(t5s3e)8(dvZ5D1F7vjf7IQTv7V(H2l2VWTcY7xSE1zR3UkCva(pJ34lsUOXeLx)t)TgoHK)NXB9nYfLY)SEBNi3AN)tKWjt9pZ32)0iw4DK9cipmCrAXR20499ybpyMtUqv5fPAZTQkV8VomI8L6RprELZkxqJuEZpEpm95w5cv(qA(Uqqjzsu1MDr1TqU2()Bh(2N)1Q9RwV843(8pK(HGRD9szQ8xKRlYCE8nNM)jsacazX986EB2n7elEsUzNF1p(2ZN9XxD(Vo)3QwChMpVaRpQu)0EUaOA2PB)9173TL3LUymCg0kSE71)Lr7nzkn)nlUE9Y5NXBIWQ9S9PHxI5gSOCA2SL7UF)18Qm)4(1FH3IGV7MhoGj1MWmYWA6rLgZP8rgpVeBRBNCaDICvB)W8z3F1v74MsQdWSJo9oU(67RESP3j7xUyB183GDG3acfEt4M4Um3yD669t0JC5F29KK6msMWgo7U17xFm11A(r6YxV43x84t53FZd7WVCZ8FD3gmG3L6fUIr6XzBwFB1J3L)4ESNE)(Q5VB36dGIrz64ZolGYh65Z2V7WXl3XlXUF4nR3VNxTCVICyHDwDgtgIo(XdM0we2E)5DFDJCN49InYTT4p8Mf8EF7c5QPV95Z6gioavZj08ZE96Fp847U9s80v)XDB2DOHnHNBrgvhx(zK02tE2xSy)xoC36T8Qt8hUy)6TFP9vMZYAj1snPWicZ3Fb0cB4Dc5SD3VP)J6y5e1nI4Y5ANpoCLBkXMBYY3Sy)Xh4fF4lxKUGbq6othpgYJmK4u(N2SynVQ9UyhV5e)H6)8)QP(PnzzQoUr0WOCzIdGDBPeLFc40Q6p2bEEgANuplAy5Veg7)w1LFLxYFIePWu)NQUTFFWKBnt3XRJmCgzLbIW7wVQ621lNyJMPkAhhrkxWwbkLxSz3UvpGDA5cwT)(fTvUJPByCWdRLrPXoz3P9jTAmLZOzqL6pytEIMXycfvwih2cJXV95FEXX9YDgAVbjl6To25XBMLq0wMb(wimItTyNCAnPC)(bknu5Qo2bAyL4zRPowTEXXDYU0lwS66rwSSffD9)Pj4uQabc0dUxwUE3UVk3uKGy9)9In)5I1)XGnBw4JDd0jRycDORE11Bf80Km)6koEotUKo7nC0A5WFi1(soF8LdNpVPAfvinCnHUUX57y7jT(BkvpZKBa5(kEYAP605Htd5zVF3XL7HcCUD(RyFzhuV(YDBgW2ZmgTimcASwv2v8dNfNElq1C7iKhz9Ctlt378AklyxLCfG(lR51U7p8Ufhoa((ijbZC(Uh6pAdVI1Eubg6(cmAS3fgd7Jak4vfyuNXsOPQvHTqg57y(BgVF6IR5F5(nFjqfbwboZhSLXBolJUJDXYkME4k2R2EyniMwmICABOAWYAP)uSmhfbw8wp)WDYQwVNJ1)r8blsyJlcyGEpWpeKyqmyvhoo2yVWikiYkteYgjA(XBKBh6gP8V)(r0XqswVSSNNq3P8HP)pUBRCBuJU4Ll4L37VDdS9vUxu7nvyU4gehKRtPFT)Js)MBAaOY8Voiu4QQlHyjs0sXt32S8BuHyBwt2vWZqZaQaGU5s5kpEkqbArfxEE61H(S3uTPQAA0tFD3(vZvHuyQr)QsoprfY1dh3VydraV(Q(qGpz1kGA)JXRy3pUMdg8JL8k6uES5hKNIDDlbjduByhzXYf3DZUT7Uh7b)4nyCmq9PnxjxApNNxtnYAml84)mVb2VHI1J3zV1YEkclGfn8qsYjgujSEfr2S5yyjtLzJc(ZBeYbzx2OaI7pEyji8w90N2ClDfN1v4PIUckCl8(Y4T)z9Dx681S)2F)Dhp0ZWSVgOl)0SpnJtSTvBaZ)j)vEH9sZE4NVT6pqhlUiQU7UJUvAqF12bN(6ZORN4vOAv4wAvSsB1Ih(0mOWzw4cSD(wil84IR5ZUB5QANp1VxJ3CWl3TBdK6V9qW3pBiWV53fUt(V)2TH74FXju7URXOXRwVjEfdpBv1vvBPm3NXldv5Dg)aAjy73EuG0igTEuqslMC281KjE3w52LvCm3QJ3el2IW9ODiMz9gSYWcBzRwhgzY1X)MhMhUcRNl(VJxXSVO5Zd3p0blQPZ4UTAoVJEdlj3T7qTx3cxb7xTdlqqqjxuKTYDlwEt)D6Qnl3XlODypK4SS46Oy(mB)8T0NFx2zJoyQ9(QLGFjT)Er)D7opKC)3371lVNBwFmKHtYS8Q17pigmol4EYG32I3yTRcoxBo2QOP4YJxVojFiliCghZL0G(4xCGlYxT(6A70NDlezk8xhU)Y5locaexE)XWLRmebS(pX62InZ2U4ooedTrAYU58fMkzlAIDWW2G9OYWf04Iw16oz9Hxh2NO7f4NjRYRp06tZQRVT2bdy4vjdVUdTWMZST0PJBIUZ8zmbAZ1s81uzHswMzyZFiz7ICMLylKlRMSyiC)ktDd56LGPPNTneXZifRGvz2HDB2fEbCu8hYB)RekLsAflnZJ1Iw6UfWlLyQjM1mbppQt2)tj(tjbIxB195KBL00qs9(tE1l7qsjKkG657rdkE(ELCfVh7Dqcj0JZXI(9bQ74n7Cyd8t)Fd"

	_detalhes:EraseProfile(F.Profiles.Default)
	_detalhes:ImportProfile(F.DevDetailsProfile or main, F.Profiles.Default)

	if F.Profiles.Default ~= _detalhes:GetCurrentProfileName() then
		_detalhes:ApplyProfile(F.Profiles.Default)
	end

	-- Load on all characters
	_detalhes.always_use_profile = true
	_detalhes.always_use_profile_name = main
end

E.PopupDialogs["MUI_INSTALL_DETAILS_LAYOUT"] = {
	text = L["MUI_INSTALL_SETTINGS_LAYOUT_DETAILS"],
	OnAccept = function() MER:LoadDetailsProfile(); ReloadUI() end,
	button1 = L["Details Layout"],
}
