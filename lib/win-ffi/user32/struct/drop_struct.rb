require 'win-ffi/core/struct/point'

require_relative '../enum/drag_and_drop_flag'

module WinFFI
  module User32
    LOGGER.warn 'Obsolete - use OLE instead'
    class DROPSTRUCT < FFIAdditions::Struct
      def hwndSource; end
      def hwndSource=(v) end
      def hwndSink; end
      def hwndSink=(v) end
      def wFmt; end
      def wFmt=(v) end
      def dwData; end
      def dwData=(v) end
      def ptDrop; end
      def ptDrop=(v) end
      def dwControlData; end
      def dwControlData=(v) end

      layout hwndSource:    :hwnd,
             hwndSink:      :hwnd,
             wFmt:          DragAndDropFlag,
             dwData:        :ulong,
             ptDrop:        POINT,
             dwControlData: :dword
    end
  end
end