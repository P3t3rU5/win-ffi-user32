module WinFFI
  module User32
    # Queue status flags for GetQueueStatus() and MsgWaitForMultipleObjects()
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644940
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms684242
    buffer = [
        :KEY,            0x0001,
        :MOUSEMOVE,      0x0002,
        :MOUSEBUTTON,    0x0004,
        :POSTMESSAGE,    0x0008,
        :TIMER,          0x0010,
        :PAINT,          0x0020,
        :SENDMESSAGE,    0x0040,
        :HOTKEY,         0x0080,
        :ALLPOSTMESSAGE, 0x0100,
        :MOUSE,          0x0006,
    ]

    if WINDOWS_VERSION >= :xp
      buffer += [:RAWINPUT, 0x0400]
      buffer += if WINDOWS_VERSION >= 8
        [:TOUCH, 0x0800, :POINTER, 0x1000, :INPUT, 0x1C07, :ALLEVENTS, 0x1CBF, :ALLINPUT, 0x1CFF]
      else
        [:INPUT, 0x0407, :ALLEVENTS, 0x04BF, :ALLINPUT,  0x04FF]
      end
    else
      buffer += [:INPUT, 0x0007, :ALLEVENTS, 0x00BF, :ALLINPUT, 0x00FF]
    end

    QueueStatusFlag = enum :queue_status_flag, buffer

    define_prefix(:QS, QueueStatusFlag)
  end
end