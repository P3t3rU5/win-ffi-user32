require_relative '../../../typedef/hcursor'
require_relative '../../../function/window/proc'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-wndclassa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-wndclassw
    class WNDCLASS < FFIAdditions::Struct
      attr_accessor :style,
                    :lpfnWndProc,
                    :cbClsExtra,
                    :cbWndExtra,
                    :hInstance,
                    :hIcon,
                    :hCursor,
                    :hbrBackground,
                    :lpszMenuName,
                    :lpszClassName,
                    :hIconSm

      layout style:         :uint,
             lpfnWndProc:   WindowProc,
             cbClsExtra:    :int,
             cbWndExtra:    :int,
             hInstance:     :hinstance,
             hIcon:         :hicon,
             hCursor:       :hcursor,
             hbrBackground: :hbrush,
             lpszMenuName:  :pointer,
             lpszClassName: :pointer,
             hIconSm:       :pointer
    end
  end
end