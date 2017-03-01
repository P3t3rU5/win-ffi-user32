require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      # bits for GETCONTEXTMENUEX::dwFlags
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768388(v=vs.85).aspx
      GetContextMenuFlag = enum :get_context_menu_flag, [
          :GRIPPER,   0x00000001,
          :SPELLING,  0x00000002,

          :TOUCHMENU, 0x00004000,
          :MOUSEMENU, 0x00002000,
      ]

      define_prefix(:GCMF, GetContextMenuFlag)
    end
  end
end