require 'win-ffi/user32'

module WinFFI
  module User32
    # WM_ACTIVATE state values
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646274(v=vs.85).aspx
    WmActivateState = enum :wm_activate_state, [
        :INACTIVE,    0,
        :ACTIVE,      1,
        :CLICKACTIVE, 2,
    ]

    define_prefix(:WA, WmActivateState)
  end
end