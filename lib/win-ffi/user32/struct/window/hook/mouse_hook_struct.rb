require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # Structure used by WH_MOUSE
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mousehookstruct
    class MOUSEHOOKSTRUCT < FFIAdditions::Struct
      attr_accessor :pt, :hwnd, :wHitTestCode, :dwExtraInfo,

      layout pt:           POINT,
             hwnd:         :hwnd,
             wHitTestCode: :uint,
             dwExtraInfo:  :ulong
    end
  end
end