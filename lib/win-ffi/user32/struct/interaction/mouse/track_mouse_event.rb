require_relative '../../../enum/interaction/mouse/track_mouse_event_flag'

module WinFFI
  module User32
    HOVER_DEFAULT = 0xFFFFFFFF

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645604
    class TRACKMOUSEEVENT < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def hwndTrack; end
      def hwndTrack=(v); end
      def dwHoverTime; end
      def dwHoverTime=(v); end

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