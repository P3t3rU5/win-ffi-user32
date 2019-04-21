require_relative '../../enum/window/style'

require_relative '../../struct/window/message/msg'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644923(v=vs.85).aspx
    # @param [String] lpClassName
    # @param [String] lpWindowName
    # @param [Integer] dwStyle
    # @param [Integer] x
    # @param [Integer] y
    # @param [Integer] nWidth
    # @param [Integer] nHeight
    # @param [FFI::Pointer] hWndParent
    # @param [FFI::Pointer] hInstance
    # @param [Integer] lParam
    # @return [FFI::Pointer]
    def self.CreateMDIWindow(lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hInstance, lParam)
    end
    encoded_function 'CreateMDIWindow',
                     [:string, :string, WindowStyle, :int, :int, :int, :int, :hwnd, :hinstance, :lparam], :hwnd

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644924(v=vs.85).aspx
      # @param [FFI::Pointer] hWnd
      # @param [FFI::Pointer] hWndMDIClient
      # @param [Integer] uMsg
      # @param [Integer] wParam
      # @param [Integer] lParam
      # @return [Integer]
    def self.DefFrameProc(hWnd, hWndMDIClient, uMsg, wParam, lParam); end
    encoded_function 'DefFrameProc', [:hwnd, :hwnd, :uint, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644925(v=vs.85).aspx
    # @param [FFI::Pointer] hWnd
    # @param [Integer] uMsg
    # @param [Integer] wParam
    # @param [Integer] lParam
    # @return [Integer]
    def self.TranslateMDISysAccel(hWnd, uMsg, wParam, lParam); end
    encoded_function 'DefMDIChildProc', [:hwnd, :uint, :wparam, :lparam], :lresult

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644926(v=vs.85).aspx
    # @param [FFI::Pointer] hWndClient
    # @param [FFI::Pointer] lpMsg
    # @return [true, false]
    def self.DefMDIChildProc(hWndClient, lpMsg); end
    attach_function 'TranslateMDISysAccel', [:hwnd, MSG.ptr(:in)], :bool
  end
end