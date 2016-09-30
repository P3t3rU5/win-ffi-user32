require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= 8
require 'win-ffi/msftedit/enum/window/control/rich_edit/get_context_menu_flag'

    require 'win-ffi/msftedit/struct/window/control/rich_edit/get_context_menu_ex'

    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    require 'win-ffi/core/struct/point'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768388(v=vs.85).aspx
      class GETCONTEXTMENUEX < FFIAdditions::Struct
        layout chrg:             CHARRANGE,
               dwFlags: GetContextMenuFlag,
               pt:                   POINT,
               pvReserved:        :pointer
      end
    end
  end
end