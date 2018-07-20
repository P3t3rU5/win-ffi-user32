module WinFFI
  module User32
    # wParam Flags for WM_MDITILE and WM_MDICASCADE messages.
    # https://docs.microsoft.com/en-us/windows/desktop/winmsg/wm-mditile
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632674
    MultipleDocumentInterfaceTile = enum :multiple_document_interface_tile, [
        :VERTICAL,     0x0000,
        :HORIZONTAL,   0x0001,
        :SKIPDISABLED, 0x0002,
        :ZORDER,       0x0004,
    ]

    define_prefix(:MDITILE, MultipleDocumentInterfaceTile)
  end
end