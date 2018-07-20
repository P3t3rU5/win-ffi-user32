module WinFFI
  if WINDOWS_VERSION >= :vista
    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373609(v=vs.85).aspx
      StateSystemFlag = enum :state_system_flag, [
          :UNAVAILABLE,     0x00000001,
          :SELECTED,        0x00000002,
          :FOCUSED,         0x00000004,
          :PRESSED,         0x00000008,
          :CHECKED,         0x00000010,
          :MIXED,           0x00000020,
          :INDETERMINATE,   0x00000020,
          :READONLY,        0x00000040,
          :HOTTRACKED,      0x00000080,
          :DEFAULT,         0x00000100,
          :EXPANDED,        0x00000200,
          :COLLAPSED,       0x00000400,
          :BUSY,            0x00000800,
          :FLOATING,        0x00001000,
          :MARQUEED,        0x00002000,
          :ANIMATED,        0x00004000,
          :INVISIBLE,       0x00008000,
          :OFFSCREEN,       0x00010000,
          :SIZEABLE,        0x00020000,
          :MOVEABLE,        0x00040000,
          :SELFVOICING,     0x00080000,
          :FOCUSABLE,       0x00100000,
          :SELECTABLE,      0x00200000,
          :LINKED,          0x00400000,
          :TRAVERSED,       0x00800000,
          :MULTISELECTABLE, 0x01000000,
          :EXTSELECTABLE,   0x02000000,
          :ALERT_LOW,       0x04000000,
          :ALERT_MEDIUM,    0x08000000,
          :ALERT_HIGH,      0x10000000,
          :PROTECTED,       0x20000000,
          :VALID,           0x3FFFFFFF,
      ]

      define_prefix(:STATE_SYSTEM, StateSystemFlag)
    end
  end
end