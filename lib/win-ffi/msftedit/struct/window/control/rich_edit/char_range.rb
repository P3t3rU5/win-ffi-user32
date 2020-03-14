module WinFFI
  module Msftedit
    # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-charrange
    class CHARRANGE < FFIAdditions::Struct
      attr_accessor :cpMin, :cpMax

      layout cpMin: :long,
             cpMax: :long
    end
  end
end