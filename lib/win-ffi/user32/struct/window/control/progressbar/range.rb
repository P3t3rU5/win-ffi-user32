module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb760822(v=vs.85).aspx
    class PBRANGE < FFIAdditions::Struct
      def iLow; end
      def iLow=(v); end
      def iHigh; end
      def iHigh=(v); end

      layout iLow:  :int,
             iHigh: :int
    end
  end
end