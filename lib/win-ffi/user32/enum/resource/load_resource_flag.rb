require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648045(v=vs.85).aspx
    LoadResourceFlag = enum :load_resource_flag, [
        :DEFAULTCOLOR,     0x00000000,
        :MONOCHROME,       0x00000001,
        :COLOR,            0x00000002,
        :COPYRETURNORG,    0x00000004,
        :COPYDELETEORG,    0x00000008,
        :LOADFROMFILE,     0x00000010,
        :LOADTRANSPARENT,  0x00000020,
        :DEFAULTSIZE,      0x00000040,
        :VGACOLOR,         0x00000080,
        :LOADMAP3DCOLORS,  0x00001000,
        :CREATEDIBSECTION, 0x00002000,
        :COPYFROMRESOURCE, 0x00004000,
        :SHARED,           0x00008000,
    ]

    define_prefix(:LR, LoadResourceFlag)
  end
end
