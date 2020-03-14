require 'win-ffi/core/struct/rect'

module WinFFI
  module User32

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-registershellhookwindow
    class SHELLHOOKINFO < FFIAdditions::Struct
      attr_accessor :hwnd, :rc

      layout hwnd: :hwnd,
             rc:    RECT
    end
  end
end