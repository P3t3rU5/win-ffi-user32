module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/aa379651(v=vs.85).aspx
      class AUDIODESCRIPTION < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v); end
        def Enabled; end
        def Enabled=(v); end
        def Locale; end
        def Locale=(v); end

        layout cbSize:  :uint,
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