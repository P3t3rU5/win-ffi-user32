module WinFFI
  if WINDOWS_VERSION >= :vista
    require_relative '../../../../enum/window/control/rich_edit/bidi_options_mask'
    require_relative '../../../../enum/window/control/rich_edit/bidi_options_effect'

    module Msftedit
      # BiDi specific features
      # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-bidioptions
      class BIDIOPTIONS < FFIAdditions::Struct
        attr_accessor :cbSize, :wMask, :wEffects

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