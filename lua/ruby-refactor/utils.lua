local function split(s, delimiter)
  local result = {};

  for match in (s..delimiter):gmatch("(.-)"..delimiter) do
    table.insert(result, match);
  end
  return result;
end

local function splitWithDot(s)
  local lines = {}
  for line in s:gsub("%f[.]%.%f[^.]", "\0"):gmatch"%Z+" do
    table.insert(lines, line)
  end

  return lines
end

local function map(tbl, f)
    local t = {}
    for k,v in pairs(tbl) do
        t[k] = f(v)
    end

    return t
end

return { split = split, splitWithDot = splitWithDot, map = map }
