require_relative '../../enum/window/function/timer_value_coalescing'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644907
    # VOID CALLBACK TimerProc( _In_  HWND hwnd, _In_  UINT uMsg, _In_  UINT_PTR idEvent, _In_  DWORD dwTime )
    TimerProc = callback 'TimerProc', [:hwnd, :uint, :uint_ptr, :dword], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644903
    # @param [FFI::Pointer] hWnd
    # @param [Integer] uIDEvent
    # @return [true, false]
    def self.KillTimer(hWnd, uIDEvent); end
    attach_function 'KillTimer', [:hwnd, :uint_ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644906
    # @param [FFI::Pointer] hWnd
    # @param [Integer] nIDEvent
    # @param [Integer] uElapse
    # @param [TimerProc] lpTimerFunc
    # @return [Integer]
    def self.SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc); end
    attach_function 'SetTimer', [:hwnd, :uint_ptr, :uint, TimerProc], :uint_ptr

    if WINDOWS_VERSION >= 7
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh405404
      # @param [FFI::Pointer] hwnd
      # @param [Integer] nIDEvent
      # @param [Integer] uElapse
      # @param [TimerProc] lpTimerFunc
      # @param [Integer] uToleranceDelay
      # @return [Integer]
      def self.SetCoalescableTimer(hwnd, nIDEvent, uElapse, lpTimerFunc, uToleranceDelay); end
      attach_function 'SetCoalescableTimer',
                      [:hwnd, :uint_ptr, :uint, TimerProc, TimerValueCoalescing], :uint_ptr
    end
  end
end