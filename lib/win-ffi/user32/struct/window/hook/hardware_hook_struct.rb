module WinFFI
  module User32
    # Structure used by WH_HARDWARE
    class HARDWAREHOOKSTRUCT < FFIAdditions::Struct
      attr_accessor :hwnd, :message, :wParam, :lParam

      layout hwnd:    :hwnd,
             message: :uint,
             wParam:  :wparam,
             lParam:  :lparam
    end
  end
end