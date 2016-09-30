require 'win-ffi/user32/enum/drag_and_drop_flag'

require 'win-ffi/core/struct/point'

module WinFFI
  module User32
    LOGGER.warn 'Obsolete - use OLE instead'
    class DROPSTRUCT < FFIAdditions::Struct
      layout hwndSource:     :hwnd,
             hwndSink:       :hwnd,
             wFmt: DragAndDropFlag,
             dwData:        :ulong,
             ptDrop:         POINT,
             dwControlData: :dword
    end
  end
end