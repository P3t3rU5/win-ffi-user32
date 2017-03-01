require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/core/struct/rect'
    require 'win-ffi/msftedit/struct/window/control/rich_edit/char_range'
    module Msftedit
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787911(v=vs.85).aspx
      class FORMATRANGE < FFIAdditions::Struct
        layout hdc:         :hdc,
               hdcTarget:   :hdc,
               rc:          RECT,
               rcPage:      RECT,
               chrg:   CHARRANGE
      end
    end
  end
end