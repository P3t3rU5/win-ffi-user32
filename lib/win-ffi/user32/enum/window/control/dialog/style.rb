require_relative '../../../../../../win-ffi/user32'

module WinFFI
  module User32
    # Dialog Styles
    # https://docs.microsoft.com/en-us/windows/desktop/dlgbox/dialog-box-styles
    DialogStyle = enum :dialog_style, [
        :ABSALIGN,       0x01,
        :SYSMODAL,       0x02,
        :LOCALEDIT,      0x20,
        :SETFONT,        0x40,
        :MODALFRAME,     0x80,
        :NOIDLEMSG,     0x100,
        :SETFOREGROUND, 0x200,

        :'3DLOOK',      0x0004,
        :FIXEDSYS,      0x0008,
        :NOFAILCREATE,  0x0010,
        :CONTROL,       0x0400,
        :CENTER,        0x0800,
        :CENTERMOUSE,   0x1000,
        :CONTEXTHELP,   0x2000,

        :SHELLFONT,       0x48,

        :USEPIXELS,     0x8000,
    ]

    define_prefix(:DS, DialogStyle)
  end
end