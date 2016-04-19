require 'win-ffi/user32/function/resource/cursor'

module WinFFI
  module User32

    # HCURSOR WINAPI CopyCursor( _In_  HCURSOR pcur )
    def self.CopyCursor(hcursor)
      User32.CopyIcon(hcursor)
    end
  end
end