local MER, F, E, L, V, P, G = unpack(select(2, ...))

local IsAddOnLoaded = IsAddOnLoaded
local ReloadUI = ReloadUI

function MER:LoadDetailsProfile()
	if not IsAddOnLoaded('Details') then return end

	--[[----------------------------------
	--	Details - Settings
	--]]----------------------------------

	local main = "n3BAZTXXwAd(BzI5dJVr0stUuzMvnDmFG0I0wTLO0iqz)2rOqqGafjriqa2aGwMEIw)2NNNtwlzTrZRN59gZTBlscKvw5Yz55SL5N1F(Ypp7(97UE9Ms(RhUD33MVyF52fZ3VBt581l3T9Zx95zlxC)Xh2xoFF5InSD3YFEkA)9LB2SCXHJ8pUB9HLRwCCb)9fpSx(z52Y938i)TvlUBXnL43o(5z7XB56fRq)Vf92f6ppd)YfMpFH6Lg(93VzXJL7NVQ84I1Bom)BR3UA33KX3YfyGYh4Qf7NFS8p4O6ZZM91h3SEl(LdFfD0SZ287F81SFwSzZ8yFDGZQ53SF3d3Z5ZdhWCHt1TRVBXX172EGdX9L3VB)X5CYnh93xpWMUV8UD)ECMF38R3V7U5BxCxzC(IN(H7MJVEpFtl3D3vloo)4674qu95z83MF8X7lNVB)6BwVfRzysw)AoUB(3UD3NNXj)HJl2US8W8dL3Cx52JhMVz3YVwUIVLQDN5hwGrX97Kbkh(4vDCtjNrBxHNBpgeZVFXE8BYtHj8vxTV83xltVpFH9ZZ(2U9BwvpkxFy(X9loCR04F)(5louT6G)(QD7(6Dl2)vzbE(H1)jNpynVz1Ao23lxnhlaOp(9YnCJlZ95zBF4UY9RXE08dpE4y5D4h3D1Unhi9WrmvL9C5z5tOXte3Ap8KudTlpyT5H5l3SE5x5Q3U7l3YHBZ6)MsquST8BlVf)z5wHAtwRouU5AmX3SBp3rjnQ04TpCpwOVz3dh5h3(A2UdB)xvr1HVrwOWZVD5IJG14yPWsWUB(vpwXUCSCXDcHF31iSWJv(vRpS4kUhECF5XL3gjJoUB3gqfhPXwSriwwDpNKhXE4LK3Hp0k2GR3T9y1eqwH4)Vr(xR8Vz8FjbVmwQFWtREWd3UGZKzx8UloR(JIBQ5Gk(XJ3UE58vpG1lmQtEPhwC39CqlnfZIR3dcFSwE846T3COrCXX1GouegG1jW9p7nV73an1oqC85zx(U3NY1(T1RoEl6mf4oE8Zx8cnzt(dSttg6LFD1(D33zAQI0bY0ujtZkAIw(JBlxFZThr7S8ZLj31lwczbNVF9F(9V8)1dlwXH13)YLyale07U(AmjewXhUhedKWdl5)(cHogt0D3lIeMltymsoYE(oihy)JZXh95l8zT7PCKmhlEK5z(vpC8yLWK6VpsgfzUebkRkVEXdBoo)QBMVyZ93UGVuh)4fhVvikoU((51luovhXdpC)97lpuZ6YLTQzqKy7CxMkZQlc(GRWu41F(6x4YANqJii94iS1l(JA2AB93I3WsOrytf7aMYRj)9Ms2SRsw3f6cYNcM(Z(dz0(TfpYxtK9SALkU31LZfIHIKS7xwoFXYJR)91hFueNw)vnRerYd8MMlIeXVSD3(7I6ME8ZN)IGTWKbIR8qUcRh5yDilJuAN7lSHqMTWL7Sf6Cl)gkBeRDf5ABMrJ)1HLoF1ZGLzn(jMahaHz8fqsN)isqxrmJwzWpfkLBxlYYA0hafasB5Ae4riZJiz1c1plVf06yBMklaBe1QrMkrPRiTRQjr2btKFaV9d4DWFbVoqhT)ZNN59gNtzuMmxM2f4op5zFyZMR2TFfuoe5JfAnzecXEGvOAuMirRIe(jLZuj7sWhmxapm71KhIuaF6KvRE32dF6vrT3FAn17F4tPpYH5MOU65lF4WXD3rLGuon1saMI13SD(DGfz98KLmocNp)BqpfL7xjDlz2vVQjQhoEliYU52AzSY7KFj0zUFnMHLYgqIiS7IQnRKuEA9cSUsKrCTRa9UmEJp9S)VjsG)70(iQmGpV8yrbrdwze8jF6h3TV8tVTC16fF6Con)ul7YlpE86UD7g8PYmir(ChsJiLHqNkV6PvwCSUtMNozUQZ77QBIa1AikBGAL9(1)by5NH9im(HScinIpijPyNC)MhashbmX3MVA9(YLr8hydxiwwvEyb6jirzvuyyZFkA3J4QGOg8Shi0n0717evssJIUopVqh0MGnlxbrDM8kc(iZxfS1AAUMUa8k3mjVIWVfjpBemxyKh6QjFOg1wnRqxSJirhQftw)ppOmf6SG3z9ff5wBSBenBnYo2rzhBROqJY5s22xVfsnpil2qL1dcwt(S4D8mBO952WSNBdDp3g6FUnm8CBy(ZTHfp3gcmjp3w(S3B0p7nh9ZE3r)S3E0p39NJD4cQajgTxlAAynub2F8pamlGCVbHrnyjW0DyU8sQ4Ztmm77Fz2Xh3u(9V86xJp)BRjGyccGgCcoVRHWsau5(YiSInB2b((B47JCYpdXARAe)(un(OGxvqJh141kKOAmrZal3xdUjvXTPrXDqvj2KpmN0J1CymXDRBHD(cI5T6Da0mFTwqfG9jazGHBR3S(4AGYH4ViK8Y7Q(ReRHQh2D0c8ctOAEIwo7ieTE40f7NbWCRyFVSKQI(8SxD2LN863mB(Slp5Ypo70t(W83)Mp(tV(I5)4BE3p(ly)wGupDZE)SZ(P3E2fxMUV)eT(vVFgBW6d)86vRkfjZvg6EPGnYe3Vox0wMaAu(0tiCGOMyOA6YAWu8RM1yzk)RF8V08ON1ukDGE6FJbQ9)jpqJBrx(3yKz()tgz04RYRp(xTFx5LN1BVwWmZE)deYP4NMONJw(mroknnkrkIYVs9S0PVjTtR0bp)wq)Ujsd325WEWYTRoConQ7tF81VO6VFZ6dhFXp3(aXrQWuloZswnoLlgNY1cbw09L7jRuc0EakA18(cDopx7kY8MCxMPilK7Ru2BM8BSt(n1iVpCp3IVSIhflir8VG13wZ3k)k3Js(wD1UMacQ843kl3wjpPEnJazQ8M0YnevxJ)s6Smp)WDrFD9ugPR7yk(uBZptyWxVqGqgT1GQK6kjno66IlNBC6)7x(9Vi)Mfq0VB3QYnIykycnuWi)ners)xE4tNSC9Qt3lgGJVVC)pThRpV8Tg6NHV126FJoq7tN9)49NCXSx)UluMp9Q39UxDYRMHjXMvl2VFXN(X39MxDYh(WjGj9JZE5DM63xQL(X(mrBC8dAAIU(HABYXUUTjb3zpf7pJ9LgT60IRKT6d171ck2kEWV)fO)4uHi67FrxtV8g6aIThGwQ4kEQBy0TKup1((83ct)pEl00DOlrqJwRdF6nGEl7EAVXlpEZIkdi6qbuR(nLgjvqqcr9)VDWC2D3F8X44GUTaMM0Lj4LHkFwgIl48N1O6JRzJB11iCxIRoATSU6pUzpSgsS95QEYtBFQ4hFfDqdwEM9dTReTgApLp(BLHjTprmwieuWAlLktvOm(8wXyt8n2j)MghiiZAzOS9H7UQCF7KAKLPthDc)CecfFSXKo89V8dYVz(V)h9N7PIcFQxX5oRXu4d6CDMX7JYQZsETJWC9MbFAn1udRNqPLWkwBYnW9T)yfa5glChmK)8SwI5QEQsYIMEjRHfrOPQ4J6o)A8JCd5XiIDtC0AF4gc5t6KS2l8n6XfYTfhoo)(dZJoWSDl(q59lW4hR6Z(36t(oGjwKN13eIgxVjanBbA39lObq1rgPpI9Sga(k60PwNnhDjNSC2vUlS5xGwlrVGtrGOxwLf3KuBzWUTBkbw8kAZeha3ZTva5K0(EEcPDCGgGTOfd9SxNUz9240fVwjeCZNFy7I7fB0QxxIrLt4(652Y2Hw3M2Dvu8yN8KI3BUScMXv1yrevxTbtj6EwFUjOdf2mVTOqRYONwdI3zFb4IcwLk36TMqMHFLt3enHtF3Lx(U3(Hx)t)CJlSNWpqI5Du2T4YXkqOTtPkEUNT)zQTxuIVXBp7vV(JVTE58xLjB39Jr8G78v8ZQGw7Lx4le33gnFSESYNcc6VI(a64oXP3DmhT7QFI)pFgYcL9QLpSh82hBiMJ8Jda5Ih6u6wNtPlBUQg2PGSSXhPh7pVFgJbXXahy4pt8nOUpXN4iXDhwVCXU))z(2pUN)ZCaktL(U5KpgKeD)I7hedVi135bJYf8qVig9H8cvLFeJb858mFOWz0AJpqIqD1afcLwUdlYdjy7SbhfA1412guzNJovdwlm5Xpalg7wIevcFdNXDziMYR)1AKsqr9J)8Rp7xpJwoF(ho5TNrdRoz5TRrhtJtFXpVB)6)esxxSzwKSrcEa(Z5C81xg6MhjnqtCOfvvjVSx)JV7IzF61x8RZHC11BMFjMT0fu)f(5PXj21yuX(FxbLTH6L6Pgn0d99eEpWFMMawhb)j(IpUx7WAVgl7fbFRWKJnPbaXZCGSAZI6mRC9MGO7V00y5rkBAE)4VhDNL46TFB3V99V00DXn89RJHJFZM1ReT0njSGqtu5VD8oU7(A)lLNWwBIKgVqlCqdIc)v7oCyyq(QI3Es6t0jTjCJ0ralWn3wLJjl3S7bGklMokTPvc0V)1YTZbv3Ego7T3iYSKiwwhhEmHqFvhowrL5LTMTOTQ2OtBemqlVLJkikUe4tx1Jw9Xutq(Jo2JG3EtyFfkh0fskJaS3FtxhVYNuJMZNNRDqhuEwqupsje4b5WjgRDitlRasYalTrvao6Ow0SO(va9ouKbO3kDEby0B1VYaeRC5z5gJ3PAee848nL3SyPiEf)ppK)q9Q(mBiruPsZ5ADlHuwqwhSwVcJ2CvuARqAVQCXkSrZ9dWeXv02T1R3S4MAwWDeviewSz1HyO7IGgHGozn6N)4fxE2h6Qq5LAJRIht(Tykb44B93GH3V(Dt2(Q2QJn(9N8MtE1RVyYoVPVTbP9V9KF6SgUDPzr(Digpdl)J)oo7Y)6hrEbXhtEOx9Hp(6x18y2GwviTqE2SImDMYp(u6TV7IFPvGu9JaCmPpYGj2Ro7Kl)5F5cHcCKb7upgwSRCe5ZzGoyVA2pFYBp5INXQt)h8Jx8lx8UFBKP5uRNV)dV(SzTtTK(30DCp6RdRPZEkAWEVStGOu6C(jFDaDj(RS8XF8ZU4S3(F(CFxV6mm46YIuVzBRE2P28(zIx75U1171(Xl(Pp8Up((3)Mt(ptEX)17dN9RV7xsEaNYweFjYJnbj9hE3p9XZEM7DDEYJ9sTmQZjMBz83ssUS600bIMASZQs2DTzRnj(YT7oUC3(TaPlGMl25Cze5A0mNyAIjOSJjnys8doe)Cic8q05BrTBaQ)93UEPO7vqf1nP9mdtohGi5gyfwDc64AtUNygivUA9XUV3729WwjBdpiME6Q08kgcw)RVhkLUWa9EZ2Vy16hoqb0v(wT1j372gt9UVjkg3TAxB(rCnrOlrwoUECA382logK5ZDl(JP0bN5A1bJDAXCH97wSI5xAxhMkifzwlE9(fr4z9ZWUyWXIigs8erpLkN7H2qnmlWzH9OgNnXb9GfiOlSQmyfAHjXb9oNwzY9EWkRaeEtJtF6O)58am1qdljrtCoVQOTRbdMtZh2G(iViXPzoTlaUx0)byxIt301P8b644dOdkcaDzMZ5ubDIN3YGI7cRWGLbBSB6KuvyX(amq2cFHlJYmSzn9reU)jF4Sloz()5zV5njcClQyEkQy6MuIqwT4KkXbz9vUPR8GiwhcglHLyv5vRMYIHNlhWsjtbSfktmuk0xpxIL7z5WOpVgMp5YcytTXrad0WDo2rW6o2cWsyEq7A3B8avLvBYuWArvrChWpMdnL8)iQk7S3CED8EaElDWM5YaVuM202VoqEHTm0VQScDKAionh)zAw()PpC2zj6jRwuZB0xnuzAf5Biy9aaywM3099raBHmq5BZH1YTVV(AwhyrtpLPNJLoGtf7BqFb6USeMhy0trMHsRHD6zHKOBHfHcvrUld2H6nnUxP1DC6EylGruzOt0bGgwRTPbrdK(ExUv7m2ICGvUh9BhTPVeA10HuNs8sLUW3AC7a1PypJSxwsxI)rN8I9ba4TqBuwNh8pQiTq09rfa6TX6SbBqPdnZVo4nphZ)CLIO2b9MPODPRMHPpbtRBTU4SpE5ho5nJyURAe1SwcIpae)5Cm1GXYQHGlxwrCjqwnks(i866bF12JB2vd0F7JqbPKjyLhoqBsflVGC)vl2VAUy75vjAJUh6ZwkXtl2U9LlUt8C02Rxlj5X1rH9rVclD2)1duPZQYJv(yrYxAyTv0FYlxS8wPV2YmhekgpuBgFRMZflxwUjnNC7MZZrT3v537XBrNF7UnReLznfQWK4hetCMlPe7F7S2wcPrQZjKpORdgQ581nm(vi6AJn4Kz5T6VmVORZ05jYO7ApE(3khTVQvdV4oTkn8gNQzUpmQJZk3xUDndEXOjJDuPojasSx8cVjbpkuey1JalThc)lGSRqlQ0(WrFzDJ9Xw7TjWMD9Gz3VR5u85ymkAO(jS9QFBnpbQ7UTfZT8Mg3c2omXKJaGQBDnkB94JHSNRv5OTUNYUY(n37)NWku05p1E3WwNSAyn56HRidFKI2a8w368PBUxn1k4G26cHNY8P(7nje3JSW01yRlC56NGoDqxN9enUxpB8UNyfFqJ9pf53GwhEQ16bT(jjThqg6lMCNzqBdQNAG0V5jTEAXo939bg)Px07YTf0toY7TMOv2P3C61PMj5G7rEWa0n9cDVE1(uePdO7SpF)hGHH7j2u6jFYRFMErbm4(NG4V)UwlX)FLddViHPAiFspsOJDYa0BlxirrSjMG9bHzRNkv9roTQ)QyK6UiuLNsm1vkHIucoRgJqScpIrMnfrstsRmfMKqZaKvh08Jl2FtjDSRjjPC4q)3IT9NLFCS7dDF9tufq09LBa8SFVKT6E8Pd98bBgD5XU2YNPjDfRwKMipFjC2GFqMpjz(s0xexfrZuLZeneTf(6n2gGX1wjW1z2jpCLe402W8DA7yRc6Ka5swyQImAs87MDASUc0K2D2BedrcIQiyyvYF8HKMrep7U7oaQoMH1DwxtsxyFCKmmTmgjaTdXIg94sZaoIi70nR)Z)eq5boXkk069VPYDezTiIfTke4hyTUnsWdHfgV5nN(U39lFsYdpw2PV49WgIxOBghvB4EXXrRVJlX3vE82DResIQrYHLmF9QISchnovOkDSEH1v5)XQ2wf3LR2DushQMHxlksA5NdMUcRkZnky3u0Y2SkxMWaNymz55GUWQsC7IpKPTzAy3TZRlSv2eYSeIo6rhYGHVgRnu04qMgwYN28GKXyQfb51YaROtZtWE3gEXdW8O7w0WajlOj1OhSZuBYdfmcoA6UagfNIOPDnLPy89sAtyeDRvurRWQ80wDD1E1(DFTI(PBPnx)usGyBs32Rg4PsPwjAIGKK68rcGybsYpS1zEsDOp7gU9tJyyc9U5XRxtYmy)5x3TFbRcy8Ox9W1x)5z3)W(73ifNdmWJ5JXShlzbg0uD6yvBvC57Mn7UAXRIjaC1REF5YOttJPSr1WoTOSoT672S(6Y5vjjC0E1nL)UK0(nfho9p6D3fD6HiAKz8bZcbPG1zpT9(LRxnpMarRIS9v7PF72sod)Pp(638QQ06G1ehJvAQZRRADlBHUT2ayK4QsSKwBVBRt3UwpsZC)J7luhlLabJLJnWA8QecA(L)47oTYHVntiAz26fBM)aSHlwnSCfK7DChB92BwTdQxUB92QcM7ImAzOek65SiRVHMIVHEa448)Rhk3)OeA1P6KkhQttcJvlkl5FrwBTlzppdu3fgdDXywMvt3PWIUS2ttxqFHzFza4v74iOZZ8wWr7nfGHVOqCXeJxA0pMNNNbUgJ2A1quqHL(r0M34pUleFe9Ym2P1U)5IcLV4L2OJmVNZqXPbDka8epi05ZR2pm9(4QdlH2sxSBiXNOZQFQM(SZtnXRAkHvj6y70(MAtzwCd8pQIqol0gzfO7lD8zW)CDY)SdXQ1H)Mp2F5yBShAY93KeRACwHyeCyuAEGZujgEZ2vLXmlVnkS77)hV4fF)lhVD9HV)f2MV)f0A87qQXw(54dIdKV)fjNf)(x2H)tsmXV)LfF)lX0VHD7Fc(RyVUQUBhPtITaVa28)TUV5VTEZg59l93AinOUJIF)XDY3w3VvU)5)LV)f2uiaHkRqxE)dh)(xOqVM(921lVfd8TBEm5LWpyzz68FXMd760GJjJ)4bRbExhQNeR(()bFAs9J(66QgkIDWk0UB4awabXby13(k(TOhQIE43)YpuP587Fbyp(hF))OAs9YrkW)V)L)pLw9VhFVXfb2ZIuX4gt658X)ghm1lrhWGF7rUaefKhxnRRBE8xGUcJMB2X9gI1n2azqd1F4XINKdCvlU)J)qEdvd)J7FOmz8prD5lZb20QjHeMYKvpOVhJQMZzLoRp2KUVxGoJln2QoTXRSvZHyqqXuakVJlt0VX4VJpA7RGNljt)sApbtKxhBC1leAc3eFxrpr3zku3D)F8HYR546K6V68h2k(O(Wp8pQ6hGAL0FuLm3X(tYGSs2r2x(F9W69rwU)3baHDlQMCFB3(VMofYYvF)lOxY6qn1loQVSLEcT)FF62fnPl2WgcVhouwTBvr4XtZeYRTHlTlou9LIk2Mp(hMIqzKtgL(ejTVqMY2GMF5UTj8u1IweANAUckvLBdndY2bW1GppDemwjoidbPHvJHB5wYDpimocRI8QR3U)2I9BfMdkDqsO30xOoDRO6i4O6jegJDpexI1Q)DrYhXd1tsAIyVXfNcKtcb9sPhe5Zvzh7)mI4RKRx)KYj8ce6)3ONKN7qCxQ6XPDPX8jEoaioF)cayTC7scJVuaOFbJmNKyXa0v1pTv)0f)PYh)PUQDAjhKHTxX25Yuv)0u9ZSQFw9Cgtv)u)ZQ(1QQ(z1NBREotrv7cX)2v)EQ(PT6ZTvTtx9366(P(9w)CvTRQFTffrn4FT8Xdhja12yR0aVM52CvvuFSrBFFW(I5uSqOpWfx2bSNNPZiWbTv(xJ8VA5FvX4yno1y0LenJPyuZU8jqAqlxeKgCpTQqiRpRGs)S4mN59)os2EusVbBHK(c5a4SKc)mlS)kuct))4zIY8imbeJK9pwFahiwDNZWcZawBYZk8sKPZRZyIr6YQJ8GKGEBu6CgPyqm5cMQuxS6apOTzbhmrp4ZnfEyqRKybXM1jOgNZyB7GL75EVr7l8nnRJpaphVmmKyjBgk8EjDqInZ3Tz(atxsvW4nWybxtZcDAwwUjaRkmQCRZPTTV08Unlq)jOavCHHfrrtZk6otzUNG1oFi378Q2zQw17TMP0fOVmfomaANdAD3jrHRWMJLzFHoxPBhD6UBeoyoLnJMez1yGM12UU7eykydfwDg()QYp6Q21DRi3BYW8vBvARltYAGmxZbBqs7WydwsAY9fGeOo7wJ(pO78vR8AS9MB0bVnz(2D3ipa6i6QhFU2MBYA7V(BhzCtdT06ZOKKM(ROx7SbSBfcffkvEY(Hr179A9kFEwUnZa(H25Rr3lbEGrNAl3G9yiu02UEmgoJXAqNzkygfN0FD3pCmVJ0kxoyEYt3pm92pCbXCyS)QaDQPT)6TFWYXipZ4b3rHjRD)W0D)a9fnIwRyb8GxCB76XD4ZXUfyZSy)i411JpjB)UNEaTGL38bgq(hJUJmQ5jv(eFu0nH8y28ux)ivYNyT1oH8PaKwO0kSCdEEvA29KL7kYvmrBSyvlkQWNiF6CpMDG4vPzQxxOss4iNdBoy5gC9f4hTBH26h1aon2cWtLKKluaLgB7GhZG)d0u(MhnR5r9EnyXC56CFEswMCo(qFb1fxKX0Ds38OU6hf8fkOSmeGIqvrAUVOXUfi6WOvZKZQ5r9n5uh3lvChhBPnUiLIJORua9xHcVvFY2COoTym4ZfjFAph1T(D1bU)cYBNJLJ8eo28MK1b8ZAp5eHi2ct7JgaFziqsFFasu19Lvc9okJc4hmmZOuUIQC(IpkgoyPRGJjFrHzk5NJtsnu(jidYHgoVfspTQu5SMETllZavDzqqQnxLpL8tVkJjqieGQcQ803BpvzAs0LPlOwXCvR6IEYpDm1FGuhhRuOqwRsQEYpX8iyanpapXKYAs5Ny5K6q5Yd0C4tgF5dMVwO13uWmZlrJCp5NEmrny0fkGuwxHEk5NoiEf64ZD5yjSW1o(6j)ecz9GLgenGvrNkVZ0V)SSjK6cZg)q5o5QHcEG(0UaJCKDWrcexOi3v5lXAbptk3jVGzQiM5qCpKqiSXfvRhgJMvxKXOatQQVCNg1SJ9Ith(Mrg9s0zBh9yTVGH2Wbz1yR3eFxnW6MA03UZnYtpyK6ufKvdOV1mJcZJvUs6iDS1zFxaObWvWSFvhGi3GGJeG0)lxNRXmn6t)xnecDxScfqIcTva6QazGiPl)5peg9P)lgc0qPURcGZK4LDEFUQg(A9qyAu4EfesaOVzfIG2eTCaDLOma8vaFvya1gbWdfgyXidOVcPpkS6cyZH6ribMzJ4aTC4Dc535GygK6kBQcYmOiYeCKch68vd0YLbSpgm9ZHOxNknzEzwUADScPyh0s33OLd6muzEiSOaiYGOGwLgakxo0z6yC7S6ea2nA5WdKlMzKrvhUKh15OrmoaunJkq6J0)Ckjb2DaDCzSyJ9np6fwHyVrNwas1dmfqZOe5M0mvsa1aZmD8vmby9tI)FuAGH6VeLCaDb0ptrHztQ)cIvbrPf8YqEEimj()aesA5HqQgyi0UP0FXu12cyKaisitLRMs)LJ4caEtmkHueTDO8xy1(iCeDL)I9RapuDGUqOJZR6YreMMJG5NDGsWa3yipPiby5davroE(pOuwZqCFWkelHjtSl55Pqgd00iJK50AvHAiUpSEyK4fdPHERnnTNna9fHCKZmPEiUphOJumIu6cpwesqG59uPnET6mYepKJGjAp03ao)mwXWjK1opPKaMplTZnbtsnhb2mHylyFd10NhsPwbODf01AaVgw4ZhWrGxkwCzUhNdiRbxlcmy7n6wQ3a2aMAzAEBO6Haatgz3GChtYJ6WcpyY0q1UklbYyrZXAcmLK5bOhmtUyC5d1pkgV8ifWbPsJy3mvPcOHaIKbyZZYvnp7fWoXxcYRuUhyVKNGwGXRSU0LLgFTtggJMCeeHzKoandyy9UPTOgthxg0XwaZhRSwyCokDoTzawecBPSQSPqeMb5MwGolxtwqRDkeHSkdGnWSSyaoZPrekmlGDUGHu1KIenVNL8W6bd2XlYzXSggbYs2yC8z9qCzy9LuGoIMj3ZvuUNWspyUarkPGbo2mxQLEb6lkvH8frjLD44HAtSEslvaCNIuDGqeStd7RP56(uJ6Tn0uwAFOZYsnjZNQiRWXerbSgAGNnpBahpgoAGiggVakmyoqcBlmgZsJUas98ucNwl9uE(Ab6Wci1iXWjyFjpHfagFWEoINTahpupbBpHEz0hbBYBTasxy02v50OVWaoEp4w9q7g0qfcAHUVctliHa9iSGSaZOuDcnC8grRnenIrMrWiw)Oazb0sO00BckJBkTIWKjf1MajHSWsMqR4fWYGxMlrQVVEWXPRgZooi)Mo(JSpM03uFUwwmmIf1Eo6hr)MFehBy6QFJj3apLlca)bEPMEoE9jmWaKSqWeT9MliKP0BQC8kwFm0Oyq8cZwBDmtnNcSnjqKxENuAM8rRH8jUJfdeEmVyDdj3lOIgywUMveRSp69vlV(cRudwqSTn3nHdAHCoECNBZ9caotZUqpryXJdDOqeglPDTnZ333CCgcSsgWRiNJmXM13bTIBEdeHSUIv0oWbTxar1VuRcdj(GUgi4ZfG2dtOJaFvpOBqFbKOcwa6fLWKqYYHafyZKM6S6aXRhPyGzFgaeuqLE56jjfbahYldq8SwMStPab0QyHciybGW8QtuKXuG4nedRb9NCmznPcepysmu7iEPa4Y0Uua2KGrwor2syft6sb8EbhcDok9o)KUK1ZdpiaDt5amJoUkOheziShKhAhvu7tCrrFxkGXheAQOddCPS89CPGhK(Ak(eshPh(ABxV9d8gr3qBJk6O4VNlz9aFQLoHKlFHw6QwriuR8iohTRvJaLfwmkYaTNLNstDXi)eYqcSAa1f8WtsokMsmB0WeVIobIOxQpTNsbjJ1GimUaym86KhfOMOHFI9ufXn7qxNJsjX01FUAbN1MnIfIciAidaLX)vmIZrHKlpl2wgoMqEQfNqqaajZYjL1q7ioh1QP9HAipH5jAQDU(mEgdPHmFyyyyeNJgOjF0LKeRB6aUapduZRaqBS0Bh4Cu6PyTJBZ0G2qibzb6j6(C8EH2ZKWa0QYmdlX5aWfeOeJ4vJjYGR0dCSyldldTsPBCoQIrpcIc8z01SPpkPiHsATHQ)tERTGKbXqHs84TIWmtRUAqYBP8pGXkZMeqNg6jwL0m(bkINXMaljJg)c6KmcV3OgczMeuugBMelgBCLkRoWufsmUGcntS8t7kfKpRIy6Hr8mkijpRCKGXc2uzzWEkgizu69IcSRI1yUvM4dAPSK9uqjvBpeUndXjfDafLe9N3M6)AQD2c1WK7ovYyRViGGDdDiBWvzUsLLxqLamq1k2X4ZgjqxNZ4rMrBZW7gKc6wJGgxuWiq1vbmVO1(wECWeMsslRjBE2trCQQS8jd(fnCH4KZzaAtLW3xsBb1cawbqhbfmMjL0cDufIXAzfMoV3EsAHErSVcAsgZuZKsAPKkGkrH9dAWts76P5dIKHCaGdgIMYDTOy6f8l8Ej5kmMNMtgAPRm9DMoTTYcCZ8q3jX58MbotVWLXQvNEClb2UPZ(Xfqb1l1rSl2b7a58mwJbTIfHCBC07Vd4ONL46al28w76T9ChewpXSlaMraApXytBVDacrZcTCEiRlKy8QDWoaRGD0tm58lsgF92baHMwrpwWt3Hejf2(XMhGFPhWkuY(qB7c9CRfL6WK)3R7y8QnVxcgOy53hKqKoUUyxymDX98xf0MaLQfzcg38IE6INoqLGKZsXBoGOnavyD0fZZxopJ7n0Po08vgODpn6gc4avwrNITh6aGOiaBbMfMncEEqZWwblyDHuTIbi4JS(eTpScDOU4CjmsKXsXmUir4hvEazar0poFXqx4cv3ybcmfWqLqwI8AWYPigwGsLKt6H6Ij9iaqagzOu2PsE0C6)hheejyU0d0fhe5eSq)awbDe8GRsnEMC89rN3XakoW8vOD3iIeGy9GXNiSgMJccrXnyuFUFyGkvWCkgyvGAJsnsEu8HeXdwGHPfAZioSI2hqpR7P1VXtfKANDngz2yj)brUakaXvqft78xSOczFoWnrFm6Nm5pqdCmzdKJ7SIPt(dxbd8fg60yOeFw23vvEImcyvGTqbiUzklnaCrh22OaY8qmw8v9xxUDMsfE6Vnsyh85tL8hXtATcIFcsLs8KBF9FoX8tnJXrqLKCk90)rp7dZr4RSBgby6hLiWldJRaM5SSIKaJ0t)hnqdq7Y4zwdeXONk5pq7CILV0xTvoZ2nI(pGXGBdqKQIhXm2Ps(djU7o6j6SCNnKnvYFGPjJQz8qNYNeBOE6)iQiYmYG2GzEY8O3(HpxeafKaoMNSU0p4iogmkO8v5PZCAfO1B)WX8XIH1IHKpndn6TFanrWydyKRoW8XPTD92pOFRePwyeKL(ET9WvbXla5qq6qLEOlq5bAYiAr66dua(wsFjMuDExDom8C0IWmXJkcOB1I(RS6eebINs1zqlEH(em5du7Up15JoXFLa(l9wITFc5XeSOW4y41HOhO6nnkAafot4gAyNkbPEwRsoEwbJfDybNlK4Yta7hB7q2AWcB4ss1UADgo5irb6lWalpM4m1pQvcZaZgnT1NGTRXLNzsejO1uKRljdva4fGChSgq8JjK4iHgxEckn6lnGcg6xIltXkdM5(ANuzHEpaRDGxKzNqBinawmgbwA6i1tNpHdoZHoFo80mtC6KEB9OSHUiyaxGPpqHjn8B6((iHoLMUHGocwpTpMyWs1mGwUo4867JjEMvcfjeofphONmTvyCOcO74XLRxnPpMaZetndppxUy66nPpMO)eGqAiCaAsttRMEiTXweP9nasIt58tz5deXy5bhgKm5GMZ8PS8XHzrEgZ0rSmQD2jtBLCIcLUYdYmtTKAqARaZTe7ib6UuC39T8rXzSbSaOxttNN(P9hERmRz5X5e6u1Kw(q3vXGbbrD0P)tz5JlJtdgnE8dtIMDtFC3AXDjmIwCRBklF4jCgbst1XayXKw(4kyCLWcmtQhFQp16TFqF(bA0qgTWnPD9K87aFeuqqwwDEA6v1tYpepcazaBMHh9tMrW7BhnVe9DDFVJh448SEsokWYF(cQZHXs0Vp0yZGT1Nsxe6kNoN6SbQua3fIvsf7P5jDfpzUyIIMQ6Qj0uqOyrGPrubbzLcvgIj5zihzR8jEYPhPd9GxGi5GTZgVBQKPE01GHjtTIU7MEonZ48(PsMAhf1AO78rNAgM0Gn9geBb4(y2v4CjoCOhvJeztnxJ4g(KsvZ4TeOMX2GPkDsuO6jvL4EHavf0GrZxssU4(zVvoXfHvEhmfspnEAhnovLfdBTzYKPiZZ9m6Hdh1JnzYaMXS4a6B00rLH0(RFGtuk6ykpwCOByNm0VeLLtoxHz64mT)KyM0Ntns0NsUSPWtNZCqIVxOLKU5Fk80GSNVA6KYq1Hr34jtDopkav6aXXKM849tMA6mScMkmm0Fj7B9KQY8KhMjsfDz0CJPWttn9mnCbaPG1N4nJ(jtDHxYIvy9np840tMm10yAGJhAGH4WSrcDEMEKqNB6NeDQyI0cKXaisOR0ONijP9ejpLylH(n1348EvGhZJGzJPvXaFpiAxk0CndBa6oEKN6DyyAW8PkFZ9DWrYWxl2vZlgatN4ai3LwwWqYaz3(wZAHLjxAafgjzFtCRot(wGV0Z4uxKc8Vjoa0zvb6LndvG2zU6Os1a9MmMrfJehGmM58yfgGiY8PVvEYJMPKdn(8krGDtsAWer7GkadmwrtDwcWWzzUtsW4vwE3joamyHmxGd0be5PaFzD3yPtQzkQecd99aatZJIeWWzbTVRR)4PNXX3dd(7iVR23doEi9YvshlxL0JtdxUwCwp9HyEv8s6iRKyo8mumm1jOlKsnUWt4TqyHU5wePBCaariwNzwZNBadMknDY1kycGJ(gSlYTMesuZ0NjqpqtDJPJzlZoiQYlyRlkKUXbGIBeRHWkLjkzQotOSs2VZkCYZIEyyCaaNtGN7i0tofvoLYxh54CnDuSLPZKAyKu5jGktde8w9muf2KNL5Gg3ybjfajvmmoaG9iWd)uMxJHQ4TKxhDjALgOPyeOst9OM8ue2ZI1tYwdXycUqFTn2JjfzKOWYtXtAPxwgWKLOJBySbYOtJkiuIuDn9ridODqyomka8LH2y1Ky7SzKOH6CDtJxMoem1QD0ZxAt(ZohAjln9fkzVZdPoG1ZCEubZbu0)KJKXGb69ycShsLkmU0yMXCPqBz6LctL1decclKSgIwGTiVtnBKXmWh7m0bTz2rcgkEtyRYJfRc(AtP2f)664fNcJU5aJPHXMwNuxmG4OiRtA)zy6EZyRdCJjMW3ieeOnPCs8MPhNt8IQNbRmZXqZYGaPhymnDTnd(iRdbs1NKeqJUNna0xagxYJ2zm8Kt4JjZGwAulpOwnm8f(PtxJmPibX(ng7prg0YfjPQiyAjmDg0kN9Xm(1aKHk1Bc9nLMxudq0gqvrhw4EEzoelE2orAGEqN1iKI5nyK9Z(xNB)qHddyf2Mj(WcBRcWlkcVuB0QQ)NUJziWQAiRaI0nQqipLcNXWMUFr8BNAOA(CM85fcTrELH01pkeDakf(S8G(vpqnFo1HNNvW6VXPlY7WscggwiiGLSQi18DcXGCzCKXstGg7h6Kw7quTLP9iTfFOAEo)yyKvyRHvHrclPHPrptHSqUCg2piedqpUI3BpsY(gs4Mjcia1MH4XwxJODvZZRWdiVLrjJPlt61okeqd5o0VXQuSRnHyacRPDjgTKJMP3yP(at4DflblFL4NEH7NiOfx5r7L9PLBgXvNZ4yZuawpS(sznUaT5CB3st3tfaXdrAwcHSGemPHNOHGYXIgK(wZr76tRAmgrrMgW0SCRBKW9ZkJe8oq6eZbUoPWilry5(faY2gl30PJWzWwKAEiK1jvb4reULvqqGfYMzOAEy)tGbnfyAmvvUvJFeZLZAiwPTPbpSvnpEm8maTkmC13jAzypTGbbHPeNPIlOx4(vA2c8VqEEUXNMMbkJ4GfOiW0X82w0JmUNkMsoEtNsEGH2GLUjJKuD8Y6OMN1tyglExgvJSyOyRHMmQSNev)ctKhkicu0z0d2vHUI(7qsbiI4sNKhM9GdWeZGha2mLsbBUQTD9RZlkdLKd0fwT1zEcSHWyWgK4eNy7eDSFUCK2ZDKELEJAAXPmWQe1NL(Ann3HzOfyxsODQQuXTRTtmQrqJiDvptzM000HvvJkJqhuvjcxxBNO(xb0Pb0aDUDpjyeiPHgDvKpIq1qgpG(Lc(Hr4pn5Gkyikb0BaFV25bDfQA5vYgZyeM0YzjQoGoGxMLB6igvsTFdREnaiOJ5DtzJwB(TyyiTGsENxxfZ0Q1ucrML7oRwPQI2SJyuwssI32XJLvvnQ12JsdDmu2GrxfU1oIrdmhaPwbdr30jdXKmHGaLTKyZpumki1XMnibGgoOQ03jX0O7EzbQX3QAywt5zjzsNMiflCNe9c0vS(ubJgvMLpWBtc8rMUT5SQiDfTGwVWkNh8j5ifvcui1(j3ItNDopDocpNaYZDPc6BYrkyZkDQV1X6HOtnILlzVg16LracJKJu50DYqcpDoKjt3PYIjQxlJbxxBb9nWuHyedt1ZGmOte4wizsMIXluLwDkT2g5Ov88SIWcX8(0c2QO4Lm0HDSgk3ruRkTKl25zDEtmdjzEqcyiPQYAetYsdg6)iPjZp(erSmhXzDyqlks8bEQfnPvf4eDvSyf7gHqE10LbZVyH9bOW5)ZvVKJ)0)LfRyxdTym8y2CZqFeQs5s7ZO0yLlrfYma9SAvhELc6awE)Ty4sM8nQULMfdjopYganBwhIylVvuyQjYmpjZpSyflyYnKX7Vri8txKAOfVivaEeYiytYzGwY)GpwF1qSxHTJCA2NukpWd4vd92eJQxbVQ1aGgOeVi1gnpVSuyy01Do2gAJAzbDUzgtQEgPLwTVJVWNg1sfguIr0cAMedT4blaKO4btrrT0i7ihvj50N5mwT8ugTZ1exDL8yhHarB6zjUrS6NNSaQMAr5VU29ep6sO5gn2sls3QOxj8mQ1mNzYYguAd5W88cc7OaSXkXVS1wNc5qqtAMePP04i2lHkicnEpKAyicDtvgdJp1geAeplqw0gOnMxumfteAeVqrthTdjqPXGTFOrky(hL75j)AAWc6fAePYHybAI1oBHzcRK5rKI1OZyXhbsPrQFf3yOMk6v(koIwgJiTZ4E(fRfqDcuPzAw22ffPMSW7TjclIjNyTr5DJigAblFj0iMIdH0AD2Z8qfQmbzqfQ0qptr1SAuXEcwyYcDERo5UteMv2jVHAqnXsCUquiPPTdP2tIpIW8WkzMorYtRPOsu95PeedpsArHMZe1fpgDoCHE4XYbtOAQASacrcDrZa9EqLsaWEzfKms2UzOJHZ4rrHXRshWEjpQLK2Jov2m0uuymzMgmF8kbkpVJvS0FZm1mPlnDdXqrNwXSOd6WycZK6NayRh4eyPTsGiJHHIw465nmTMOpt3DcI)t56xwM2pmNhyzHkWzfIQ80u8GjOp9)wEqonqgjZZzHPWAGfcoarCEIm6GCBzcAfQtPtgG3M)K0J)GKWZOv0jDe5X8IyeSNH8mFepot3ntJYc00pj38Q8E74CvJKdfkSuXdPbd9EST1mSbf6zA0dt7V(hDs8EAMbfNPE7iMt2wkD0dIwPs1d62QZQF0(CmhbKBjlRpjw8TIy8JwIC9pelYjlqGURo0uoRpJZMSIyio51RiZZpvk3dlQxgigW0xvarfdpzlg)npqNbTuJ1aaR)kvAqx7FGyPyzgWeJbOOlS9fu0KsAEA7MuFC1frMBOoJCjSIqdLLz6VAW5YtRMCmzzWQXUG3n1ztgqdAyGky9z6spuQ6foDAAuoRLlAsU3n9zRdJufaZA5PXwsAe21ZQxG35l5kXqFPkzTn1IPlOKOwjn6(6R53Z6ccwcPspTV6NaK8UbKz0gtjX0edT7TdbezwFhd1ldu5nmhlIeEOtOtICD)mqfdhgBsvqoQNkMmduZyKB4zvgR2n7KrmNLcpnyTW26u5rIyo6E3l55G0i5CkVb1L00KhxCA9uXi3do(adhjbozsYz3(5CAHC81GMKrKy6PIrotPZCEMBrfY6evu9R5I8yoOLXIHklFYdCmQXltCblpxsmftLZPEl9QCUHLGKQ6C2RxoyQgly6z9cMUi8MbqRqouz6DKJnn6vqIqIewUPaXzQ2t6sg5kXJ57rUAqr1XytAf)0jskuDYgFhpiH8mgOv1MDhOnI3QzErbtjykDK6acwqVInWmro8ddMEoLoeK4TtFbMghEm75LVFrBTD0XHqEwKOm4wfX8rm1P1qcgRBlYFgDzq8rBdMoKFXd7ccck3vKEoNjjmaTlv3HoS5SyHMgr)MrNIQsdlapJ(yA3aSwoklEi0g6WsoxlKdbIu3otVKBahepO48JCYtqsDgumErFYIZk5ehJA6XKKabQtUKUbtNj)SskEoEcYepRmc1PZ5iuzdJbftGBWirtBdPNUfjQsZhlD16fB0C6N5CfJlCR)XBuL(ehNk0rEmVTYuUQkmUXlom7Yi6idWUfnbU7bmubp2XOBK5P7yhR5yHLqEeMT(PA6ATzN5pGsmjt15iDixY0wnbTzbYo3aIAq0YmjJ(1cGz8QoM7J9bnSitz6utmThNkG0GHitE4uSK0Tdzskrfy2envMUn(Q8avZscaA4jTipJrtYHO(ffDoR1cgQEA43u5pSCS9qynfuSRzsvZ88zach5AolA8jj4yEUrVsxWJnYNi)HLZpgNePAx3kj0o4ynIh7ofSom7GHFWXgKwcRTvUtC1twJ6ojAXeAoZ(7jRrDwfdmghzuaLE6mDJrrKNpISsyygCpj2xsY6PNe49ntOyY8hwXJPLcEAayQR0JrZFyfl5jOXso0NsZZyD)(JvJNu578SiyYJ9USmPWTQoSPkMk)Hz(9ZZTnMk5(ohRP9Y0TGCMBW5mGkNM3YU(honmTQyA8ZuRomz(dtv8wEajYtQS089ThWvje(A5e7XLEcqA6FmUs3byyKtzbPBNk)HZKSjLNacbQZrnz(dtvwzmPkyXPNaMVx(dlvUe0e5zPHKNmF7v5iC3a2aYu4Yw4h7yi0mMnqsvrMgDka(lVac(P93EvpFTMpTJwettH9xSqMvMo1giRjA61JcM9kQH(sJXuKNPnGVnK3Po9D8qj0LjzetqnSScdmIcmUpusKZKQHMLyjyhHunAIPEOJwCsWaSmhZmAv6blGvmiGX5iuF(P1RSc5fWRKf(swWMMPbkEWDX6INXBwpMJwOMgE2tXZFU00WrIpktGAn9m0Wtfhcgi3ZlhCOHm0zUcMgUaNZlDyFsIY1MdwmkFmh0XiwNE40c8fuUHIrlUkFb7Doyz5DJdVXOlQZtNM3kZKzw3tmnRZg5CWcpRIkFSEE5Dh6mIL7ANchzwuQ8rC0IrkqhWHi3EoDYskEokaOmSExcfMrkX)CMSHm49kLVta24j0zGhLik((B93Cs4ROhsynrrPr6qQT8SMnz4ROw7QqcA7Qy5LSEaDYXXjV4PRZADvql2zhQtztB3S6toGD8a1n9Oui9chxQCaMaPUMemQJFxOZ7z23rhVPCWiO0Cibc94bFRYlX1EGVyyYtOPV3yoyzJsCBWAryweifRg)KWU3ehlOLacPzcqAfyvPGT8a(kVF0P7qc(b(SjwlWbjS70SPKubHochCa8WnhAWTJeUF6FjSAHzKJQD6KMbmOje2eRx7K15(wPYCCJNUIWs36SeCSW9t6lAXiqs7RJwPDmRuzM6YGHZtwCxYrd0GkJujN1tbAPALN8TJwzK8Csltm6TOiDnW3FEWHFG1tvMjT)65NalROBLCk2eYCj93q)ead(GfykrNuB76FSXRKRJFE4POt9Xx)kJ0YdELmzAyTjRF9RmsQ0iJfwkJJAYjWu)kJKoZLNioA6h)S2XNT)(bWRxWtYKCj0vTTR3(HCkkJTy58xmHD2oy)qYHygyfDw6713VIwz2cX6Iq3992B)aW1iNjZClVn5mIQ)5eapqWzARZSoPQcq6LUj(bEx4yYvE1HL73TzZ8MBaoE)qi34EB2ugV81pKEvpuDJhXRMf5EfjEnteVe0RVphQVMmpUd9YTRpw9Mqd297L7jib5Q(lEzhDOBxDeJJ9RxSHWnEylV(VRVDaHk5z3Ty9253wU5(2pKvb5SZU4hFNCBRn)0pC2j)YRE3VDXC5MH8Kp(HtMXPeVyiVBX(VoV5fGHW5V7d)0zZV8Jx(Up86tEdB2Ro7YtE9BMn)1xC(7A(cERJmtUy4Jxehv3fExXnGRikJR4G7QKBqvEPMCC)M5l3W7D(LB2DOSZlEZUB2T9q9O)D)6zF4K38MxDYLNm)3o5dx86l(jS)cERzV91xm)hF3Bp9KlNF5RF7zCC87vxpEl2UD3dBxgVlVgDyBIxyh)2RVaRhZ5Du38pEb)HmFE1RNDYPV5S5V7IxD2jx(ZZF)jxCMSeu1(F6dV7JVF(Bp5xKrZyxOy8MeB1rEpKvFzJKsqLC)Km7rb3oJoSun6ktD2hn7pOgiEC7b1pqLqDKq98(nrUKnFZzNNETNqkWY9xVB)DYvHyf1OCpo(QQBI)U3F(vxLjYv1K4MS7wFyPqNY90h2l)uUcipnEL)ZRR)27PP4nZy5(BEmE7uk3WJYIXhwSE15R3UAWn2))t7nEAYT4LGk4F5V14Xd9)kERVvULy(x1B7e5cK8FHeow1)kFB)lJyH35ZlGIM49pfVLnRUeiZ5PsDYD7jVtpBUGp5nRLCbFkcu(XhGrJ3jxMVhsZuicNZkXJC2LL3bnh7)F7W3)YVwUF16Lh)(x(H0peSLRxkJ1)HCdmMXdN60m3rcTc23FGxwAZUDNyRyYTk8R)X3DXSp96l(15)w5I7Xa(uSaOs9W9fcu0zNT93xVF3wElUIXW5qP56T38pgT3KP083U4M1lNFoVh)k3Z2NgyoMv1IA9zZwU7H93W7E7J7x)vEh89(BF8aMuBIZidRgkvA06Ygz88kSVTDYb0jYL(8JZN9W1xVJs1tDDOB0P3X138q5tn9oz)YfBlN)wSd8wqjWBD1ehn6hRtxVFIEKl)ZEG0mNt0lSHZUF9(1htDkzyKU8nl(9fp9u(d3(4o8l3o)x3Tbd4DP(VmFKEC2M13v(0D5pUh7PpSVC(73T(aOyuMoE70bJGI98573D44v74va3p82173Z7bVxtwO4oR2Y0iPJhqZkyPoYN9N39TnYnk3PBK7QWF4Tl4vP2LYDPE7ZB7gctaY1l08ZEZ6Fp(47U7k80L)X9aAsdBcpXNmQool1ij8O8SNc0thUF9wEVY9dxUF92V2(kZybbLAJRusjX57VaAHn8gvC2Uh20)r9SqS6MlbYjcyOA4k3ZGn3dKVDX(JpYRnWxTiDbdM34nD81kpSvQMY)0MfR5Tx3L749o4pu)N)VAQFAJnYi14awdJpOPAaSBlLO8t7XgE)XoSeIbfl1NSgw4qXX(VvE1349MNirko1)PY763hmTGT6o(RLbcYwejcVF9QY7wVCInAMKTDCHRC9HfPuoDZUDREe70Y1tA)9l6LHog9IXbpMBgLg7KDN1N0QXiyJMHJR)Gn5jAgJjuu2y2)fhJF)l)8IJ7LBCZEdswUGDSqM37mX4und8TqyeNAvDYz1KY97hO0qLP6ybTH1WORM6y16fayo3LoDXQBgzXYLN31ZXMO78Ieiqr3Ez5697(MCr4cI1)hl28Nlw)hd2SzjJ2neXSwt0XU613SvamtY8Bk545C5kUS3WrRLJnJulZ58jumC(82YvuH0W1e60lFOJv70U5Pu9mtUuH7R4X2s1PZIN1ZZ(WUJl3df4C78xX(YoOE9v72mGTN5ABECe0yNVSRegolo7oaB5UripS9CWntu(SAkRfl)QCbA(lR5Lw7p8(fhoa((kscwZbDpUK0gEbY9Kcm09fy04PGISSqfGcEZiwPZyj0u1QWwiJcDCCGL3(EvR5F9HnFnsfbwboZhSLX7fmJUJhfKvm9WvSxV9WAqmTye50UyD0zBP)uSarfbw8Ie)W9YQwVNJvot1dMNWgNhXa9bGFikXGyWkpCCSXEUruqylseYwr08J3k3TYns5)WdJOJHKSbzzplHUtfIt)FC3w5UCgDXRwWR(2F721aE5(HQQywmhfhKPtPFD)DPFZmnauzMRhfkCD5vqSejAP4P7Aw(nQyuHRj7Y5PpAevaq3CLCHbpfOaTOIlll9ggF2Bl3uwon6PVTB)Q5QyYF1OFvjNeRc56HJ7xSHiGxFDFiWNSAfGL)PQlO2pTMdg8JL01dYJn)G8uSRBjiziUJ7ilwU4(B3TD3dyp4hVfJJbQpDzk5kj6ISAQrwDEXh)N5LA(TuSE1vsETSN84cyEdpKKwNrvcRxrKnBogxYuwxuWF1vO(DZp842LrRII3hTVQ6kjT2vkZxZz)(hU)4HEgm9Ti50NN95zC8STCd4zp5)KxDT0Af(5Bl)d0XSZB6U73xE)Ub9vBhC2BoNdn6rNYOtJeRNwT4XppdBAZIxLRZ3cryhxCdF2DlxnhR9l)6aVouFh6UC3Unqy92drFYSH41MFF82P)H72gVq(fVZT7(gJ5UFxvZJ3SZXi41RNONVURCo9ix8nkDcihwTo2pY1i)MhNhVLLNl(qK(N60MppEhZh3bK7A6Qco561BQURFNTQ86YTus9l4feRmLR(a5o9V5BpkaHeBzpk4VflrB(AY6VBR4Rnz)pEVJF9oSab5BCrr2k3Ty5T93Pl3SChVvYHzmItSQwhfZAz7NVLxfVx1zJoAc8(YLGmpT)oT)UDNhsU03796L3ZTRpgtPlzD7617pi25bQq8oQ8cw11OBTNxXAf9dO841R8YhAYGgIzyxJgAx9fh4221RVP286z3bjDcp0HhUA(IJqV)vpCmEnddo31)jw3wSz22f3l77sBKMSBoFHPcKQSmoApA0msz4cACrzyDNS(WBIes0SF(zYQ86dnUG(q5n3vF)bJHxPm86o0IBoZ2sNbUPYnJVGzmCMwcOOYgRrBMsr)HKEpYH0IlxUbDSvXS(BmxvK78cMxIU2yIpJKNceJzh2Tzx8fWrXFiV9VreqkPvSwuJovx8VW)ClNp1kt66rZI0FR1))UlNUSCM54bwuBQMIXlUCYYxKNWDgEMVO6VCMz5nax750fwOoNjwgRhcgtU6456)NAb(yFACE3utekEdtUjyvtldwQaSuESQBi7(IkBfL3WZ(HtE9R6WZk8IG98VIjxcyYk5IJVQ3z0rid)CSn8qu8rLN8J7qF()N"

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
