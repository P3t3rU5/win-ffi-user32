module WinFFI
  module User32
    # Windowstation creation flags.
    WSF_VISIBLE  = 0x0001
    # Windowstation-specific attribute flags
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-userobjectflags
    class USEROBJECTFLAGS < FFIAdditions::Struct
      attr_accessor :fInherit, :fReserved, :dwFlags

      layout fInherit:  :bool,
             fReserved: :bool,
             dwFlags:   :dword
    end
  end
end