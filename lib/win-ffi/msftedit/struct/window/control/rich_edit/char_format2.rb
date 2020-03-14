require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_mask'
require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_effect'
require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_underline_type'

require 'win-ffi/gdi32/constant_base'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit
      class CHARFORMAT2UNION < FFIAdditions::Union
        attr_accessor :dwReserved, :dwCookie

        layout dwReserved: :dword,
               dwCookie:   :dword
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-charformat2a_1
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-charformat2w_1
      # All character format measurements are in twips
      class CHARFORMAT2 < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :dwMask,
                      :dwEffects,
                      :yHeight,
                      :yOffset,
                      :crTextColor,
                      :bCharSet,
                      :bPitchAndFamily,
                      :szFaceName,
                      :wWeight,
                      :sSpacing,
                      :crBackColor,
                      :union,
                      :sStyle,
                      :wKerning,
                      :bUnderlineType,
                      :bAnimation,
                      :bRevAuthor,
                      :bUnderlineColor

        layout cbSize:          :uint,
               dwMask:          CharFormatMask,
               dwEffects:       CharFormatEffect,
               yHeight:         :long,
               yOffset:         :long,
               crTextColor:     :colorref,
               bCharSet:        :byte,
               bPitchAndFamily: :byte,
               szFaceName:      [:char, Gdi32::LF_FACESIZE],
               wWeight:         :word,
               sSpacing:        :short,
               crBackColor:     :colorref,
               union:           CHARFORMAT2UNION,
               sStyle:          :short,
               wKerning:        :word,
               bUnderlineType:  CharFormatUnderlineType,
               bAnimation:      :byte,
               bRevAuthor:      :byte,
               bUnderlineColor: :byte

        def initialize
          super
          self[:cbSize] = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end