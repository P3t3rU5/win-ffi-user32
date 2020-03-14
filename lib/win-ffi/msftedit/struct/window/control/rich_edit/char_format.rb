module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_mask'
    require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_effect'

    require 'win-ffi/gdi32/constant_base'

    module Msftedit
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-charformata
      # All character format measurements are in twips
      class CHARFORMAT < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :dwMask,
                      :dwEffects,
                      :yHeight,
                      :yOffset,
                      :crTextColor,
                      :bCharSet,
                      :bPitchAndFamily,
                      :szFaceName

        layout cbSize:          :uint,
               dwMask:          CharFormatMask,
               dwEffects:       CharFormatEffect,
               yHeight:         :long,
               yOffset:         :long,
               crTextColor:     :colorref,
               bCharSet:        :byte,
               bPitchAndFamily: :byte,
               szFaceName:      [:char, Gdi32::LF_FACESIZE]

        def initialize
          super
          self[:cbSize] = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end