module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-printwindow
      buffer = [:CLIENTONLY, 0x00000001]

      buffer += [:RENDERFULLCONTENT, 0x00000002] if WINDOWS_VERSION >= 8.1

      PrintWindowFlag = enum :print_window_flag, buffer

      define_prefix(:PW, PrintWindowFlag)
    end
  end
end