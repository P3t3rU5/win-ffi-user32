require_relative '../../enum/accessibility/mouse_keys_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mousekeys
    class MOUSEKEYS < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwFlags,
                    :iMaxSpeed,
                    :iTimeToMaxSpeed,
                    :iCtrlSpeed,
                    :dwReserved1,
                    :dwReserved2

      layout cbSize:          :uint,
             dwFlags:         MouseKeysFlag,
             iMaxSpeed:       :dword,
             iTimeToMaxSpeed: :dword,
             iCtrlSpeed:      :dword,
             dwReserved1:     :dword,
             dwReserved2:     :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end