require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      # Edit control options
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb774254(v=vs.85).aspx
      EditControlOption = enum :edit_control_option, [
          :AUTOWORDSELECTION, 0x00000001,
          :AUTOVSCROLL,       0x00000040,
          :AUTOHSCROLL,       0x00000080,
          :NOHIDESEL,         0x00000100,
          :READONLY,          0x00000800,
          :WANTRETURN,        0x00001000,
          :SAVESEL,           0x00008000,
          :SELECTIONBAR,      0x01000000,
          :VERTICAL,          0x00400000,
      ]

      define_prefix(:ECO, EditControlOption)
    end
  end
end