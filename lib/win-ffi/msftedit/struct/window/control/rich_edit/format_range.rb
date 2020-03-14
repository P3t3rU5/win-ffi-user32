module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-formatrange
      class FORMATRANGE < FFIAdditions::Struct
        layout hdc:       :hdc,
               hdcTarget: :hdc,
               rc:        RECT,
               rcPage:    RECT,
               chrg:      CHARRANGE
      end
    end
  end
end