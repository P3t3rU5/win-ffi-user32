module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632604
    buffer = [
        :CARETBLINKING,  0x00000001,
        :INMOVESIZE,     0x00000002,
        :INMENUMODE,     0x00000004,
        :SYSTEMMENUMODE, 0x00000008,
        :POPUPMENUMODE,  0x00000010,
    ]

    buffer += [:'16BITTASK', WinFFI.x64? ? 0x00000000 : 0x00000020] if WINDOWS_VERSION >= :xp

    GUIFlag = enum :gui_flag, buffer

    define_prefix(:GUI, GUIFlag)
  end
end