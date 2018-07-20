module WinFFI
  module User32
    # Desktop-specific control flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684303
    OpenDesktopFlag = enum :open_desktop_flag, [:ALLOWOTHERACCOUNTHOOK, 0x0001]

    define_prefix(:DF, OpenDesktopFlag)
  end
end