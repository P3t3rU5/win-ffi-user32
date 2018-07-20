require_relative '../../function/resource/cursor'

module WinFFI
  module User32
    # HCURSOR WINAPI CopyCursor( _In_  HCURSOR pcur )
    #define CopyCursor(pcur) ((HCURSOR)CopyIcon((HICON)(pcur)))
    def self.CopyCursor(hcursor)
      User32.CopyIcon(hcursor)
    end
  end
end