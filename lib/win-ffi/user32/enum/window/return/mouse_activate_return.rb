module WinFFI
  # WM_MOUSEACTIVATE Return Codes
  # https://docs.microsoft.com/en-us/windows/desktop/inputdev/wm-mouseactivate#return-value
  module User32
    MouseActivateReturn = enum :mouse_activate_return, [
        :ACTIVATE,         1,
        :ACTIVATEANDEAT,   2,
        :NOACTIVATE,       3,
        :NOACTIVATEANDEAT, 4
    ]

    define_prefix(:MA, MouseActivateReturn)
  end
end