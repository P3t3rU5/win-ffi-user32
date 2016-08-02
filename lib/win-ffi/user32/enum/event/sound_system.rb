require 'win-ffi/user32'

module WinFFI
  module User32
    # System Sounds (idChild of system SOUND notification)
    SoundSystem = enum :sound_system, [
        :STARTUP,      1,
        :SHUTDOWN,     2,
        :BEEP,         3,
        :ERROR,        4,
        :QUESTION,     5,
        :WARNING,      6,
        :INFORMATION,  7,
        :MAXIMIZE,     8,
        :MINIMIZE,     9,
        :RESTOREUP,   10,
        :RESTOREDOWN, 11,
        :APPSTART,    12,
        :FAULT,       13,
        :APPEND,      14,
        :MENUCOMMAND, 15,
        :MENUPOPUP,   16,
    ]

    CSOUND_SYSTEM = 16

    define_prefix(:SOUND_SYSTEM, SoundSystem)
  end
end