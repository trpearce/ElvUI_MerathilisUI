local MER, F, E, I, V, P, G, L = unpack(ElvUI_MerathilisUI)

local error = error
local type, unpack = type, unpack
local strbyte, strfind, strlen, strsub = strbyte, strfind, strlen, strsub
local utf8len, utf8sub = string.utf8len, string.utf8sub
local tinsert = tinsert

F.String = {}

function F.String.Color(msg, color)
	if type(color) == "string" then
		return "|cff" .. color .. msg .. "|r"
	else
		return "|cff" .. I.Strings.Colors[color] .. msg .. "|r"
	end
end

function F.String.HexToRGB(hex)
	local r, g, b, a = strmatch(hex, "^#?(%x%x)(%x%x)(%x%x)(%x?%x?)$")
	if not r then
		return 0, 0, 0, nil
	end
	return tonumber(r, 16) / 255,
		tonumber(g, 16) / 255,
		tonumber(b, 16) / 255,
		(a ~= "") and (tonumber(a, 16) / 255) or nil
end

function F.String.CharBytes(s, i)
	-- argument defaults
	i = i or 1

	-- argument checking
	if type(s) ~= "string" then
		error("bad argument #1 to 'F.CharBytes' (string expected, got " .. type(s) .. ")")
	end
	if type(i) ~= "number" then
		error("bad argument #2 to 'F.CharBytes' (number expected, got " .. type(i) .. ")")
	end

	local c = strbyte(s, i)

	-- determine bytes needed for character, based on RFC 3629
	-- validate byte 1
	if c > 0 and c <= 127 then
		-- UTF8-1
		return 1
	elseif c >= 194 and c <= 223 then
		-- UTF8-2
		local c2 = strbyte(s, i + 1)

		if not c2 then
			error("UTF-8 string terminated early")
		end

		-- validate byte 2
		if c2 < 128 or c2 > 191 then
			error("Invalid UTF-8 character")
		end

		return 2
	elseif c >= 224 and c <= 239 then
		-- UTF8-3
		local c2 = strbyte(s, i + 1)
		local c3 = strbyte(s, i + 2)

		if not c2 or not c3 then
			error("UTF-8 string terminated early")
		end

		-- validate byte 2
		if c == 224 and (c2 < 160 or c2 > 191) then
			error("Invalid UTF-8 character")
		elseif c == 237 and (c2 < 128 or c2 > 159) then
			error("Invalid UTF-8 character")
		elseif c2 < 128 or c2 > 191 then
			error("Invalid UTF-8 character")
		end

		-- validate byte 3
		if c3 < 128 or c3 > 191 then
			error("Invalid UTF-8 character")
		end

		return 3
	elseif c >= 240 and c <= 244 then
		-- UTF8-4
		local c2 = strbyte(s, i + 1)
		local c3 = strbyte(s, i + 2)
		local c4 = strbyte(s, i + 3)

		if not c2 or not c3 or not c4 then
			error("UTF-8 string terminated early")
		end

		-- validate byte 2
		if c == 240 and (c2 < 144 or c2 > 191) then
			error("Invalid UTF-8 character")
		elseif c == 244 and (c2 < 128 or c2 > 143) then
			error("Invalid UTF-8 character")
		elseif c2 < 128 or c2 > 191 then
			error("Invalid UTF-8 character")
		end

		-- validate byte 3
		if c3 < 128 or c3 > 191 then
			error("Invalid UTF-8 character")
		end

		-- validate byte 4
		if c4 < 128 or c4 > 191 then
			error("Invalid UTF-8 character")
		end

		return 4
	else
		error("Invalid UTF-8 character")
	end
end

function F.String.Replace(s, mapping)
	-- argument checking
	if type(s) ~= "string" then
		error("bad argument #1 to 'F.Replace' (string expected, got " .. type(s) .. ")")
	end
	if type(mapping) ~= "table" then
		error("bad argument #2 to 'F.Replace' (table expected, got " .. type(mapping) .. ")")
	end

	local pos = 1
	local bytes = strlen(s)
	local charbytes
	local newstr = ""

	while pos <= bytes do
		charbytes = F.String.CharBytes(s, pos)
		local c = strsub(s, pos, pos + charbytes - 1)

		newstr = newstr .. (mapping[c] or c)

		pos = pos + charbytes
	end

	return newstr
end

function F.String.Split(subject, delimiter)
	if not subject or subject == "" then
		return {}
	end

	local length = strlen(delimiter)
	local results = {}

	local i = 0
	local j = 0

	while true do
		j = strfind(subject, delimiter, i + length)
		if strlen(subject) == i then
			break
		end

		if j == nil then
			tinsert(results, strsub(subject, i))
			break
		end

		tinsert(results, strsub(subject, i, j - 1))
		i = j + length
	end

	return unpack(results)
end

function F.String.FastRGB(r, g, b)
	return format("%02x%02x%02x", r * 255, g * 255, b * 255)
end

function F.String.FastRGBA(r, g, b, a)
	return format("%02x%02x%02x%02x", (a or 1) * 255, r * 255, g * 255, b * 255)
end

function F.String.StripTexture(text)
	if type(text) ~= "string" then
		return text
	end
	return gsub(text, "(%s?)(|?)|[TA].-|[ta](%s?)", function(w, x, y)
		if x == "" then
			return (w ~= "" and w) or (y ~= "" and y) or ""
		end
	end)
end

function F.String.StripColor(text)
	if type(text) ~= "string" then
		return text
	end
	return gsub(text, "|c%x%x%x%x%x%x%x%x(.-)|r", "%1")
end

function F.String.Strip(text)
	if type(text) ~= "string" then
		return text
	end
	return F.String.StripColor(F.String.StripTexture(text))
end

function F.String.Trim(text)
	return strmatch(text, "^%s*(.*%S)") or ""
end

function F.String.FastGradient(text, r1, g1, b1, r2, g2, b2)
	local msg, len, idx = "", utf8len(text), 0

	for i = 1, len do
		local x = utf8sub(text, i, i)
		if strmatch(x, "%s") then
			msg = msg .. x
			idx = idx + 1
		else
			local relperc = (idx / len)

			if not r2 then
				msg = msg .. "|cff" .. F.String.FastRGB(r1, g1, b1) .. x .. "|r"
			else
				local r, g, b = F.FastColorGradient(relperc, r1, g1, b1, r2, g2, b2)
				msg = msg .. "|cff" .. F.String.FastRGB(r, g, b) .. x .. "|r"
				idx = idx + 1
			end
		end
	end

	return msg
end

function F.String.FastGradientHex(text, h1, h2)
	local r2, g2, b2
	local r1, g1, b1 = F.String.HexToRGB(h1)

	if h2 then
		r2, g2, b2 = F.String.HexToRGB(h2)
	else
		local h, s, l = F.ConvertToHSL(r1, g1, b1)
		r1, g1, b1 = F.ConvertToRGB(F.ClampToHSL(h, s * 0.95, l * 1.2))
		r2, g2, b2 = F.ConvertToRGB(F.ClampToHSL(h, s * 1.35, l * 0.85))
	end

	return F.String.FastGradient(text, r1, g1, b1, r2, g2, b2)
end

function F.String.FastColorGradientHex(percentage, h1, h2)
	local r1, g1, b1 = F.String.HexToRGB(h1)
	local r2, g2, b2 = F.String.HexToRGB(h2)

	return F.FastColorGradient(percentage, r1, g1, b1, r2, g2, b2)
end

function F.String.Class(msg, class)
	local finalClass = class or E.myclass
	if finalClass == "PRIEST" then
		return F.String.Color(msg, F.String.FastRGB(0.7, 0.7, 0.7))
	end

	local color = E:ClassColor(finalClass, true)
	return F.String.Color(msg, F.String.FastRGB(color.r, color.g, color.b))
end

function F.String.MERATHILISUI(msg)
	return F.String.Color(msg, I.Enum.Colors.MER)
end

function F.String.Details(msg)
	if not msg or msg == "" then
		return F.String.Color("Details", I.Enum.Colors.DETAILS)
	end

	return F.String.Color(msg, I.Enum.Colors.DETAILS)
end

function F.String.BigWigs(msg)
	if not msg or msg == "" then
		return F.String.Color("BigWigs", I.Enum.Colors.BIGWIGS)
	end

	return F.String.Color(msg, I.Enum.Colors.BIGWIGS)
end

function F.String.OmniCD(msg)
	if not msg or msg == "" then
		return F.String.Color("OmniCD", I.Enum.Colors.OMNICD)
	end

	return F.String.Color(msg, I.Enum.Colors.OMNICD)
end

function F.String.WindTools(msg)
	if not msg or msg == "" then
		return F.String.Color("WindTools", I.Enum.Colors.WT)
	end

	return F.String.Color(msg, I.Enum.Colors.WT)
end

function F.String.ElvUI(msg)
	if not msg or msg == "" then
		return F.String.Color("ElvUI", I.Enum.Colors.ELVUI)
	end

	return F.String.Color(msg, I.Enum.Colors.ELVUI)
end

function F.String.ElvUIValue(msg)
	return F.String.RGB(msg, E.media.rgbvaluecolor)
end

function F.String.Error(msg)
	return F.String.Color(msg, I.Enum.Colors.ERROR)
end

function F.String.Good(msg)
	return F.String.Color(msg, I.Enum.Colors.GOOD)
end

function F.String.Warning(msg)
	return F.String.Color(msg, I.Enum.Colors.WARNING)
end

function F.String.GradientString()
	return F.String.FastGradient("Gradient", 0, 0.6, 1, 0, 0.9, 1)
end

function F.String.Legendary(msg)
	return F.String.Color(msg, I.Enum.Colors.LEGENDARY)
end

function F.String.Epic(msg)
	return F.String.Color(msg, I.Enum.Colors.EPIC)
end

function F.String.Rare(msg)
	return F.String.Color(msg, I.Enum.Colors.RARE)
end

function F.String.Beta(msg)
	return F.String.Color(msg, I.Enum.Colors.BETA)
end

function F.String.Grey(msg)
	return F.String.Color(msg, I.Enum.Colors.GREY)
end
