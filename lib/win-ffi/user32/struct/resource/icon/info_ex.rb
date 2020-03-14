module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-iconinfoexa
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-iconinfoexw
      class ICONINFOEX < FFIAdditions::Struct
        attr_accessor :cbSize,
                      :fIcon,
                      :xHotspot,
                      :yHotspot,
                      :hbmMask,
                      :hbmColor,
                      :wResID,
                      :szModName,
                      :szResName

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