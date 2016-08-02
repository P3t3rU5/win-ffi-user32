require 'win-ffi/user32'

module WinFFI
  module User32
    # EVENT DEFINITION
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd318066(v=vs.85).aspx
    buffer = [
        :MIN,           0x00000001,
        :MAX,           0x7FFFFFFF,

        :SYSTEM_SOUND,                 0x0001,
        :SYSTEM_ALERT,                  0x0002,
        :SYSTEM_FOREGROUND,             0x0003,
        :SYSTEM_MENUSTART,              0x0004,
        :SYSTEM_MENUEND,                0x0005,
        :SYSTEM_MENUPOPUPSTART,         0x0006,
        :SYSTEM_MENUPOPUPEND,           0x0007,
        :SYSTEM_CAPTURESTART,           0x0008,
        :SYSTEM_CAPTUREEND,             0x0009,
        :SYSTEM_MOVESIZESTART,          0x000A,
        :SYSTEM_MOVESIZEEND,            0x000B,
        :SYSTEM_CONTEXTHELPSTART,       0x000C,
        :SYSTEM_CONTEXTHELPEND,         0x000D,
        :SYSTEM_DRAGDROPSTART,          0x000E,
        :SYSTEM_DRAGDROPEND,            0x000F,
        :SYSTEM_DIALOGSTART,            0x0010,
        :SYSTEM_DIALOGEND,              0x0011,
        :SYSTEM_SCROLLINGSTART,         0x0012,
        :SYSTEM_SCROLLINGEND,           0x0013,
        :SYSTEM_SWITCHSTART,            0x0014,
        :SYSTEM_SWITCHEND,              0x0015,
        :SYSTEM_MINIMIZESTART,          0x0016,
        :SYSTEM_MINIMIZEEND,            0x0017,

        :OBJECT_CREATE,                           0x8000,
        :OBJECT_DESTROY,                          0x8001,
        :OBJECT_SHOW,                             0x8002,
        :OBJECT_HIDE,                             0x8003,
        :OBJECT_REORDER,                          0x8004,
        :OBJECT_FOCUS,                            0x8005,
        :OBJECT_SELECTION,                        0x8006,
        :OBJECT_SELECTIONADD,                     0x8007,
        :OBJECT_SELECTIONREMOVE,                  0x8008,
        :OBJECT_SELECTIONWITHIN,                  0x8009,
        :OBJECT_STATECHANGE,                      0x800A,
        :OBJECT_LOCATIONCHANGE,                   0x800B,
        :OBJECT_NAMECHANGE,                       0x800C,
        :OBJECT_DESCRIPTIONCHANGE,                0x800D,
        :OBJECT_VALUECHANGE,                      0x800E,
        :OBJECT_PARENTCHANGE,                     0x800F,
        :OBJECT_HELPCHANGE,                       0x8010,
        :OBJECT_DEFACTIONCHANGE,                  0x8011,
        :OBJECT_ACCELERATORCHANGE,                0x8012,
    ]

    if WindowsVersion >= :xp
      buffer += [
          :CONSOLE_CARET,             0x4001,
          :CONSOLE_UPDATE_REGION,     0x4002,
          :CONSOLE_UPDATE_SIMPLE,     0x4003,
          :CONSOLE_UPDATE_SCROLL,     0x4004,
          :CONSOLE_LAYOUT,            0x4005,
          :CONSOLE_START_APPLICATION, 0x4006,
          :CONSOLE_END_APPLICATION,   0x4007,
      ]
    if WindowsVersion >= :vista
      buffer += [
          :SYSTEM_DESKTOPSWITCH,        0x0020,
          :OBJECT_INVOKED,              0x8013,
          :OBJECT_TEXTSELECTIONCHANGED, 0x8014,
          :OBJECT_CONTENTSCROLLED,      0x8015,
      ]
      if WindowsVersion >= 7
        buffer += [
            :SYSTEM_END,               0x00FF,

            :OEM_DEFINED_START,        0x0101,
            :OEM_DEFINED_END,          0x01FF,

            :UIA_EVENTID_START,        0x4E00,
            :UIA_EVENTID_END,          0x4EFF,
            :UIA_PROPID_START,         0x7500,
            :UIA_PROPID_END,           0x75FF,

            :CONSOLE_END,              0x40FF,

            :SYSTEM_ARRANGMENTPREVIEW, 0x8016,

            :OBJECT_END,               0x80FF,

            :AIA_START,                0xA000,
            :AIA_END,                  0xAFFF,
        ]
        if WindowsVersion >= 8
          buffer += [
              :SYSTEM_SWITCHER_APPGRABBED,    0x0024,
              :SYSTEM_SWITCHER_APPOVERTARGET, 0x0025,
              :SYSTEM_SWITCHER_APPDROPPED,    0x0026,
              :SYSTEM_SWITCHER_CANCELLED,     0x0027,
              :SYSTEM_IME_KEY_NOTIFICATION,   0x0029,

              :OBJECT_CLOAKED,                          0x8017,
              :OBJECT_UNCLOAKED,                        0x8018,
              :OBJECT_LIVEREGIONCHANGED,                0x8019,
              :OBJECT_HOSTEDOBJECTSINVALIDATED,         0x8020,
              :OBJECT_DRAGSTART,                        0x8021,
              :OBJECT_DRAGCANCEL,                       0x8022,
              :OBJECT_DRAGCOMPLETE,                     0x8023,
              :OBJECT_DRAGENTER,                        0x8024,
              :OBJECT_DRAGLEAVE,                        0x8025,
              :OBJECT_DRAGDROPPED,                      0x8026,
              :OBJECT_IME_SHOW,                         0x8027,
              :OBJECT_IME_HIDE,                         0x8028,
              :OBJECT_IME_CHANGE,                       0x8029,
              :OBJECT_TEXTEDIT_CONVERSIONTARGETCHANGED, 0x8030,
          ]
        end
      end
    end
    end

    EventId = enum :event_id, buffer

    define_prefix(:EVENT, EventId)
  end
end