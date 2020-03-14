require_relative '../../enum/interaction/mouse/event_flag'
require_relative '../../enum/interaction/keyboard/event_flag'
require_relative '../../enum/interaction/input/type'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mouseinput
    class MOUSEINPUT < FFIAdditions::Struct
      attr_accessor :dx,
                    :dy,
                    :mouseData,
                    :dwFlags,
                    :time,
                    :dwExtraInfo,

      layout dx:          :long,
             dy:          :long,
             mouseData:   :dword,
             dwFlags:     MouseEventFlag,
             time:        :dword,
             dwExtraInfo: :pointer
    end

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-keybdinput
    class KEYBDINPUT < FFIAdditions::Struct
      attr_accessor :wVk,
                    :wScan,
                    :dwFlags,
                    :time,
                    :dwExtraInfo

      layout wVk:         :word,
             wScan:       :word,
             dwFlags:     KeyboardEventFlag,
             time:        :dword,
             dwExtraInfo: :pointer
    end

    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-hardwareinput
    class HARDWAREINPUT < FFIAdditions::Struct
      attr_accessor :uMsg,
                    :wParamL,
                    :wParamH

      layout uMsg:    :dword,
             wParamL: :word,
             wParamH: :word
    end


    class INPUT_UNION < FFIAdditions::Union
      attr_accessor :mi, :ki, :hi

      layout mi: MOUSEINPUT,
             ki: KEYBDINPUT,
             hi: HARDWAREINPUT
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646270
    class INPUT < FFIAdditions::Struct
      attr_accessor :type, :u

      layout type: InputType,
             u:    INPUT_UNION
    end
  end
end