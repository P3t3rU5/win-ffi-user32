module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_mask'
    require 'win-ffi/msftedit/enum/window/control/rich_edit/char_format_effect'

    require 'win-ffi/gdi32/constant_base'

    module Msftedit
      # All character format measurements are in twips
      class CHARFORMAT < FFIAdditions::Struct
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