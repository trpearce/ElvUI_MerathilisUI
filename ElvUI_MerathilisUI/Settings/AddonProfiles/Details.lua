local MER, F, E, L, V, P, G = unpack(ElvUI_MerathilisUI)

local IsAddOnLoaded = IsAddOnLoaded
local ReloadUI = ReloadUI

function MER:LoadDetailsProfile()
	if not IsAddOnLoaded('Details') then return end

	--[[----------------------------------
	--	Details - Settings
	--]]----------------------------------

	local main =
	"T3B22XT1AAc(W0xu5zTsRe7nWgBaVw9fuwK2QTeLBf02vwlVuiWiajrXykbIqY09j1v97rDZ5ziFb8lw)99VXWgtK0opNEy1vv5XsIeyp(p89pIpO(WvFyXHY93uSjN)19FkVmBZMLR2KNvUCx(NpUV827YQo(Hx(HfRYoC8uz(YY8Sn8HVJ)j(5vhY3Szv9dTTOA16SJz8VNDQu(Z8D5L3(a)BRZ2MDBo(Bh)WIY9FE5nzRZxwSdJ2LQpSa)Ll1F4YGxO5V)WMShYlxUo)ywXMQLFUy369FMZB1QmSA5lCnwKhZ)vUQ(WIf3)WMID4VuDpgOfNV5t)4R54S7028Yc8olREO6y(w5npvLVSAv5(nB(W1yPKFyF5XLCdTeJX9vUF4wCCi72TlVPC)2L7Y2M72J7k2EA7Y2tR9BVo74YJfB5YkaBZ8SJ3T84(9BowCaR81hV7dxgAcANPJ7x(572)HfCpxDmB3Q8QLv53UnF3XQLB2V6(81Ybig8IDl3VlVE7xH9p2s1JmpmAMKTz)6YSRl2uCSiV6dxg7oCwTFZ(s3PlowdtJRpGL)wy7FlI)TeR3qlJ3H8Jv8fwKD91L5FQi7yXE5kIx9RZDN99Mdv94NQS1tGm4koYxNT6(Bl3FA362fKQDbPAxqQUfeFR1fFQOAF5eZIsEbv3eGtVtvlV(2osIxV7yE5nzRY)Lf)W5V5nV8DV77)LfKA9697V)R(bqk(vGwah)3HzaKd557wEyFv90ycSVWkt1xH7Uxy4CuVXXD2Xtv4eU7ST5KT5CTDtCPbut4cb)h7hw8Z7l3SEbE98V8XfR2Jvjg1B2V7OSbxwwC7DhhCyAhEssYCqSkp6LkB)lTJzL32CVvSA)ULvf)MWB)ZUN97K)4y72UmFdUx)uohLdn)081Gevyu4stgHlv4FvD6AEkV8ZGY8q2H8ssL28iGb44MAoaWsSnB36A6v(e8AaCL)6HY8QQpN9aii2xYZYh)MnqiDCpz796l3u8B)ww56V8XRQ5eClI7YOiIRR34DV1Q94VYZGxkeNAvI18HfVH)JaBIsJ)Xv()J379yy6RUdIQY2cs3JCWRh36tfWPHJ9IT8ayB(X72Vwo3QpD3FZnv5nxObUluVd)d7l2j7VJh3V1JcwwW10HxymjbrgDyIoirhgf9HB(ktehQlsc16yJwhLKa2MWa(BecWlSX2ivyKYAdnXQ0q(Bm8a9ctGooqzJmPb6WqBQB08jcFMCz9LTKutSMut)Nut)tr5uyE1Y(crc)WIptwHgHNfvlpwMvDhjOoDaAqG85d5qm4LKZBbzy3MvEVtKthbzgKelJO7PxcrZyy(u(g(ErMXs)XFS969BQO2jqIVq0a1otkZqH3vhWSYB9AbWpQkRoH5cxYQnfRUNY63FiFh3yJuVU6o8pZ3jQexq9hlp(WHCH3LkrLhC3PdqLWT7pjeFDtXU9qx111QfVUHkTmFx2sOxdRrWdWF(68BYoT5iVYY2C4US6tu50gN(7wHZ6D4)XN1je66hQhNJ5zBLlKkNEqUcxFOw7O7FUe)Bs3NtsbOPp76n4O8Ah50ZrQTBMAEXAXjlRzLxC57U88MFK7spbKGpC8UIvlxFchC4M3FslHkAOj94XID3wjGf4PItWeHQGDnWMS4nV7NbnPJ57Q39d(ykA0whaPypar)kko7xjBRObBD5(d9j9RzQ7Krxtm0PgVruTouKMKT9aUECBNW6nNt64fLf)2x(4)7NYwZLjKUrf8KGVwmcPlQzokOQTpLTXPRzX(dKjauN8aqe6ECeZbMTWMFOp6hsqTgstxkaNiftrfprfGilXHmuAFy51NGmQDvc(hGmQ8HLyQGETipc3L7H(RIDCvPRXyLV5M6JlVb2r0Uug4Qgcmifa3soec49kbVYsW8v1OKPCv(YSvqvvXXheSwlp8Pd8x5bH60br9sTOeENTAtg(3Kxa)6TGBZhvWzRx)UDv)YRCqm)LccoT6xKxjV9XBoANaa6XjeaL9RncGc5Stg96JqhXaw0lZQC79wYDUAeYvr6Ap1KhDsQwI)Xbklz9dagkO(RLL0tMGJKedZYAyml2TVCRdT(dF4IVYgMQJabDInjiuLMaz)qDcOUVion0AJctnjMWuvc1xerr0qFrAcuKaDHQqtAmu35EhC6QIe9gv421nb8s)xDmr1mq4P0bboQrHtSd401UnBZvd5gUirfehztvQiJkXOtC6ZwiSVeolhIDTVPthAnBO2XhIvqvXArck1RE7YYpCruCS2ycIIvrktKoQEuV5eXb6PkxelEhE7Lqwly5Qvn5jxSMf4rLNrfhCTkqqe7QEsco)xPAP2zbZYvNQeqboUdHgiBtXT7wUfsZlwkaEowkY5UM34FguvurJJmR6ZfhxD3sQTHAdQODeE7hQz64DGg8wNQom9YSZFj4dllWEnxu26jefAsDkAAGz5oQv1cPCNIPy0LvU7Tx8)bTA6F3FmCkxenE81CI(gDgj2V9lFdWI(lVnFDr2VCb3W)shNXloE8M(d7g8tLDGNgHEejoAeHQDgtxAUop2mil93mx3B(U(wNHSTKNT4tJ(HIFfsawGBlS(HmbicIVijU4GCyZjiMuec85LRlkZx1AzvhpHBD9s(tFjxvVKR8xsZjEPZCcy4np6G1jT3jY6P(Q3zRDz7IMxwyvw1bMzPtq2fjWCnL2ggLeKQtBz7ewbbfXl7iRBVY9yFEC1HTOgRPVBbHKQfo0RNLdTvFB7b7L7Pb(JMVlGmdToWgeaqW4VKudrMaHtcI1HPPyc4)xde5gllCS7K1yxnXUtaQhfuXoiPTsU3G(2tIbo8DX8(mFWWN7dg9CFqZZ9bJFUpO95(Gjp3hm95(GaG1Z9jF23nQN9LJ6zF7OE2xpQN79ZXEQYwUMQ3Qfh58mYxPhW98OISi79szUo6MxauOeqgkQOZ0Q6yE9Cr2x(4IJpSj)lF81VwWhNtzhonDEm7aQ4Ei04w)91lh7JPrRONum7XAJ1xNxbKba2RBHxldJEKZjcZtDNioq3O()sBW4FlSmABrhS5VsCjHVoVoZMGiyOpkRbjqdcdiy62Nf0HMxyHGS5LzLla6pXzdRYPoTpS4vNF1zV(nlwU4QZU6hx8YZE)YF4n)43(6lx(nV5DFZ3JvGyDW8p2pS48V9TNF5vTqr5Gp)t)QFybFGIQVRy96CzTv7AXRASTKhrxmYFm8NEgry4uPdDCUxOw)(IwJU5)6BEsl7EwBj)f6l)tSqd)h8c1DfD1FIvM(VlRmAhz(nhFQ7Bhw3gnR9Cq8oF3chY)nGiUT(F1HwagqCFFmIuIvJRAgYFf1Y9fqONDM66KMjRJ(saHIBHBqCAcLKHLOy8MarQbxY(DWGPp1yBvJDnnIJ6HL7R026ZSJJKZ1TEAm4)TN)Qx)JVDe3EhU)Eshk25ogWYrcBXYLv7Yo48L5TLzxted0BPVSbKuZ5M3vG35QNaTo84z3GJdih6GOvOZtoot1It0wLnnmkgyxubuWtKvSu7RIJtSW4QKW4qTTwMKQ1BgV8DxD17E77F93(DTgQod(UJIL)oRXWo4gXiUU1pTVehM)NcMLq)6jzxClw3b6pjcAPoRHaHvdVPEgqmflKKRdzwUQMZ56gbSxpgBCFc(bxLhB4C7PlQ)RiZ5QtLWGMJTUc3JpjSLpj04I4LZlDnonqoYX)4dlUidQA9eWFSvFEfdyu)ZM(RuXII9vfRY2))lZKFUHBOSM09KUOhU6zANS8OoyqUnzn7Min9n0QDjaG1gw((MFqTJCE5GNB4pEA79UbwYTEuGUUirzsJI1jauqAKnjU2Sc9S)MWz)nn0VoR5UQMCf7qhPVZ(ohjS8xjvT3VvvtNlXdn)4NZZ3vlzxw0p0GbkW9dyaC7Ie3sN7XADq3ehqphwVwFyn3f5Z0y(BYeA8LTXTQpcUg7bhOA5zSaR9DSZvkE75QMnTyDzn52x(iqX9s549lFSB)vpg4gy7(15BeuyNoCaIeK)nqaYilw9lNTQy9llLGiGFFE53YWk(I3QPhH)C3tlbc8xo))6pC2LlE97Umq)lV6DV7vN9Qf4yAZ6SYYSF5BE3BE1zV)9Nbmi)4IxSv3mF(UX3nMENgUFq7JOAEPUh5yZ9CF)0WaoO(3FXx(O83c)3BPg6ta9g6C1DvarH7fFzhDv94nKgO7bEmQJLVnh6iUdqvQaPIJkPftD1V8gqqgDGUv5fhVnZl0MnRVlm24iiTlkoc8xMyjWwP1YD8jS6Kpi)kjzfg5QLJTkaheNlB)GYY)SXxcn7Y7aV6ghM(UT6fLf57wxDb9p)V8JV(RQ)3VPO64x9DDVWeSO)N4q78Tho(G78AGK3j4UKFmq38Gd1W11oWVvMBdRY7xEDjwD49w8pn8UNERSNSxrPyRiu5b9KIAT2aGnjiikinqhN0jfDMFt4S)MipdoFJ7MD3PTxNx2TS)dlwZ9AtjU49tY78Lp(pj)n9)(Fz4U2xK7JnXxyc160yl09gPbsV42WZ6M2jus1QaB4cTHaUv(Mqo4jVRXnLagiGy4aK6ZH0FHdq0TeB1JuTugfbD0gVrHoAU4E)yEfFwk6RCRLQFPjxGee0o6AVONn0qmHAZ)mHrFjVKML3bU7MSQJlpuT0fwnpzd5hYWcb3ul(N9IGNqx4qV(DIJuBteIRgczEU4DkNzxy1bqGfOIbSmBsAnG56OpEruSn1OvkDSnYgd49oeyEPYq35QAeqyhKZw)s3U8b(DJcevavh(dygbhwQdjxIxLUNw1jsIMZ(MV71N)tNtd3V49N92ZPCSZwDxbEDAB8x9D7ll(nCFKTzHZD0s4qW)CPltz6Bp4Mhie224GjKpEt2R)M3D5IF51x(tlHnIfBwEf2teO8t4mPwNX3CLfnW2UsMfv1c3MmskdDN)Y)(5U5Jn6v6scG6i7357JQMmnH(WSjFXOCRk623bVDDeqhLxbxVVsi3D(57N3)ZF5JTNSUhVSWL3dB2uSUYFmUzt2TU0APxgpWfPlLh4FZlNh8YlG6iWuhFNUWmaMWThAmBpXtKN2Xx8vQiNr8U0QRx60rtZVJ)ly1DoKNVEaD0d(4t(v))rfUqBJ1SCXIHqsHpOK6ZQMiK(O2nBItaQ9ytysKnOX7FpSCt(TzReRRW)VyWLslSJJcT18PWgQiqdaJQm6GuWO5mGpYzAp0FztJG(Ravsk4)CM2tRRce74R4M1LVc0EFdFutsucZ1NGwM2FTDvad4uQyByyCawTjbod5eATvB2FcACCjUzxcyIj4(8DlbFBjtLID3kEOqsiGMufa0EGoQjs9n5qwBsNfg0LPe6aNpQLKcaSz5q77M1IFJwNNTgu4CM2XCslu3MUPlRY(uUCj8szDsSgquYM1vUau6KBxNgul(UF8YRo)991N8cMRw1jnO20K6fsgB9Za28RF3SpF9ZQCp8IV7S3E2LDjLiFkh9neohfZKaB6z5TN9TN)0Vw)j7ho)QNXmfABMj5LE17)Xx)QUun0QcsLNqE3O0iveK6m50923D533(ITtxyCQ)R8I29vOlH3E15ND1399xkmdtSyN71WKT4XULgSRE)7(2FS78Z7iq3FxoEx9Jx(9x(UFEI91ChG)W7F95lU6zoxJUN)HZEZzV61xo7(A45WzqOk9B5SZxGMcfIsMEXcI3AVo)CUVhTAF154EOp)sZfEtsQo3c)7OrVp35DWQ(hV8BF)7(XF4hEZz)REt8tF1C(p9UV37fmbHPUjrETziRp)YZF7)6ZKo7yN0ebf4aPjxedXRkTkXeQSPAtONRCW21QsddGfLrPApx5ymQaDsCmUida(nDlk9EcEUWQcHOzO6aRiagiTBOXHPrXxwJXij1Z(gJYyXnfgFRkksG(5g6(IPQxGwBymuKeffRvbPD4qsO2aBe2BHjwBKU1LV(YSQZHuSktJtnrKajmQDL4atE27p)YZw(VE(BEJhdxAtAExF3m71FudTt9nt0qPzQAR9WbHvhsfDHbj6U9b09QeCY6uGeosWtzhkyRdf4frjHaBRcGNnrwCR2UVhjs7cCLGdECheMAtSkt3LtmuEhQ0rbHrq9T7kiEkJpTU0QLxoN)MlACniuRRSHrMianmsP7gxdOVsIH(CSrt7FDn570E8)TV)8Z9uq1KQTTsagkn1DQIPcBnJ1ezmMaRYZg6iaxjnu41IcJ6mYCOG1wGE1Ylgklf4DTaIeU2GSbqSf5X8ynPPrAk4tfacvp)GIfwAqAIjcgHa0YTB22ioPgieewlfHbrzbqmLk03DRyVfBscvgG6obW0gq(2tqXlGemL13K7xe0uUbQjfDIRmE(fsYs8FuEtCSfyTGDabHMyW(euNH180nifa80HMqBOnqzB3F90JCb2)jbbeBii30PDhDn8ldPx6IBZLN)Jx9(ZEZewbfmHivDRa8gfo0vzdbJeoGvTw0ztkBctdAdVwnK6x2KeXsuqCLlJKuaL7ZwZ6bQVJjVB)Xv7l3XmYF)bXL1x5IKrDKzAn)HJgSfPYzGUZMMBlZoCxXkxMirlkhvskdtetyq3T3Mx2KmMMUe50LpR5RlMYSlMILvsiin1wKib(d2R6YM7plgJSFTR6ikZwxCQIMlv7D0ohlu)U)WEwkg6MF9nmUfskb526VSFAJ3y6xOuubZH(oY0H(g0q98qTxwKc6hLoXMsJcuujbnmivmbLgFZer9MYmNrVnxZ9taK6iOMNTvcb3UBkKea5g3DRZLjYR)VDINnRZpwhKkjbXHHyo3hUkB1DIdf3Xuye3jTgG3DPLTAvUemMMvs)K82rJq7tDLfMyKzTZdQhRs)aRv17Q9a(5RehV7N660Ivx0fBc)SyMc9V9Q7)tNp7IRhHPuFEnZPmysfoO36cX7Ub(sOvsUQvqEnCSUR0zZd(GNmZX7xMqXtV0C5GCDwJpt2Y3e88)u5)(1D0Ts8bRPB1MG2szACaywKxMVRGUyCYeBVT0bN1ReoeFK6ZZkYlJ1EatbiHq1e4thGN(sOyZ2bpDiU0x08WXUNoo0d)SzaE7HdnpeEoMOIhu9igIn8z1pc87(pl2BjTpChQB7mBoIoUTGFQ3DQPxdrpxB1XZAEmJmh(4XX)bmjfd(JD3n(P9onc1jQXNiJFL0hB90Ajss9Jhp7n(ON1yTpMDudVB8iUNyH03MOlnjQhHoD0qh9ip8GrwhBEKt8rpC8Jr(n6P7oqAxgjZ)0pkP9iYW405OTh)S2GhBHm8X9E65f7mKWcgao)HEFUnRA2v(GZevq48xodgu9SeQdipy6jn)b9qbo2Wh7OBWq79WtqtpImn8573bSQnpYczG4Sy1Z0zdqEq8JWRm8sUJx5PCQ0LE8GJzRgqXjzD1UhwwTsk)G8QkM)mdkgqNsCAdemlQnsdvaQ2wxm9eCqllyrt6Iq01dloYhtXDdoohoWA8KxxxxJWeH7RlO3(fbFZBjrWPnS4Ttm9LCNBCwNF9PBU5dloCQ8aJOO7FvvS5tmTBVrIW(MhUPGRW1zL3VVmJLAPRXfS4wMxgmEs73i5D9IhYzso32KcWjYA3jPZh2skf7asneTS0DaQRqchs1B3S)6Sx5sTG61Ez(QSHPUIRWmQHP2(d2uCt(Y6iv6aSIZFjriBBXasrdxxyB14R5evK)LpInpUSRY3LV7lFm)xX4uWHNw0OmksnTaxYmPq2DVRkTZ2D8lFSchqatnXM5EoX99LF5JzNUbW)VVc4VKb)Za9CE5)8x(4VvHxyxZJhttWUTS4MB(YhL373Y(3Y2uu)RHS4f3NXI2odVPSoV73)pC1(kwnBlYPXdnJfGj(7)nml0mJV8rAJ5(7B(DSgzYUDlUl)1MFeOvZxD3ES62JT8U8nhVlRuSl0n3PDNmCUY38BWOcS43YcAQEme7Hl4pHUGqA9bmlpzMUjMC4UCy8jAIAw7XoHXsdHocRDxr73yMLYNz5bqsiw2uj2iMgbbjMWK68gKfRfdwNVb14(knaCChC0nBWHsDYkU8QV5DVSUZz4yv)8D5KY(B)Xx)Mx5V2pbgqb6BbSt2L6gDr(PokpTla(RQhVUoFGQlZAPjx1jazNbGDvlBFlsKWabQpE85L2X0YVdRWjMlzFx7oZ6wWnRvUWDRvYWqEoYPwS721SdyadQRJS4Lr0qcxcfE62LhWqwSIPxQ7uVM)Lrr6UCibR6ie(KZ4722TswYIE(wgVQ6BoNj)bZ(RjNi)1n1CCDwd1APHREuPPPRDzNFNJKUiYefKMKgRsTjrXHs6uQ6Cv8fMilSOpsPuXr4VYFFyuNhWUG(VlwPmXrkTkv8bfgKwVjDrCQLoM3s3PLAm0tuH26c1PDsS2iRngJeJLOs8tghKUjrNASPq7SYaIuPvcqc12jjjjrhAIubyTgAcPhkJcA8L7f2GWOiTYG1FCOvA3ayju7tYlSjyiJnrHm1dCZnZ00AhAFbwYGTikjWMI)Nw7E5whfFHbVVnoimvPtsdJcDlDx9fvFgFPnjik6fPSaNB3YX4NLMAGno483izkepxRxu4OqPdtbMsfDIztOBf)JJLKjvhGZ8eRnnouYAwDRRpVWqp8fGdlC1OvbYnIP7W6svi2NrVWQTToJ7ctyukZiaG7aw8iHmik0)cioiionXMKQsJXCxFeoGsck6dyQCBcabvtOGRpiVuRSgJ(fPSW6CNDxQPdeFrcteoXJ54zc02xeciB9Cjo2XwgXbRoniIPOQ7q(O3TeeEzbvuAG7uP9wQrCypMBWYTVSWLgYN2jfsEneaMqgBZaV8D5Bo0(dTez6IZV8BENSvx(Y3F(zF)RE3pF5sPZTC2p((Zwi(wSTpq0mbGn)I39(V98Lx9Jx9U3)6ZEdFSMQL41xEX7A)fkxl1jhI6eVjulT7AkS7AcK6AU4U2RHTq27JLBQBKdUGu7pXVLviY7E7lp7QLx963Eoh)39tN)(ZEZBE1zxD2sC3E5RV8BH0u6EqMPhquC9wT2x3lZ2TdQmw5e(m5Yw7C2Zp)6lX5XssSS8hVK)HSFE1RxC2lFZ5lF3LY15YF4SlpxocQFEjQmlF7zFVSqEzRhQ(muDdjIllwRA96Ow6Bls34y9sbbZgwlBXbXJFjofnchNqTONwVevuc(pP1D0PMCowGYWq)7YE(LqZ3YYm8(TkrL7haQpvYmtWq6w(3N)q1rQqOZRvTQJyAWxNx9D1CU4W47kowRbKzNgo9VVythIwh(UbUltqQYc0OIloorCLSqrAKfQq5)QL)Rs(VbU13bESiEpSxpYWd1xVKWOTOwy2032QjCvEN1pbBKrPUPy1wUVdsOJU5yY3YPNwp4T6(X9EP581PxMM175)JTrMBTm9g7p6APEd)N81(tDLm3zVFLzx37oAyJ4Zi(TusUD8w3tdrQrXCm7APAoihwJpVLFdHlcZjiE82osMRfSXuVRGbyP1HRSuZUMsFDJzZphAo8)XD54zF3th0MVcn2zgy89W7H7YQY7M1IQU6UYB0LoOZt1LNEHCUkVv3awNmKqLyscuuhyJb(PGMsyrgDANOxU12R2YhCO0eWec7PgL6F4JvP5F9mBusdoDALSqytd(DEvuRR9Dn9H6G3Q(4XOcu2qDyKgkOtBZ0Srtpx7UEcsTytVzvASenLAy9bvQRrv50n80pUZF(hyzoJzD9Z4nC1suJDUp3NxYt0N(H1UKtKvF3t)WH11RKppHezONkqhUwM3GRmVJAQO5U62L4tSgSY53Z8UXvHv)jUCEMh1MG)rDuRRpQDY1CriKmFx)WsxiJDvrAJrKpxwZhv2txzo8Hf3YMrzXQr3wTDEV2RGEREVDv9grnK)4jE(j4pEUVrZL2Z65BU0EIhU)L2t8WJ5p6dwkzorLT5nFWexlnS1JK77Fzo6(YvDCnQgOzqgnSZdghtxl7K95nv91O10UjBA2KnTAsxs8mAfs4JpUEGUGX2vlTZvRhS7Yv7L3w)2kZ7O9yZUZWSoonnoqY7fDJIV2zAQC0FYkNu6Cln9h1rtN)5D3G3Ql1o7TqtDfW6kocgXd9qbATTzHowWONkWjeaiCEx37E4q2610XnmBmgTi8iuNJT(pad9izQ))dyOhEdvt4fRW9PjiG)hJRJt2NWBkix2z4t(ZPim76Q9LJt3)jvwz(ZOCJABY(0TpNX398LfhNyoM5DIK3bMnM9SGcPINf80JUOoDqmJ(zSEmn75QN9Q)5Ifjk(pbwehL3ZgDXDf)bw4)Dc3st)BX)oASrknYaJSrPjP0gLKyGgVrg4ecMQtIRex6cTHzqha2CQQ24r6dKA3l30Pl9)z48wlU(CZEg7KJsUehMk5kCInwRBCVkDWbZ9SygjVhwExr1X9Lp00HRKKBmH5GjZDyDc0GkzDAst6jpXqw3ZR8YDyDGkHPLzKkXqVDk756oELx5szSHgCWOHMS0ijjEDpwVKe5cMiPgyMxsCSwfNg3(y9cs6fyYWsIvsVnnoUrztDVUY7XITSSycS6yDCyGP9XS9ESOeTnjsPdscnmwrTpws)hZYwMleicnDSLC0(yP93PmrVXzxSnjMo0T9XubdM1OaaGmf7dtI2BpOu93ePM0WeCmhNQscuDRov)lcGpWggfgKgct(TncSB6UvEZRjGUNxbWs4e26nE9VksI1mOeQWavOjssr3itBNTY75WAlkGPcFkibAQnjN)Z6VFvaEaUEt0kBCO3(T)TrIf0rSBghNOctC0DUXB41reV0WtgghzIc7gV0bpxOf3wwBAAqqI39HoyW8ggheNeLaROb)q3(vRgKS8PH4uHxWXyjK29CdymmATZK8uw5yEJx)7ddtYFvGjbmpj(3h6b3hgBsskKVegga6uD34n4(GD0JKiDm4oGk8U7dD)7dmwksQeW2bdM4UNBa3rmfMb2mG)m0gRAwFIq0dSKetzxNOIjn5dUSpgl9qvp5t8vXWWiBWmNVX)n1YNydvyg5twiTiqfGJBg4j)mPpkXKYkTuXK3VwurSN8PlIXUdeVmwf4AkWl5(ngC5GJBW1NI)O7kmS5v1jmelAl4P8YOCkGsHRDWJPX)d0uXTVAu7RghRalgJWwCIxkDFb(HX4cjmmnILwGQ9vnnVk4lc0yLznHqWGFIMRsyuSWmcPIGxR9vJBlGfExgWBCCL22fWP4ifJ5hogHvey(7UMTn5GUovckhLuYvDxRf3aUFcQpibhhjECSjTzgp4NvXKteIyt1DVQf8Lwlj9JTqIQAOSsO3jaMSblfyrQeysRRVcPWAXZdHjCnfNMQNt(50KuJLFcYGeOHloespdd8LZQh8Crr6egF0qCLhKmN8ZygCS0eianaME6pVduLPirxKkLAftc6uxmq(PbAePuhdRjBBuNsQbYpX(WQbnVXe6zj4y5N44K6q5Xd0Ce7T(sgTFdHwFDkRcgpnYdKFgJnQgRoBkKYAsvZj)0aXRqhFIjbhHPMU13a5NqiBmyPzuU1KIV750dhVq(iK6c7M4XYDscgl4b6t7dmYq2bdjqm20etD4sBe8mRCNKuwvqyNdX9qcrKRtI4op0Afgvw(3GjnyOCNw1StnX(lF9eREj916w94SpLDVFdKvNyC8cXDW6MB13DZnXBpALAcsjRM2eQy57K4kgz)v6uNZX9bGAbxbRLiA(pUu1U6m4jpNBWmn5B)ulbB)dlBkKOa5Rq0bKq7qIM88xct(2pXsWefm4uaCMeVSjoojOb(AZsyEu4XbqibG(cZhOGwpTCaDLOma8vaFLDe1gbWdfg4WicOVS(VQrl5VqalUplWxmslhMti)obeZGuhAS8E1Oy6ehdPWHo)GrA5Ia2hn2(jq0RjWVW5ybhgAyrVZbOJUVvlh0zeefdHfPargef0P0aq5GHtjg(PPiu5bWUvlhEHeXmJiQ6W49QgdnIXWg0jvGmeP)fuscS7G5xda8OIBF1ldfI9wDAwiv3Y6TkIsKBRPlPAVSSmqXVIvBw8S4)NKgyS(lrjhqxOygveRJMv)feRcIYqWld55w7S4)TqijaLcr0adHYmN(lwwKHagjaIyJcscMt)LH4caEtSkHuev4y5Vm3ugZr0x(lUVSSxNbDHqhxCqFoc78CeSwiTucg4gTjEvKlRvxOkYWUJtqqOEmUpyfsiHjtSljj(qgT00iTuMIQG0GX4(W5Hw(KOaPHqHRFngQb6lc5iHLT4yCFgqhXEbctDhCi4HaloMkTX0QIit8yocwuRqFd48JyVzXJSM58vcX8fs7C9WK0WrGltntcjrtFI1NAfG2dGUwn41sc9Gb0WrGjLUmpfMVdiRwthcmy7ngwQ3a2a6BzAs3xJgiaqZmjtd5oAVx1GdEWKPGQ9GipiJPTT7jykjRRIyWmzCF6zSnVkwVSbvY8dBc7MPkvan0Y8TctBsq77EjSt8fG8YN7b2lftqlW4v2AdLJM4gNmmfn5eicJiDqeZYkM6AZArn2oMiOJnfMpwBTW0CuQeAZadslGygenhIWii3meOZsuKfmmCoeHSGVHnWSg0boZ5rekmlGDofMhWQzEoeHmc7q5dG7KW(tIDcilrtXXhnaXLM1YDkgiAM8axrzEel9G5cePuamWjmY4BPNL(Ikiv(fojL944HAtCEslvaCNuFDGqeSrb7RP56X(g1h2stfs7dnHSSUJI9vKLA43AjWAOaE2KOrC8y5Om074PGcdMd4X2cJXcPrxaPEIpHtNLEmDhjvoKQhe7z4eSVKnPtGXhSNt4zlWXd1tW2tOxgJHeURMzLD8oi3IfumvQmIJpgCRXq7g0qzTkxJjkT2xpqYfuiOsXoYxNqlhVw0AdrJyLPfmInVkqwaTebk6nHaTzoTIWKPaQnHjzyIYoJwXlHLbVirkV)H6bNMUAk74G8B64pY(O9NPHCTSYZflQJ5QFc9BXt4ydDF9BSxfWgLQf4pWKQh441hXadqYcbt02BEGqMYyDTJxX5JMgfdIxy2ANJzA4uGTjwI8k2iTue(Qnq(e3XIfcBAWHMXK7PurdmlxXMpICpghxF8gNgk97ai2omXmJdAHCUisPKela40T3cdeHLYRaiqeYtukt3Jfp03CChAz8BbDvs7Jn0bTIBETeHSknP7QVN8RlHO6xOcSJj(IzpHuBSq7H22tGFWaOBqFbKOcwa6ff7SqYsGafMhZuNvpiEdifT8dSgaeKsLEjQzjfbahYldq8SXbeoNceqRIdkGGfactQ7DBtPajwtmSAmEsteCwfiXGjrtTJysbWL5DPaSjbRSeISLWkM1LcyEbhcDok9o)SUKnMTIAaDlWayg9CvWaiYqypipugQOo2ZffdDPawFqOzaDyGXNLFGlfIbPVIIpH0r6HVUNBW9bMrmm02O0Ek(h4s2yGpnKoHKhF2o6QoriuR8qzikRu2z(gUgH1dbsXUqJnPVTZbdfH4n6(JTQ2XR9Tifi4WbDAeORdz)eVp(7hr(KLzeVcsAOYZe)(wtceRQfhmrKrn9LCFa4481br0cMUyL3Rcez0OsXwTuhHKTVJxPuE6wrtJq5gtsXHCke7ebq44)LoHJxHuXy21CyOESj(wZcHmaaoBlmH1zh3ahVgQOTNkiRIFMf9THooITaBf0NaJoTt44vlnNKU7K4O9xWP4DaeIaaIhh9HJC8k9cTYqsiASS16HAbJeDnpRucGGPBV2Pogum4eg2mef5IMwR53GJpgyKXvgog60a0641agzkiMjwQfd)xLu7aaGstOfEZAhaCqmKgiEtpGqy9BtsGDkKYwb(TOqVGf1spX2DeJnraXkf6b5jIgwZ2rcnDqhmgoojOO87ijopHUtQOMGELkXpdkl1U(itFjS8DdO9cgtmJWI37gdt8szNxjiKbskDKuxz0ttXTkoJ5vPN)TL2lumfctibJHYZWNsXsqjmrwgh67BCQ5peQ4PKdFPUD(5akn00zVwtTPq1w1b1nW43qXgP4OjcI2fmwNr0Upm3Guq1zG10IcMWmGal2x0tcHSLcANtko7TsSdIsmWbrjZgynAueXGNWG)6R9yOu8uQHbScGoYO92BdLId9FPIHGrP6EZ7aP4qNlUxbnjJhREwP4usfq8eG7dAmL3ZnqRAmZUjIXgIMsmDiKgeynmVKCnjH1jvD0LIMiWA4sc2Tfcm5SXn654F9ih1NAIyxNIEZZZKaDV7JlHYVxOC4IchDdKWpbamGySyG6Ir)WBad9AfphypfRZNbHdC1eopXUZcMryqGNHSHdUbi8VqObngY6SEggho6gGnQmms8BBBQ36BWnai0ub0BiSnT5jPiCyC)bWA6DnPqM8OqcTdCzgL6WVDUXQEgghMmi5fcyxwZkHFDA98g7ubbDGVWG2eOunnsWpNKoqx88bbfKCHu8MbOLTSyy81fZUeCmJPo0Po20yge)yAqpeWbQS0EDnlOdaIIaKiyYz0e2kaAg(uSA)S(AfTqWhz9PLeWc3X6ItKqurgRaMnhEc)OYdidWHSY1H2h4EyO6ghqGPqrmrEYRt4xHjWfaeWKCsnwxmPhbacWidLYsrq28Qj03sgiisWZPgPl2kYjytzayfuoWdMA14rstyMogKbRCKPXq7UwejaX6wDSNWAyQliefxSr95XJdcAamvJbTfO2OudVxnw6F9W8Huy2IspHZWOTh0R9X0YAx)BRXrAtrMnvILqKlGcqCZu68owghQq2NbCt0)LXZMyj4bmmrgKwMB68jwIjLbvdlDAOLN)qh6gSyImcyvGDwwiUzoRyaCrdU2OaYeRlo)1JxFUDMUgX0xEKW2gNmxIL4AmVPe)uaR1XUNBG(pJyARIXpXg4L4ld0)XOgatD4u2pBd0dJaf4LHHBaZCuuQxqxgO)Jg)bODrS5tcrmQ5sSe8CgXQA6h4AhLBMq)hWyWRbisnGndWW5sSejM(mDKbnJHvl)mjwc2MmIPUofASxCNgO)JOIiZidie25E7Jb3hXjIaiRemZeVZLHbEr6Baq5BqmDuuNaTb3hgMRxmKzmC)(z)XG7dOjcgBadOv2yBC397aTHw6tmrQfwbr(ZB4aCvsL7MyLbmqn29QSZeoHwK((xfGVLuJIjSxSPj)iEoAryw(rfb0LDoFHw3SbH4jFDg0AAwhXqll1Uh77ytJ4lua)LEIjCyY(XK3ivByO7HOhO61pcDafotMhP(N9qQh1PKJFvRWHoSGZy9CNkG9hZQcpML4uQxA81OZWqFTccyORdhVwVfCCOecdMPBQWypSDTUtnsI2bTMICDEz)caVaK7G1aIF0wpNu06ovqPr)0buWq)I7yYLD)WgS(Pjd9mbo7aViZ8HUWLaSym6U00rQNozgNNMaD(C5Pyw(0l15gqzdDrWaoltnHuTFO9ud9)cD4nDXbDYSAE)xXaXQyWYm9W5n0)vSfNdfjeoLYoV)RIzmUSy44h9G4Gz9FfyMyAFeZgSltfWz9Ff9NaesdHdqtQFk7maPnUIiTVgqsmbM45S8bIyczhagsMmqZzYCw(yWUijIzrjogvMWztjMeIcLUjKFtR9SKAukXaZTe7ib6oFC3dT8jG7ynybWO6NQqdtPqmRmJCzIiJbnywlFORWyGMGOogqH5S8XeXTbJ0p(dTNMD9qC3kXDjmAz8QBolFyVOLaPP6yaSywlFmPmMv4aMjmuSV)6gCFq)jcAuBeTW175gi53a(iOGGSSQe)u3AGKFiEeaYa2mn7HR6jW7hozopg3p0ay5ZwrCqI0sFtE(cQtGXs0Vp0ytByNpLU02xoDc1zduPaUleR4l2tXwwlBXUmju9vD1g2lium1YuukLGS8HkdXKSxqt2Qypp5mG0HEWZsKCW2zDSzUe1EYZGXjQDaDLo9kBK2ehpxIABOOwndvagu94esSD0Gyla3h7UuJXZHddOAKOMQ4zeVWNvQkmbcemmUjmnS9IW1aPQe3leOgany08fVexEyMHLqCr4K3atHuZJN2qJtdICHexpBIAeXYnGHyaluOhB2enmIzic03OOJkT(J3WGYeW2qIkwXpc)(rlzyIbZK)r(UxWu9zE)jXS0pHAKOpLmrZHNoH53eNxOLu56XltINgK9CQPtkT1Dv6Ptu7e2sVduwIJXpX0hMO20zyPmnByyf9U3givL5GpBxmmdXP5gZHNMA6zk(cas2WypVzmmrTtJLmKfwFZUaTA2e1MgtdC8HSLZehnry5JutewE9We0lWLKUazmaIy7ln6rsa7yIKNsSLWk77B8u2w7zF)omUPL(0t(KODjvXZmCbO65rEQ3HHac7N6CzpUhosgACXUA(DRu3loaYNpXqWqYGK3nRrDWYKVPLPAjrI9CRotSxGVmMXap1h4FBCaOZQS0lBAQaT3E1qLQw6nzSJsNioarmR8XjmBHsX(Zk)ecWUpeZkSArG9taBWer7Gy92vxaRnYIbgUqMxMemETL39IdadejZZylDarIpWxwtpH0j1m9xS2X(EaGPXHd1OhYIlTV)4PNXXVhg83tExJVhm8tcbpjnSuyI8Z8HeL4SE6dXK64L0twjXCeZqXW0YGUqY34IycVfcluTFVB7hha2LOcIyg5NObdwGFQQRcGjag6BW(i3At2rftnh2jN0u3O)AoKzEev5zdBk4K(XbGIBeRHWjL2jzQjlRcLmRNvpvmlOIXXbaCoG4NMjaX91oLkUjQ0jk6O4qMQubJJsl)sgWumbZAmdvrO37Y8BJxSGKcGKshhhaWEy5hXaMZK264TK0eDjALgBuuMEzNIQnhizVRkWs2A2STSDPo10srMicVSD8tl9IIaMmpDCJJnqeDAukHs4RRziczaTdcZzb2b55DXQXZ2z9e5tTX0pfHzQwW022qpFP0jp78ZLS00xOK9oX67a2yMpLbWCGa6FYjYgrl9ES0t0SS7F5hZmMNgQqM6QWuz1iHGWcPqnrlWNiPx9GeXS7h3m0bTrHtemumt4QkghwPCA9P2f)6A431xgDZrgtdJndnsn3aIJ0OEPuOMPsoJBpWn6zcFRqqG2KYjXmtpo75f1ygSYiJ8XslToNw6zmnDTnd(iRXbs17LGrtENnc0NfgxYiOJLhtP24zZoxAul)IlOz4lINpvqIKcqe33yT)izNlpKKkUGP8W8zNR8nmHXVgGmc89MWqtP5hsmiAdOQOdlmpVSscy97hPb6bDw)rbmNeDSFHpDDdafomGv8RwNLf4uNcWltTVqPvb1))u9mdHndUqyAftnnBIpfoJHnD)I43UGXQ5tyITNk0gj1gs38Qq0bOu47YVyhQrQ5zRceQ)szT9yuPj9yjbddlYeWswxaCX9cXG8bDJnKrXyFBVuMhIQdzkvsBXhRMN7pgg5aC1Wk8WJLuZu0NPNMnr(IjnkedqpEa)6lkjsS1JBMiGauBgINWM6pTVAE(jMdYBzuYyQ44)LMgcOHCh634aFSRTHyacRPDjALK)N(FKQJTmz6dy5Dfxl(zq4(jcAXvE0E5y)szJ4QtyCSz6fRgx7QS(zG2CEThst39faXVgmS8ezXoO9dprlbLHfKi9TMH217xrAmIImfJPz5HMjc3pR6sW7aPtm)66LEKS8JLVMvq22u59oDeod2IupfSvz6zpn)u)eYQtWYIKtpwnpS)XYGMcmn66QcR1pI4FYY3dC)(bpStnpEn8oaTkmCnUx0YyR)GbbHPBNUMlyq4(du8jW)fYZt0X(PzqGwCWI0eh8nVTd9iJ7zatjNyDVYPGH2GLfkJKut8Y6PMN1QyelmygvJixOyBGMmPShpv)cteBZLwk605b76qxr)DiPaerCP8YXZbWbyIzWErktxvWMh09CdRHmkdLKd0fwD1WUhSb7uWgK4e7z7eDSFI8PPI3idkRNG5fNYaRsuFH0xR(5LmdTahscTlOonF7B7eJAe0isx1ZuMXpnDyf7eerOdb1jzxFBNO(xb0Pg0a9(IktWik2mujCRjeQAJ4hAlPyIye(9toOugIsa9gW3BCEqFHQHP0kvfHkNAI8uDaDaVikr3tmQKTBAwzCSBXOEg2O1LFlAgslOK3eRQJzA9zkHiZsPNvcvDbH2tmkl3jXB741IQR01g7rPHoAkBqRQd3ApXOwMFHuRGMOB6LHysMqqGYHKylESyuqQJlBqcanCqvzCVetJU7Lf)gN1GXznfBMVSFcejfICVe9c0vS2xzF10e7TB7YAkaFKPYBcR4stAhO1lb8I(5ifvcKk1vkVI93DMy6Ce2dcssm(c6BZrkyZkDQFOH1ArV6plrYEnQ1lIaeMihPsO7KHeE6CiDKQxvltuVHmgC9TfmUfMkeJOzAKALfTNa3ujtYcy8cd8R8LoBJm0kE2hkczhr2VyWstFbdDypRHsme1AGsYZ7KOEZeZqsMhKagIVQSwXKSSJH(psAYCV3telZ)CwJh0IcpFG7BrJFfhoZq5keY(rieInSrW8lw0GakCYFSAXC63(jleY(gAXy4XmfNH(OPHeg(mk7w5RHizgGEwvqpELu6aw(HyuZJm53e0VSVyiXz7Ga0Sr9iId5x3qMAImZtIIhxiKSVxth4yzwGPs9n0IFqebEeYie6LZaDK)2yxTBdXEPH9KtZXKs5dylRCS3Myu9s5NRxd73ZrP(2OfZp6Hmm6QETeIUOwMsNBgXe2NrAPt770h8(rTmalkXiAbnJNHwSPfajkXGPiTrAu4eTbLe6ZCgRw(zfR3NA4MQekCcceLEGL4AXQF21ccARZLNUUafp6sO5AfUst9VQOxjIzuRzoZefnQSjsG55Pe2rkyJde)Y2yDkKdbnPrsKM8JJ4GeQGi0WnsOMHi0mxjsm9wBuOrIzX3INbAJ5h8X0zcnsSqrthTZUUTNKWHHgjL5Fusm)uV5hSGbHgrQkjw8N4SlmvpJvYS9ReQvrSWMaP0e1gJzkutPdkngdrlJvKYOnp)cbdOobQ0iflj80uFtw4hGvclIjNyJr59JigEcwAu4Hykoy9RJ6yMhQqLjidQrLAhykQIv6kUtWbtKT3SAKVT3WSYE5nulQjw(0PIcjfTDW3EslB91Hmf6IuEsE6mfvIQp7arm8i(fCActux8A05WPQXT8dMq1u1ykeIy7JMb69GkflG9YQtzISDtthdhX2CbBPU(1lNKh1ss7rNkRhBkAA93Ga(T9mjPNvS0FZm1mPlnnJXqrNwXSOtXEzyOX3pbWwpWjWYMLarMcdfTWng26Y(VIoW)2Xk(pLNFrrQ4X58al5uboRquL4NIhw57(btMqPtJmrMNZIEH1xleCaI4epz0w5lUoOvOoLEzaEx(tsp(dsIygTIEPJiBHmIrWXmKNjt4Xz6UzAuMLM(j5MxT3BNMRAICOiahvSbqOP3Jd7mdBurK6h9q)XByBzYYVucKkNkI1ZfTp26ryj4jvbVv1v5xdJ2h)muOLV2THXEXIVtet8KLF3WgKrczbS0D122sL9z03ZsDH4KFtSzE(f4Z9WcgMbIbm91fNu64UMX0Z8iDg0snwdaS2Uc8d66WMTvalZaMymafDA4qbfTPKwmTDtQ9UMcuZmwNrIewrOHkKz6FWOE(tNMCSzzWQ5h2bZC99mGguZavWA)043WRgeoDAAucRtmAsESz((2dJufaZgYo9MxAe23ZQxI58f8KySVuLS2MAXuPusuNKg1q9183Z6ckGnLuVzAycqYpDkmJ2ykj6NyO9)0CbrMnFpihKbQ8lfnlIe2qluErUEygOILdJnzGvAJuPZMbQrmYnSpOXkPlC2iMZYSNgSMg25u5jIyogEZlypwAICofuXHsAAYwrNsnxmYJbhVLHJKaN0E5S7WConvAno4rIism1CXiNP0zc7NxuHSYtf1WAUiXLdArSyOIsMTzMrnErIlyzpprNoxoNghsVkNOzjifu3d)gKdMbtfm9ObbtxeEZaOLknSMbTZS5rVcsesKWszfio91EsxYiFBRz(EKemQO6ySjdf)0jskc6Ln(g2KIIzmqRR77EqBeVvZ8IcMsWu6W3beSyHfBGzICepoy6ju6GvI3o9fOFC4XUp0WWM2wBh9CiumlavgCRux(i670AibJ1Tf5pDUmW9QDbthYVyJ0GGGsmP(9qnjHbODPQE0HT95fAAe9BgDkAGFyby))JPDdWAzOS4XqBOdl5EnvAWe(UDMEjxdoi2e6INORwqsDgum(H1HfNLx3mJA6XMKabAsUK(btNj)CGu8CS7046dh2M05CcQSXXGIjWTMFmIaIx)oNHNQ0KPsxTbXgnH(zojGXfUZ)4TQsFKw1cDKhZBROatD1l36fhMDzeDKgy3CMa3V5fLYwAgDJm7CK9SMJfwc5ry267RPRZMDM)abIjzb9AxejsM2YVhcymSoZ06ruBy)chh1S1SzDjAFN5(4EqblYc09QjMUw1cinyiYKx2hljD7qKKsuwMnrZLPBtFkps1SKaGA2fhz)l1lhIgwW1jSwlyO6PHFZL)WslbIWAsPyx9SQMzVFach5zoli9zj4yEUrVsNYws5JK)WsVPXirQ20Vscdh1YKyl9jL1Hzpm8JAjrkjS2HwMc9QzR)DJeTycnNz)9S1)oRIbgJJikGsnFMUXOiYEViRegMb3ZI9LKSX0tcGJmYMoB(dhWwatk70a6Mk9yY8hoGL8e0yjnuk)8mwnC8y14jvvp7ZbZ2s9IIKc3QUrwLox(dZ87N9eoMk5X9AzQdY0nR0pp4EgqL9ZBzZWgFdtRkMg)m1QTZM)WufFiB(ISlO5NVVdaUkHWxjDdiJF3LupSfXs3bOzKtzbPhox(dhjztk7UcwQZjy28hMQSIysvWIt3dm)G8hwQCjOjkMLgsI3(DqLJWBdyditHRW04PAXH6PSbkCq7dGgxKKcb)0(74Gb(AnzEhTiMMc7VyHmhO7vBGSMOPxpsz2Rem2xAmMISF5a(wBsV603WgEOjsYigBW4Yk0YikW4(qjrgTVgAwILGDes1OjMQXoAXibdiK5yMwf43ybcfdcyCoSn9MTbLvOHjjhZcFjly9Z0Ga2uWyDXZ4nRMYrlutd7RvS325Ngos8rzcuRONHg3XDiyGeCib4m4eP3Efmn8ag3bbHXEjkxxoyXO8XCqhRyLFJVf4lKwfbJwC3h8c)Gvb0TPqqLLrKXLNoTZkZKzw3tmnRJMOhBH3nGkFcJbIATT3kMySb4iYSeeKmHJw0sb6aoe2h06vMQSpEY2sdR3fBQEIs8pHjBidEFqqCVaSXU)PLTPKao)D(B2l8v0djSMOO0iL13wEwZMm8vuRDDibd7Ry5fSEansR(KF3lBYA9aRsSZ22KYMH9ZQpP59edu30JswpYPyPYbycKAAtWOE(DHoVNzFhD8g)oC6d)GQHyt1niwIR9iFXCH8ncnfcjXRg6K42I1IWSiqkwn(EHDVnowqlbesZeGmuGv5d2kMFskzcPtpgfpYNnUAb2kHDNMn5Lki0r4GdGnoDObpCIW9t)lHtlSJmuTtV0mGbnHWMy9A7Dop0kvMJBSZnclDBYsWPc3pPVOfJajDCt0kdNYkvMPUmy4SRLB8A7qJQmYaPpszPLQXwVXByLrYEWwKy0BAQ)zq8W9bx(wwpvrA)XBGFcczfDhiDihBKXB8g7NayWh)GVk6K6EUHTK(aM7cuotBRHFQ(eat(fAaf3gHHENFdRmsQ0iIfwkJJQx3DAyLrkFAEywQs)4h1T(chEFa86PStMKiHUQ75gCFiDOzCfl92rp25Wr3hsoeZaROI8N34Hv0kZwiwxeQ(Z7G7daxJCMmZTId96)ud7taSzJZ0wNzDsDfGmiDtIh5DH6pv7t)1owCMa)WeV(Bob93BxiFOC8dAl5ScfxdV4Q8Th2Kv(FP6lF8NYl53d5V8X)j)FyXo8dZ4hhZ)I8XhkI9Gu)GOkE56dlo7eMk8C8db)x(4zUpP35svc09vg61FZ7UCXV86l)PL)CE2H97w(Y9FEzGVJhUuKqS4h3EB(1N2D7xJvZfz8799FzYHs2BlFB2TfRwEbppYl5J77SuMPBYr9IfR2FQ8wS6a4MI7XF(p9d39qf2DBCBnnZq9aFpOgnAXCEjE3D3p365m5Jx9dlxC6MB2ZVg0(wZzMy0WX1V)FC4g8VFSn4zLRYWL7BXLXBLV2zp4B(x84JS8t5L)Lzp8xCIFdTVGKuxuuMV4qrzXrFlfTJgX3K9PShFl)(7Ey)g(9w7N2VbR29(MuMmA8wS6Un5fBF8H8BkXv6PY8L)W(IkqTeO7zaQr(elZr(IY9vhVE)gs8(2IYY9LF5JVMFcRCxSQqgzVEgLc8zjUB3VB)Nj3Zx(4l3GJwoazf7(YhVs(qZ09(H99QmK7el0(lEtXNCV((TxJ3o)xpSzFvl7cBch6GE2VQLCqrE3xMvEF1HID5vKRtiSANYiMJ2(WoKS81TF)EqiSjFnOK3FAZWxnM5gF)W7inPjB9YD1Dh5NAFmLV93)BLhFOmVSYDJKTUMUgtp)SzQ7z)lla(6983UjR4tGb6Q9v8vB(N)VOBEBDyyqpJI10NT66vW(Du0Y3wIB8Hl(i(bzlONDYAMm3Uf)pNF9NZHKnr0KBV)T5BhogmvTcv9SHMoNluszHfNFOyD(2IvZCtZeFQNz1YNlghPYl3SF)6hWvDXM8Xxye5xpGiyDWwpWKezNT)8H0wTatGLb4(A4I17nAxJEKuHUmYWTg)Yh)USJLKaz4IKLWrpul87mGZ3HlaJleGZTw9GCEdT8WXbApcIc6HQrZ6kX0qDSUidwoYBPxMT(2joSmjj9TMx7mXYrGaRulLJRFy)NZbV8(B(Yh)VMT53Yk(1rx2SmE672EM)VUVzElE9T7KpSZGwhsd465ItvJxoaFCAOThAjUFSPJ3pVnFnuWmXzcnej22djfXYmNQNfY333HkEc7O6GHJo(L3V)4QsOjNxN)eUx2V)lF8v73mIVN5)uIBf0I9sUvSJ3fNV96nJzCiF7aNoWKxmQHYkB197pbQ3VVy19u7zwvf47RjjyEG2VfwadJbZ8JkWqnuGrl6naTZwJSGF1U3MVJSn8RPwNcBHmY2dmxi)AlvFMF)Pn37OIaRa35JUY43bgTQhkp5etn(e717QkaXu2ecQnUABiSJ(lGfTJiWIFtVRoiNAdEpMnZ1VyIhBCIda07bacNedcglV64uR9eTOHim1tiBnrZ3CxbPqiJZrci79NMqjdjzLpBExg5r3bZyDdX(DRUZneVc6P(Yh)57kQo4uw0FRWmlZjois5t)A(Zs)gPBrQYSj0ju4M8RHyjs0sXtBBp(1bop13q2LWocNdwaa3CDMmtZGkqjQ4II8)KmV4YS7UpB7HBMh)0N3xUEzGlM8T6ydKgKNqXwDSmBd)u9V6UcbYZGH6S1aS(OV2M87p3Ym5D5hh)BeizrDeMm8dUBMSvzhUB)U9NWDX3ChwmJuJAIcKpffxg1qvYkNOgXs(157QoCA39hZ)QZWnt2jSqBLeL4ootA5OKeVXPGOynb6S5O7ami0uRgiQvKhKKzQfxC6i3)Bw)8388cEn3754TokFZ)QxejmEqY4(xVkcW(mPQVwfX)Va8)393Wprl)N)6rUkRUl7MJu7XcGHCBTqk2(XKrUfiOe(I2rMnp20hFKFfWTCx(UBig7RbOpEwMVBDEznagziK5OLkojH(DXnhXbPj1J6StX3F62Cq1MX73BZ)ni39iLwFErLdHhZobHrXe2DaXu(P7ac6EE8549q6D(gUUP0HRPDJYDkBmPo3G2WvWQq0OAhB5lbXJp2FhozYl4k)015LhH8hbH(9CB1aZJJImnMUtPKAcn3wim9joMwqGcUDWIJ5elx2gQIUaYPXDE9mjdKmtnSsS2YT(utG16jUqEOm7(7ZWGxL7MtG8CZPJ1tbtWbzgSTuv204MJm2yccTp(eal2kXbg2jxS5uvvf3o1xis)gxg9wwYKiDnWcS(L2B6Jp6ND6MpxKFRCDtKZqtgealuWT4cD6ImP(x6n3gcI6GhFoaX514e54Emf3KtARoW4ImI4GowUev7fDIM5zZtWY9FpR80PD)ZyP)7)TteH6A3rvgmKT(F87)FU5i0tMVRbKSUU7HR8yrmXT3jjmqlpXLIm(4m7(9LIlqQhA5vLXUJdxRcB2sS19e(eeuVnBxTRsUQm7Kiz8(6tm3RldFh3DuO2831lCtTxCIBneGQXBMdwBk2NqaYpdJq3Lvs5FIX830NOLFhF443YENsN56lc3g)uS35Iyq56f6PYl)8V)3Ud3YGr)tea(RkovUlZjz35mUJska6rbN6pHXMN4uBZMJ7fjToZJZlOVwQApXCQoIT(YCBzdn0z1pLalSH2vVHeTs3usoLY6JT6XqMKoEDlJF0F)Lvf3YPNWal0CXtl70pbT7PJfoP6WOQTGfru0F6WH8oJdLPW2XXZmgRvyIHvKYtinzJa5V402JzKpzx22RHTd1IuKbqMHoM7W0WO6za)9u1tiUIoGktoDQe9v)w9L(pt1I135UXrMNogD2O66elcB(F855h3EDz(MkylIOl)6Y9C30mPnIiRDDGTJHNTaPwsRG0i9tCPiQW)C(gaf5q2UFRbnc)Ux5aQAJAVm0MKwgXuPX484J9BYpT6UJI0JV8XIDyT))gy6Z53wzzsCJHmjEkZTHEmFgGk6XNKV93)po(B513cLqsc5u(jkzSUBZCz9WiZtS380PMI2e9uxi)mqKsdIaiUBYBqTv)MYq3XERsJBGuX8Ip8PWC(973DSeYzR5oGT()()XwG(hsrwD3UI7BKnYrsMQep(dD0FV4pC3hc6FRhtEK1hCfWu8eZaD(ZASvQ5rwCihxgLGJNFkZBGwvdnjjWxjBYFxvYMO60qXQgUrqfJH4Jp0)qw5XI7BvH8Z5f3L3AMtKBH3XyZ2hu3TDAqWZrcc4lG9x7QjB)UCynZXnz8eRXcBwTWCIc72fbgD7juCWtbS6St0XrIcVf3V)tzodQOcjM9BCO74SXjuZHFyI8jg6jy6YV53)B)()J6LFJ(IDYMl7i00oIIkPtFU0w)CE36UpNv(BB5PXZYyV8RHXEBLpO5sOSouU)MIn5lV(HLWwQvUpyfBYiEUL7oSQy9Yd73Vzz2Qv5vseXszwUXyyTyBE5T5lpSj7H8YLzsGdkWH)1FyX6Ik(JR6pQzNkZwctSbCRYLGC29TQVAv2gSeVEt3)Y91XyXH9vIheL3MF41LaYWq7C7(smWmoBnVidkxg3HlRwr5al9E5fpi5(eRWoPJ(gOBQG7f)kJIp)CifeZELCt1KfZjVa8AlEZ5xmyvvMNTz7YQh2TIF45PpLxIlmC7X4bwv8B50dVmBYwCiRe6ZwU)axh1Fl8Xr2dl3)jCfTz)N5rLZIB5hXGjIFu35VBdp75)GZJ6x6F7uEtSkx4UBEv9NM(SD72FA3Q8LfKgP80HrFG()SZntFyXhir4UDaw8IfN9VI)Leot(Z3L)RyGLRZMH7qz(H9JgRUb483Cbp2OtzYB2FyHUo7HpSGfnlrixMVCxbS1o7w(U7xTUHqrikUB)NxES4iUdEjxlLqWio1X5Y69FwozXycQybX4vm8S3a2NIpL)v8ZWVmG1)a((D)2Js4h4VhWQyyVeA32FnD42(Dn3j3wU)0bhzBfhgzr1C3I3R(3mE6Lv32SchDC3sXr0oCXi)0MLZGhPDbDvtuQxF8U6kpgheD8upYbW1)Ppa2WGLTe)mCYV502Dsi5wCxUilrsCno)BZxUzpU4C0a9VIKJSv73TUOLJy)Unpa6XQI1KSS6ygiO4PB9pFPCQJFWXE0wG5U5my1(TxNDeZ5TC4k2juzlBdqp5RakM1KfaVy(N2tHpGDE1sN8c(tfsTL3DISf4qmF3VjheJgSMdtNGVghIljbqv3p)28Tv0V5vlveBz3SkBFk(4yX281heQOrZX2dBov5oWRLSIdfhZ12hoExXQ1avt((DyFFaYnZx)Qle9O6A3QjzjE7VusiHb5sioBVclahRaMvxjqqUrPuG3cKu3jDxRSBUP4xLVx8LNCVcqqfZoBaePMNvYi1PRtycy8w2MbpZ2IbVLZRQ1(C)FSl0u2uAIE01zZJ0UmR)bUvzG5)744e62zeoF0JZMNP74S(NC0fnX)tSq1p)fk)uAK8el06NXBH6(jhBYBMB2xc9f3GzA5(thPafQsXrxVKe(18XC1Rd)xcI)x0HF5JQ0V2e81rb)13s(lyipHbx9UDNVBnaobzys8n(RF5JRyslirUrc8snVpbxDRliwzhR)v58vBJqd2MVqomMAoLf3RCmDxuSRO6U81)t)fz(C87e8p1wvD3x(4)Ryelp5Y9MHdwyIBdCfF0VztE2UthAx)VGz8YuVYlXO)kiroRztEF(dF5JBG20nFT8VvHYFCwvwM7bEfbC)t7XO(R3wC4g6AlZGHoY81A9JVAIN8vE2RMna0zj9H(0li7GrpeBx7JVGsM8vEUlOVTC)V))4Z5vfyPCEjuZm3klD40e91rQ)638DN9M3C(LF75lF77E15lxC1zV)kzeQYpskUkmzBZUpVrFJJOGkXeAcyind99JrYi)215qK)YJ7DQkUTm7WDmbeWJyKFFnikN2cYRmC09xcFgMMUKzMw)5qg6ASY(Zq7dilU15sUNLVEzlZJ)Zi)NMt56J4Fdt1xpXzA7V81RXVM1taZJObNYQV2e(py(BLA6j9phdUs)hE0QTe7lF8Z0dHmMjoWlVqeFpE0cECgcv0KVZZLJ4IStBowwKvU6oUu(VbtPZeZDXV7Lc27D4YBZD)()XDITpdLHOTFTk8jwHXt(op3v4lZoT6o6EZQQzxvdfKOJ(AT5jwvjt(o)bwvB3MDAZSlPHsqujq45JVK0bt(op3L03HfX9BYorhj89Lf53wTn)0XzVk1dzeuAQP7)PmUNTmUrhQ9LXXVY7ssL1)yoi5Rdn)Jget40t6FoHC6OjgTNGPxBM8DEU0YNV7OleMsqoGvIhlPNC(9)2Xon2xvqtupCZP724Q5Q(Zx4xh8eIo12jFNN7Ae2FcJelpDdxm)3GjR3Ln3IRVSMKV2aX0pbqhD6KVZZwUE(MkgvWtK6qC(6lZVrYJ78zwKHbdNWWVok9XxKHQjFNN7ISjIXmahz)6CNEH6HtsW)tbv)XbJ5DM2xoLkjss0RbNYaQVj(FWYPcJMEs)tATLzIrl6jOGJN8DE(6Cl3K1gq5v3TTiNzrIJfSmV4USBK8HWoCwupPHGHjt(op3v27LlLAo)gya(lPHYxcnaVXtyBAWKVZZDj9kc497Zoq547QUF)2IJ5JwxrdfPOtFsGtr6jFNN9LyX2TmcX)(F7WX)l7i4PSBVD06Ai)Hwiv))XLcPc()ZigQ90CG8hlRSq22k0b)lbHUZxOjg3H)J2yWiZ0t6Fo5pmGrJgn1tq6AN8DEAsxBTziBYUpd84F)D1oZOUWVQz9VC)93DATKmPdMMWVw9ulT0jFNN7s7QCCv8LpkaqElZES7NF91emOgF)VSynHqgNsNzMT6UHbOkFdSzoF5HSD5sm(AIxjJchF(L7yiqU2fpWJzlVlR8teOX6L3SVKbQR8y97u71XA3PlZBKxqTQDrA)PxMN7KKVqvhJIBkkRKYwBb4TkBcsy3WimvL5R2xU2FWE5WaKXDXEgnHMtIkgPKBkUT19TB3VEV4LYQtxVm7iSD)AiD35P39LfGR6y2Mf7YoiHvuEg5r2VKlB)0SUUy)CvzxKuDCYQgSqsenAgKIQ34cLdd3f)zYbxbKIDacg5pmVoLecKLxUS86V0C3rl2TVCRe4kgm2VI9MUiLu66bHUVgaukWVknsg5ZbKHHqx56beq(7NzxrjHzCo7awMUUVWcg)lPWjwuTFZE3eWvXVkZ(Nj62a5Py(l06iACH7KxIL)P2B2wIWJo3xZpgG6aUk6Uq9dPvDKlxpmuK(rbTnWPTx3V)Sx)QE0icjeOQEk6Jvm5NxVSC)M8QMqE3rI3sGx5IwKl6rTfFA9)(7ZFO2P9nHo7Dx)FpF1XVHupf7yo5GJnHjAXReAxNOZZZybj86DRl(uX6tzqo7piJxZ4(oWliHPRjMaDtS)0S401xXnixgtprNTPDS)Yh)g8QyrTE6b5s5LRNT2RwQnusLfss)H)V("

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
