require 'win-ffi/msftedit'


module WinFFI
  if WINDOWS_VERSION >= :vista
    require 'win-ffi/msftedit/enum/window/control/rich_edit/bidi_options_mask'
    require 'win-ffi/msftedit/enum/window/control/rich_edit/bidi_options_effect'
    module Msftedit
      # BiDi specific features
      # https://msdn.microsoft.com/en-us/library/windows/desktop/bb787879(v=vs.85).aspx
      class BIDIOPTIONS < FFIAdditions::Struct
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