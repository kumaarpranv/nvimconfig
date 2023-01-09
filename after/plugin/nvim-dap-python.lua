local ok_dap, dap = pcall(require, "dap")
local ok, dappython = pcall(require, "dap-python")
if (not ok) or (not ok_dap) then
  return
end
local python_path = ""
if vim.fn.has('win32') then
  python_path = "C:\\Users\\kumaa\\miniconda3\\python.exe"
else
  python_path = ""
end
dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      return python_path
    end;
  },
}
dappython.setup(python_path)
-- dappython.test_runner = 'pytest'
