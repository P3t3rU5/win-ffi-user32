require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # East Asia specific
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787944(v=vs.85).aspx
      class PUNCTUATION < FFIAdditions::Struct
        layout iSize:           :uint,
               szPunctuation: :string
      end
    end
  end
end