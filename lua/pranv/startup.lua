local ok, _ = pcall(require, "impatient")
local ok_coke, cokeline = pcall(require, "cokeline")
if (not ok) or (not ok_coke) then
  return
end
cokeline.setup()
