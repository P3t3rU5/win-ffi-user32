require 'win-ffi/msftedit'

module WinFFI
  module Msftedit
    # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787885(v=vs.85).aspx
    class CHARRANGE < FFIAdditions::Struct
      layout cpMin: :long,
             cpMax: :long
    end
  end
end