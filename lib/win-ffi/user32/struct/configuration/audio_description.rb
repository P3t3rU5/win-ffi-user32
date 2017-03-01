require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      class AUDIODESCRIPTION < FFIAdditions::Struct
        layout cbSize:  :uint,
               Enabled: :bool,
               Locale:  :lcid

        def initialize
          super
          self[:cbSize] = self.size
        end
      end
    end
  end
end