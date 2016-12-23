require 'win-ffi/user32'

module WinFFI
  module User32
    # Virtual Keys, Standard Set
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731(v=vs.85).aspx
    buffer = [
        :LBUTTON,             0x01, # Left mouse button
        :RBUTTON,             0x02, # Right mouse button
        :CANCEL,              0x03, # Control-break processing
        :MBUTTON,             0x04, # Middle mouse button (three-button mouse)
        :XBUTTON1,            0x05, # X1 mouse button
        :XBUTTON2,            0x06, # X2 mouse button
        #_,                   0x07, # Undefined
        :BACKSPACE,           0x08, # BACKSPACE key
        :BACK,                0x08, # BACKSPACE key
        :TAB,                 0x09, # TAB key
        #_,                0x0A-0B, # Reserved
        :CLEAR,               0x0C, # CLEAR key
        :ENTER,               0x0D, # ENTER key
        :RETURN,              0x0D, # ENTER key
        #_,                0x0E-0F, # Undefined
        :SHIFT,               0x10, # SHIFT key
        :CONTROL,             0x11, # CTRL key
        :MENU,                0x12, # ALT key
        :PAUSE,               0x13, # PAUSE key
        :CAPITAL,             0x14, # CAPS LOCK key
        :KANA,                0x15, # IME Kana mode
        :HANGUEL,             0x15, # IME Hanguel mode (maintained for compatibility; use :HANGUL)
        :HANGUL,              0x15, # IME Hangul mode
        #_,                   0x16, # Undefined
        :JUNJA,               0x17, # IME Junja mode
        :FINAL,               0x18, # IME final mode
        :HANJA,               0x19, # IME Hanja mode
        :KANJI,               0x19, # IME Kanji mode
        #_,                   0x1A, # Undefined
        :ESC,                 0x1B, # ESC key
        :ESCAPE,              0x1B, # ESC key
        :CONVERT,             0x1C, # IME convert
        :NONCONVERT,          0x1D, # IME nonconvert
        :ACCEPT,              0x1E, # IME accept
        :MODECHANGE,          0x1F, # IME mode change request
        :SPACE,               0x20, # SPACEBAR
        :PRIOR,               0x21, # PAGE UP key
        :NEXT,                0x22, # PAGE DOWN key
        :END,                 0x23, # END key
        :HOME,                0x24, # HOME key
        :LEFT,                0x25, # LEFT ARROW key
        :UP,                  0x26, # UP ARROW key
        :RIGHT,               0x27, # RIGHT ARROW key
        :DOWN,                0x28, # DOWN ARROW key
        :SELECT,              0x29, # SELECT key
        :PRINT,               0x2A, # PRINT key
        :EXECUTE,             0x2B, # EXECUTE key
        :SNAPSHOT,            0x2C, # PRINT SCREEN key
        :INS,                 0x2D, # INS key
        :INSERT,              0x2D, # INS key
        :DEL,                 0x2E, # DEL key
        :DELETE,              0x2E, # DEL key
        :HELP,                0x2F, # HELP
        :'0',                 0x30,
        :N0,                  0x30,
        :'1',                 0x31,
        :N1,                  0x31,
        :'2',                 0x32,
        :N2,                  0x32,
        :'3',                 0x33,
        :N3,                  0x33,
        :'4',                 0x34,
        :N4,                  0x34,
        :'5',                 0x35,
        :N5,                  0x35,
        :'6',                 0x36,
        :N6,                  0x36,
        :'7',                 0x37,
        :N7,                  0x37,
        :'8',                 0x38,
        :N8,                  0x38,
        :'9',                 0x39,
        :N9,                  0x39,
        #_,                   0x3A-40, # Undefined,
        :A,                   0x41,
        :B,                   0x42,
        :C,                   0x43,
        :D,                   0x44,
        :E,                   0x45,
        :F,                   0x46,
        :G,                   0x47,
        :H,                   0x48,
        :I,                   0x49,
        :J,                   0x4A,
        :K,                   0x4B,
        :L,                   0x4C,
        :M,                   0x4D,
        :N,                   0x4E,
        :O,                   0x4F,
        :P,                   0x50,
        :Q,                   0x51,
        :R,                   0x52,
        :S,                   0x53,
        :T,                   0x54,
        :U,                   0x55,
        :V,                   0x56,
        :W,                   0x57,
        :X,                   0x58,
        :Y,                   0x59,
        :Z,                   0x5A,
        :LWIN,                0x5B, # Left Windows key (Natural keyboard)
        :RWIN,                0x5C, # Right Windows_key (Natural keyboard)
        :APPS,                0x5D, # Applications_key (Natural keyboard)
        #_,                   0x5E, # Reserved
        :SLEEP,               0x5F, # Computer Sleep key
        :NUMPAD0,             0x60, # Numeric keypad 0 key
        :NUMPAD1,             0x61, # Numeric keypad 1 key
        :NUMPAD2,             0x62, # Numeric keypad 2 key
        :NUMPAD3,             0x63, # Numeric keypad 3 key
        :NUMPAD4,             0x64, # Numeric keypad 4 key
        :NUMPAD5,             0x65, # Numeric keypad 5 key
        :NUMPAD6,             0x66, # Numeric keypad 6 key
        :NUMPAD7,             0x67, # Numeric keypad 7 key
        :NUMPAD8,             0x68, # Numeric keypad 8 key
        :NUMPAD9,             0x69, # Numeric keypad 9 key
        :MULTIPLY,            0x6A, # Multiply key
        :ADD,                 0x6B, # Add key
        :SEPARATOR,           0x6C, # Separator key
        :SUBTRACT,            0x6D, # Subtract key
        :DECIMAL,             0x6E, # Decimal key
        :DIVIDE,              0x6F, # Divide key
        :F1,                  0x70, # F1_key
        :F2,                  0x71, # F2_key
        :F3,                  0x72, # F3_key
        :F4,                  0x73, # F4_key
        :F5,                  0x74, # F5_key
        :F6,                  0x75, # F6_key
        :F7,                  0x76, # F7_key
        :F8,                  0x77, # F8_key
        :F9,                  0x78, # F9_key
        :F10,                 0x79, # F10_key
        :F11,                 0x7A, # F11_key
        :F12,                 0x7B, # F12_key
        :F13,                 0x7C, # F13_key
        :F14,                 0x7D, # F14_key
        :F15,                 0x7E, # F15_key
        :F16,                 0x7F, # F16_key
        :F17,                 0x80, # F17_key
        :F18,                 0x81, # F18_key
        :F19,                 0x82, # F19_key
        :F20,                 0x83, # F20_key
        :F21,                 0x84, # F21_key
        :F22,                 0x85, # F22_key
        :F23,                 0x86, # F23_key
        :F24,                 0x87, # F24_key
        #_,                0x88-8F, # Unassigned
        :NUMLOCK,             0x90, # NUM LOCK_key
        :SCROLL,              0x91, # SCROLL LOCK_key,
        #                  0x92-96, # OEM specific
        # NEC PC-9800 kbd definitions
        :OEM_NEC_EQUAL,       0x92, # '=' key on numpad NEC PC-9800 kbd definitions
        # Fujitsu/OASYS kbd definitions
        :OEM_FJ_JISHO,        0x92, # 'Dictionary' key
        :OEM_FJ_MASSHOU,      0x93, # 'Unregister word' key
        :OEM_FJ_TOUROKU,      0x94, # 'Register word' key
        :OEM_FJ_LOYA,         0x95, # 'Left OYAYUBI' key
        :OEM_FJ_ROYA,         0x96, # 'Right OYAYUBI' key
        #_,                0x97-9F, # Unassigned
        :LSHIFT,              0xA0, # Left SHIFT_key
        :RSHIFT,              0xA1, # Right SHIFT_key
        :LCONTROL,            0xA2, # Left CONTROL_key
        :RCONTROL,            0xA3, # Right CONTROL_key
        :LMENU,               0xA4, # Left MENU_key
        :RMENU,               0xA5, # Right MENU_key
        :BROWSER_BACK,        0xA6, # Browser Back_key
        :BROWSER_FORWARD,     0xA7, # Browser Forward_key
        :BROWSER_REFRESH,     0xA8, # Browser Refresh_key
        :BROWSER_STOP,        0xA9, # Browser Stop_key
        :BROWSER_SEARCH,      0xAA, # Browser Search_key
        :BROWSERFAVORITES,    0xAB, # Browser Favorites_key
        :BROWSER_HOME,        0xAC, # Browser Start and Home_key
        :VOLUME_MUTE,         0xAD, # Volume Mute_key
        :VOLUME_DOWN,         0xAE, # Volume Down_key
        :VOLUME_UP,           0xAF, # Volume Up_key
        :MEDIA_NEXT_TRACK,    0xB0, # Next Track_key
        :MEDIA_PREV_TRACK,    0xB1, # Previous Track_key
        :MEDIA_STOP,          0xB2, # Stop Media_key
        :MEDIA_PLAY_PAUSE,    0xB3, # Play/Pause Media_key
        :LAUNCH_MAIL,         0xB4, # Start Mail_key
        :LAUNCH_MEDIA_SELECT, 0xB5, # Select Media_key
        :LAUNCH_APP1,         0xB6, # Start Application 1_key
        :LAUNCH_APP2,         0xB7, # Start Application 2_key
        #_,                0xB8-B9, Reserved
        :OEM_1,               0xBA, # Used for miscellaneous characters; it can vary by_keyboard. For the US standard_keyboard, the ';:'_key
        :OEM_PLUS,            0xBB, # For any country/region, the '+'_key
        :OEM_COMMA,           0xBC, # For any country/region, the ','_key
        :OEM_MINUS,           0xBD, # For any country/region, the '-'_key
        :OEM_PERIOD,          0xBE, # For any country/region, the '.'_key
        :OEM_2,               0xBF, # Used for miscellaneous characters; it can vary by_keyboard. For the US standard_keyboard, the '/?'_key
        :OEM_3,               0xC0, # Used for miscellaneous characters; it can vary by_keyboard. For the US standard_keyboard, the '`~'_key
        #_,                0xC1-D7, Reserved
        #_,                0xD8-DA, Assigned
        :OEM_4,               0xDB, # Used for miscellaneous characters; it can vary by_keyboard. For the US standard_keyboard, the '[{'_key
        :OEM_5,               0xDC, # Used for miscellaneous characters; it can vary by_keyboard. For the US standard_keyboard, the '\|'_key
        :OEM_6,               0xDD, # Used for miscellaneous characters; it can vary by_keyboard. For the US standard_keyboard, the ']}'_key
        :OEM_7,               0xDE, # Used for miscellaneous characters; it can vary by_keyboard. For the US standard_keyboard, the 'single-quote/double-quote'_key
        :OEM_8,               0xDF, # Used for miscellaneous characters; it can vary by_keyboard.
        #_,                   0xE0, Reserved
        #                     0xE1, OEM Specific
        :OEM_AX,              0xE1, #  'AX' key on Japanese AX kbd
        :OEM_102,             0xE2, # Either the angle bracket_key or the backslash_key on the RT 102-key_keyboard,
        #                  0xE3-E4, # OEM specific
        :ICO_HELP,            0xE3, # Help key on ICO
        :ICO_00,              0xE4, # 00 key on ICO
        :PROCESSKEY,          0xE5, # IME PROCESS_key,
        #                     0xE6, # OEM specific
        :ICO_CLEAR,           0xE6,
        :PACKET,              0xE7, # Used to pass Unicode characters as if they were_keystrokes. The :PACKET_key is the low word of a 32-bit Virtual_key value used for non-keyboard input methods. For more information, see Remark in_keyBDINPUT, SendInput, WM_KEYDOWN, and WM_KEYUP
        #_,                   0xE8, Unassigned,
        #                  0xE9-F5, # OEM specific
        #  nokia/ericsson definitions
        :OEM_RESET,           0xE9,
        :OEM_JUMP,            0xEA,
        :OEM_PA1,             0xEB,
        :OEM_PA2,             0xEC,
        :OEM_PA3,             0xED,
        :OEM_WSCTRL,          0xEE,
        :OEM_CUSEL,           0xEF,
        :OEM_ATTN,            0xF0,
        :OEM_FINISH,          0xF1,
        :OEM_COPY,            0xF2,
        :OEM_AUTO,            0xF3,
        :OEM_ENLW,            0xF4,
        :OEM_BACKTAB,         0xF5,
        :ATTN,                0xF6, #Attn_key
        :CRSEL,               0xF7, #CrSel_key
        :EXSEL,               0xF8, #ExSel_key
        :EREOF,               0xF9, #Erase EOF_key
        :PLAY,                0xFA, #Play_key
        :ZOOM,                0xFB, #Zoom_key
        :NONAME,              0xFC, #Reserved
        :PA1,                 0xFD, #PA1_key
        :OEM_CLEAR,           0xFE
    ]

    #if(_WIN32_WINNT >= 0x0604)
    if WindowsVersion > 8.1
      # 0x88 - 0x8F : UI navigation
      buffer += [
          :NAVIGATION_VIEW,   0x88,
          :NAVIGATION_MENU,   0x89,
          :NAVIGATION_UP,     0x8A,
          :NAVIGATION_DOWN,   0x8B,
          :NAVIGATION_LEFT,   0x8C,
          :NAVIGATION_RIGHT,  0x8D,
          :NAVIGATION_ACCEPT, 0x8E,
          :NAVIGATION_CANCEL, 0x8F,

          :GAMEPAD_A,                       0xC3,
          :GAMEPAD_B,                       0xC4,
          :GAMEPAD_X,                       0xC5,
          :GAMEPAD_Y,                       0xC6,
          :GAMEPAD_RIGHT_SHOULDER,          0xC7,
          :GAMEPAD_LEFT_SHOULDER,           0xC8,
          :GAMEPAD_LEFT_TRIGGER,            0xC9,
          :GAMEPAD_RIGHT_TRIGGER,           0xCA,
          :GAMEPAD_DPAD_UP,                 0xCB,
          :GAMEPAD_DPAD_DOWN,               0xCC,
          :GAMEPAD_DPAD_LEFT,               0xCD,
          :GAMEPAD_DPAD_RIGHT,              0xCE,
          :GAMEPAD_MENU,                    0xCF,
          :GAMEPAD_VIEW,                    0xD0,
          :GAMEPAD_LEFT_THUMBSTICK_BUTTON,  0xD1,
          :GAMEPAD_RIGHT_THUMBSTICK_BUTTON, 0xD2,
          :GAMEPAD_LEFT_THUMBSTICK_UP,      0xD3,
          :GAMEPAD_LEFT_THUMBSTICK_DOWN,    0xD4,
          :GAMEPAD_LEFT_THUMBSTICK_RIGHT,   0xD5,
          :GAMEPAD_LEFT_THUMBSTICK_LEFT,    0xD6,
          :GAMEPAD_RIGHT_THUMBSTICK_UP,     0xD7,
          :GAMEPAD_RIGHT_THUMBSTICK_DOWN,   0xD8,
          :GAMEPAD_RIGHT_THUMBSTICK_RIGHT,  0xD9,
          :GAMEPAD_RIGHT_THUMBSTICK_LEFT,   0xDA,
      ]
    end

    VirtualKeyCode = enum :virtual_key_flags, buffer

    define_prefix(:VK, VirtualKeyCode)
  end
end