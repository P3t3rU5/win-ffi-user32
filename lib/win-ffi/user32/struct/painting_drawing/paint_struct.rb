require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-paintstruct
    class PAINTSTRUCT < FFIAdditions::Struct
      attr_accessor :hdc,
                    :fErase,
                    :rcPaint,
                    :fRestore,
                    :fIncUpdate,
                    :rgbReserved

      layout hdc:         :hdc,
             fErase:      :bool,
             rcPaint:     RECT,
             fRestore:    :bool,
             fIncUpdate:  :bool,
             rgbReserved: [:byte, 32]
    end
  end
end
