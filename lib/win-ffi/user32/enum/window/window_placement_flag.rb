require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632611(v=vs.85).aspx
    WindowPlacementFlag = enum :windows_placement_flag, [
        :SETMINPOSITION,       0x0001,
        :RESTORETOMAXIMIZED,   0x0002,
        :ASYNCWINDOWPLACEMENT, 0x0004,
    ]

    define_prefix(:WPF, WindowPlacementFlag)
  end
end