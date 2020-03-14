require_relative '../../../enum/interaction/mouse/track_mouse_event_flag'

module WinFFI
  module User32
    HOVER_DEFAULT = 0xFFFFFFFF

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-trackmouseevent
    class TRACKMOUSEEVENT < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :dwFlags,
                    :hwndTrack,
                    :dwHoverTime

      layout cbSize:      :dword,
             dwFlags:     TrackMouseEventFlag,
             hwndTrack:   :hwnd,
             dwHoverTime: :dword

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize=
    end
  end
end