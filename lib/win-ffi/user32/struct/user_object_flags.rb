module WinFFI
  module User32
    # Windowstation creation flags.
    WSF_VISIBLE  = 0x0001
    # Windowstation-specific attribute flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686892
    class USEROBJECTFLAGS < FFIAdditions::Struct
      def fInherit; end
      def fInherit=(v) end
      def fReserved; end
      def fReserved=(v) end
      def dwFlags; end
      def dwFlags=(v) end

      layout fInherit:  :bool,
             fReserved: :bool,
             dwFlags:   :dword
    end
  end
end