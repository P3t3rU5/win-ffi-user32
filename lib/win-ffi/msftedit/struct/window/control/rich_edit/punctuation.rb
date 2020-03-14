module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      # East Asia specific
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-punctuation
      class PUNCTUATION < FFIAdditions::Struct
        attr_accessor :iSize, :szPunctuation

        layout iSize:         :uint,
               szPunctuation: :string
      end
    end
  end
end