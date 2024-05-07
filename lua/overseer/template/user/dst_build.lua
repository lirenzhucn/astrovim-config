return {
  name = "dst build",
  builder = function()
    return {
      cmd = { "/home/lirenzhu/Dev/DSTMain/tools/cli/dst.py", "make", "build", "-z" },
      components = { { "on_output_quickfix", open = true }, "default" },
    }
  end,
}
