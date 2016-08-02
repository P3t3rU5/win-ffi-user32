require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162869(v=vs.85).aspx
    buffer = [:CLIENTONLY, 0x00000001]

    buffer += [:RENDERFULLCONTENT, 0x00000002] if WindowsVersion >= 8.1

    PrintWindowFlag = enum :print_window_flag, buffer
  end
end