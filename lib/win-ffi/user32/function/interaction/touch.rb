module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/rect'

    require_relative '../../enum/interaction/touch/injection_flag'
    require_relative '../../enum/interaction/touch/window_flag'

    require_relative '../../struct/interaction/touch/input'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd371423
      # DECLARE_HANDLE(HTOUCHINPUT);
      # @param [FFI::Pointer] hTouchInput
      # @return [true, false]
      def self.CloseTouchInputHandle(hTouchInput) end
      attach_function 'CloseTouchInputHandle', [:pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd371582
      # @param [FFI::Pointer] hTouchInput
      # @param [Integer] cInputs
      # @param [FFI::Pointer] pInputs
      # @param [Integer] cbSize
      # @return [true, false]
      def self.GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize) end
      attach_function 'GetTouchInputInfo', [TOUCHINPUT.ptr(:in), :uint, :pointer, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd372998
      # @param [FFI::Pointer] hWnd
      # @param [Integer] pulFlags
      # @return [true, false]
      def self.IsTouchWindow(hWnd, pulFlags); end
      attach_function 'IsTouchWindow', [:hwnd, TouchWindowFlag], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317326
      # @param [FFI::Pointer] hWnd
      # @param [Integer] ulFlags
      # @return [true, false]
      def self.RegisterTouchWindow(hWnd, ulFlags); end
      attach_function 'RegisterTouchWindow', [:hwnd, TouchWindowFlag], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317335
      # @param [FFI::Pointer] hWnd
      # @return [true, false]
      def self.UnregisterTouchWindow(hWnd); end
      attach_function 'UnregisterTouchWindow', [:hwnd], :bool

      if WINDOWS_VERSION >= 8

        require_relative '../../struct/interaction/touch/hit_testing_input'
        require_relative '../../struct/interaction/touch/hit_testing_proximity_evaluation'
        require_relative '../../struct/interaction/pointer/touch_info'

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437245
        # @param [Integer] numVertices
        # @param [FFI::Pointer] controlPolygon
        # @param [FFI::Pointer] pHitTestingInput
        # @param [FFI::Pointer] pProximityEval
        # @return [true, false]
        def self.EvaluateProximityToPolygon(numVertices, controlPolygon, pHitTestingInput, pProximityEval); end
        attach_function 'EvaluateProximityToPolygon',
                        [:uint, POINT.ptr(:in),
                         TOUCH_HIT_TESTING_INPUT.ptr(:in), TOUCH_HIT_TESTING_PROXIMITY_EVALUATION.ptr(:out)], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437246
        # @param [FFI::Pointer] controlBoundingBox
        # @param [FFI::Pointer] pHitTestingInput
        # @param [FFI::Pointer] pProximityEval
        # @return [true, false]
        def self.EvaluateProximityToRect(controlBoundingBox, pHitTestingInput, pProximityEval); end
        attach_function 'EvaluateProximityToRect',
                        [RECT.ptr(:in), TOUCH_HIT_TESTING_INPUT.ptr(:in), TOUCH_HIT_TESTING_PROXIMITY_EVALUATION.ptr(:out)], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802880
        # @param [Integer] maxCount
        # @param [Integer] dwMode
        # @return [true, false]
        def self.InitializeTouchInjection(maxCount, dwMode); end
        attach_function 'InitializeTouchInjection', [:uint32, TouchInjectionFlag], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802881
        # @param [Integer] count
        # @param [FFI::Pointer] contacts
        # @return [true, false]
        def self.InjectTouchInput(count, contacts); end
        attach_function 'InjectTouchInput', [:uint32, POINTER_TOUCH_INFO.ptr(:in)], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437250
        # @param [FFI::Pointer] pHitTestingInput
        # @param [FFI::Pointer] pProximityEval
        # @return [Integer]
        def self.PackTouchHitTestingProximityEvaluation(pHitTestingInput, pProximityEval); end
        attach_function 'PackTouchHitTestingProximityEvaluation',
                        [TOUCH_HIT_TESTING_INPUT.ptr(:in), TOUCH_HIT_TESTING_PROXIMITY_EVALUATION.ptr(:in)], :lresult

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437252
        # @param [FFI::Pointer] hwnd
        # @param [Integer] value
        # @return [true, false]
        def self.RegisterTouchHitTestingWindow(hwnd, value); end
        attach_function 'RegisterTouchHitTestingWindow', [:hwnd, :ulong], :bool
      end
    end
  end
end
