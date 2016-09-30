require 'win-ffi/user32'

module WinFFI
  module User32
    # Message Structure used in Journaling
    class EVENTMSG < FFIAdditions::Struct
      layout message: :uint,
             paramL:  :uint,
             paramH:  :uint,
             time:   :dword,
             hwnd:    :hwnd
    end
  end
end