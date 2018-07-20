module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-_iconinfoexa
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-_iconinfoexw
      class ICONINFOEX < FFIAdditions::Struct
        def cbSize; end
        def cbSize=(v) end
        def fIcon; end
        def fIcon=(v) end
        def xHotspot; end
        def xHotspot=(v) end
        def yHotspot; end
        def yHotspot=(v) end
        def hbmMask; end
        def hbmMask=(v) end
        def hbmColor; end
        def hbmColor=(v) end
        def wResID; end
        def wResID=(v) end
        def szModName; end
        def szModName=(v) end
        def szResName; end
        def szResName=(v) end

        layout cbSize:    :dword,
               fIcon:     :bool,
               xHotspot:  :dword,
               yHotspot:  :dword,
               hbmMask:   :pointer,
               hbmColor:  :pointer,
               wResID:    :word,
               szModName: :string,
               szResName: :string

        def initialize
          super
          self.cbSize = self.size
        end

        private :cbSize, :cbSize=
      end
    end
  end
end