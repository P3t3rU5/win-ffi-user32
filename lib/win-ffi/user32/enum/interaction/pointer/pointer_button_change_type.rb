require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/jj653868(v=vs.85).aspx
      PointerButtonChangeType = enum :pointer_button_change_type, [
          :NONE,
          :FIRSTBUTTON_DOWN,
          :FIRSTBUTTON_UP,
          :SECONDBUTTON_DOWN,
          :SECONDBUTTON_UP,
          :THIRDBUTTON_DOWN,
          :THIRDBUTTON_UP,
          :FOURTHBUTTON_DOWN,
          :FOURTHBUTTON_UP,
          :FIFTHBUTTON_DOWN,
          :FIFTHBUTTON_UP
      ]

      define_prefix(:POINTER_CHANGE, PointerButtonChangeType)
    end
  end
end