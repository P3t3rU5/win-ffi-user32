require 'win-ffi/user32/enum/interaction/mouse/mouse_event_flag'
require 'win-ffi/user32/enum/interaction/keyboard/keyboard_event_flag'

module WinFFI
  module User32
    class MOUSEINPUT < FFIAdditions::Struct
      layout dx:               :long,
             dy:               :long,
             mouseData:       :dword,
             dwFlags: MouseEventFlag,
             time:            :dword,
             dwExtraInfo:   :pointer
    end

    class KEYBDINPUT < FFIAdditions::Struct
      layout wVk:                 :word,
             wScan:               :word,
             dwFlags: KeyboardEventFlag,
             time:               :dword,
             dwExtraInfo:      :pointer
    end

    class HARDWAREINPUT < FFIAdditions::Struct
      layout uMsg:   :dword,
             wParamL: :word,
             wParamH: :word
    end


    class INPUT_UNION < FFIAdditions::Union
      layout mi:    MOUSEINPUT,
             ki:    KEYBDINPUT,
             hi: HARDWAREINPUT
    end

    class INPUT < FFIAdditions::Struct
      layout type:   :dword,
             u: INPUT_UNION
    end
  end
end