require 'win-ffi/core/struct/rect'

require_relative '../notification_message/header'

module WinFFI
  module User32
    class NMCUSTOMDRAW < FFIAdditions::Struct
      def hdr; end
      def hdr=(v) end
      def dwDrawStage; end
      def dwDrawStage=(v) end
      def hdc; end
      def hdc=(v) end
      def rc; end
      def rc=(v) end
      def dwItemSpec; end
      def dwItemSpec=(v) end
      def uItemState; end
      def uItemState=(v) end
      def lItemlParam; end
      def lItemlParam=(v) end

      layout hdr:         User32::NMHDR,
             dwDrawStage: :dword,
             hdc:         :hdc,
             rc:          RECT,
             dwItemSpec:  :dword_ptr,
             uItemState:  :uint,
             lItemlParam: :lparam
    end
  end
end