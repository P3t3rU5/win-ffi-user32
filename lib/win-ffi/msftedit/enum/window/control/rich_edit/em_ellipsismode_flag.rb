require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      # DWORD: *lparam for EM_GETELLIPSISMODE, lparam for EM_SETELLIPSISMODE
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768368(v=vs.85).aspx
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768376(v=vs.85).aspx
      EmEllipsismodeFlag = enum :em_ellipsismode_flag, [
          :MASK, 0x00000003,
          :NONE, 0x00000000,
          :END,  0x00000001,
          :WORD, 0x00000003,
      ]

      define_prefix(:ELLIPSIS, EmEllipsismodeFlag)
    end
  end
end