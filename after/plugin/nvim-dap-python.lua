local ok, dappython = pcall(require, "dap-python")
if not ok then
  return
end

dappython.setup('C:\\Users\\kumaa\\miniconda3\\python')
-- dappython.test_runner = 'pytest'
