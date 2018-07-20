module WinFFI
  module User32
    # WM_ACTIVATE state values
    # https://docs.microsoft.com/en-us/windows/desktop/inputdev/wm-activate#parameters
    WmActivateState = enum :wm_activate_state, [:INACTIVE, 0, :ACTIVE, 1, :CLICKACTIVE, 2]

    define_prefix(:WA, WmActivateState)
  end
end