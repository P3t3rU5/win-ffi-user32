require 'win-ffi/user32'

module WinFFI
  module User32
    # Class Field Offsets
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633581(v=vs.85).aspx
    GetClassLongPtrFlag = enum :get_class_long__ptr_flag, [
        :MENUNAME,       -8,
        :HBRBACKGROUND, -10,
        :HCURSOR,       -12,
        :HICON,         -14,
        :HMODULE,       -16,
        :WNDPROC,       -24,
        :HICONSM,       -34,
    ]

    define_prefix(:GCLP, GetClassLongPtrFlag)
  end
end