require 'win-ffi/user32'

module WinFFI
  module User32
    # Dialog Codes
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645425(v=vs.85).aspx
    WmGetdlgcodeReturn = enum :wm_getdlgcode_return, [
        :WANTARROWS,      0x0001,
        :WANTTAB,         0x0002,
        :WANTALLKEYS,     0x0004,
        :WANTMESSAGE,     0x0004,
        :HASSETSEL,       0x0008,
        :DEFPUSHBUTTON,   0x0010,
        :UNDEFPUSHBUTTON, 0x0020,
        :RADIOBUTTON,     0x0040,
        :WANTCHARS,       0x0080,
        :STATIC,          0x0100,
        :BUTTON,          0x2000,
    ]

    define_prefix(:DLGC, WmGetdlgcodeReturn)
  end
end
