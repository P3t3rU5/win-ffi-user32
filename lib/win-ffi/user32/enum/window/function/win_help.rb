require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # Commands to pass to WinHelp()
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb762267(v=vs.85).aspx
      WinHelp = enum :win_help, [
          :CONTEXT,            0x0001,
          :QUIT,               0x0002,
          :INDEX,              0x0003,
          :CONTENTS,           0x0003,
          :HELPONHELP,         0x0004,
          :SETINDEX,           0x0005,
          :SETCONTENTS,        0x0005,
          :CONTEXTPOPUP,       0x0008,
          :FORCEFILE,          0x0009,
          :KEY,                0x0101,
          :COMMAND,            0x0102,
          :PARTIALKEY,         0x0105,
          :MULTIKEY,           0x0201,
          :SETWINPOS,          0x0203,

          :CONTEXTMENU,        0x000a,
          :FINDER,             0x000b,
          :WM_HELP,            0x000c,
          :SETPOPUP_POS,       0x000d,

          :TCARD,              0x8000,
          :TCARD_DATA,         0x0010,
          :TCARD_OTHER_CALLER, 0x0011,

      ]

      define_prefix(:HELP, WinHelp)
    end
  end
end