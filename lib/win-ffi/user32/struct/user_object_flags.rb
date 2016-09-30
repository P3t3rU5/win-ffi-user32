module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686892(v=vs.85).aspx
    # Windowstation creation flags.
    # Windowstation-specific attribute flags
    WSF_VISIBLE     = 0x0001
    class USEROBJECTFLAGS < FFIAdditions::Struct
      layout fInherit:  :bool,
             fReserved: :bool,
             dwFlags:  :dword
    end
  end
end