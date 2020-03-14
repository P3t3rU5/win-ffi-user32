module WinFFI
  if WINDOWS_VERSION >= 8
  require 'win-ffi/msftedit/enum/window/control/rich_edit/get_context_menu_flag'

    require 'win-ffi/msftedit/struct/window/control/rich_edit/get_context_menu_ex'

    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    require 'win-ffi/core/struct/point'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-getcontextmenuex
      class GETCONTEXTMENUEX < FFIAdditions::Struct
        layout chrg:       CHARRANGE,
               dwFlags:    GetContextMenuFlag,
               pt:         POINT,
               pvReserved: :pointer
      end
    end
  end
end