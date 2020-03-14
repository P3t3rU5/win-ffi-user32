module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-audiodescription
      class AUDIODESCRIPTION < FFIAdditions::Struct
        attr_accessor :cbSize, :Enabled, :Locale,
        layout cbSize: :uint,
               Enabled: :bool,
               Locale:  :lcid

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end