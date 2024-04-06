local MER, F, E, I, V, P, G, L = unpack(ElvUI_MerathilisUI)

local C_AddOns_IsAddOnLoaded = C_AddOns.IsAddOnLoaded
local ReloadUI = ReloadUI

function MER:LoadDetailsProfile()
	if not C_AddOns_IsAddOnLoaded("Details") then
		return
	end

	--[[----------------------------------
	--	Details - Settings
	--]]
	----------------------------------

	local main =
		"L372YXnsw2c(Xmp0vvwLYG7aWDG(nYuKk1KsKAyiL5PpwAkecgGKrZ4wJicPKAoT(vMxQVH(P5T8h7SwB3bGdGaKmZkBZgZM6IizeaoC4((YAF1)O6JV)Jt2wT5Mfll5VU5ZLvflxo96LLfvtxx(L9BQU9UID7)4PFCY1fB3FOQCAvzXsEX3XFIpF32YLlV2FrRwS765f7l4VxCOs(z56YQBFG)28Ivf3wIFB)hNuT5ltVPyE50fRXODH6JtWVCH(Jxe9cn)(TllEOSA68Y9flwUB6xwSE(MVWN7URlWSL3Wmmj3x(RCw9XjtU)HLlwJFz39yGMC2Yp)HxZXHVpUXA30cm9VTAZHTFC2hNCyhExWKOy9Ivf7xSz9oofRk3UPA)u(YnfJ3974L6E47CZ3nh27NW83cMXRwGr6WQPnRIBwnRy)09lwXPBeE9ll2F309B2SC)IT4nA((7(4fXPrnp19BM(L728XjyXEzXUDtXs717W4SPA(o(mnA3tMpXuvEASsN6NbXw8BX83KplXDnyADHkXyBUT6l3ORV86l24UAtCZ1kdP2FnhDO1yU7VA)vQQhx)1PQVqvZW2oNh7AdFl7)619AX7wwZfBAUA7iVC6023Um)BN64ZHKXEXoYIq6J8Un4YnMh7QBUy(cld(JT3n8QdwnI1zQHRidVL8hB(yRV8m)LBgDhFW1MATpYg5G9MaI7JmrIBgD3yNPEe60bdDYJCX9gzTj9rwXhCXMhJ8BWv3UG0mnYg)QFus7bKHM8XOThET2OhBI0)YdU6Xf70NWsfPhFrVl3Mvn6mV3AIkkE8nNEdQEuc1EKhQOKhzHUVahB8JT01BOdU4JqtpGmn(X4xgSuK(itKEIZmQrxm6t1LAEeEL(BYT8kdg3bxAYJWw1JIBpvasiihwlQRlNtvZuHnuOUFzj)W1ZNURScQANUTOc)gVITqf)SzvLFEHOqNd(KVSPA58ADXl2nDFvXU7Kl(ZBNwSZJha)9SnBUFvr19cKIP7w8vQ1gA5BWhq1XLZNc18ym(C5soDts)4e8xxF)0f7lxnDzj)CGyqqkixV86L2x5)omPVFa0IrGcTy9U9fRVUC30vLRpa0zlWZdyf2STCnN5dGTD9D4plxlqTKLTDLlVbRbl3uXNjbOjx86dBNUCZTehZSWhZ8f7kMTKR2vtVBXT3Te)F5sCVe4wCd2UgCGtUTQetMjZoCZnac2ILykHvHQfLRNV8HBwqeAZXR8MQcoTWa5UYThQ2c0CtagNLyDaJWdanja6vJveqJMZ1a8KNZN7YfRwqQFJSUV7omrwFDX(Y14)7MHRFy6UR3aKERk3TddXUUVB7kVfRI73H3IRV3ry1(LR3GhWmpwZzd27bbvSF5Bw1M7lDWpjEnoa49d0Ke95moTlwsKFtNVLBB7XYX7juyUUoxOq2SEVFlXXxOce8PeUbLGFTc3006B8u)nU7UcofNCXLxCw9h5OyZaq0h2F3IRNohCpLyQh8q3vScl3(lnMBqfRi1X(9lwFRSBU7oajE)cWKjy7XAmaZp5nx(ZyVAdO8)4K3F57cbHxdJncWyF4Jx8DkI09xPebGp)67NxTzBNxtVKIoIPeQ829J7kf6Tl0X8ZLxUBkUg0cNxT4RF7t)FDOyoNwF7tVhtyHBDZn3GxcoYtoSf7pKvcl5FUqysXl6MTcc)PYlmMjImMvLR2u9Wu8rI4PAlHMUdC3t3UrShq2d3)WwG7VAXTlwZrepLAoehPItiIC9RpSQSAbwDMU7HDuKWUhwnBZYD0CO9BAq6V767kxv451BinpSDBfiA9YO4sO)TPrssA7RYrSiA)rKwv8R1sRIdEBKxI(Zvz60SClKduGdM7N9RYe7lfp0X0TrnfsOICuUvBWY0cWLgYvqMIILy425UkH2SMXSyfKUtECDZYfTSBhq9Xpyfe3jgHUc7MBwnDn3rdKcEZYIBDciCwc(ZB(5V9PxtYbhreVUQfoXZlxUy(UgHKxJ5Qi9wOxNo7b)RW(sqHmqoRxWj3Zl)snHGWz9(wsyvCullIok0mXoMhM2qnU)oSsFhKgkByxVCZbO9Yz6DRj0t3xCFj4SXeI86RVvwaL5FnTIoqSqWw55PwLoZMNLPYujra6ZnFxsUOX9ooBkMnTC1mmaDLw9qdlg5Ud)JD4P3WiWlLdHSNaXIFrj8rVVr4XPx((3F5BV61V6hAOBpplp1GPtQjnolXkZiyNgUJDC64ee9LpEEsEUrLfNQJYnzUlljHYCo3yJYT5jr41rLLdvY4BSui05Fxk)00SKmnW1hLz5xLYxhaIO4ACVFNf)hJcGTZvwtsS1pS3rewk(UwFLPzPkLXghBI4IxeVWyNGKALty)aeWCNMF2nfhwUF6mVUsYBeLNOK9usTD3IYLZfLtoJ9BmZFYp8HlE)zx9CnaDYpFYvx96lV6zzj(K3DYBo5LV(INlSTjV9KxD2XWWMKfbBVTh)zC27F6BPhWZjV8Qp86xga9ufL3I)mblCjrhhP)K3E5f)4raoBYdVLbVyV8StE)p8JxiuIpFdYN8HlE1vx(H39U3CY)w7w0tdxFYKF4K3EYfpJLL(7UF4IF8cO995)KE3vV(SjTVtbJVU7k7rFCyXCYJr817HDcKGsLxJ(4I0KBnj743oiDFZLF)p(m32hmzF5zy62LBPEFp(XTCzYpaMTYN7ZT3S(QlF1ho7zUa3Lu9SF6YFmyUMgfNh1AY5i03NDXzV9F7zUHSVvAsn(8W1NZnqCOsRYGn82C6omrwlgZZZWlSvLhhLKOtY1g)3edbFPWw(mJbBLrrXWUA8njde8CUvfdbKqaoMrPMO82HglNPkEZAmgz5zbdTk1I9km(wvcUOMHoCjw5MFq9qUn1MMKMMgzvTdInbsUZJLfZK4etZGek7YngyVjo3KNMqkK4KMXWHD6KRo7ItM(VD2BEtadxUFfp3V1mQmGKAIh)gtsFPAU3dRfRdwDm1lfhL5xnLfddxom4RZTj2eQGj12xaxRrcNNKfNRmQ8uDAcuQ7xroMOTZXocw3XwawcZSQ029gduRgR0jrXjqXQBhW4wwXmf6ebeHO8i66k8norzN9MZ9JBgu4QSXjPjADuIs3oUPG8cBzyCJsYvoQb3R5XVNML)xD1zNfiNS2XgnIagkm1t(ATXgcOjXO7(8OgBBcO8JZS2K2NxFjRnay9sm6lm9CS0bGkyFdshWWLeW8ytZZt0uqGkctLwIZmSiKhLNLMyW)rh380b0TDIpku9edEUvNGbrzbCiLkoZeWibgR0SyvQoopdGL6r)2rqXlGmmLn0yRxePYnTgwoq4j2Zi7vmPlX)OcEWglq8KR0rXPgW)e5OfeQKOCG9shNgBJTrkBZ7xhGgNJ3)SOicBd0B682LUAgM(emznd0fN9H3F1jV5iwjhDerQ6gr41QCalvsFujX94v9IoRTQdG8XVYOg1yMfnfCZEyQuxhmPhy3cDmdnGuW07CrbT8BQZWfjUy9mrBpmS82YQAZ0sRD(1TvfBHD8IfXB2F9MQ10HdBGb83SxSXagXa4J7dNc8jbJu25SnV2urX80PLZxiMRmRAtXCgWomCbq8f7sk2kMk4(13bO7xaMuy1vX8fW4byvvK3IBNrK8zS25pQViMpSz(g5tLR5Mnv4fvSJrMRN21zw125HVgwPoMfujPTwqbAioe(Rek6wT1VL(Dzbu6AN7t(oLSVVz9YhMsN9bB)VvWBxVnVBFv5(RVB6Sd73VzDTzGb2OkwvHlcwZurhnDZIB5u7g3ANZ2C5I(poWLG5L7lVwOletDHfsse8G5BWAF(zR3aslStVRo(JTKcfxFDPeo16jxxN442N7AakENeF0uV5VfJ21txTrOk6yQnX6urV5jpyXkLPIxl)d7vkAq(0gJCn(pOJFEAKD3efIAeynE1zCVyf9K(9rCXaS49lZXgZEy5lwpwjByh5lKfQAF)mIpUE7zV81F4T)b9A1SwcwXtyEcwgG06vRMiv)sxiT)2NMuwvUEX(hgX9ucZ8UVuSLIuM)aSPgBVEsaX5KGsyX6PBwxB99o5oh6o4zB258LLZ5ZCjaCG3TPQ2o(UVJ7DrwV3Mzsnqi53IB(nFe)4Dv7CBYnVTKgcdXJdKxEhmw2750JqPb9wanxW6SYnFU(ENt)BNquxMU53IB(n3eY5NkCdL05)u0PJ56Zl2TP65qHlUlHwV3SV14dPFb6sEZBo9Yl)XFzc9HeJCW39UIBl)ovZk7URPdX9E)GJlWS(cN64VdqvDgs4xkGaX9h2H18b6NIRb538Ab1dZ(4fg(pw6BRQLZNGBVeut0P31SwopyvjuKDxET9xB7YkB7UnUVO626Ds6eVgXZ)S7A)b5h7BETRkxIDAONdJY26pL64CQfC(f0j3NSQhMjr04lGCDBXw3EeN(8P45qfzbxVz1QI1Z9e48kCcgc8l5KzoPCp(wRJ62DLnBSNUCXx)Ar1CiyXZH0znOy2ILl2VGoGmZVk0ocIxB4cYPcTlmTc2Jn5ncClReaEaFm4pUk4Y23(Y6c1KFy9FGr0lUyfxlwvU)UnZBCqRxW5SM1DV71MTbAYwfq82M7ieFxkaOcSJzAy3rSd)AI3Wi6FmnmLnd8qXrbgxzG5vXWcllG(bZd9i)sWOrZ5u2eaVvhhBZBm7QH(7zYG1vqtwnIFpPFwG0wzWRUg6nHA2pdjNI3tRLV3GSWnwypzAT3hxtKiswljU8lohqSbgtBwuSsShLU87xboxy4UnjopfgiNRYID(4JEFmnpdldyFdw5MBeSX1UjmrER3H3c3dG8k)Ql2iETbutquK7fqybA54N5wiepKVZTZFEMkYKyZHX0PWsDThk8eHFGsM5qSU5oDua(1pTtioHLsexxi6OWACfmEaMFalNHfkjky7vTBwV5afGfq3jbzG41O79HgcVJQd8lUaxA3JV7sgioxf2fj)YcKFEY85xUE3V4ve(llOlT39lH3YUPAcdfQXN2GeVnarc0jQDSy5IBxpD1bWRov4law61oqEtHuLDsis9Hnl49SE9tqUU)oON4wxOzXJxE6d(YkQDDwWEqJWJK3T4xbYTjyIibDuYBl8a8OZNSD5HBx4WG)f8Uu5ri2iqDE5oqlaiioueb)PeTxxs11zDWTZQAWb34gDLvPHH1zrWcRgQMI9ynbBzUGWuVh73HL4YCA7UvZqhSA94WGAyL9BBfl3ExHtgNq4nBucVgCwnlLxSzDPNiRJT9GvawHyJIGKj8lzT22dgyytDEoEa8)vl3QwqVJkEnHUlbQTwUqaG3fRPH4Yo1NlwEq03ejjcXZ9cJFUxyYZ9ctFUxO55EH2N7fM9CVW8N7fQIE2x5ZEVr9S3Cup7Dh1ZE7r9C3F8Hk1b6P2sph67fqj95a8xd0)2ys3WknUouNm9BFewRQDtLzLxQsxlDBzZdYvwaGC)dlboYx)A85FzbVCxWgRCggY0YGrA89dnpyWSliDfgbNF7fxJcYj62zxGKLhnrz87ieq)uIzBs9mQ7nPR1eY8vBW3g38TXPY2sbmqUV(aNUzS4uBQC31bATvGYWq9dTH)CIOA)0IQjfF2fg1RlPIp6WT3FYRFZKPtE)jV)dto9KRM(U38Hx96lM(9IZ)M4qRp(L9UjN9Q3E2fVpKM5rU6x(Uj8cwS7hwmFE56GqS)(6eaGlmNpain)0tOIvNNCacR3x7Sh(vtAGRY)67FsGEpRxPWj6P)bMOX)38e979(N93)mt)NYmJ2Pr3(9e7377yK)6qtxI5FdWqR8)vhznUN(P8HFk)Yt5J(uQj6uNXMt2TLVKW2vYLu48iAG38QLS0bm63PT(xNq)DhpK5mPH5mIa3Ab6nD6U1fB)bobGaVASfEbC7yMHeGOsvdQzDtUvuVO3JFVfNBhM4fRD3h9yy7t3zZjfKVy9nBA8Fu)SBXvjex)mX6kxQtmVZ2e)lNqq8gI8wkMHtDpyNGqHFNMvZvaNWc(BcDHSO4m(Zb9XdQki99cMtNl5L3UZP3M(Lp86VZ)3VzXU9F3p0EdCmUYP(sQPJbejSmnkRUwCNy9s9nao88bE3b20KMNy0zqlvEInmOgJ8nXJ(n1OoDKKV3VwG1r32RJi1V(WFLlqbFRQEjJgCxU)lmVfD8dYK(HGCBPErS19ttdIUQypq4210DRC19XtcyUX3MJrUiQK)LVhwu8lVTC(IIF5CYY8lTYyEX(93qprl0(Tq77QZSjr6uTWT7HD5zmz9UJWz2vNOlpRzjkWRMq13PYs93(KZ4GnZlxk0Uh2cQfXb1WEjXZz7(LtUEX8tRK0kfFFz1ROBZEXB10ZQFP9QfhD9lN9)4DNCXKxF5fr6F5LxE5lp5LtWA0Y5fvvf)Y3F5BE5jxD1jqs9hM8Iv66NxJfjP1JzWRV7dAUev9n1Ej776y64698RpSdCB(ea9)BYFO(pFX3(K8BX)NnugDjMEdD7(6DqMS7gpTLgZpE9PhAVGhJsz6BlHjJ3bH97azJJIPbiYUF5nG4mzlTt9f7VTiWtE1ZVZzqYSXGBlb8APgXzo5hL8w80cVFyP79mhVO7MHDP9CJJTR7g5ptcenD1Wb9imB)t8kF2QT7FW922ts9r4tKp(2kyCTyk9S654mjgjyk)x8ziyJu7asF)ohxk68MjoDOryOCHbYd7fD9Sw5HJ8nXJ(nnUCr2SeX1RpSAwzv7lYVBbuUB7ym7xDuk)V9P)I8B6)Z)A)36qHNp2d(80yTo3yzEjQnMS284W9yDSKDE6N2Wm2BIwtt2iDsihcKwv71gGEbGikUHXZRXzidM4FCslXMFK8Imusq9QtVvHoASyQ8yEcBuk637MlT4hAQhY7wSV0rFheOS(yqfQUW1MMvSJSAoZfzZPB35dTz9vdmaLBlWCdBEt(7E8pHQECqb6b(QfTw)iS1nUmDeh3K89ox1AY0wLnpoXeNNRC58PpZobfInokkl2eRTEtFvprEMEmhKTxicCEJTbHx7C3tj9pL)OQ9eqae0NblOd95p1ZpVtLQKWBSGlcyFNlLRVNl9nII8wUs2Dk5BNNg)ll2kY3GWUz0Zyeo5P9mUURzU(VcO8L6vrC761hQGmvH)R19IEpSvhD1vo5pTrQOXPdb1xduX0vActC4)ZWXWNF41osWrM)hfUu4WkzFUeo8wYVowV42wAea9CC4rF2PGN3SBDmjblNDxNLfwHfsC7779OuNvdLD2qwmX9YB2T46In))XcYHJGvyI6c3CZANZqKcFGksH5QcIcX751UDbgGvkPqJkyjRLuUZcqBSd7(KCp9ZT6ijN6atFSnl3Zr6Jp)5jgBEQwP0gBI1iz)gFHdIRxVKUlKb1tT0etGg82qarQcYNWIi(HPjRZDvhgx56kvzSqOmmWZN89)WRp7NoJUm58Ro5TNrJ3o567wGbMEL47(Hnvl(ki9lwoXX3TVoTLCrxU7wXYh4sztbWjsYdEyV(7V8Ij)YRV4NMITNflN(E82s)w(eoZRjejnzWJ3E9(raXBrXrJEt)4Sm9pVOcuNX(bvJ3JLAg15JJlFE8PkutPH1PQrefT(a5jOAFs3ai3szZL3pXKK6BXhBgxWHAQPGqRAQVn63K6sMSjkDIuNBxUzwXlD2W7F3X2GlzVCo90Ner9eikF3Yf3uo1BNVlZIaHS40NMwBa5g2j1KOK8ztBt1MM6eJcQ8()EVli8(flF6rXj2IYV9jWzGvMDLqqX3(u5VIN7coZy(0PsvmBNXGEhTsB99UScOy9(V9PDfv3dvfmPBCxhlupAdAXHBG8373HjKm4qEb2t(7F7tFDhUH11xUH7O3wT4MB(2NK77Rf)hflx4)AdRQUIBxTPQ4xRVd8ovcbayq3Gz66YL7VROsiSD3c0TDFbZRGc8WKxT7(T)lxzzIxGvlkz6Ivpyq(5V9pWeJjw23(eZAWn3x)D62vgEJLl)k2JXKFfvX6Vgr6m4MQyjUUTa0p0qhSkTPAVtrmwkZJ2xkzmhwzwIhU3V2tF)3F5PE35XXKUPtYFhcqGs8L(NHJCG1SsDHt1SXTVPoT(YDLKn6vF41V5LHJ2bWljwpTaIICgqDQxLhJqltsPWmT0vDx7Ey91(O9w99IIvNpdCprzsmLL(5TSSPwYuXdpdsJkEfZ93LRVMjBcD6NC9BbZKKRD7y2mAvkRgkfs8dhENCkIM7Eg(1hFHv1mDd6tiT53JQ1vNutLxPvBsd2Yj0np3eTLGKNR4b(RvCnJRMLNpvyFxktyQPTDDTEjLRVYsQWBZsrIq5GW05m7WwbP8oyuxKejzZjgtVh9Qlw0Wp7cDIwIV3YnKyDVKb)aQaZq)mRrlGTjKH7xWTJl0sX4(aqVGnPQhQdZQKYjzmZNzozRZsGazkkoRUOaoYq6d8AqEDRJuzmzOtuzPwTV8S8HDnqzqQng65ZGbKr5jsUZ7USo9XJZz6BNQnrzgJwzYnnxwN6y)C8WWuI(E0MBmsfp4Umt3lZyzjHfz1gnucL2Cz2oxwcmIjlrbvuXPuWqZLL19YSmzAI0W4Enn3P5YY7(MYYRaRDgBMb62AFtvr9EQjrQCmwAa0th8oOuDFjYtZJZWYSbybJuTZov3nI0yyVvsCuECm4AssAVUU7e4vigwSPsW)1KBdgVUBfzgDcEFvXraSzIKy8jPnHxn46WCduT6mtoibQXs5Y60UVVQiJcBVzALf2e2(C7UBa8WPwMNtgGYnZr35gV(BhjCtdxzSjjnjUD8Y7DDqxtEU1MNdRrd2p0r9EUXMitwsgayd(H23xTQxnQKhJvfUbdqPz5TxxpgJuTowJbtNZQMmy86UFKYsRrfLMbMNSW9dDV9JuBwwEEg2FJaDQUD86TFqBhYs0gWDalmA3p0D3pWyPiPsen1gp42RRh3Hjd7wGnloJQHv1ZpjpV3YyvLt)0VJzS8doeCyQhR6iFI3kggBMZ9y1g74LpjoT94YNSqArKkcl3GNpkSawsYG1qrSwsIXQMtuHjq(05g82bI3iflV08OGAQjfwwbool46ZXpA3cJRVvn404vaEQG64GcOuyBh8yA8)bnLP5wtAUvJrbwS0mvMjlOqkohFObBiXX5jSIEun3AA9Tc(IinMzwy3xuEy5DOWUfi6WSvX6pQ5wnnLng3lJ4oo2sBYpqkoszPRJJGs0C88B3MT1b(rJpxK8PmCw3M0HPG7pN82zy5ilGJnRPEua)SYqoriInx3ERwWxATK03yHevvFzLqVtKokb2fWI)jkn3xwtIzd46HWeoNm556XKFECsQHYpbzqg0WzIH0Z4Oq5S6ExxsIgQ6sGG04SOSXKFAIsynYbbOW2MSWNBpvzks0LOYPwXSOw1f9KFcd55WGLEyoQnPvjvp5N49ayHG2G0yw3rJk)elNuhkxEGMdtW8lBW7Bm06RZzXNfOrUN8tdEr1y2zZHuwyW8yYptH4vOJplndlH5PTZVEYpHqwdyPbrdyvuHY709hVyEjK6cVnMHYDYIgk4b6t7cmkLSdPKaj1MNL6T0VwWZOYDYYzX4H3CiUhsisCXBXTEO1asVIg3cM0O(YDAuZEShC40xFKzV0HHAN9yTpN51BkKvJTET7z1aRBSzF7o3rU7bZ00OCYQPtJvSO5YC(WnCMES1ztxaOwWvWc8uzHixRGJmj)PxNRXmD07(PMc2Ulw2CirbYxHOdiH2Hen75pfo6D)etH0KOERcGZK4LtnMSOA4R1tHXrHBIGqca9njxe0gOLdOReLbGVc4RSdO2iaEOWalgja9Ln8wtHYGiOFN1uRf4lgOLdpti)odeZGuhAScU1eOisBtjfo05hnqlxcW(OXRFge9MgfwVQSqoJtzxGGdqlDFJwoOZikXaHf5argef0Q0aq5YGoZuM06XQaa2nA5WnKjMzKqvhPb3AAknIjL5yhvG0hP)5uscS7a64WDMRmn36fXcXEJonlKQBzvoMqjYnvsPuJLww814RynEAgf))rPbgQ)suYb0fq)mffMmQ(liwfeLXGxgYZT2rX)BHqsakfIObgcv6y6Vy1ihdyKaiInjklAm9xPexaWBIzjKIOIhk)n2EmoIUYFX(LLzhcnIhlArD5iSJZrWsq2sjyGB0Mfuh8Sc5HQOugfYOOy9qCFWkKyctMyxYYcHmAPPrAP4Gvr5rdX9H1dTuSeqAiu4gwzVAG(IqoYyXcpe3xkOJONoZv5gSieGaZyOsB8yvjKjEihbRLCOVbC(j0T0bK1PgsjbmFX0o3amj1CeyZeITG9nutFMnKAfG2JGUwn41YIdGbuZrGhkwCtYH57aYQnTfbgS9gdl1BaBadTmnRTovGaaDcz3GChDWTMIfEWKPGQ9OKaiJ5nHvhMsYwFPbmtPUIsXwFRy(YG)LcPshXUzQsfqdbejnWMNKf1CVxa7eFbiVc5EG9sgcAbgVYGOilnMANmCmAYJGimH0b4YagwSNoQf141jnb6yZH5JERfoohLkJ2malcHTuXrjJHimbYnJb6SmfzbJJhdrilKEydm78daN54icfMfWoNdZdyteymeHWkqyXk2XZZyd7XEeiljhJJpPhIlnBHc5yGOzY9Cfv6JyPhmxGiLIGboXjPHw6zPVOIYLVWjPSdhpuBI1tAPcG7KhQdeIGtvW(AAUUj0O(4gAQyAFyAmZDJetOIS8uwfwG1qb8Szjd44X0rbeXW4fqHbZbcyBHXyX0OlGuplKWP1sVidFSaDyoKAey4eSVKHdey8b75r8Sf44H6jy7j0lJXWgh8uzEbb5wSm(PsLbC8gWTAG2nOHYAvUWUK791dKCbfcQC8gfQtOHJxlATHOrmZ0cgX6BfilGwIif9MqKoDmTIWKPiQnbsczVtyeTIxaldErM0vn6Rh840vhZooi)Mo(JSp6WNuFUw2VhelQnC2Fe9BMJ4ydDx9BSfHWqYAb(d8q19C86JyGbizHGjA7nxqitPr7D8kwF00Oyq8cZwBDmtnNcSnXsKxMuPX2WBTgYN4owmryczeNoKCpNkAGz5k20FK9rJXV8AYJL2mceBhNLoIdAHCUesPKzeaC6MDHEIWY5waeic5jkvA7Lz67Bo(gcSsAWRiz8H7Y67GwXnVwIqw5zfJh4G2lGO6xOISdj(mmZ50PwO9qB7iWpQh0nOVasubla9IIDuizzqGcSzsrDwDG41Ju0YsVeacYPsVm1OKIaGd5LbiE2UoIhtbcOvXcfqWcaHz(WwFmfignXWQX4jjR1OkqmGjrtTJ4HcGlJ7sbytcMzzezlHvmQlfWZfCi05O078J6swdtZhaDlkfWm64QGEqKHWEqEOsPIAtGlk67sbm)GqZi6WG0qw(EUuWasFffFcPJ0dFTxxV9d8eXWqBJY7O4VNlznaFAmDcjx(ST0vTIqOw5(YquwPZahA4AcMpeif79t2SU2oh1xesWOho2kVJx7ArkqWHf68eqxhZC1Ql(7hr(KLnthfK0qLNzHDlQmiwvloyIiJQZ5Rqa4y91br0cMoJk4wbImAuPyRwUJqY21XRukpDRyATq5AtsXICoe7Kaq44)NFehVcPIg2RQyOESzHwZcHmaao7gtSfuDehVgROTNkiRIfGDOn0MeMSnkOpbgDApIJxT0Cs6UtIJoCcNJ7bqiIaiES0hpWXR0l0QuscrJLT2aulyKOR5XZfAMdcXqR6yqXGvyyZqsIlAAnMFdoEdWiJTmSm0QbOXXRrmYuqmJjHU9n8wj1oaaO0eArWtTfaoigYJeVPhriSHnNmWoftzRa)wsCqWIAONytgJXMiIyLIdG8KqdRz(ntth0rdHJtckk)orIZtSBLkPoOx5s8ZGYsTR7n1vclV3iAVqAQHryj4EnWeVC2VJIIzGKYhi1vg98CSRI1yUvg4FBPREzOqycjyiuEg(ukwckHjYstCOVXPM)yOINsocL626NdO0qtN9At9Mc5TQdQBGXVXInsMKJeeTZzSotODF4zdsbvRbwhxuWrmdiYI3l6jHy2onTJjfNT0mM8uedCus2ObwJgfrm4zm4VHAp6lfpNAyaRaOJGYl9OsXH(VCXqWKCDNNBpP4qNl2xbnjJhREuP4usfq8eH9dAmvW11tRke3d5aaJnenLL2IqQxG1WZLKRzyDKywBPR09DupTBlgyYztlnWX)6boQppnHPwo9MxGjb6o7hxaLFVq5WffpyhiJjBidig7HxTXOV)oqk9AfxhyVAR1NbX9C1ewpXBNfmJWGGadzJ7Tdq4FXqdQbY6SbgghpyhGnaomsSRxKhm)6Tdacnve9gcBoIbskI7h3FaSMExlps2hAVoBpxMrPoSRAyuDmmooRxYleXUxNvc)6X1ZNApwqq75lmOnbkvZte8Zz590fpEqqbjxmfVLc0YwOcRJUyMGKggtDOtDOPXmi(gAqpeWbQS8o9QoOdaIIaKiyYzYrSva0m8QG1XP2qTIwi4JS(0scyH7qDXzsiQiJveZMJaHFu5bKb4qw5QJLEUhgQUXceykuetuG86mwi1GlaiGj5KAOUyspcaeGrgkLtJcU1m6BPuiisWZPgOl2kYj45MbWkOCGhs9QXtK8pLogKbRCGPXq7UwejaX6wTjqynm1feIIl2O(CZWGGgbt1yqBbQnk1i4wnsv(aZhYHzlk9rCggT9GET3qlRDnvZAhPDmYSJLyje5cOae3mLpUJLXIkK9LcUj6)sZOjwcUGuMids7IoF8eljnNbvdtDAOvG)q77gmdrgbSkWolle3mMvmaUyk22OaYmRlo)(XRl3otxdd9LhjSTMSXsSexNQoN4NGuPaVe3x)xQyARIXpXgfK4l90)XOgatD4JSB2gO7hbkWldd3aM5KK8GGU0t)hn(dq7sylFfIyuJLyj46sfRQPFG9okp9i6)agdUnarQrSdTgpwILiX0pLE5ojlLz04ijwcEnzetDDOxtqCN6P)JOIiZidieEZdEp6TFyYebqwjyMzbRl9d8IKOMq5BKHokQvGwV9JuMRxmKzmC)Hz)rV9dOjcgBadOvwMRpTxxV9d6tmrQfMbjHp34E4QG4fGCWkdyKAO7vz)a9iAr66Fva(wsnkMWEM068J45OfHz5hveqx258fQVfFcXtH6mO10qFcE5Tu7Uj0XMPIVqb8x6jM4(j7htEJCDkdDpe9avVHrOdOWzY8qd7IcqQN0QKJvmew0HfCP2a3Pcy)yBhYwTXWgUG04RwNrk91kiGHUoS8AdMWMyjegmt3uXMaSDnUtnrI2bTMICDbz)caVaK7G1aIF02aNu04ovqPr)0buWq)IBzY1POHnyDttg6zcS2bErM5dTHlbyXy0DPPJupD2iopnd6850tXS8PtQZ1JYg6IGbCwMAc56Wq7P67)f6WB6Id6Kz14(VIbIvXGLL2bNxF)xXE(puKq4uSAWgnLyymUSy4y9EyIg1)vGzIP9HHT1AMkGJ6)k6pbiKgchGM0Wu2PhsBSfrAFnGKKgLAgZYhiIjM9DBizkfAoZgZYNu8wKLWSOelJQ04rtjMmIcLUjK9lSalPgKsmWClXosGUle3DFlFI4BSgSayudtvO(PuiEQmJCz3qgdA0Ow(qxHXanbrDmGcJz5tAcFnyK(Xp0bA219XDRe3LWOLXTUXS8HniCcKMQJbWIrT8jnNXSclWmHHmH(RR3(b9NiOrTj0c3GRRNK)uWhbfeKLvLfM6w9K8dXJaqgWMPzNtwFe8(XhnNhnDdnaM(SdGhLjDs7SNVG6mySe97dn20g36tPlSDLtNrD2avkG7cXkHI9uSrrZgBntc1qvxnH9ccfZTmfLYjiRqOYqmjBb7KTYe4jNEKo0dEwIKd2oRnPJLO2hDnyyIAhrxPtVYMOtnMXsu7ukQvZqfGbvpmHeBgni2cW9XBxEAAGdh6r1irnvX1iUHpQuvyceiyyCtyAyheHREsvjUxiqncAWO5lbjUC)mdlJ4IWkFkmfsnoE6uACAuIlK46rtuJed3ZOhosPESrt0WeMHiqFJIoQ0goE9dktueDmLrXgCyy0s6NyWm5FKZLfMQpJ7pjML(zuJe9PuAYy4PZy(nXNl0sYqimgEAq2ZhnDsP13l3pEIANXoPFKYsCmHjME)e1ModlNPzddRyW(wpPQmh8HzIurxcn3ym80utptXxaqYgBc8Mr)e1o3izilS(M9ED1OjQnnMg44Hgyiom5iHLprDKWYR7NGErUK0fiJbqeBxPrpscyBisEkXwcRCOVXZ5Hjb72(Xmqsd99GODjxX1mSbO64rEQ3HHacVp(Cz30bhjdnUyxnRqwDN4ainCMyWqYGK3(utAHLjvpBUwsK4a3QZe7f4lnmg45Ha)BIdaDwLLEzttfODExtPsvl9MmEJYpsCasyw5JvyaIiXe(u5b3rcp6giJxu2WeWgmr0oOCWalhFLTYIbgUyMxMemU3Y7oXbGbIK5zSLoGile4lRPNy6KAM(lw7qFpaW0Sh3cgUyq7N21F80Z447Hb)DK3v77HuE8PWvYuwkmH9P20mL4SE6dXmF8s6iRKyommummTmOlKcnUWq4TqyHQPxc0noaGieRZmJ8Z0Gblkmv1vrWeGu6BWUi3As2rftnhl9an1ngoNJzMhrvE246coPBCaO4gXAiSsPDsMQZYQyjZ6z1tzybvmmoaGZXYg6l9KtU3PuM6OsNPOJIJzQsfnmkT8aeHPycEQggQI4G7L53g3ybjfajLpmoaG9WYZoeMZKwF8wYQJUeTsd0umcuHP1utoqc7zX6jzRHymbxOP2g7Jjf5ir4Lhcg0sVKeGjlqh3WydKqNgLtOeH6A6Jqgq7GWCyua4lTTXQjW2z9rYN600UPimt1cM22P0ZxkD2Zo)Cjln9fkzVZSHoG1W8PmcMder)tEKSr0sVhtG9qQuUonmMzmpnuXm1vHPYQbcbHfsXAIwGxrwN6bjHz3p2zOdAtIpsWqXtcBvgSyLZhBi1U4x3u2bby0nhymnm2movQ5gqCKN0jLc1mvYzC7bUXat4Becc0MuojEY0JZbEr1WGvMKkLcEUpNw6ymnDTnd(iRXbs1hKGrhDpBaOplmUKrqhtpMsTMrZoxAulpNt0m8fMXtfKePaeX(nM7ps25YfjPIlykpmE25khDqm(1aKruO3e6BknpO7GOnGQIoSi95LvsaRF3inqpOZ6pkI5KOJ9l(PRBaOWHbSI1KVLf4uRcWlYTVqPvr()JQJziWQAiRaI01rwBwifoJHnD)I43UOHQ5ZyITNl0gzEdPRVvi6auk8E55KJAGA(mQdpljN12tQkpRdljyyyrMawsFbWz6eIb5WmmHL9an232jL5HO6yMsL0w8HQ557hdJCe2AyfEeWsQzk6Z0tZMjNUydcXa0JhXgpHKiX2aUzIacqTziEIRR)0UQ55rGiK3YOKXuXjS38bb0qUd9BCui21MqmaH10UeTsY)ZW26NXYKPpIL3LXl(Px4(jcAXvE0EztyPSrC1zmo2m9IvdRDvw)mqBo32JPP7HcGKUHlHnaOV6WWt0qqLYcsK(wlL21hwrAmIImfJPz5XPhjC)SQlbVdKoX8RRt6rYYpwo53GSTJL370r4myls9uyt6KQaSFEfZQtWYIKtpunpS)XYGMcmnAFvH14hr8NS89a3FyWdBvZJBd3dqRcdxnDIwg2tZzqqy62P9Cb9c3FKIxb(xipptBctZGiT4GfOiq3X82w0JmUNrmLCm6oLtbdTbllugjP64L1rnpRvXewyWmQgjUqXwdn5OYEcu9lmrgOGWsrNopy7dDf93HKcqeXLkihp7bhGjMrMMTVfgdPOO2RRFnKrzOKCGUWQTg2dGnypgSbjoXb2orh7NjNiCChPxz9enU4ugyvI6lM(AnmVKzOf4qsODr(08TRTtmQrqJiDvptzMW00HvStucHoe5tYUU2or9VcOtnOb6056iyeiPHgDLNDeHQ2e2lEKIjIr4pm5GYzikb0BaFV25bDfQgZEteZyeMq0jbQoGoGxKKP7igvY2nnRmo2ByupdB0AZVfndPfuYNAu(yM6xtjezwk9SsO8feAhXOSCNeVTJBlXxPR12JsdD0u2Gw5d3AhXOwMFHuRGMOB6KHysMqqGYXKyZmumki1XMnibGgoOQ00jX0O7EzXVXNA0WSMYWY9Konrke5oj6fORyTVcgnQmlBG3Me4JmvEZyfxMM3cA9caVOBosrLa5sDLYT4W3UudDoc7bbzzPHc6BYrkyZkDQFCkR1Io1FwMK9AuRxcbiCKCKkJUtgs4PZH0jQovTmr9gZyW11wqtdmvigrZ0i1kt6abU5sMKfX4fgfw5lT2gLsR4zFOigI5nHfdwE(lyOd7ynuwkrTgPK88olPZtIzijZdsadjuvwJysw2Xq)hjnzU3hiIL5FoRXdArrGpWdTOjSIdhzOCfcz3iecXg2ey(flAqafo73xTyE87(PkesLUNHwAXOowu6rnLXWtx2xId7iYlTcYacOz50ccZyqjzkrKKmiR4ZG1x5uRcmPgBVPbgFaYmiOmrcKqyyI6fVCQaM9BnnJau6yza)XF1g45BdRTsCnqylpgnZhXZ3g2)kyOvW2QkmeB998DotVKmdpxWd9fCppFlfDcRTpS2fNRhXii2DnI1Qew3kaD2rk9H0JzJrxBPzyAzXaWOBz9zvB8ZOYQLJzwkVdqPurDehMtFSZt4wn5kKVjQBL9XSEqwXmEinnQn45glZ(uMCrjMH16AoZFLe2J5G(nviHLCuZciNuwxCqAH0kHZACLNp0SLh3rvmhtQihq(mrdDOidCBopnYbMvGtlp0mCdpozzMsO601pAdmDo9FDcRjdgmTwawhFHpmW0rr80jI54obSgyln7lfqPHbmd51kCIpsNUjJHfHHJNNd9Doj1RleS4JHAkVxPXKs0YGKvLQtF(fcgqDcuPjkws455HMSWJ9yclIjNyTr5DJigUcwAu4IykoydRJAdZdvOYeYj8OsT9mfvXkDfmTGZjX25PMkN98WSYo5nudQjw(05IcjfTDi0Es8reMhy1subKLTMIkr1NDGigEKWconJjQlUn6C4C1Ww(btOAQAmhuy2UOzGEpOsXcyVS6uos2UPPJHtyBUqBIcNWgjpQLK2Jovwp0uuymzIcsN5jQBwwhRyP)MzQzsxAMoedfDAfZIoOdJjmtOFcGTEqujlBwce5yyOOfUg2Nzve9z4UJv8Fkx)ssuMH58al5uboRquLfMIhwP3SXKju60ihjZZzrVW6RfAwarCwadmqfWIHb0ASVbOhMBemB5zyMvWuxO5Ut6iYwiJyeSHH8m7iECMUBMgLzPPFsU559E7X5QosoueHLk2ai007XXTMHnOisdJEy441VTmXgwkdkot92JyozBz6rpiglvbVv1w5x9J2xkZra5qMo2eel(wzmMJw(D9BqgzKfWs3vBBkv2NrFpl3fItEw0Z88lkK7Hfmmdedy69fNu(WUMXXFYdavql1ynaWA7kkmOR9B2wrSmdyIXau05X9fu0KsAgA7Mu7D1fOw6qqfzsyfbeMyMP)rd65pTI5Xlldwn2fmPJ13ZaAqndubR9Z0WgEvVWPttJYyDIrtYnPJ33EyKQay2y2P3csJWUEw9c8mFbxjg6lvjRTjmhvoLe1kPr1hqh)EwxqWsOOWojw)eGKhT(mJ2ykjgMyOPDNrXjVqFSwBgZqx2ZTuSHwOcICD)mqfthgBYiR0gPYhndutyKByFqJvsx8OrmNLzpnynpU1PYhjI5y4tFb7XshjNtzRewstt2k6uQXIrUbC8wgosISwhKZU9Z50CP14KYZdKuB441Vp)Xdp9iMu6StVPglNtf5njSz1XMqx2OnZmQXlrCbl75j68XY5utm9QCMMLGuKVh(1lhmJowW0t6fmDr4ndGwU0WA61oZg38gqIqIewkR8OtjSUTy0Y5IcZ3JSObfvhJnzS4NorsruNSXpLnPidJbQVUV7aTr8wnZlkGZKP0rOdiyXcl2aZe5Wmmy6zu6GvI3o9fyyC4XBp7c15T12rhhczybOYGBL7YhXohOmg2WlYj)PZLbUBTny6q(fBKgeeuwAEyputsyaAxQQdDytFEH4MPFZOtrJcdla7)FmTBawRuklEi0g6Ws(UMlnyIq3otVKRbheBcDMJ0vliPodkgqCzzXzf0nZOME8ssGa1jxs3GPZKFoskEo2DAC9HdBD6CEeQSHXGIjWnyKODp2WoNrGQ0SJLUA9InAg9ZCweJlCR)XBuL(iTQfTCcaXiQK6RE5gV4WSlJOJ0a7MZ(OUnVOC2sZOBKzNJSJ5(SWsipcZw)qnDTg0X8hisSzpQt7IitY0wfbTfdKDPdiQbrlZKm6xlaMXe1XwqSpOGj7r6o1etBRAbKgmezYnhILK2KMiPeLLzt0yz62XxLhOAwsaqn7IJS)LgKdr9l46mwRfmu90ZaJL)WslbIWAYPyx9OQMzVFach5Aoli9rj4yEUrVsNZws5JK)WsVPjvIuDA3kjmEqltIT0NCwhMDWWpOLePKWAhBzk0RgT(3tLOftO5m7VhT(3zvmWyCKqbuQXZ0ngfr27fzLWWm4EuSVKK1qxnXdYzB(O5pCeBbm5StdORR0JJM)WrSKNGglPHsfMNXQ(JhRgpPQ6zFoy0wQxsIu4w(gzv(y5pmZVF2t4yQKB60Yu7LPBwPFEW3zavomVLt734ByAvX04NPwTD08hMQ4JzZxKDbTW89ThWvje(kPBaLg2Dj19BrS0DaAg5uwq6XJL)Wjs2KYURGL6CIgn)HPkReMufS40daZ3l)HLkxcAImS0qYcEF7v5iC3a2aYu4ko3CSwCO(y2af3R9bqJlYYHGFA)TjQNJ4Yg3rlIPPW(lwiZr6o1giRjA61JCM9krdD2kJPi7xokEWV1Po9tzdpmnrYigB0WYk0AChzmrusuZHNTdxFSLSJqQgnXun0rlPsWaIzoMPvrHnwGyXGagNdBDVzRxzfMYKKJzHVKfSHzAqeBkySU4z8MvhZrlutd7RvS32fMgos8rzcuRONHg2XDiyGmSib4myfPZ7kyA4cm2dIInbjkxBoyXO8XCqhZyvyJVf4lKwfbJwSpFb71JTa62CiOYYiY4YtNMNkZKzw3tmnRtosp2c3lprsanjquRTDMXeJnahrMLOOSJ4OfTuGoGdH9bToLPk7JNST0W6DXMRpsj(NXKnKbVpkY0jaBS7FAzBkjIp)wNrge(k6HewtuuAKYgAlpRztg(kQ12hsW4UkwEbRhWuPvFgZgvJpR1JSkXoBBDkBg3nR(KM3JbOUPhLSbKtgPYbycKM2KGrD87c9SlZ(o64TOuyeuyoKaHESP6gzK4ApWxmm5ju03BmhSIDsCBWAryweifRg)GWU3ehlOLacPzcqglWQcbBza8vntiD6XiZaF24QfyRe2DA2uqQGWiLaoa240Hg84JeUF6FjSAH3OuQ2PtAgqpQtytSETdwN7BLkZXn25gHLU1zj4Xc3pPVOfJajTPoALXhZkvMPUmy4SRLNg02HguzKrsFKYslv9H6j(Ovgj7bBYHGjJqqWAGP)7bN(wwpvj6WXRNFcIzfDhjDihBsAW4n0pbWGpybwKOtQ9663s65rshJ(LTP1WFS(eat(fAafFnIJdw)6xzKuPrclSugh1GU7u)kJKoZLDBhf9JFs78lU)(bWRNZozsMexJ2RR3(H0HMXwS0BhdyNJhSFi5qmJ8Mkj85A6xrRmBHyDrO6(C7TFa4AKZKzULjoO)t1VpbWMnotBDM1j(kaPx6Myg4DH9JFyz8FCO0Dvt2wuXZoKGZv6Y1Lv3(WuEqfDZs)b4L70)GFepDjCNivJDGtiUPy(bGHyZ66ZvI91Nro8CJrourChq2V7K3CYlF9fsZuHv1lDdjT7NlSSjG(ZNC1vV(YROOnEcjW81dm1wX)gylKFVC8mZeEGT0sFieKfCMoJt(HtE7jxWVwZuDJfmpRgOC3W7oZ7BEgwXFfS3tsPNYMbhJ2NbJpCoB1NPmf0K5ywW7apVcKMjVL91aNX8yf(Lx9Hx)ssYY2aotRiMXUIXS8n8QlF1hoJ6aXqAsLoNtDjpehm)Pt3LecjN1RQ2DZ7BgCqObycSphdQoxEKJPU7O6)LNDY7)HF8c5aXJHCmIOK0sdSin4D0VgWErcBBDSFB6kXeUo7ML8WThOREbej8XjV9KxDMKe6sVawwvbfmN3ASMC1RpBY7L(viDGGCFgxpxGhc71lzqBPwfRFb2X)4KZ(Pl)XZUYLhXAPwEt1SUh8lfTBdg6H9mR4hhhwEUq(YZE7Lx8dF4I3ZXGjan7qRS1ZrSvDxoVqsrD8ybEb)k4f8jAFbeKH3SlV4h51GfQxWMP5K6rfAPsy9XZcqw5kK4yJ7Wdp8zZs1glEkgYpJtMTC4WSLmFYzXfpLBeoH5B3fEii6p1z2xCF56Pnh22DVCH5Pk4B7Ctbd2rVl3zpJU)JQ5J7CtJDCFfCsO156Boe9M4KT8RUZas50)ZgCQ64EOp5v3zShzM)7Dk6xh(dEB)(MY(BASTKWdt99hGjulChHFhwlNMx(ZBmEgQTQyXAiLD52Mp0kN7ENDX3FPq0n90Ro7KF8Lx(ZxmDY7o7nV5KpC1jtiTXSnBUFvr19tBEaywC(Lx9QZM((p8(lV61N8gEz1hT8V(IZVS5luYb10YYQ9Ud1l)XD0mUCnJRwZ4KBgTeAM7OINs53xbTn8Ovh)7MDLDEWqzb1X4N9x(tND1jV5nV8K3FYuWCFXRV4vyta8QtElp29V8TNEY7N((x)2Z48WFgYJDG1BoSMNh9rJmT1Inht(5xFbwpMsrgt)Wf8hY7ZlF9Kto9nNn9YleXItF3jxCMSe4V(xD1LF4DtF7j)OmBCNBJ8Kq7lfvRHoUPlMRMwSIhSus2U7pomNw(RBDNJsnN6uYQLM1ylp20bAg3pZmYpzkgWFYCuv(CG)I)KTGh5VHen31f5VF)3BT(j1XpdSKJoX2ZaRJDQD1EgyzygeyyhcDItJ80wD0CjXpiR3EnU3rp(SUV8HD7PQ)NXj)M7uXKNkH3TyVNpMNBUy3LovqGAGxH59oZVAYJmc2pwIw9K3xUct6Q)LDF7t)uz18fxV)BF6Ve(HlwJpSGp9)QWANW2IEys)ibE7JtobeORW1TdRnF7tN4oj4kLcx8yhiI)CzXwmLpfVirHXc5cXOLjFy1TLZa2N)vmBoVGN5B)1JouY7203wC7IRNEobsvwXlpm(Tm57f0FtMaAQQBXSBY(Qf3JF(xE3DpWd)ZLUxnnlAUOWG6MmyYCwfpIfVFS5ZjYXp2dtNC4MB2qYQqhmNEKrdlx)2)12BWF)yVGNuDDbinEl2mEBbpH7Ei0J0MHlzLay6FD0f)jh45F25KQ88fvLt2UOAX(qNxBhmIVP4Zfp(R8v39Wg8l3n9N2SeZ2nHE5oBW4n567wwUy1JpKFppw75zx572SyhOwI0D8jEQGuIJ85vB2TF2MLK49TlQQ2u9Tp9AYw42yvXmzJ64N8KCIoK37pS5le293(0PGRvgaOM4BF69fGuzF79h3nq3WuiJq7p5nl(S723SAgUBicdcSByxyFbth1XL6AjTyL79uOtz32fRl3rUoHWQ5rMWYgl0tisHh5EF)rqiaDHGsEZHL9VvdlxVUzCI03iT(P713TNNqJ4r(2F7FuT)HkiL1TJum3txJhpGXz0DCjp7jp(35xTSyXNbd073SJ3A9F()HU(U1XXrD8tVMHrw7NbBwtrlVQc749N8WGzg70qx3tP2(1R)xVNTnzDY)Qs(Fr4)6(n1)Qsl)Z)l8U9QYB(T)XV9)J)yO8(QIzZkxUUMfNN8vHE8NHsmwY(UjNTfqqwT46ricyAA3jiaYHBNJk60LB2m)bqfSyz5W9s6NQoUnbZd2OKok93jBoRpzxJBuGHpyRS)Kn4oAMJbuBXUKl0nh)2N(bE4woF4KKO574JfEQi5I05eWtdz78vZpiNvtM3FCGILOKOo(GrZQGnTMWz(cEmOtcGtlMF7rwSsZY6g7bTZHWoAhypCLSC9UnFHBVBU5BF6)rXYVwS4x7puAAez3KmGvRKYnuV(21IsvWgabfC(C(HDdNokL04vc9TdFFS5dFFEB5CO75iRj0TPgBh)(qpVmMwj3jpCFDsXTuDWumhR0vB2FDfuYZTZFc7lB28Tp9YnlhisGPYBMBg04PizxXo8T4SvaM9QJqEe3lejSulsQPSkU((nha17pciRuXkaabrcEscw1kDB4wknpEdFuzjQ(YsA81uoS93d6GiM4HBlUXRHoSwD5czKTJRNI5zdPFn)(dlV3rfbwb(MpylJNADAvhFsjRyQHRyVE9UfGyQ4iYWtDvIzCl9xelXyoe)mTID3wzvR39rZY93ywaBCMdB0vaBHtIbXPvUB)XM7zAr5rCEG8xprZ3F3csHqgN9eR2vhoI(hsYALL9Ka6UiR71)73al4CdXlHkSV9PF(UfaDC1q1ymjPDIdsuH0VP)rPFt0nGyzTp4ekCt5miwIeTu80QMLFDKlVcQj7Yy)R1HyybpS0LN0iaguI2VKKqZBNCrXD3xSA7nJdT6lBQMpnYLbHnQFJK25RqXUBFvXs3br8cbnuVH6K5Z3m8yUwoMNlK7LwJCJGwlPLWKjlrTgY0KOKShxd5BkOUQFSIhF8LlULhx3Bxu6ual3Um81eTSmq9yDkNvUE32dRVFF53Dc24koG3JgbvzUv7SggojlID6pwmNqKwU3T(gfN61sK0irec6s9stoSNlplN)8xB4()CVHAcc(AQw2Wi0Mw0dzP5QhFX50n7UR4g5yKEcqFUYldJ9svzKBGqk5IrZiZoHF(JpYVSIwoU(gIoFgGlY1spQh5ULHVH(olJXpYn8MO8m1ta75hpCB5sECDJTZBl)kKiVNYXDyczkwk8pPXTlmmVLBxyGkPh)bCfpQ1xUwqvD1Hzlw73lz3v3fl3AMf2kfsBiinYXz1Jp2)awraLiM2hMvwThILaM(AeH82LXpTDTjZtz5M7X5pXIZecCWn1NasEOIUGNs9(NGmaYtOMLIDehBizdyXEIL)hQkU)(cmO7kDplGeDP)bWKYugFBdXJn3uVcXMPuS9XhEysxfwFW8)8Lh2TJ8T1R)YzKIm6nCEzjAp8cm7LwY(Jp6NC4MVSO8wz3Lsd4H49YgCHoDrP5H7U1R(cI6OhF0pBXUzlPl3WGFdpA6x2cgxecyIA5PYunBSzAMvWpbp1)Er1HdR)7ys)B)JdeHQSjxdhw7pvtubu9PMM19mMaipXc)sEoXJ1L73uj(bXp0YTkJDlhRwfxp5zlfm(jizEBXAV)sEFvXbri39LEB44DlJEl)AsSo9pP90uVpCmny9PM66rNflR9jeg8ZWe01fvugMyk)n72x2qpYJvqo6n8R5m2YHcHTMNIFTuKMjBMNWdW(V8B)dNMMuxOa3lfGqafzE44BsFIfNLl3VrKp6SeUCbDRsZQJtuVXgkRSHFkLrk)PK3GP)A)0x0ICtL4YprdRC)YdOLH1Yex5pBXnMgw2mMpd1BV0en9tqAEy)cNCyyD0kWbqvYTg4jJUTLRL5OEJaHuwdSpHeHLcS9fhwTVGCaRlwnZltqUBz4B5zJZJt8dp(9C1tiVHoxQqwt2jAw(QSllJV72LHVLTLTd3wXzWw9hF4)WQzvLl3bBienTZQ2G3GAjAEl9TTSTS)k2q6eLNOFILEr16xkxUTC92I1F1tvMWdvthUsBsZ6UonRHTkx66EpbWVYdxF3EbaY3(0I1y())z5ApzP7(LhqGEwBCaFvkGP8e(E53(V2)1spxvf0rrUGFQSwplha5jycEcT6sOHlp1Q)pdCH0QfaL6MY5(vh)DkdDltRk3udWHLAx8tH87h3SEFfm)Wt5ddY)T)Rv1c14TlJFwavVo5pfQE3AVG62gWYMydX4aL8pXWtFYmhtEpL)KTL1epUBxCXBuOMWS)u1eMPA1MWwosT4gMasp(q)UIQ9lUVrG)pxUOLJknXnXB5xzVhSDFnpk65ipa093TPATN08hkxuBNl7WiC8JBN8rP6Mfgt0tbV5Kd09nFM(9zY9B(CHZUfQhHzmph6wgwSWuVMhNjhlHpBFzgiQVprtwRIwP9)68R0DFPO6RRke)9(x4S7HnhQ4GS8M)6ZYYQYzWYQvlU9oxWbQ5zHemR3)xNcAT1oLpW6aq5TapQK398gEjEA7(LzhCXeeAix)1hMs9ojV4FF7TYZSbVSoPEL7SQdBDoU737tQ0FN9Egnm0AMe01uTjk2MuEcocrjm2yMvU7W8YL75M0)Zb7o1S0jQS0gpztVt(uk5Pv5TWG6QQrUDjilnQHLMTrdHllgPNqtdnkAjXVvq6QBPSBpPlVzzWBS2vhBuTgSKAFsb1N4G2kt9xrt6llj88)2w8s83A4q8sTZBcSIC(X28CYzD49e2RxkiqpSEHhg0KI11CGYTlJFCZ7HIPhzGPP5pz4eez137Fvo93(hGqTQ12uNLJ5jHpaZ)n8asBz)yhFY9a4joDE2tTruhWNBl)po8B)dqMcMNpipa39lJVjChi7p)DaBR814eDOHmp18F529W(OvLle3MjrfV2qJCxHU2YclMu6hBxNT7jM7yQUHA89R(FUSAEfjtRkbS91ocvEeRRD8dn8Y6CTvhye8tzO6Pll2xVpCOQWTjCk93)FJUd8V9xBWi5J)vuuBqFy5W1OqIDHUNYGBWpFJWulgGC9DvLxxBsSYPpLw179VhpBIAFt0pLBSE3MQVc5PfRVVQCMd8ip81s8bDmQHvMLpVUffGk6Pei9UfBPwUvfvf3o)2QF7)xXZ0yjIRqhru)LJkQ3LyhZRoSy(0zLfv3D42PZyuk(YDl2xwl6hOgBL9x7BFcLMPJ3tSg)saMaSPhUPS6(LW6DUrwSPSEFuXsCY9mALmK0cymvXog4tWy9tfWcV7(7GQHg6Xi0UhKnb6xCNdVrPHeLQ)5jkBCpJ2x8bnEAMhv6XTUTkn5ja292h(xWCFFXYfyxTgWOo3FuGhzdM4PbQUSj5p1eVCX13nBt19CQdjC16TSUEbGkQvKapaM(ZqXfHCCyx5aDxQOwHcSkkAGMMWce5j0WdjBq0Pi18SDaF3x9(4WQy3grszHw978KXVH(HDn4NsU8Ynv)lWw1n7(71(IWJA3D7UXVvfpZvM)0vSOAtAc2V7QFaPAPvq)4pb6xSvWCym3)70SGzy1Y7qE3T7EaHCXP1CyMe2CZEcl(k2xC)YhwjUHZ7KSY69xEQjidFRtYKhzOG4Na(oZPQYQzcUWjqWfKySCrDIHOm(1N0abMj2)ueyUcmD)UeyUCbfxwClqhVS8M9nsivbWcsB8cJCaZAFsRUGThF9WTEAK)NLl2p39Y7UD34hGWp3K(pJe4(cEvzHRRz)PSU(34c7FRovhyLF6e3OcebK2iHKUQm7P8cmm2D3UIBpS(wpp6hQUzzrJRoZC(bwPJcEcMK)74jOcvCB(tz9IrL)3fDimoDkVQPv0UZgYqToqtHU1oeAj6t5j2s6A3M8)jw5G)OdS3xzQLkPKY9t)ucTzC8wcJ(k3)vH3(vL32MMeo4B6axRhNgfQa6Pm77QdRbaRVCGWS8ow4Sfx3Q2r53Vcv7N0kxs)KADEvz1gA3UBQJFuCOArB4ECILAZ)gw8KTE)Mn(XN059Zkx7JGQSur6UA8T6mFLfgQ83O)tq5p7hUUHoWKEvJf3aHxoM(pXsd04SRyfN7IYhOyyTBPrQxLiFl8SLDNnrJ)um4y)DvB(sF7nuXbw3RAIyiBWgM0Nq5ZfpS6axGWwXxwuv5nnRgFbVF3tiGTNjh3FMOxKIvyFXuP6Qy6DZeBM5M9efZ59jQy5F1Y)QK)nYLz2nLf1YfRlNExP4fkMmItoSfdzztQKZ0SEZbxEHoz3sGxE6QYPaN2CxjxT5ltla4)TvLm7Ml9PX9uxAtZlzwvzX9Z38L1(VzFXmolxZ0J1v7b7CFZo8AS)UPK6y66cxYDlFX1BwdrzWuRM5jfYmzglab3yw)5gBNpEgmi52QnhwppSskIErK7yQZ9lX1)sc)fTucm3vSRS9PUyhhs8cFANrF3wwYcJvJgk)akfCHCxTd4xwmF)DSAQY55smtf0S2(YP7DEwrvW0FAXsmN4WXAbQ3IIB0UGh)wtaJ1TL)bwwlaVY0BWh84VoQMxgze6s7KnyHRUMsWtCVKQNhFnT3D5xDa7b7HjaeG2u3MhtgCXUPUurGR9j2pmg621FCcHzXYeSzk4xNYP(Jj(QJ4PVCPdCoHjFfFQZFg3HKhF8oUU8z9eCxptZMNXflITMuvS((NXfh7QVYoSeBiI5oSdoEHGclYt02FllyPUPelF65GeYRN7EdJQXFOnNN5sT76)VJLATFP2jwRCFnV3ShMETusb8A9CNTF7tYzgYMCCM2A2p2SKf)rT46bBzoWEH8ibVaDEX8VnQ(mjpX1FeMKN7DuVZ9SU(6DUN4I7UZ9exCntYablEXAS4y7j)2)DNZJJNSCk(oZ0EE8nuhrnJ(GbkC7DWMNSP1ORqkLC2iLzg8x30lcFuDvXz8A4mEfCgpNDAApbcUzi1J)4kg8v2ibbSVy)HD9uq19PRQvWQQvWQKN7G3X63oESkZdRPi2b4QBZ6bpP9L)kRuLN2mhEX7U)bQzk8(B0FApYKiCxyOqVaYGr2IQjhYIGDcrgyZnBQ)nn97JisqydN1zFyBX85ly6QMEKNtaj8y84)o4UhiL9)Fa39ak(n3CdmV8Jx8DQrOOdjzokBXFmnHfZ2TPAw54ajM1UQK(hr7gv3u85BFoJFZ1V7zC1ID3tGngfpluqIr0pdCt9NomeYpcwHG5JS6qhG8uRq9FhEUGrKCP53lyeNaKNn8I7w87yX)FgGlxlEmy0DQJG3ZlB2ihmJSFxLcPZ1hxEhtoKtszsMyLGRECzsrwje7hPeLfS)vBUzXYskuemzx7UWIdvftHTVqOCvVc2DpN9DkF39dlG3qRGMwiv74IYDsRlyXo(X76(8QRdzNG4XkH4EfZSucW1tN2UgWURzkonnykn5bPtXXMvFoprLJ01N3nt(v2ZJYZI4j(UjV5WzWWxPfGOBYBo78EVRTMtl7aojpubDDVhq5)ZUAKZ9kKZ96JZ94bY10pcU7GQvz5QF(jF4n1dkm93Pl9IlV4m80d1fpXRNvwbX6313XqIsNk4MkuhyoP48fB(0)9nhQwxS0vH3((TYDLxd4h7pSFVu4zCts2XFeWf6w4fSRG6byOzAhiVtzEaDY()lDT2Lj1LK)0fCQWmvzxO6dYQ5kYMpoHZkC5LlXR4j)BS85zDEZpFnE1Xp3hmCBRk3UzWy1oaN9MZzhvGryT018bK1Q5fp8XjrqxVJdz66fxF)(c51FZ1ZRj(fcDPA0xSFPyFqDP8FnOsjvWo3YixO2w3aeyrXZIEfGoKEiXHvRD9KczOQ7Ho1l0YuFE5nLRzjL9DS)a4gt2phC)2g)x6j0BU2gzDuU9EPOI7FjubWM1cvQVpa5K5qZv8ch6)U07pd9Vaj7BKh0BoplyEo7iZYzTZXzhDgkBoC0bXNhqyThUOgSfnTEOnRx(aiJyd1G)yFb70dN285tLndNB2cijGyoFdxyYI9LR4CHFm)9TSwlhBsZlW3oJo(S(Xwiift1MVm)AxQx2DryVB1E1SI94fwqmSyTqOoTX9GeFtXYLsdsAg7KIGUC6Do2zxgLXp2jW92Yvspwy3uftt3MpVU0bLwWKq4n4XupXXvD90YpVHc(9UqeVc(pq2kQBojZ3E8rA12Lh252lR7MmaDNNw6MnaPW0Uc2WS8H93T46P8g9Rd1CP17UqBfnbinJRxq4vFjhLaCi7yufGNNI(dgc56Rb8x7V27kQ(mdBYCmxQOCZQ6zOFUu3yQ4ZnkqAJ8A2xyJ8CeGeSBwiuH3SOAN0OfGuTYQADhTdJS0wbKzv9HZ3vYfFl2WTU6vc2UDwFZIBR73ftwTz(gXN27omBAX(9vlMDyVRVAC3MQfFL4dwcixBfMj5AKlzZuoTh1tJjs)CqM1ydwiFQhKf7EtRpr4NjlCl2bjBLRLpS8wMhWYkhMELY0R7uZThnbYFw50GcD0FhpGhsus)Fmk2DKAsKo)Q0nMLZu7uMtPkxJungRTS1cNXcHKTr(02wy6ekIZ5xVDq3LVv8OLwXJI33fsVLPXwmFxqJDImUbpft)dn7SneHcWycjrR18m9lydnuMziPXyIyB0O1SDF1jV(LDOresiqv9u0hIY85tH0LYD1iHAjXBiW9gz4DnDd5J7V)XsOnu64k1cKUC2)E517)(A0LYYMWen5LcTRR6ypRG1j7RHW5pVy(HILF7tVtgV6X9sWlicI37h(2hC4JzYHzVNVGCAC8h0jlBg7V9PVFdZzcSCC0b5c5M9pTMTwFNbYrs)X)3)"

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
	OnAccept = function()
		MER:LoadDetailsProfile()
		ReloadUI()
	end,
	button1 = L["Details Layout"],
}
