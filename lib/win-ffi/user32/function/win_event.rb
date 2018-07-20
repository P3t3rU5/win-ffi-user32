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
    # void NotifyWinEvent( _In_  DWORD event, _In_  HWND hwnd, _In_  LONG idObject, _In_  LONG idChild )
    def self.NotifyWinEvent(event, hwnd, idObject, idChild) end
    attach_function 'NotifyWinEvent', [:dword, :hwnd, SystemObjectId, :long], :void

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setwineventhook
    # HWINEVENTHOOK SetWinEventHook(
    #   _In_  UINT eventMin,
    #   _In_  UINT eventMax,
    #   _In_  HMODULE hmodWinEventProc,
    #   _In_  WINEVENTPROC lpfnWinEventProc,
    #   _In_  DWORD idProcess,
    #   _In_  DWORD idThread,
    #   _In_  UINT dwflags )
    def self.SetWinEventHook(eventMin, eventMax, hmodWinEventProc, lpfnWinEventProc, idProcess, idThread, dwflags)
    end
    attach_function 'SetWinEventHook', [:uint, :uint, :pointer, WinEventProc, :dword, :dword, SetWinEventHookFlag], :pointer


    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-unhookwinevent
    # BOOL UnhookWinEvent( _In_  HWINEVENTHOOK hWinEventHook )
    def self.UnhookWinEvent(hWinEventHook) end
    attach_function 'UnhookWinEvent', [:hwineventhook], :bool

    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-iswineventhookinstalled
      # Active Accessibility
      # BOOL IsWinEventHookInstalled( _In_  DWORD event )
      def self.IsWinEventHookInstalled(event) end
      attach_function 'IsWinEventHookInstalled', [:dword], :bool
    end
  end
end