local MER, F, E, I, V, P, G, L = unpack(ElvUI_MerathilisUI)
local module = MER:GetModule("MER_Profiles")

local IsAddOnLoaded = C_AddOns.IsAddOnLoaded

function module:LoadDetailsProfile()
	if not IsAddOnLoaded("Details") then
		return
	end

	--[[----------------------------------
	--	Details - Settings
	--]]
	----------------------------------

	local main =
		"S372YTnsA6I(WSUy6UJ2EHmbqMaveRlKkl5Y7Yw2Bt5QwZevyAqsijoIIKdiz5sE3JFvw30pd9vR7QxS133FMaibiGKQAQoIDe7DFWsIeip8N)NpLFu9Xl)4KTvBUA5Qs(R7UzZNNwuvUUyA1MvLtxoFZ6po7JtoSRCAvzXQ9lVRCX2D8JQWtEvXc8mRXBEH6JtWVCH(Jxe9C9h3JHApEH7kRMIH4QLxZr)QID7XhCy7II9LYG8FCy58BNUOCF589lDtvv5UY9t3TTC(05fZVPKF26ntlwvwTxENfl3vmdRT7UF)nlNpDXH1xx2UklwV8UcowtlMpVC1hpLRL1hWcz58Ivt3Dpwc3jlx(07MJT5k30UDt1(P3Gn50vlxFRBpwE3MF2TZVB6vvBUB6ASLWyo5ULyEoC3u81vfRwHn5DZk2pLWhm4ryvwwS)MP73SbWSTt)8Yf7V5JxeNg1mt73m9Z3S5JtiCB3(I1Zl3nDx513vUE)UPR2m)2YfCI4GVC90nRlXGSEXMpVdqY9UvpMX9RkVUAZH1lW7wH1Y0Tfv434BUD30IzZQk)5Lc8aZ(hN85nvRwuVyxUB6(QID3Wh2DMqWoMwCeM(XjZ2S527kQUD6(YFbhil)c3zaU1cHLNEkafyy(zaRX7LKEm0g)4UzBwTdV6H9BiAWIGzsL2hyTd7HBj43VHFq0SwGhGChMoFfrOaSDZ2Y1CJ1CaTQSOA66Ypp)g8NLaNHFlpVMU)(TLCiNaqqH8GRpSfhbxV5WEUmANcGhUA5m3YIFJNYz6oS9NUDZooKlkVQ4WQ9tNDnWz3EtHhAkqAslmhW514)lOYLRVh4GBQa2C5UDfxx2bdNKq7NFJdZJqNzfvo0shL4uqkIxe0uK6cJkEPf8bUAZ69yUwTPYbZ4)tl)BS8Vj8FbWZrPx)IN6FXD3uW93KlE7fNv)rUt)mG43HQBAWKUR4UTCrlpkW1UQc0kaTC)(LRVExd3L9lbolNlS7a8(JtE9B)raj3aSOpo5Y3(o8fa1PuoQRjBIazZ9F8INPiL1VaikWolMF7IQnB7SnJCygY2ms2MESKw6PBkxE9n7XZfluro0Em3G6PqWGXkxq43C1vyTl4fci4QI5LFCY5vl)Yx)0)3hkwWf)x)0LyBTzlPgaAk3Wc15(JOsWskU(ddz7qmRffvG892LRdp75kEkaYG4E70zh2VhZGW4bSKQUFkMQpEHjrWRWdUKKzRkjrirl)5Ttl2nvExbL0pMoex3NldMJOWpl1yavZbxuWo(NxU)EHH2umE8Rc4tDy7wWNUM)bppMVQa)nLxGV(oqI9XjVIqvc2(PtwS4TR39tVOCFXYv7(jaeaM(pjVszZJxdg9KxxgGiSFaUof)snxN4a64PBQwE9Y18OehCBxvCp4jUWnVdnYte4(KZw9ZF4vePQs42DOch1tU9EiiOKtEdcGGgtgnGz2z)Iad(CX9Y6dS2MI)ylz(S4EiNaujEMpDyI4qvXWmv4yCjLUvbia)T7)45pZgNRtaIEMnlkwLN9XREwscX6p3KhBTjX5PzPX5QSy(nKN(hppnptfNOv4FtZnkJ)DWjJc)KcJbrIBciy5xCexEcl8uA8tbRvOqXcD)HDEEncxv)XkPSpptfzsS5kvsQklvZ1xQCcaYAc)4qSU5nXw(MgYtTJ(eRGDlxiSCXuc(KvF88eJrNMgLyujQ0eDIFuV6WQvZ2uTahIo(kcV0BWBpfmNbnQxwgNpHrqdPYdY3ZZlv2xtfDFEuK1Wxz3un1aaeXtbPfrYcLylAHqSHIvlVE907GWGLtjgey4jCcNXZ(pdcukJYt1fSpRHFIOS93asZRVPM7Vm7h9LvuRGzbNbn4WjVB5VasKjyHiczinkNacbfofRoaQfHvXNXEPYRggpIeyZIYDaxaS6CS4d(trCRttOoWb3jRQw49uhL25z5kRsBJtYIY15nynqbMQL4iZPPz9zS)ewu(802tRMHoaA9WC)Ld7am4gbY5AbXB2OiEnIxAaLxavW8izHZ35GuqRJSrrM4i8lYolHRHZbbSrhNNJjG)Vi3qlsL46YHfVM6eWjPHVqGi1LRbdKDYjfKoDquTKVlM3N4dg)uFWKN6dM(uFqZt9bTp1hm7P(G5p1he6t8uFYN8zJ6jF4OEYNoQN8XJ6PE(S3zcNZIVAHR8D5FafDGo3nYKRvQjGuACTlD80V(biTQGIcCv55QuRMRJ1DlzEGO5V(Pj7VFv5x)0RGu6DFEjF8ffKZCLtF3vR2agoIvMKvXdU6c03v007HEyVWFpRBNPqRwE3Yw9dFg1j1VKO1J1ROUVKUws4f2OJ)24MVnovowGI5f9Lh4KndGdbGYh0boqRedeggkFO1GLjIO9tlQMavNwqO18sk47JtEXzxEYRE9KPtU8Kl)WKtp59tF3R)WlF1ft)2x)2V97XIsuBE8h7Dto7LV5SlUmeN5bE6x8Uj8bwU77wUawbjBhNXVxwBngbmNlkDhOPL8PNqbRckc17Z9ck3xnPXmv(xF7JAc0tAlfUqp93Xcn(FYlu3r0L)owz6)qwz0aRYR2)yN3EfVGj(IwVtlMTC1Y9lHkXecrBjlVZ)xD414M9t5KFk)Yt5uFkLeDkLYquNTCtEXZIjvIy86PH(gOMZshLrFM263o4jjlYAFK0N4mPH4mIkU1QO30P7wxS974ciWyFpdUD0hpbAuPQvQzDJVIQb69O3B1ZTdr8Y1U3BZ6v33o7oNbrg5lxF1MrDHhXAPh1EA66kpQJnVZ2e)MtqiEn18wmm6u3e7yek0773SvGaoMf83e8cbOSbhb35v9XRu10BWZTYXyPDnbtSlxVy350A6F6dV6z()(1l3T)zFx7lWX49oXx0VnhJKSVE9643pD(HD7PFuOUwKdn0mEX0(caG5nP5jgDgeyLNyZmEL20J(nXJ(n1kG6WoV0dwai1Ds7WxDaiL7xc(o8jZk3)5YshsPhI(S46T107Rfaf1cpPwRE3b6Sh3TZM17KZzX9tr35gdFhdZrKo)tFlmU4NEt5ILf)05K65NAz38897VIU8tidA1YVR4ZTLvuouljHB5gEIn5)hEkR(pF(x)K8BX)NDDnfGr3Tzr5kbp8WwmItL)gY82wUc42NmF5ItRehnIVVS6Lva2(83OPZH(C7t)J0dP)0z)pF3jxm5vV9Ii9p9I3(2xCYlMGn5Qffvvf)03(2x)ItE)7pbCD)WKNFNUE(cD3NBmdudZ9bnpIQ(LAFK9TwD0tfUNWbvJzkEs5V(jiK)ubx6RFY7S7aucN(doixJD)Hhs1kh9A6IN17aFA3XWPTiB(tN(igTpWdHYm9nLWmYBGaGDa)XH6CP7929tVg4OjB9wU2hJ58uRjXgdcUeqULAYj1w(Gy4ItR47d7EVLEAN(JbwP2fZ)5wV)KToGk)zsaJQ3F8G2J96ay0pKNfECaqn)4ghxDZY9LpF)1f(b(6kyQTyyTpQhTCSRj2F)0z0ZGybn5p1)mJGIo7mXfen8dLhmGLO1AJG57rrjr5rAtwllXr(M4r)Mq01x7yEV(WDZC6m7joudXp7JtE2x)0z3TD)91l9Hyo81p9NKFt)F(N7VHczn(qKtNNgR15gRktLOnghZCNp02xar6fxXqyfsI0Xrl1yynFrWA(1hrb62jdiF60MD5GVXVz(4R30ekpbbYJR29D2pOGKF3iX(DEGZZ7ReQGOfUbBy6eiBJbnC62D(Og2cz2vUTato25t(RbU1x14ALwnTAvnRoMdV5Sx8Qp8gQ)c2ILeLOADp(1nX5X5xwtM2QS5XjM48CvenMnXkUL9zalXghfLfBI1wVDUQMqAC6BV8Y3(M3)Qx(Dn(DEeVH5WXCUETrDU21Uh16)soFQ2S)a9nFcypovn)HEo1D6cAyQ3YaJ8MpZf53BjOVHtJ3mvIPsoM78KqFE5wH9f4LnJUbJ6oEAplP7AtR)RGk9s0bfFSo)qf4flemT(s07oT64nDNJ9I3YGz1EF2ZNXRabKG0LJcJ07)z4y4uQUXRbou6FVkefoSRWNke3bOFDmvXDSK067I(6Y(OUXiC(MDTt54aWzx4SayfsiXhVx6vsDwTwOZoMet8L8MDlNxS5)xwenCiScruxLQGDuLf)SdpW5E8A)QiYrHLQs4Jx78pIhk2hvUda4Z4Z3wS9OOX6M9ZT6iO6cKicOGnl3tr6JX55jgBEQwP0gBI1a(hUnmozNVbeQDWeu9jq9C)a7Guf4gbqg(b4kXbjTbzQj(a8avICMUpxLXIxsT0Sa09V97E1z)Wz0)iN)(tEZz0sTtMFZsmW0fep772uT8la1Vy1ehDNy9p(ZPCbC0rX9eu2eWsrwvWK9QV9Txm5NE1f)WuCuTC10lX2HoP8r8Cxt8qQLoK4noVF4o8kipyOA6huLP)XfcazrcagT8ruw73BC8fLbQ3KGyX9bD1Yv51Y1J88CLp(4Xn25nEC)JE0yGl8xMdW6cgodqCmD7pFxJxl79fYzCD0YhjRaQLq)7ko)ZAviqyi4ZJaDAud06ydMMuc(7lPkldgq)MCZP4oO0GZp)9YUe)oZNGpCA2rVunzEXwbZH5Tb3Xu4M3LmRwnh634IJ2U5IJmOOSdvYplHsjxlE7X5KxpJBXV4)4MF8RFQHeXTuQw6YSMvRwUq0MQtg0W0zXLcn83cYHMGm7YlnYlRBwBIo1jbNsdqpccjomntPZS5zzu75iNss5Cg6cN8PwtZ6JkbE32A)YLfC4QDyPptj88NVAZbORMdA2cvGiSBlxpfesvm5uwFTG3jPyrDYxGJQ1LFUobieS6lBXruXT4iX6iNydjnl2FdKAFdm8xCcZIYIfyTpvizPFk1Ds3hhgkaQr5jkz1slZalXvl8XS1PQlyNlaTV7dxC5zVVlk9Zv60Acu(Bou7uUK(XtE)7F1Bh959pRY9WV7KxFYlE1fJo4nJDSvE(3CYlpRLvb)wh6bewLabjdphND5J)kYe4En5LEX7)WRErZRfBvr5YtiVBcaCjGJ5Gt3BE7fFFZl2mDXM8Wx5On2lo7Kl)UV)cr97bwSJ9Aay7DQ(tzHE0z1KV7K3CYfpbOt)x8dx89x82FCGT5yWZ39(xD2K2TwW4R7UUhC6E)BF5ho7j(YDpnob8yOV1h9LJGv0z2KSHx2NDXzV5FDuSZ(4mNHZ(Uul1N7X(3DSZXVJg58upf7nTysN8qeO93s)WB)(GfyAuCUBSLxBeK6pCXlF)B)W7E3Rp5Fn4DF0J9gLP6MHN62C9cCBBYjdVHSNwNfIIc(UCBLF4SQnflM7Yn3aLpUzZEVzXW0mXcGlDQ97maOvEihnWEFNtxAhlEyv32Bwo3LKzbw43JT35MOKifuZpnggxRtJdC3oozSQ84OeysDUoWD7PPQiDMXamSiOkTUXdnD4qEUfMoOujw8iPq1R82HgN7Pk(YAmgz5bUTkvLAbsfgFlSZq0c3n0Hekk36ZaBwSP20K000iRkW3xjklSSrqasItA9Guitw3yaeY4CtEAcrLJtAgdNADN8(ZU4KP)RN96xhWsi3JAK7rNgfjkPgl3JbL0N9RY7dpahSAaNJsJJY0TkVMAi4awSOZHnjjIYR2(CIBvi98KmyeNrbZystGIaQgVACep4ZXjcG74iaGWmRkT9SXKKNhR0jrW6VOC3jGzixksJBspsouCVnDAlC8LV)SZU4i1HZAynEmFBpEO1gBO2mjgTYHg5GpzXXMiBcqHJZGzS6M9BFM4n6A55r1NVnmtWAYacFk4hHHljGkWMMNNOjRvyaDIniOtabmpkplnbM6bJmAM9oI(phFFwem9gJAEUoVDORbsqPTCqnLciEusUkQ1zuD4r)CWRuzd17(5rQCtRniDKycJDtWqPSPXzkvCyy0a5IjnlwLc7IYIZ6JZFeVES(irwmXoX)OcgkJfkAcBVIItnGkkYHri4kr55yBfNgBJTrkBZEQjqVGt1fN9HlF)jVEatRIgGFUUrOrTingicbP5SxFEn0ocA(AJtstGDGjkD7AThuoenAW3zOKigwjU86RlRQt810wtvC5jC5IL7dYqHABvykPUt81rQxHEjWX1)672aDzXCddbkwSe6Xdti95GNZfiUKQ)Z3q9)3SytRRZUI(5zVlbh4Fxh)Uo5LFT9smcDf)Yy6GNK2QdoWyf19LjSy20Y7M5swLaPt3h6J4Fj8p(SQoXAFqpWMckofqfbkOnQo3KWlYz0zk6NPKICJklofSImzUhJELH(dgOy28eWmchFqEsG)Gt5NMMLKP1M0OgVW8ltxvEDXC8UPzqWKXs2h0uPiVBVOZTIuCRv)Gpd88SgL2qhgBsITU5Ns)byrQff6GvyYtt2D7eolEuHPbomH96bRPaxkrmyfsSFt1134TkLFHllQfBc9UOPUIGctDSDDq82IpFUet1WcwGgy686CTV28jT79(mwyFzXD15vWdBZQtRcg3RatQUWOd0HcsIIvdOkvpLGVa8CTTQT1xFTNx)Wg3tBIduNmTN6N9hA6XHNI9A4bvpG5j9Fw9dOPy3Nf7TSMhUvBu7iBoQbw9txRkVA41qYt1Wv8SPpKPx9FCJ53GHAyWFOZUJF6aOrSotDme54xj)HwpnQLN5FCZON4h9SPw7dPYF)ZMaK7bwiDnq4I0m1dGNE0qN8apCVrgm1Eai(rpS5Hq)o6PBbinlJSXF6he1(i0qt(y42h)S2OhAH0)XdE6Xz70hXcgzmoqVl1Mvn6kVhmrffp(HtVbvpkIAp0dgUZXb09z4yJFiqxVHo4HhaN(i004NUjYyvN(alKESZmQNOz(GFG5bOv6Fi3sR8yUG7IaAWJjR6HXf4s1RwvCTZP)hjiF2MD7cCi9U53uENpblAZdtFWChlJa6Nn1yPKuBcQ8BXn)MN1wqEEYQ0A6wMCG01eh5RIBklOUaJe9syYbu6PFOUcsjKMfuUPEbLBQxqEttWcYfY7W487QjUFE5UnvpLORio3Mo4DGWGbJpF9Rp9TV97)jjnZynZ(S3vCD5Zunq2DZzMM51jLJBAK1NZrplo1BIQhu0w6v9nOnUgBSzBbL5N5Y)1lS(8wJP3D5x)0ewrP1H1XPHLlYTDbV2(W2UHrY29yCFr111NKTfRdqG(r3Z(DYp23STRkxHtAy0HKvO(pL2W4SFWLMQotdO76pmtIuBBmu9vJQKAvUOdjXHA(M7URy9cFvqZN44ClzGmB44Jwh2T7jBoypD1YV8LIQfF9tx6Pq6adcYy5SaO7dJ(uVlC5uDNS8LuTyCxEh3K3vU)MnlCf4eFLM0vWdq9wZ4tK2wSYwTFPXYPzrjW06mDuMo25jHeVVMO5iADcm5i3ehf4VkJnrfNOSwyhTkp2BgnZfk6HmLnjnpshhBZB8KLGa0c8Qdr9K37kUkfzZo51ItcSIswtUm8pon4X23zReYOjRMNTh1plisF77x04pu88QT9X1Ab8w(mZxV3ZQ2CRhfGgtjztx5QRAtD2wlzRhhjKYnzI8S2adjvgI7y1T64h265tjUFtUMSdW54HRyEGSC1pZYV4kjjNxD)vl5Eyrr1TBQkyrQJbY9KBpuTDLubABwjzEZK7lzvV0eBqWMFHdYC9QnZkEHlPO9lKQY5f9tRuxbL4TyR5dwT8QYP(eY1z72QYFwYI(MMBajY3jvzV423PTHYTPSAzYG4lOO9ocnF1b7BQdCHTeSQWM)Aq2wUUC9x)u5VG5Djxo0vfQufLmIb9gMQSRV1r5xSE)x)0oaGGfJ0zbUNtIox1x)uXHRURS62Dybjdo4Naw1)1V(PVSdVW66hhhqLGOcpYgmVRlxT)MIkrSK89qtXj3wqobf4vLf6n)6)W12aWY5ULLSLvupyrKe96QLxDfEwUi(sX)rXQL1JflA(IRVdNN)s9Baa0V(3XcJUC)RFI(KFZT1FNUfYWPQC1xoS(AS4VJPXK)zs8DaIk2dh2wat6j)yaLGyExYobqzE0(sjQQaYSclxFHcn9YV9TN6RpcoM0DyImAMewmRAe79DOdm0L1XtU5GBFJcfF(MsIT(Yp8Qx)IWr7ai7etZxwSYNvQN6tRiwYRu1KWGs4AVg7UF9CF5Zw9Ts6n5sCB3mklIPS3jCnJl7k2arWCqCuPmdC)D565uGc5Vkp)wqRi9bKD0PwwLYQZYHYStQ3tUe)zHBo8WhFKJBwUbAq1kdx1w7iuLlFIb12QtAPe6Mhfc3oGYtiEG4eXtiUMYXIPc57kzbtKNw4AniLWxFVMa02Khd5SSC91lyBc5ULR9HV)IKiXPEym9LirD7Bi8ZUqNOLcMC1gIEVxIpsCUe)JmRrlj0i9p1Tl5Xb0vMXr6EWbehsv3xx3QI0Nm6oA6OCDwsUrCLzwDixgyi9vYAGZ21rQm624evwQv34VRlI7MWnPquL1KPZnr5jsKjCpwhNsCo9PEkKGLzmALj308yDuk)CmzyjXk4WMBms8KCpMP7JzS0TDrwyioKFM28y2opwsM2MLOG834us(38yzDFmlLRgPtIY1mLsBES8U7ug8ka7m2mtQjQDNQI6nRjrQCmw68uSaA3dkv3nrEAECgaZMCvwKQD1P6EqKgNzJtIJYJJbvtss7Z19KaBbOxqSkb)xtUny86EuKz0jy)QIJuXPjs0kssBQx1GNdRnG1QZm5afO23PozQD3VQiJchVzAyKqCW(T7PrMf4ruLhtMckfL0oE9pos4HgEYytsAsC74L375GSM8CRnppkkl48qh1BEJnrMSKS4enOhA3VAvViaMhdOcpGHwyz5TpxpcdO5wmuOdNV0F1bJx3ZJug4sy5BgiEYcpp09opsTzz55z48nc4P62XR35bZpZSeTbuh56K2ZdD3ZdmwkIQeX0zgtC7Z1J6WKHtlqMfNrXWQ613E68)TuX6Cw4t7ygXDVtjDS0JvD4pXxfdJnZfoW6ek1ZFILc0i8NSGBrKkcGBqZhfgEMKS0CMREkgrspRcta)PZny3bK3ifDSFEuqelHk3aQRTGQph)O9imU(v1GsJpbOPcI4fzqPWXoOX04)dCktZRM08QgJcKyPzQmtwq07GQ5qlfazIZty8svnVAA9Rc6Iinwz20yWyimSzkCAbKoSAvm6UnVQPjO88SmIN44iTXubYocgjya(heIMJ5V9y2whamn(CHZNYWvDR9hPG6pN02zaCKfqXM1eNpqpRmKseSyZ1TVQf0Lwlr9nwWrv1NxjK7ePJsIajcO6IsZ9bnwsnt88GzcxtM8C9y8phgL6y(Nanids4mXG7zCuiFwDVNljrdrDjGrACwu2y8pnrjmdead0iBuw482tuMIiDjQCkvmlQvCrp(NPqIi56KYKa2M0kKQh)tSpGUqqAqAmJq7O8pb4KYqj4bsombRVSJ2VWatC8Zq7hirUh)td2OAS6S5GlBAUAm(NWIZiiJplndGW8021xp(NGjRbK0aPbKkQq(D6(JxmFeIDHDJ5y(ozrhZ4bYt7QyukjhsjcsQnpl1hzVAgpJY3jlNP6a25GDp4qK4kznh8qRHk9kMaXGinQpFNgXSdnXHlF9aREXDPTREa7ZPj(PGxno61U5QrTUXw9TNCd82hTstJYjPMonwXmziZfx0Wv6qWztxfqTGQGPpJYcwUwrpYK8hhoxRZ0GV9JTeSDbw2CWrb8xbRdWH2PjA2tFjm4B)ilH0KOEqbqzs9LtnMSOA1xRxcJRfUjcmjGQVj5cJ2aPCq7kryaORG(v2JW2Oc8qGbagjq7lB4RMcHbrq(oZyjl0V4iPCyob)7mGmduDiXk4vtGGiTnLy4qMF0rs5sGUpAS9ZaR30OWSbIzxtCkJ)ohGw8(gPCqMruIbmlYHgzGvqRqdOkxgKzMs)xfRcuWUrkhEHmXmJek6in4vttPrmPSPLqbi910)CYjb2DazC4nZvMMx9IybzVrMMfC1TmPpsih5MmurYDfltTn8vmBymJQ))G4ahl)seYbTlG8zYkmzu5xGTkqkJbTm4NBTJQ)VfmjHsPGfn0HqLoM8lMRxXqnsOiInjklAm5xPuVaOVjwLGlIk(y(VX2HOi6Y)fNxwwJ90iEa0I6sryhNIGjyJLCWa1Onlildz(hcrrPSApJII1hR3hScjMQjtDxYYcvz0stJ0sgBPIYJowVpap0IFtb3qiWnmhO0q7lQYrgZGRJ17lf4rSAsYv5gaec0aZyOqBmTQeseFmfbZupiVbu(jSyGcqRtnetc68ft7Cd0jPMIahMGTfSVHs6ZSHyRqP9iiRvdATS4a1aQPiWKcGBsomFhQSAtB1ad2EJHLYnGnGHwMM16YAWaqNqYnW3rh8QPaWdImfeThLeOYyEtLjdtjzC8nGyk15FAB9RI1llWYuWvAa7MPivOAiursdDZtYIAE3lGDIphOxHupWEjdvAbgVYcvtanMANmmeo5aAeMq8a8yqhwCMoQf1y7KMazS5W8rV1cdtrPYOndWIqylvCuYyAeMa(MXq7SmfjbJJhtJqMDJWgyMxTqpZX1iuiwa5CompGPO5yAecRaHfR4eppJPkLDavwsgIIpPNgxAMGQ5yGOzY9Cfv6dyPhmxGAkfbdCItsdT0ZsFrfLlFHJtzhkEi2eWtAPcu3jpugiybNQG910CDtOr9Xn4uX0(W0yMRQjMqbz5PmGmG0qb9zZsoIIhlhf0iggVammyoqazlmglMgDbn1ZcrCAT0lYWPfAhMdUgbgob7lzjxcD8b55aE2cu8q8eS9eYLXyyJdMv2AfaFlM7OuOYru8gqTAG0niHYAvUsBl37RhW5cceu5yhfktOHIxlsTbRrSY0IoI1Vk0SasjIu0Bcr60XKkctMIO0eWjKzz6isfVawg88mjNL7lhCy8QHSJd8VPJ)i5JoCM6t1YKWvSO2Wv)aY3md4ydDx5BmbSzzVAH(hys19C86dyGbqzbJjA7nbiKO0O9oEfWhnnkgiVWS1whZutPaBtSuZltQu)g8vRv5tChlwiSO3JtpgDpNcAGz5kwPhY5OX4bVM8yjjUbB74S0rCql4ZLqmLmJOaNU5uOhlSCEeagIGFIsL2(yM((MJ7qORKg0ksv17ES(oOvCZRLAiR8KIXh5G2laR6NRIShJ8zyZhrNAH0dTTdd)OEQUb5fGJkibOxuSJQswgyOaBMuuMvhv86HkAzuyHcb5uOxMAuurOGdPLHs8mnOJhtacWvbGcAWcfcZ8fl8qcqmAQdRgJN0umgvaIbejAkDetkuCzCxkaBsWklJA2s1kg1LcyEbfcDok9o)OUK1WwPauDlkfQz0Xvb9urgm7b6HkLcQnbUOOVlfW6dmnJOddsdj575sbdq9vK9j4osp81(C9opWmIHH2gL3rWFpxYAG(PX0jKe8zBXRAzHqPY95HOSsAofA4Acwpurkwzn2SU2oh1NfsWOho2kVJx7Ark0Gda68eGxhZ(Hrx9VFa(twwHdkWPHcpZcRfNmWwvloyIAgv3xncvahWxNkIwq0zubVk0iJgvk2QL7qKSDD8k5Yt3kMwZuU2KuaKZbBNeOeo()5d44vWv0WkbIH6XMfAnlyYafWzTUWc8zahVgROTNkWRI5IrOn0Me2qduqEcm60oGJxT0Cs6UtQhD4cohVduHickXdqF8roELEHwLsuiASS1gO1cgj6AEmVqYCqigAfhdmgaHHndjjUOP1y(nO4nqhzCKbWqReGghVgXitb2mMe623WxLy7qbaLMQwemRTkGdKH8iXB6ruf2Ws)cKtXK3k0Fljoiyrn4tSeUySjIOUsXbQ8KqdRzLzqth0rhRoorOi)7ejopXoivsDqVYL4NbHLAxj10LdlF3iAVqAQHryj4DnWeVCwKnrXmqs5hX1vg98CCQcympkd8VTuZugYeMQeCSQ8m8PKTeectnlnXH(gNs(JHiEY5iKRBRFoGqdnD2Rn1BkK3QoiUbg)gl2izsgiiANZyDMq7(WCdubvRbwdZkyaZaISyFrpjeZsEWogxCwWySLvqDGJsYgnWA0OiQdEgd(BO0J(CXZPegqka8ii8spkxCi)lxmemjx3zE7XfhYCX5kWjz8y1JYfNCQGgpr48Ggtf8C9KQc29Gpa0XgSMYsB1qQxG1W8s01mahPoRT4v6(oQN2TfdDYzHLe44F9roQppnHLsh9MxGjb6oNhxaHFpx50lk(OtGm2qxyaXyjn1gJ((NaP0RveoWcOR1NbX9C1eGNy3zbXimiiWq24ENau9Vyib1aED2adJJp6eGvLhgjMaC5bRVENaartfrVHWspnGtrC)4(dfRP31YJKZH2NZ2ZLzKRdtWoJQJHXXz9sEHiwsHwj8RdlNp1ouqq75lminbcvZte9NZY7jlE8GGcuUyYElfAlBHiSoYIztOXWyQdzQhBAmdIVHg0dgCallVtv9bzaGveujcMCMmGTcaNHpfSoo1gkv0cgFK0NwsalCpwwCMeIksyfXS5iG5hfEaEaonRCTcWEUhgIUbacefkQtua)6m2zQbva0aMOtQJLft8rOabiKHq50OGxnJ(wkfmIe95uhjl2k8jyraaDfuoLhs9IXtKE8dDmidw5rMgdP7AHLayRB1MaM1WuxGikUyJYZnhhe0iyQgdAl0AJCncEvJ0OeH5d5WSfLEaNHrBpOx7n0YAxjlx7iTHqZgkXsOMladqCZu(4owgavW7lfut0)LMrtSe8aPmrgKc1lF8eljnNbvdlDAOvG)q77gmd1mc6Qa7SSGDZywXa1ftXXgzqMzDX53pEDP2z6AyOV8iIT1KnwIL4QrWCQ)e4kf4L4(Y)sftBvm(j2OGeFPN8pg1ayQdNYUzBGUFeOaTmmCd6mNKKhe0LEY)OXFq1Uewq9GfJASelbpxQyvn9dS3r5Pdi)d6yWJbWsnI1)E8yjwIet)u6L7KSuMrJJKyjyBYiM6AudMG4o1t(h1kIeJmGqyNhSp6DEyYegqwjyMzbWL(bErsTti8nYqhf1YqR35rkZ1lgYmgU)WS)O35bKebJnGb0klZ1N2NR35b9jMW1cRGKW5nUNEvG9c0CWkdyK6y3RYY1EaPiD9Vku(wsnkMWEM068J4PifHz5hfeqx258fQVUYb7Pqzg0AAipbBElLUBcDSzQ4luO(l9etC)K9JjVrUoLHUhSEGO3Wi0bTWzY8qd7Ic0upPvih7kJaOdl4sTbUtfQ9JJDWB1gdB4csJVAzgP0xRabgY6a41gSGnXsimyMUPInb6214o1ejAh0Aks1fK9lq5fO5oina7hTnWjfnUtfyA0pDqlyiFXbMCLbeSbRBAYqptayhOfzMp0gUeOlgJUlnDKYPZgX5PzqMpxEkMLpDsDUEy2qwemGZYutixhgApvF)VqhEtxCqNmRg3)vmqSkgSS0o6513)vSARHGeQof74MJMsmmgxwmCSN6zIg1)vGyIP9HHnneMkGJ6)k6pbWKgmhGK0Wu2PNM24iI4(AOssAuQzmlFalMy2vtaNPui5mBmlFsXUilHzrjaJQ04rtjMmQfkDtiVaMcSK6OuIbMBj2rcT7c17UVLprChRbjag1WufQFkfIzLzKlBrfyqJg1Yh6kmgOjWQJbuymlFst42Gr6h)qhizx3xVBL4UegTmE0nMLpS9RqfPP4yOyXOw(KMZywbamtyitO)66DEq)jcCuBcTWn456X5pf0rqabjzvzHPUvpo)G9iuid6MPzhPqpG((XdMZJMUHgalF2FvIYK(er2tNrDgmwI(9HgBAJB9P0f2U8PZOmBOvku3fSvcz7Pyd4GDBeMeQHIUAc7fykMBzkkLtLScvvgSjzdUHKvMap50d1HEWZsn5GTZAt6yjQ9GWGJtu7i6kD6v2eDQXmwIANswTAgQamO6JtiXMrdSTG6(y3LNMg4WHEynsutvegXd8r5QctGacdJBctd7GiC1JRk17fmuJGemA(sqIl3pZWYOEraYNctHuJRpDknonkXfsC9OjQrIHNz0dhPuo2OjAycZqeiVrrhvAdhV(bLjkIoMYO4ngxy0s6NyWm5FKgDbt1NX9NeZs)mkrI(uknzm9PZy(nX5fsjziegtFAG2ZPMoP06BWodNO2zSpffPSupMWetVFIAtNHLZ0SHHvm4CRhxvMd(WmrkOlHMBmM(0usptXxOGKn2e4nJ(jQDUrYqwy9nB4pQrtuBAmn0JhsGb7WKbclFIAGWYR7NGErUK0fAgdfrSD5g9ajGTHAYto2syLd9nEoBvxSfifZajDSVhePl5kcZWbGQJh5PChgciSF85YUPJEKm04ID1SleR7eha5A7igeKmi5TZAsRAzshkoxljsCGB1zI9c9lnmg45Hk(3eha6Skl9YMMcq7SxtPqvl9Mm2r5dehGeMv(acdLismHZkBlAjSXyrcVOSJtaBqer7GYbbSul(T8IHoCXmVmPY4ElV7ehagisMNXw6aISqfFzn9etNuZ0FXAp23dqzAwmNGGlg4(PD9hp9mo(EyWFh(D1(EiLDKpcjtzPWewYQPzkXz90hIz(4L0Hxj15WWqXW0YGUqk04cdvVfmlun9R9UXbaiHaoZmYptdcSOWuvxfbtasPVb7Q5wtYoQyQ5yPhOPSXW1CmZ8ikYZgxxWjDJdaz3iwdbiL2XzQolRILmRNvpLHfuXXXbauowwBV0to5ENszQJkDMIokoMPkv0XrPLTNnMIjywnmufXbVlZVnEWcukOKu(XXbaKhw2z2yotA9XBjRo6s0knGtXiqfMwtn5ajSNfWtswd2yIEHMABShIlYar4LTlmAPxsc0jlqg3XXgiHonkNQsekRPVgYq1oWmhgfa6sBBSAcSDwpq(uNM2nfHzQwW02oLE(sPZEY5NljPPVqj5DMn0bSgMpLrWCGi6FYbYgrl9EmvShCLY1PHXmJ5PHkMPUkmvwDetqyHuSMAlWNiRt9GKWS7hNm0bTjXdemumt4OYaGvoN2qSDXVUPSlTZOBEKX0WyZ4uPMBaYrEsNukuZujNXTh6ngycFdtqOTj5tIzMECoWlQggSYKuPDBN7ZPLogttxBZGpYACGy9bjy0GNzhP0NfgxYiOJLhtPwZOzNlnQLngmndFHz8ubjrkarCEJ1(dKDUeijvCbt5HXZoxPXmY4xdLmIc9MqFtPzNddS2Gwv0HfPpTSsc663nsd0d6S(JIyoj6i)IF86gacCyaRyFp3YcCQva4f52NR0Qi))r1Xmeyvn4vaw66iRnledNXWMUFr8Bx0XI5ZyITNl4gzEdPRFvW6ayk8DzBmuDKy(mkdpljN12tQkpRdjjiyyrMassFbWz6eIbPnYLWYEGg7B7KY8GvDmtPsAl(XI55(JHrochnScpcij1mf9z6PzZKgw7rHyaYXJy7(xsKyBa1m1acQAZq8exx)PDfZZEkh43YOKXuXj8godmObFh634OqDxBcXaywt7s0kj)pdVC0mwMm9rS8UmE2p9c3p1GwCLhTx2ewkBuV6mghBMEXQJRDvw)mqAop2JPP7HmGKRxuQ2au9vhgEIgeQuwqI03AP0U(WksJruKPymnlpoDGW9ZQUe0oG7eZVUoPhjl)yPzcdEBdL370r4myls9uyt6KQaS)LgZQtWYIKtFSyEy)JLbnf60O9vfwJFeXFYY3du)HbpSvmpEn8oqBvy4QPt0YWzAodcct3oTNkOx4(Ju8jW)c(5zAtyAgePfhSabb6oM32Q9iJ7zetjhJUt5uWqBWYcLrsQoEzDeZZAvmHfgmJQrIluS1QMmiVNar)crKbciSK1PZd2(qxr)DiPae14sfKJN9uhGjMrMMxAgmgsrrTpx)AiJ8qj6aDHvBnShO2GDi1gK4ehy7eDSFM0VD5jsVY6jAC2PmWQuRVy6R1W8sMHwGdjvTlYNMVDTDIrncsePR6zkZeMMoSIDIsOQdr(KSRRTtu(RO0Pg4aDU8VOYiGtdn6kpBaMQ2e29GLIjIr4pm5GYzikHQ3q99ANh0LPAmV)xygJWeIojq0bKb88KmDh2Os2UPzLXX7Fd1tWgT28BrZqAbH8PgLpMPEykvrMLspRekFbH2Hnkl3jXB741s8v6AT9O0qhn5nOv(WT2HnQL5xiLkOP2nDYqmjtiOIYXezZCmBuGQJdBGcajCquPPtIPr39YIFJZA0XznLHL7jDAIuiYDs0lGxXAFfeAuyw2rEBsuFKPYBgR4Y08wLwVaQx0nhPOqGCPUs5rC4Ul1qNJWEqqwwAiJ(MCKc2SsN6hNYATOt9NLjzVgL6LqfegihPYO7KbhE6CiDIQtvltTEJzm46AlOPrnvWgrZ0i1kl6agU5sMKfX4fgfw5lT2gLsR4zFOigS5nHfdwE(ZzOd7ynuwk1Ansj55DwsNzIzijZdsOgsOOSg2KSSJH8pIAYCVpGflZ)CwJh0IIaFGhArtyfhoYq5keYUrieSnSjW8lw0Gqv4SFB1I5WV9JwiKDn0IXWJzkod9H1NYLXpHYUv6W7KyaYzvrDOvYPdyzZLxtqM8nrDl7lgsC2oiaoBshK4y2Y2zQjYmpjXCCHqMZKBiHxYtG5Nkp0ql2L3H(iKqioiNbAr)TgxTBd2E5XD4tZXKC5H(aMOJ92eJQxoBNWqHgiepp0gnd7K7mm6QoTeI2OwMtNBMWe2NrAPv67Wa(WOwgHfLyeTOntGHwSPfaokgquKxZnkEG2Gsg9zoJvlV2yYIowMkdTXriikDplX1Iv)SRfe1uNlpEDbkE0LQMRv4inp8OIELWWOwZCMjj5OYMidMNNt1oYbzCK4x2ARtbFiijnrI0uyCe7LqfudnEPNPzicthRejgERDuOrmS4BXZaPXSlINpsOrmcgnD0o4afgd2(HgjN5FuMHxLpHblOxOrKQsIf)jGDX56rSsMTFLyTkHf2eqLgO2yshsRP8ELgtk1wgRivQo9PxiyqRtOvAIILeEEEOjl8sLGQfXKtS2O8Uredpblnk8qmfhSH1rTH5Hkezc0aVwP2EMIQyLUIZeaysSDM1uPzEdZk7K3qnAnXYNoxeiPOTdH2tIpIQ5bizIkGZtRPOsu9zhiIHhjSGtZyI6IxJohoxDCl)GjunfnMdMi2UAZa5EqKIfQ9YQtzGSDtthdNW2CH2efUGnsEuljThDQS(ytrHXKjkq8XR5GSSowXs)nZuZKU0m9yDOOtRyw0bzymHzc9taS1ducSSzPIidPdfTW1W7Ytf1(m80Xk(pLWVKeL54CEGLCQOoRGuLfMIhwP3SXKju60idK55SOxy91cghajolGhTv6i8axHYu6Kb4T5pj94pqjmmAfDshr2czeJGnmKNzd4Xz6UzAuMLM(j5MN37TdtvnqouebqfBaeA6944wZWoQisdJEy441VTmXlfsguCM6TdyozBz6rpiglvbVv1w5x9J2xkZra5kui2eel(wwmMbl)U(niJmscyP7QTnLk7tOVNL7cXjVsIyE(ffs9WcgMbIbe9(Itk)4UMXWZ8rYmOLASgayTDffg01(nBRiwMbmXyGw05X9zu0KsAgA7Mu7D1fOw6XYmYKWkcjuXmt)JoQN)0kjhBwgSACkyshRVNbTb1mqfS2ptdB4v9cNonnkJ1jgnj3KoEF7HrQckZgZo9wqAe21ZQxG585esCSVuLS2MsXu5KtulNgvF5187zDbblHIc7Ky9tasEXfXmAJPKyyIH2TvqdwM13)a9YavE93WIiHn0cvqKR7NbQy5WytgzL2iv(OzGAcJCd7dASs6IhnI5Sm7PbR5XTovEGiMJHp95ShlnqoNYRRvjnnzROtPglg5gqXBz4iPIt6GC2TFoNMlTgh8ijutm1yXiNP0zg7NxuGSkqev)AUiZLdAjSyOsYgTzMrjEjIlyzpprNpwoNAIPxLZ0SeKI89WVE5Gz0qbtpPxW0fM3maA5sdRPx7mBCTxbkcrsyPScnodLEsxYi39omFpYIoQO6ySjJf)0jCkI6Kn(PSjfzymq919DhvBeVvZ8IcMsWu6i0beSyHfBGzICyooy6zK7GvI3o9fyyC4XUN30V5T12rhhczybOYGBL7YhXqNwdoySUTi9PZLbUxTny6G)fBKgujOS08WEOMKWa0Uuvh8WM(8cnnI(nJofnkmSaS))X0Ub6ALsEXhRAdDyj3R5sdMi0TZ0l5AqbXMqNzGUAbr1zqX4TqgloRGUzgL0JnjveOo5s6gmDM8ZrsXZXUtJRpCyRtNZbWYoogumbUbHenT1g25mceLMnu6Q1l2Oz0pZzrmUWT(hVru6d0QwOJ8yEBLeL6RE5gV4WSlJAhPHUBotG728IYzlnJUrMDoYowZXclH0imB9dL01AZoZFGiXKSOoTlImjtBvuPTyOzx6ri1aPLzsg9RfuMXe1XCFCoOGfzr6o1etBRAbOgmezYlhQljD7qIKsuwMnrJLPBddLps0SKaGA2fhz)lnihI6xW1zSwlyO6PHFJL)WslbIQ1Kt2U6rfnZE)ayosyoli9rr4yEUrVsNZws5dK)WsVPjvIuDA3kjm(OwMeBPp5Som7Od)rTKiLew7y5c7tnA9VNkrlMQMZS)E06FNvXaJXrczqPgpt3yuezVxKvcdZG7r19LOSg6jb2t3T5JM)WrSfWKZonGUUspgm)HJyjpbjwsdLkmpJv9hpwnEsv1Z(CWOTuVKePWT8nYQ8XYFyMF)SNWXuj30PLP2lt3Ss)8G7zOQCyElN2VX3W0QIPXptTA7O5pmfXhZMVi7cAH57BpfxLq4RKUbuAy3Lu3VfXs3bOzKtzbPhpw(dNiztk7UcwkZjA08hMISsysvWItpqz(E5pSu5sqsKHLgswW(TxLJWtdyditHR4CZqT4q9q2af3R9bqJlYY51Ag2PMOE(AnBChTiMMc7VyHmhP7uBGSMOPxpYz2ReDSV0ymfz)Yb0T2So1PFkB4HPjsgXyJoUScTmIcmUpKtuQoucnlXsqocUA0et1XoAjvcgqmZXmTkkSXcelgeW4CyR7nB9kRqED(jzHVKfSHzAqeBkySU4z8Mvd5OfkPH91k2B7ctdhj(OmbQv0Zqh3XDOYazgEZLcjK2o7vq0qaCgVlenbjkxBoyXO8XCqhRyvyJVf6xiTkcgTyF(c2RhBbTBZ18wWmVopDAMvMjZSUNyAwNmqp2cVBef(eB4nlQTZkM6ydLJiXsuu2aoArlfOdOqyFqRtzQY(4jBlnSExS56bkX)mMSHm49rrMobyJD)tlBtjrC(B93Cq4ROhsynrrUrkBOT8SMnz4ROuBFibJ7ky55SEatLw9jVHlRZA9iRsSZ2wNYMXDZQpP59yGw30Js2WBdvPYbycKM2KGrD87cDEpZ(o64TOuyeuyoKaMESP6gzK4AFKVyyYtOOV3yoyf7442ORfvZIksXQXpiS7nXXcsjatAMaKXIAvHkBzG6R8YBLUdXAoYNnUAb2kHDNMnfKki0r4GcGnoDibpEGW9t)lbOf2rPuStN0mGbnHQnX61oao33kvMJBSZnclDRZsWHc3pXVOfJqtAtD0kJhYkvMPUmy4SRLNg02HoQYiJK(iLLwQ69KF8Gvgj7bBjIrV55HWat)9bx(wwpvj6WXRNFcIzfDhjDihBsAW4DSFcGbFWcSirMu7Z1VL0hj3vWS5POc9Xx)kJmMnELezBehha)6xzKuOrclSugh1GU7u)kJKoZLDBhf9JFs76lU)5b0xpNDYKmj0vTpxVZdPdnJJyP3ogqohF05HKdXmWkQKW510VIwz2cX6Iq1DE7DEa11iLjZCltCq)NQFFcGnBCM26mRt8vasV0nXCK3f2p(LLX)XHs3tnzBrfV7q83DSUBfMYQRVFkVbXUAL7whYF7FWpsU3AM1CN7mWfoH4MIfhGoeBwxFVs0CjDY7ng3LiQChb5VJLpNUjKjxpJefJJg2FShGwFjEFoZpxHdfOvz97XVpP9EgM57a7OL(iiiWBMnJHxGW0aEy2oyiXqXyC0skNyX2jYk(SG9FsYbvoq4a1ormeG5SDFMY0qJia4OQ5EwwUZcKgkVL92aNb9r1x12aTLTcCMArmRDfdA520DHId5GyinPs3ZPUShIdGr0X7ssHKZAwv7E5M7XBwBJqvb2RJbMNlxYXsxKDxFpRZKGH3EYmLLOlAd2EUTFMuiirmLbHwpIDveo7wGSNtbveEEg9FUC)LZCqxAfWYHgqG5sw3CHwFUKnVqcky4ezCTCbqq1aTGup89MNtN8uFfllPrSwkL3unl7bpuO9eWqhSNzf344uLNWWUh1gw3MqQp73njnkU6HKxizOU(5SfW7bE8M8lY(CWhZFJMJNbc1Eo7LMDUYYLefujTrrWQYvd)XMWRAB2xGybQtpQtxyf1CoTLeF8kTQ5oWDkVeCdUfM685(7jgDVp2Dd8o1FLGDAZvvZ(IBlxp6Gv)wnJzN3AKPASl0SGRjUopV7YjJBqhVLFr(3D8UJ(cBWTQJFshEh8BBq(TUe9WHFNV2JU2g6Lg98TE)Z7iXdWeQLGZkg6dRxTz(T1xnzy9m5UILRbx2vBB(qMuO8sz)BFRGXp903F2jF)lE7pEXu5si8Kp8(tMqilVdcVRO62PntawfN)23)YZME5hU8TV)vN8A(yV4Slp5vVEY0xDX5VT5luU785YQ9Ul1l)1D0mcUMrO1mU4MfC3dsU87R4LojVJWNVAZUYot8BE1ft)23(Mtp5YPx(Q3Cgh)3(dN9(tE9RFXjxEYuqIFXRU4L4KGx54qYcfi53Q(7QDCcSEZH1Zlfa)GlBT7Ub8hF1faEmL8mM(Hl4pK9ZlE1Kto91Nn9Txiu1tF3jxCMac8p)lF)B)W7M(Mt(EzHiNnYnH2NlQwdzCtxUq1CjMdYL5hQQkxVFA5VS1Dpk1CRtjqlnRX2tLRq2C3pZmYpzkgCQCFcRDFo0)6u5sn1)CGJH75I8VV)7Tw)IA47al5IDV9oWAOBTR27aldZGad7qOtCsKN2kJMGe)GSE7C8UJE9zDB5972tr)pHB(nbuUFZ(Iv3SCVNoghQuVc6ubrvdSfw07o)QjpYOY(Xs0QNCz5Dyrx9VS7RF6hkRwSC((V(P)u4hUCn(q5(f9plK2jSTOhMxxsG3(4KtackV1Y5nI6x)0jUlVTsPWfBVApF13(2lM8tV6IFy6pwwSfl5tXgjkmwixigTm5d3DD5mO7Z3GvZ5f8wI7pp4qj7TPVP46LZNEovKQSIpEy8BzY3lA)nzcWPQUMxMN7RwEl(5F6D3C)oS7w52AAw0CrHb1n5OfZzv4DxF7yRNtKRFS7No5WvxTHOvHoyoDGrdGRF9FS9k83p0g8KQ5fa14n4W4nf8gU7(qpsBogKvcft)ZJc8NCG3)zNtSYZxwvoz7YQL7dDET9Or81f)CXdVLF)n3Vb)Ynt)HnRWQDtOxUZoA8Mm)MvLlV7HhYVfm65nq503Tz5oGTeP74t8urvjoYNxTz3(zBwrK33SSQAt1x)0RizH7GvfZKnQJFYtYPMH8D)UnFMQD)1pDkOALbaIj(6NUuUBwBF)4Ub6gMczeC)jVE5p7E9n3ndVnyHbg2nKlSVGPJ64sDTKwSY7EkKPSB7Y1L7ivNGy1mLjSSXc9eIu4rU973debileyYBoSQ)RAy561nJtK(gP1VCNFZEEPkIP8n)6FVA)9vGlR7ePyHhVgtp0JZO74sE2tE875xUQy5pxYB01D8vR)Z)B663whhh1Xp9AggzTFfSznzT8YkCI3FXddMzStdDDp5A7Hx)TlzBtwN8nk5)fH)R73uFJsl)ZFd7TxwE1V(3)1)x(BoYBRkMnRC16AsCEZxf6XFgkXyjblNC2wOcYDlNpcsatt7obbqUC7CyrNUAZMf3dSGLRkp(SK(PQJBtW6GnkPbX)ozZz9r7ACJcm6bhL9xSbVrZAmaBl2L)OU14x)03Xl3YfhViP68D8XcVvKCr6CcOPbVDU18dYz1O59hhiyjkjQJpy0SkytRrCwSSaQYqeGtlwC9aaR0SSUXEq7CiSd3b2dxjGR3T5Z84DZvF9t)plw9LIL)s)Hstdi7MKbSALuUH6vxVweQcYaWOGRNZpS74LJsjnELqF7W9Jn)49ZBkxazpdatOBtn2o(9HEEzmPstenA7ltkUfRd2I5iLE)M9ZRGqEEC(d4CzZMV(PxSz1rSeKR9s3kOXtrYPI94DXz3b1SVBa0J4EHiHLArsnMvX8B3CayVFpuzLcwHcqGLGhLGvTs3gULsZR3WhKxIQpVKgFnLd7(9kDqnM4LBlEX5qgwRSCbnY2X1tX8UH0dZV9WQBDyrGuG78JoY4TwNw1XNucetDme7vR3TeitfdWdp1vjMXT4Fr5URz)j)iTID3wbQ179OD5(xmlGmoZPB07HUfoogupTYD7hATNPfHhX5b8F9inF7nljgcjC2tD1E)HbK)quwRa2tcW7ISUT)3UbwW5gIxaryF9t)4nlH2XvhlgJ5bVJDqIke)n93l(BIUrjww7doMcxvodSLislzpDxd4xh5YRGA0Um2)ADAma9EMviZ0ikmOePFjjHM3o5IIBUT4UTxnUQvFEt1IPrUmiSr8BK0oFfm2D7Rkw5UiIxkAd1BOozXcyV2p5VYT)PLCrHFWR55c5DP1ixjARL0IyYKLOwczAsus2dlH81fuw13xHzAF5YR5n792LLobWYRldFnsllduVUoLZkxVB7H13UV8zNGdUIdyF0WOkZbTZAi4KSi2j)y5cQI0Q9o4BuCQxkrsdhrWOl1Zn5WEcEwT4PdB45)cVHAIg81yTSHrOnTApKLMREyGZPB2DtXvY1i9eO95DEEySxQkJCJkKsUy0mYSt4N)WJ8lQOLJRVIANpdQlsyPxRh5TLHVb)olJXpYn8MO8m1JO2Z3F46Yv866ghNxx(fWrEp5J70jKPyPq)Kg3cyyEl3cyGiPhEcEpyQdfPeTQE)Hzlx7plz3v3fl3AIf2kfsBqinY1z1dp2FhGiatel7dZkR2d2sqN(Anc5RlJFAlSjZJz5w7X5pcWzcvCWT0NauEiIUGxO9(zqgazgQjPyhXXgI2asShb8FFvXT3wGbDxPBUGMOR8tatktz8Tnip2CtneIntPy7dp8WKUkaFW6)8vh2TJ0T1WF5osrg9gkVSeTx9cS6LwY(dp6NC4QpVS8A50LCd4L49Qg9cDYIsZdpDRH(Ig1rp8OF2YDZwrxUHb)kE10VQvzCHjGjQLMkt1CWMPzwb)i0u)7fvhoS(VIf9V(3pqnuLd5A1H1(B1evawFQPbUNXea5ra8R49epGl3UPs8dIFOLxvg7wkwTkUEXZwky8JGY8MI1E)LCzvXbHj3TLEB44BlJEl9AsSo9pOZ0uVpCmn66tj11Jolww7JWm4hHjORlQipmXu(R2TVSbFKxRGC0BOxZzSLdzcBnpg9APWntompHxG9F(x)7ojnPUqbUxkaHamY8WX3K(iaNvR2Vr4p6SeUCjDRsd0XXQ3yd5v2qpLYiL)y8BWYFTF5lsrUQsC5NiHvEFzcAjyTmXv(JMDJPHKnJ5Zq9Xlnrt)iOMh2V0XhgwhDhOaOi5wd8Kr32s1YCuVHHqkRb2hHJWkrT9LhUBFbPawxC3mppb5TLHVLMnopoXp843Zvpc)g6CPcbMStKS8f5uwgF3RldFlzlBhUTSZGT6p8W)H7MvvUAhSHqK0oRAd2b1C08w6BBjBz)vSb1jkpr)iGEr06NlxTTC92I1FXJvMWlvtNEL2Kg4UonRHSkx66EpIIFLhMFZErbKV(PLRX6))RY1E0s37ltqGCwBCaDvkut5r89YV(p2)LspvvfKrrQGFOSwolhazgmbZqRSeA4YJb9)rOxiTAbQsDv5cp0X)MYq3s0QYn1k4WsTl(X08773SEFfm)WJ5ddY)1)XD1m14RlJFwawVo5peSEhSx062gqYMyd1Xbc5FKHN(Kzbw8Em)jBlRrECVU4I3OqjHz)Hkjmt1knHTCKA2nmbKE4H(Dfv7xEBdd)FSCzlfvAIBH3sVYEpy75AEu0tHFaW7Vzt1ApQ53vUS2ox2Hr44h3U4Js1nagt0JPEZjhO7B(z63Nj3U5NlC2Tq5imJ55q3sWcatnmpotUwcFY(YmGvFFKMSwbTs7)15xPB(Cr1xURq837FIRU73COIdYQR(ZpjlRkNblRUB5134coqnnl4Gz9()6uGRT2j8bwhamVLyQsE3tB4L4PT7NMDWftqiHC9xUFkL7K88)9TxlZzJ(Y6KAi3zvh26CC3V1zQ0)M9MJgcAntc6AS2efBtkpcfHieghmZk3Dyr5Q98q6F7OtNAs6evwAJNSP3jFmH80Q8w1G6kQrEDjilnIHLMTrdIllgPhrsdnkAf1FRG4vxtE3Eux(YYG3yTRo2OAnyj1(OmQpXPARS0FjnPVSKQN)x2InXFPHcXZ1oVjWkY9hBZ8KZ6W7rSxVu0a9W6LE1GMuSUMcuEDz8JB2hkMEKbMMM)OHtq4vFRFRC6V(3bIAvRTPolhZtcNaZ)eMG0wYp2XNCtaVXPZZESdI6a(CD5)XHF9Vd0uq88bzcCVVm(MWtGS)4pbST8xJt0HgY8yR)vB3d7JURCP42mjQ41gAK7k01wsyXKs)y76SDpYAhl1nuIVh6)ZLvlQiAAvjuBFTdrLxX6Ah9qdTSoxB1bgb)ygQE6QI91NdhQkChcNs)9)xO7a)l)5gDK8X)kkQnOpSC4AeiXUq3JzWnONVsiQfdqMFtv58AtIvo5P0QEV)94Dtu7or)yUX6DBQ(c4NwS(2QYzoLh5LVwIpOJrnKYS851TAbOIEmgsVB5wkL7UIQIRxCD1V()w8mnarecnaR(3okRExIDSO6WYftNvwuDZHRNoJrP4Z3SCFznRFO1ylV)AF7tvPz(49iW4xaLjaz6HRkRUDfSENhKfBkRphvSeNCZrlNHKwfgtvSJb(iew)qbSW7M)kWAOHEmcT7bAtG8f39WBuAisP6)6iLnUNr7l(GgpnZRk94w3wLM8ik29M7)xWAFFXQL4uTwHrDU)QapYgSWtdeDztYFSfE5Y53mBt1TCPdoC1YTSUEbGkQLLaVaM(JqWfv54WUYJKDPIAzkWQOOr10ewGipIeEWzdSofUMNTd639fVpoSk2TrKuwOv(oVz8BWFyxd(X4lVAt1)cSvDZU)ATVi8AT7ED343kIN5kZF4cwuTjnb73D1tqQwAf0p8mq)IDhmhgR9)knlygGwEhY7ED3eesfNwtHzsyZn7rS4RyFXTRU)oXnCENKvwF(YBnbz4BDsMmLHmIFe13zovvwnt0lCcyCbogRwwNyikJh(KgWWmX(hcdZ7ar3VjgMRws2LfxdTJxvE1(goKQa1csB8cJCbZAFuRUGThF5W1ECK)TYL7x428Ux3n(bA4NBs)Vch4(mEvzHW1S)qGR)fcy)l1P6aR8th7gvalG0goK0vLzpMxGHXU72vC9H1x7Pr)q1vRkAC1zMZpWkDuWmys(NXmOcfCB(dbEXOY)BcpegNoLp10kA3zdAOwhiPq3AhcTe9X8eBjDTBt()eRCQ)OdS3xzQ5kPKY9t)ymTzC8wbJ(k3)fH2(LLx3MMeo130bUwponkua0Jz237pSgky95dunlVJfoB58wXok)5vOy)Kw(s6hvQZllR2q72DlD8JIdvlBd3JJTuB(3WINS173SXp(OoVFw5AFeufqfX7Q1VvN5RSWqH)g9Fac)z)W1n0bM0RAS4gA4LJL)JaAGeNDf3X1Ui8bcgw7ansTQe5BHNTK7SjA8hIbh7VPAZN7BVHkoW6Evtedzd2WK(icFU4(7oqaeok(8YQkVPz16xW33ndbK9m54(Ju7fPod2xmvQUkME3mXMzUzprXCEFIkw(xT8Vk5FJCzMDtzrTA56YP3ukEHIjJ4KdBXqw2Kk5mnR3CWLxOt2Tc6lp9UYPqpTfUsUAZNNwaL)3wvYSBU0Ng3tDPnnFKzvLf3UyZNx7)M9fZ4QCntpwxThSZ9n7W2y)ntj2X01fUK7w(I5BwdwzWuRM1jzYmzglab3yw)5gBNpEgmi56QnhwViSskIEEK7AQZ9lX1)sc)fTucm3uSRSDwxUJdj2WN2z03TLLSWy1OHYpGsbxiVv7a(5Ll2FdRKQCEVeZubnRTTl62ZZkQcw(tlwH1ehowmq9akUr7cE9Bnbewxx(7aSwaALPxHp4H3oQbGon4oScY69D1fvcMY9sUEomqT3B5bpG(GnXeOfG2u3kptgy65AxkjW1(m7pywHHrxV(JtOkxSgefavofGmXxEep(JlDz1jm7R4SU4j8gsI8X3yE5tAgCppZZMNWdl8TMuvS(2NWdh7kWYo0eBOkZDOhCedbvwKhRT)rwaOUPglF81GeZRN6zddRXVRdNNiO298)ZauR9GAhFTY91eFZUF6CPMc4l6jpB)2hL08iEphr4DoVuyYYjtKmt7Tc3eX5ulNF0XNtZVq6LoBNGTPFNP6tW8ip)aemp13O(u8j981NIpYd39u8rE4Jjy6kFm7yQcp3kJC)vX2ccmqkU(wf6y5f108hDCgEsF0zNCM1i3qkRC2ZCz28x3amcNQUI7mEPDgVWoJNipnThVb3kKY0FyHe(cXKkeSVy)HD9ew1D2v1cBv1cBvY8E0ESE3XRyzEXnfXUbxDlxpyM2x(lSQvECtE4dV7275j4atxi8UDWBe0Ah9uOMUllcN4rgyIn7H)nTW5J5AgiFCaUdcv4SoNdBlwSyjtD10bwebiTJrI)BG4(igU))biUhgXU(CspgADiQXGdXVpjJfZ2TPAwzhflMnI0R0Fps7O4NIF(6NY47E(QL7hyog5DeZXNatpkEs6gj2wpS2up4IIrwURgeJTEsR3Z7EYR(NQYjsY18Bv5eh)GNS6g3S83Wc)pifzMlEtO7z0qsg2C1v7Ww5INPgK3JJ(jjtSsWvpUmPiReC7bkrzr1)QnxTCvjzeIzAU7blouvmf2(c2Zv9ky39CT3P8D3FCb8gAf00cPAhxwUJGYfl3XpEx35RUoKDmFhReI7vmZsjaxVCAl4)DZzkonnyjn5EPtXX7JGCEJkhPRVVBM8lSNhLNfXB8DtEtV33WT0sGJn51NDEV9AR50YjGJrdfkx3Eeu()SRu4CVq4CVm4CVoa5A6hb3BqrPSC1p)Kp866bfM(7KFEXBV4mm7HYFN4LTkqqa)MFddjkDQGBPqHI5eFZxS5t)33COADXkxfE773k3uohQCS)W(9sHNXdj5e)buOq3Qsb7kOELk0mTdK9uMdlWD()cxRDzsDj5pDjxkmtv6tM9zxr28XjCvHhVCf2IN8VYYNN15n)81yRJFUpy42wvUDZrJv7aC2RpNDubgH1sxZhqGvlkU)JtWP9ehfY01lNF7(cz7Vz(IAKFbrxQg9L7xjMhuxk)ZbwkXc25aJGgYxn)twuEv5AwDypJL6VmG(pqAIfnFRNVe((d7L6bwOpA(AYIEZ66UOJSiQ7(o454bZ26gUagwIp2qO(aRGz)Uxbnn3H(dVS)zVNW9BntLJOS)KjFA9017rAMWlR7zro2HuJapJS(W9qdd4ke4TETkXwHeh7G2EsJ84WDRD9UKEJGazPOWLnT2OnRxDpqtzd7G)yFb7KeN285tfGVZnEbOCGJt9cF(M7MvShRerOVGln9ghjOllW4ZVCTGtoTXtG1hwGzZ8PL)8gY817gVth4XPIofRwjToj8w(xqE5wN)54exx7GspyAx7NFD5Dstzy3ufZR32rrak1THKfB3n4c4UTRoSZHCu33yGABce8U73FZY5(U7eGgBHGJYfV4CjkhAFjgjT)3MVu6ee9AsKaIFPVltiZQR3wtsx5oE5oWG8g5AtT4QRw(lSE8NuDW9kmO(8kRcC)llQOwLAVdBLglrVN5UL9ElxbO5lpX)5UqZ5TnyYdUoRFKMLP)dCRsF6r8pzWPInQOhEz28mTGt)NS3v41)xyHQF6l08SCB2JSq9ptWc19j7RBiAxTbkGpTRi4A86PeX3tDZvVo()EK5)Uo(RFsL)nPrFts0F7nK(As51mFO3921NTEXx)eOoQKsb9V91pnNT(bPixLAu1tlZKx9Ax9(wS3)vL8vBkMvSnFUamgAoLf3lCeDNVC9YD3uU4p9NL5ZrVpBd7Blvf7U5RF6)bgXkxqLpAWIZCBGl5J(TRklwFyBZ6)5IZtg4vofJ(laZ8I6n5TL3)1pTcIEx9nYFRILFCYUIc3d8cgGOFydg1F56LBVI1nvAVHoj9B06hE1yg8vEYRMvq)5kwuHdVGS9g9ySDTp8ckBWx5PUGEz1MF9)1Nl3TelLZQGWNXwz59NMKVjr93(2V7Kx)6ZU4LNn9nV9fNnDYLN8(lLrawoqmUDyYUR42YA5hoKckAtWjUccikFyug5Bxucw(t3VXjQ46QIT3WE1aEKu579AC5KwqAL(JE4s4Z3uUEkBmGDNdzO9Q1hodnpGS4wukDWhg5RAINWNr(NAOShe)fmvFZaW0MV8vlWxZgfT4KTUqz13Kg)pz6BLA4j93hbUs)BE08oY7RF6ZmX8y5K6uP55c77JhTOhMGqLm478uPioV4WQ9vllQMFdxk)BBGrmsnjGV7urr914WB1n)6)4gXmT(8qyM8e)iRqZGVZtDfEAXH53SB(nh2TB0vvFgj6KVrN(iRQSbFNFdRQ7UR4WQrxs95GOYaZZhEjPJg8DEQlPVdlcjzM2X6ZFz517UR8W(rpk19jeuAkP7)FECpzEChbu7YJtNkTmK(CiIY(M40)zRet8Wt6VpMC6KbgThHOxNo478uXLpB9Ex1ElLrk71ev0Pt)6FFFRe7lxsRB3E1HBw5AM(DNV4Vj6ryDQTd(op11iSkTYNdHGXjBmLfJT46YRj7BsbB6Ju05)t7D1SBBddd(XzNgM)ln19wx7gqr6AhQ756QeRuRfBRaz7U2DON2JYEt6l2eP(Xjok1EfOyya7ycmfPLiPL4hfzpHl2jnJ2VoTOgUzfTG2H6UHqxIvdp6EeYqV(mm8OO4xwid9DsZyfYN)jCTNGL4ZPKh23SxyqFM49Fhv)5BgBJ50T9t5FyewtC6nll3Q)KdEJ9tfg5MPVYtBnXXOfnGg8boPz8FZvuqSxw)f5LmkuQnuMGcklNSeV0ft7Zf)bpiy4HoPzSs2vmBk7(r72a2uK67Fbs(WHoBQNtAgRiDkSH3zK1GF8Q6v8swdDh5kQVlLG4b34uuGtAg9IiRSeUu(p)R1nVRc28e5U72rU6BFeGQQ)19c579pJBi7Szp)ptH7DbKEbbEFWlun)k)sSCn8T(WGrtCZ0xN)haBRDgn)buDN6KMHvDNQpgsbzfrAJplxhmdD5ZvB6FbFvEBgwyT6XMWJ8hs0IDsZyfTRPYLINUf3aYxGcTZQ9lFgKJmicKYYWccFmemtYI8(OzrlKNzMMUMurr4inqDca1bpVjXtm5qCorCpSrJS0LCbGLNOrtJoQJMMLaW3OnqathI0TzpYhelBicLiYflzIAS4)MiTTeg8m7gg0OsqxWf9tKGTrtdEl4aAcMzcOeWxTKDNn8TL8mogLY625PKg5z3N32OQ1Z5Cb7haM1fjvK1ykmJpd(i8uqSFHSFfQXWOulnHqenmdcR(8UKjc(pCIJj9ITw6ye(tLTgw2RLIhffVTfn1AusfxuQq19XB(87HMoCKp2tI8c9Jn5i8dyhceAnOqXakeAk76UhW3H2D3HqX5dATPt6ARwjauwQunTMxW1Lh(aS8W7d0j3DRh(uQCcshiAO7yG(lLIFRDL1Qe2OcF9bXt8d8aPOBbDtGU2h(zBczQfLv7Y9vhF2PBPJGQqsTQH0pqaMZsf8cATbD(ovCRcUohr0PlTv9r97z0h1bT3aO2LZ)gDrZjMmEaN2qJOKtrDxLRZprGA34zvzS7zzTePF2VIJNzCVuAlGG3zWeOJXBYMK25xdVGGy4Mrhxyh7NU9eoCp(KthohKlqI1CZU0QRw9kv6B(n"

	Details:EraseProfile(I.ProfileNames.Default)
	Details:ImportProfile(main, I.ProfileNames.Default)

	if I.ProfileNames.Default ~= Details:GetCurrentProfileName() then
		Details:ApplyProfile(I.ProfileNames.Default)
	end

	-- Load on all characters
	Details.always_use_profile = true
	Details.always_use_profile_name = main
end

function module:ApplyDetailsProfile()
	if not Details then
		return
	end

	module:Wrap("Applying Details Profile ...", function()
		-- Apply Fonts
		self:LoadDetailsProfile()

		E:UpdateMedia()
		E:UpdateFontTemplates()

		-- execute elvui update, callback later
		self:ExecuteElvUIUpdate(function()
			module:Hide()

			F.Event.TriggerEvent("MER.DatabaseUpdate")
		end, true)
	end, true, "Details")
end
