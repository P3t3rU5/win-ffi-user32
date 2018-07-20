require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_mask'
require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_effect'
require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_underline_type'

require 'win-ffi/gdi32/constant_base'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module Msftedit

      class CHARFORMAT2UNION < FFIAdditions::Union
        def dwReserved; end
        def dwReserved=(v); end
        def dwCookie; end
        def dwCookie=(v); end

        layout dwReserved: :dword,
               dwCookie:   :dword
      end

      # All character format measurements are in twips
      class CHARFORMAT2 < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v); end
        def dwMask; end
        def dwMask=(v); end
        def dwEffects; end
        def dwEffects=(v); end
        def yHeight; end
        def yHeight=(v); end
        def yOffset; end
        def yOffset=(v); end
        def crTextColor; end
        def crTextColor=(v); end
        def bCharSet; end
        def bCharSet=(v); end
        def bPitchAndFamily; end
        def bPitchAndFamily=(v); end
        def szFaceName; end
        def szFaceName=(v); end
        def wWeight; end
        def wWeight=(v); end
        def sSpacing; end
        def sSpacing=(v); end
        def crBackColor; end
        def crBackColor=(v); end
        def union; end
        def union=(v); end
        def sStyle; end
        def sStyle=(v); end
        def wKerning; end
        def wKerning=(v); end
        def bUnderlineType; end
        def bUnderlineType=(v); end
        def bAnimation; end
        def bAnimation=(v); end
        def bRevAuthor; end
        def bRevAuthor=(v); end
        def bUnderlineColor; end
        def bUnderlineColor=(v); end

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