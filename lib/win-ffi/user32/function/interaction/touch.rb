module WinFFI
  if WINDOWS_VERSION >= 7
    require 'win-ffi/core/struct/rect'

    require_relative '../../enum/interaction/touch/injection_flag'
    require_relative '../../enum/interaction/touch/window_flag'

    require_relative '../../struct/interaction/touch/input'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd371423
      # DECLARE_HANDLE(HTOUCHINPUT);
      # BOOL CloseTouchInputHandle( _In_  HTOUCHINPUT hTouchInput ) # input event handle; from touch message lParam
      def self.CloseTouchInputHandle(hTouchInput); end
      attach_function 'CloseTouchInputHandle', [:pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd371582
      # BOOL GetTouchInputInfo(
      #   _In_   HTOUCHINPUT hTouchInput, # input event handle; from touch message lParam
      #   _In_   UINT cInputs,            # number of elements in the array
      #   _Out_  PTOUCHINPUT pInputs,     # array of touch inputs
      #   _In_   int cbSize )             # sizeof(TOUCHINPUT)
      def self.GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize); end
      attach_function 'GetTouchInputInfo', [TOUCHINPUT.ptr, :uint, :pointer, :int], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd372998
      # BOOL IsTouchWindow( _In_ HWND hWnd, _Out_opt_ PULONG pulFlags )
      def self.IsTouchWindow(hWnd, pulFlags); end
      attach_function 'IsTouchWindow', [:hwnd, TouchWindowFlag], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317326
      # BOOL RegisterTouchWindow( _In_  HWND hWnd, _In_  ULONG ulFlags )
      def self.RegisterTouchWindow(hWnd, ulFlags); end
      attach_function 'RegisterTouchWindow', [:hwnd, TouchWindowFlag], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd317335
      # BOOL UnregisterTouchWindow( _In_  HWND hWnd )
      def self.UnregisterTouchWindow(hWnd); end
      attach_function 'UnregisterTouchWindow', [:hwnd], :bool

      if WINDOWS_VERSION >= 8

        require_relative '../../struct/interaction/touch/hit_testing_input'
        require_relative '../../struct/interaction/touch/hit_testing_proximity_evaluation'
        require_relative '../../struct/interaction/pointer/touch_info'

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437245
        # BOOL EvaluateProximityToPolygon(
        #   UINT32 numVertices,
        #   _In_reads_(numVertices) const POINT *controlPolygon,
        #   _In_   const TOUCH_HIT_TESTING_INPUT *pHitTestingInput,
        #   _Out_  TOUCH_HIT_TESTING_PROXIMITY_EVALUATION *pProximityEval )
        def self.EvaluateProximityToPolygon(numVertices, controlPolygon, pHitTestingInput, pProximityEval); end
        attach_function 'EvaluateProximityToPolygon',
                        [:uint, POINT.ptr,
                         TOUCH_HIT_TESTING_INPUT.ptr, TOUCH_HIT_TESTING_PROXIMITY_EVALUATION.ptr], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437246
        # BOOL EvaluateProximityToRect(
        #   _In_   const RECT *controlBoundingBox,
        #   _In_   const TOUCH_HIT_TESTING_INPUT *pHitTestingInput,
        #   _Out_  TOUCH_HIT_TESTING_PROXIMITY_EVALUATION *pProximityEval )
        def self.EvaluateProximityToRect(controlBoundingBox, pHitTestingInput, pProximityEval); end
        attach_function 'EvaluateProximityToRect',
                        [RECT.ptr, TOUCH_HIT_TESTING_INPUT.ptr, TOUCH_HIT_TESTING_PROXIMITY_EVALUATION.ptr], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802880
        # BOOL InitializeTouchInjection( _In_ UINT32 maxCount, _In_ DWORD dwMode )
        def self.InitializeTouchInjection(maxCount, dwMode); end
        attach_function 'InitializeTouchInjection', [:uint32, TouchInjectionFlag], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802881
        # BOOL InjectTouchInput( _In_  UINT32 count, _In_  const POINTER_TOUCH_INFO *contacts )
        def self.InjectTouchInput(count, contacts); end
        attach_function 'InjectTouchInput', [:uint32, POINTER_TOUCH_INFO], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437250
        # LRESULT PackTouchHitTestingProximityEvaluation(
        #   _In_  const TOUCH_HIT_TESTING_INPUT *pHitTestingInput,
        #   _In_  const TOUCH_HIT_TESTING_PROXIMITY_EVALUATION *pProximityEval )
        def self.PackTouchHitTestingProximityEvaluation(pHitTestingInput, pProximityEval); end
        attach_function 'PackTouchHitTestingProximityEvaluation',
                        [TOUCH_HIT_TESTING_INPUT.ptr, TOUCH_HIT_TESTING_PROXIMITY_EVALUATION.ptr], :lresult

        # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437252
        # BOOL RegisterTouchHitTestingWindow( _In_  HWND hwnd, _In_  ULONG value )
        def self.RegisterTouchHitTestingWindow(hwnd, value); end
        attach_function 'RegisterTouchHitTestingWindow', [:hwnd, :ulong], :bool
      end
    end
  end
end
