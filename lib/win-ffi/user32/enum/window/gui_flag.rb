require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632604(v=vs.85).aspx
    buffer = [
        :CARETBLINKING,  0x00000001,
        :INMOVESIZE,     0x00000002,
        :INMENUMODE,     0x00000004,
        :SYSTEMMENUMODE, 0x00000008,
        :POPUPMENUMODE,  0x00000010,
    ]

    if WINDOWS_VERSION >= :xp
      buffer += if Architecture == "x64-mingw32"
        [:'16BITTASK', 0x00000000]
      else
        [:'16BITTASK', 0x00000020]
      end
    end

    GUIFlag = enum :gui_flag, buffer

    define_prefix(:GUI, GUIFlag)
  end
end