require_relative '../enum/window/message/queue_status_flag'
require_relative '../enum/synchronization/msg_wait_for_multiple_objects_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-msgwaitformultipleobjects
    # DWORD WINAPI MsgWaitForMultipleObjects(
    #   _In_  DWORD nCount,
    #   _In_  const HANDLE *pHandles,
    #   _In_  BOOL bWaitAll,
    #   _In_  DWORD dwMilliseconds,
    #   _In_  DWORD dwWakeMask )
    def self.MsgWaitForMultipleObjects(nCount, pHandles, bWaitAll, dwMilliseconds, dwWakeMask) end
    attach_function 'MsgWaitForMultipleObjects',
                    [:dword, :pointer, :bool, :dword, QueueStatusFlag], :dword

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-msgwaitformultipleobjectsex
    # DWORD WINAPI MsgWaitForMultipleObjectsEx(
    #   _In_  DWORD nCount,
    #   _In_  const HANDLE *pHandles,
    #   _In_  DWORD dwMilliseconds,
    #   _In_  DWORD dwWakeMask,
    #   _In_  DWORD dwFlags )
    def self.MsgWaitForMultipleObjectsEx(nCount, pHandles, dwMilliseconds, dwWakeMask, dwFlags) end
    attach_function 'MsgWaitForMultipleObjectsEx',
                    [:dword, :pointer, :dword, QueueStatusFlag, MsgWaitForMultipleObjectsFlag], :dword
  end
end