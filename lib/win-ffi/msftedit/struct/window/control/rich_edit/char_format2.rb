require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_mask'
require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_effect'
require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_underline_type'

require 'win-ffi/gdi32/struct/font/enum_log_font'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit

      class CHARFORMAT2UNION < FFIAdditions::Union
        layout dwReserved: :dword,
               dwCookie:   :dword
      end

      # All character format measurements are in twips
      class CHARFORMAT2 < FFIAdditions::Struct
        layout cbSize:                           :uint,
               dwMask:                  CharFormatMask,
               dwEffects:             CharFormatEffect,
               yHeight:                          :long,
               yOffset:                          :long,
               crTextColor:                  :colorref,
               bCharSet:                         :byte,
               bPitchAndFamily:                  :byte,
               szFaceName: [:char, Gdi32::LF_FACESIZE],
               wWeight:                          :word,
               sSpacing:                        :short,
               crBackColor:                  :colorref,
               union:                 CHARFORMAT2UNION,
               sStyle:                          :short,
               wKerning:                         :word,
               bUnderlineType: CharFormatUnderlineType,
               bAnimation:                       :byte,
               bRevAuthor:                       :byte,
               bUnderlineColor:                  :byte

        def initialize
          super
          self[:cbSize] = self.size
        end
      end
    end
  end
end