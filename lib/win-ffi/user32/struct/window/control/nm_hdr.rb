require 'win-ffi/user32'

module WinFFI
  module User32
    class NMHDR < FFIStruct
      layout :hwndFrom, :hwnd,
             :idFrom,   :uint,
             :code,     :uint  # NM_ code
    end
  end
end