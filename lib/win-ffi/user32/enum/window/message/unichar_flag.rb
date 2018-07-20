module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/inputdev/wm-unichar
      WmUnicharFlag = enum :wm_unichar_flag, [:NOCHAR, 0xFFFF]

      define_prefix(:UNICODE, WmUnicharFlag)
    end
  end
end