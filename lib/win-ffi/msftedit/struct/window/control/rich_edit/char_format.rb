require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_mask'
    require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_effect'

    require 'win-ffi/gdi32/struct/font/enum_log_font'
    module Msftedit
      # All character format measurements are in twips
      class CHARFORMAT < FFIAdditions::Struct
        layout cbSize:                           :uint,
               dwMask:                  CharFormatMask,
               dwEffects:             CharFormatEffect,
               yHeight:                          :long,
               yOffset:                          :long,
               crTextColor:                  :colorref,
               bCharSet:                         :byte,
               bPitchAndFamily:                  :byte,
               szFaceName:  [:char, Gdi32::LF_FACESIZE]

        def initialize
          super
          self[:cbSize] = self.size
        end
      end
    end
  end
end