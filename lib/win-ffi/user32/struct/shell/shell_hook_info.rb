require 'win-ffi/user32'

require 'win-ffi/core/struct/rect'

module WinFFI
  module User32

    class SHELLHOOKINFO < FFIAdditions::Struct
      layout hwnd: :hwnd,
             rc:    RECT
    end
  end
end