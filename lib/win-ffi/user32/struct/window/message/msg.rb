require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-msg
    class MSG < FFIAdditions::Struct
      attr_accessor :hwnd, :message, :wParam, :lParam, :time, :pt, :lPrivate

      layout hwnd:     :hwnd,
             message:  :uint,
             wParam:   :wparam,
             lParam:   :lparam,
             time:     :dword,
             pt:       POINT,
             lPrivate: :dword

      def to_s
        "<User32::MSG #{members.map { |m| "#{m} = #{self[m]}" }.join(', ')}>"
      end
    end
  end
end
