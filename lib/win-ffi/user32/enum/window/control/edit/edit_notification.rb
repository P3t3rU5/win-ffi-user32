require 'win-ffi/user32'

module WinFFI
  module User32
    # Edit Control Notification Codes
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff485924(v=vs.85).aspx
    buffer = [
        :SETFOCUS,     0x0100,
        :KILLFOCUS,    0x0200,
        :CHANGE,       0x0300,
        :UPDATE,       0x0400,
        :ERRSPACE,     0x0500,
        :MAXTEXT,      0x0501,
        :HSCROLL,      0x0601,
        :VSCROLL,      0x0602,
        :ALIGN_LTR_EC, 0x0700,
        :ALIGN_RTL_EC, 0x0701,

        :MSGFILTER,         0x0700,
        :REQUESTRESIZE,     0x0701,
        :SELCHANGE,         0x0702,
        :DROPFILES,         0x0703,
        :PROTECTED,         0x0704,
        :CORRECTTEXT,       0x0705,
        :STOPNOUNDO,        0x0706,
        :IMECHANGE,         0x0707,
        :SAVECLIPBOARD,     0x0708,
        :OLEOPFAILED,       0x0709,
        :OBJECTPOSITIONS,   0x070a,
        :LINK,              0x070b,
        :DRAGDROPDONE,      0x070c,
        :PARAGRAPHEXPANDED, 0x070d,
        :PAGECHANGE,        0x070e,
        :LOWFIRTF,          0x070f,
        :ALIGNLTR,          0x0710,
        :ALIGNRTL,          0x0711,
    ]

    if WindowsVersion >= 8
      buffer += [
          :CLIPFORMAT,       0x0712,
          :STARTCOMPOSITION, 0x0713,
          :ENDCOMPOSITION,   0x0714,
      ]
      if WindowsVersion > 8.1
        buffer += [
            :BEFORE_PASTE, 0x0800,
            :AFTER_PASTE,  0x0801,
        ]
      end
    end

    EditNotification = enum :edit_notification, buffer

    define_prefix(:EN, EditNotification)
  end
end