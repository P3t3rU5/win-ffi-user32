require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646288(v=vs.85).aspx
      WmUnicharFlag = enum :wm_unichar_flag, [
          :NOCHAR, 0xFFFF,
      ]

      define_prefix(:UNICODE, WmUnicharFlag)
    end
  end
end