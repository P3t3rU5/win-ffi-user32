module WinFFI
  module User32
    # Class Field Offsets
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms633580(v=vs.85).aspx
    GetClassLongFlag = enum :get_class_long_flag, [
        :MENUNAME,       -8,
        :HBRBACKGROUND, -10,
        :HCURSOR,       -12,
        :HICON,         -14,
        :HMODULE,       -16,
        :CBWNDEXTRA,    -18,
        :CBCLSEXTRA,    -20,
        :WNDPROC,       -24,
        :STYLE,         -26,
        :ATOM,          -32,
        :HICONSM,       -34,
    ]

    define_prefix(:GCL, GetClassLongFlag)

    GCW = GCL_ATOM

  end
end