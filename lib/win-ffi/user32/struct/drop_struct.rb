require 'win-ffi/core/struct/point'

require_relative '../enum/drag_and_drop_flag'

module WinFFI
  module User32
    LOGGER.warn 'Obsolete - use OLE instead'
    class DROPSTRUCT < FFIAdditions::Struct
      attr_accessor :hwndSource,
                    :hwndSink,
                    :wFmt,
                    :dwData,
                    :ptDrop,
                    :dwControlData

      layout hwndSource:    :hwnd,
             hwndSink:      :hwnd,
             wFmt:          DragAndDropFlag,
             dwData:        :ulong,
             ptDrop:        POINT,
             dwControlData: :dword
    end
  end
end