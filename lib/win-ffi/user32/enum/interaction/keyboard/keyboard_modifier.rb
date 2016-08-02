require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646309(v=vs.85).aspx
    buffer = [
        :ALT,      0x0001, #Either ALT key must be held down.
        :CONTROL,  0x0002, #Either CTRL key must be held down.
        :CTRL,     0x0002,
        :SHIFT,    0x0004, #Either SHIFT key must be held down.
        :WINDOWS,  0x0008, #Either WINDOWS key was held down. These keys are labeled with the Windows logo. Keyboard shortcuts that involve the WINDOWS key are reserved for use by the operating system.
        :WIN,      0x0008,
    ]

    if WindowsVersion >= 7
      buffer += [
        :NOREPEAT, 0x4000, #Changes the hotkey behavior so that the keyboard auto-repeat does not yield multiple hotkey notifications.
        #Windows Vista and Windows XP/2000:  This flag is not supported.
      ]
    end

    KeyboardModifier = enum :keyboard_modifier, buffer

    define_prefix(:MOD, KeyboardModifier)
  end
end