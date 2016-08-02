require 'win-ffi/user32'

module WinFFI
  module User32
    # Drag-and-drop support
    # Obsolete - use OLE instead
    LOGGER.warn 'Obsolete - use OLE instead'
    DragAndDropFlag = enum :drag_and_drop_flag, [
        :EXECUTABLE, 0x8001, # wFmt flags
        :DOCUMENT,   0x8002,
        :DIRECTORY,  0x8003,
        :MULTIPLE,   0x8004,
        :PROGMAN,    0x0001,
        :SHELLDATA,  0x0002,
    ]

    define_prefix(:DOF, DragAndDropFlag)
  end
end