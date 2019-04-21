require_relative '../enum/win_event/set_win_event_hook_flag'
require_relative '../enum/window/control/system_object_id'

module WinFFI
  module User32
    # WinEvents - Active Accessibility hooks

    typedef :pointer, :hwineventhook

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nc-winuser-wineventproc
    # void CALLBACK WinEventProc(
    #   HWINEVENTHOOK hWinEventHook,
    #   DWORD         event,
    #   HWND          hwnd,
    #   LONG          idObject,
    #   LONG          idChild,
    #   DWORD         dwEventThread,
    #   DWORD         dwmsEventTime)
    WinEventProc = callback 'WinEventProc', [:pointer, :dword, :hwnd, SystemObjectId, :long, :dword, :dword], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-notifywinevent
    # @param [Integer] event
    # @param [FFI::Pointer] hwnd
    # @param [Integer] idObject
    # @param [Integer] idChild
    def self.NotifyWinEvent(event, hwnd, idObject, idChild) end
    attach_function 'NotifyWinEvent', [:dword, :hwnd, SystemObjectId, :long], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwineventhook
    # @param [Integer] eventMin
    # @param [Integer] eventMax
    # @param [FFI::Pointer] hmodWinEventProc
    # @param [WinEventProc] lpfnWinEventProc
    # @param [Integer] idProcess
    # @param [Integer] idThread
    # @param [Integer] dwflags
    # @return [FFI::Pointer]
    def self.SetWinEventHook(eventMin, eventMax, hmodWinEventProc, lpfnWinEventProc, idProcess, idThread, dwflags) end
    attach_function 'SetWinEventHook', [:uint, :uint, :pointer, WinEventProc, :dword, :dword, SetWinEventHookFlag], :pointer


    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unhookwinevent
    # @param [FFI::Pointer] hWinEventHook
    # @return [true, false]
    def self.UnhookWinEvent(hWinEventHook) end
    attach_function 'UnhookWinEvent', [:hwineventhook], :bool

    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-iswineventhookinstalled
      # Active Accessibility
      # @param [Integer] event
      # @return [true, false]
      def self.IsWinEventHookInstalled(event) end
      attach_function 'IsWinEventHookInstalled', [:dword], :bool
    end
  end
end