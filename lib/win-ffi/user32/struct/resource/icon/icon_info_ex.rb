require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= :vista
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648053(v=vs.85).aspx
      class ICONINFOEX < FFIAdditions::Struct
        layout cbSize:     :dword,
               fIcon:       :bool,
               xHotspot:   :dword,
               yHotspot:   :dword,
               hbmMask:  :pointer,
               hbmColor: :pointer,
               wResID:      :word,
               szModName: :string,
               szResName: :string

        def initialize
          super
          self.cbSize = self.size
        end
      end
    end
  end
end