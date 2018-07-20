require_relative '../../enum/interaction/mouse/mouse_event_flag'
require_relative '../../enum/interaction/keyboard/keyboard_event_flag'
require_relative '../../enum/interaction/input/input_type'

module WinFFI
  module User32
    class MOUSEINPUT < FFIAdditions::Struct
      def dx; end
      def dx=(v) end
      def dy; end
      def dy=(v) end
      def mouseData; end
      def mouseData=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def time; end
      def time=(v) end
      def dwExtraInfo; end
      def dwExtraInfo=(v) end

      layout dx:          :long,
             dy:          :long,
             mouseData:   :dword,
             dwFlags:     MouseEventFlag,
             time:        :dword,
             dwExtraInfo: :pointer
    end

    class KEYBDINPUT < FFIAdditions::Struct
      def wVk; end
      def wVk=(v) end
      def wScan; end
      def wScan=(v) end
      def dwFlags; end
      def dwFlags=(v) end
      def time; end
      def time=(v) end
      def dwExtraInfo; end
      def dwExtraInfo=(v) end

      layout wVk:         :word,
             wScan:       :word,
             dwFlags:     KeyboardEventFlag,
             time:        :dword,
             dwExtraInfo: :pointer
    end

    class HARDWAREINPUT < FFIAdditions::Struct
      def uMsg; end
      def uMsg=(v) end
      def wParamL; end
      def wParamL=(v); end
      def wParamH; end
      def wParamH=(v); end

      layout uMsg:    :dword,
             wParamL: :word,
             wParamH: :word
    end


    class INPUT_UNION < FFIAdditions::Union
      def mi; end
      def mi=(v); end
      def ki; end
      def ki=(v); end
      def hi; end
      def hi=(v); end

      layout mi: MOUSEINPUT,
             ki: KEYBDINPUT,
             hi: HARDWAREINPUT
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646270
    class INPUT < FFIAdditions::Struct
      def type; end
      def type=(v); end
      def u; end
      def u=(v); end

      layout type: InputType,
             u:    INPUT_UNION
    end
  end
end