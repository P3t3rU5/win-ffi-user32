require 'win-ffi/msftedit'

module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      # lparam for EM_INSERTIMAGE
      class RICHEDIT_IMAGE_PARAMETERS < FFIAdditions::Struct
        layout xWidth:              :long,
               yHeight:             :long,
               Ascent:              :long,
               Type:                :long,
               pwszAlternateText: :string,
               pIStream:         :pointer


      end
    end
  end
end