module WinFFI
  module User32
    # Message Structure used in Journaling
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-eventmsg
    class EVENTMSG < FFIAdditions::Struct
      attr_accessor :message, :paramL, :paramH, :time, :hwnd

      layout message: :uint,
             paramL:  :uint,
             paramH:  :uint,
             time:    :dword,
             hwnd:    :hwnd
    end
  end
end