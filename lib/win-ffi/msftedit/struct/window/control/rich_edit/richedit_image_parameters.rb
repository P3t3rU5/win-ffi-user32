module WinFFI
  if WINDOWS_VERSION >= 8
    module Msftedit
      # lparam for EM_INSERTIMAGE
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-richedit_image_parameters
      class RICHEDIT_IMAGE_PARAMETERS < FFIAdditions::Struct
        attr_accessor :xWidth,
                      :yHeight,
                      :Ascent,
                      :Type,
                      :pwszAlternateText,
                      :pIStream

        layout xWidth:            :long,
               yHeight:           :long,
               Ascent:            :long,
               Type:              :long,
               pwszAlternateText: :string,
               pIStream:          :pointer
      end
    end
  end
end