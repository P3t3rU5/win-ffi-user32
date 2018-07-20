module WinFFI
  module Msftedit
    # https://docs.microsoft.com/en-us/windows/desktop/api/richedit/ns-richedit-_charrange
    class CHARRANGE < FFIAdditions::Struct
      def cpMin; end
      def cpMin=(v) end
      def cpMax; end
      def cpMax=(v) end

      layout cpMin: :long,
             cpMax: :long
    end
  end
end