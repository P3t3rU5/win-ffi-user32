require 'win-ffi/user32'

module WinFFI
  module User32

    MSFTEDIT_CLASS    = "RICHEDIT50W"
    CERICHEDIT_CLASS  = "RichEditCE#{WinFFI.encoding}"
    RICHEDIT_CLASS    = "RichEdit20#{WinFFI.encoding}"
    RICHEDIT_CLASS10A = "RICHEDIT"
    RICHEDIT60_CLASS  = "RICHEDIT60W"

    RICHEDIT_VER_10 = 0x100
    RICHEDIT_VER_20 = 0x200
    RICHEDIT_VER_21 = 0x210
    RICHEDIT_VER_81 = 0x810

  end
end

