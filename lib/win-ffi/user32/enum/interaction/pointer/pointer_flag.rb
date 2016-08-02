require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969211(v=vs.85).aspx
      PointerFlag = enum :pointer_flag, [
          :NONE,           0x00000000,
          :NEW,            0x00000001,
          :INRANGE,        0x00000002,
          :INCONTACT,      0x00000004,
          :FIRSTBUTTON,    0x00000010,
          :SECONDBUTTON,   0x00000020,
          :THIRDBUTTON,    0x00000040,
          :FOURTHBUTTON,   0x00000080,
          :FIFTHBUTTON,    0x00000100,
          :PRIMARY,        0x00002000,
          :CONFIDENCE,    0x000004000,
          :CANCELED,      0x000008000,
          :DOWN,           0x00010000,
          :UPDATE,         0x00020000,
          :UP,             0x00040000,
          :WHEEL,          0x00080000,
          :HWHEEL,         0x00100000,
          :CAPTURECHANGED, 0x00200000,
          :HASTRANSFORM,   0x00400000
      ]

      define_prefix(:POINTER_FLAG, PointerFlag)
    end
  end
end