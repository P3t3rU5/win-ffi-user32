module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/rich_edit/bidi_options_mask'
    require_relative '../../../../enum/window/control/rich_edit/bidi_options_effect'

    module Msftedit
      # BiDi specific features
      # https://docs.microsoft.com/en-us/windows/desktop/api/richedit/ns-richedit-_bidioptions
      class BIDIOPTIONS < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def wMask; end
        def wMask=(v) end
        def wEffects; end
        def wEffects=(v) end

        layout cbSize:               :uint,
               wMask:      BidiOptionsMask,
               wEffects: BidiOptionsEffect

        def initialize
          super
          self[:cbSize] = self.size
        end
      end
    end
  end
end