require_relative '../enum/window/message/queue_status_flag'
require_relative '../enum/synchronization/msg_wait_for_multiple_objects_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-msgwaitformultipleobjects
    # @param [Integer] nCount
    # @param [FFI::Pointer] pHandles
    # @param [true, false] bWaitAll
    # @param [Integer] dwMilliseconds
    # @param [Integer] dwWakeMask
    # @return [Integer]
    def self.MsgWaitForMultipleObjects(nCount, pHandles, bWaitAll, dwMilliseconds, dwWakeMask) end
    attach_function 'MsgWaitForMultipleObjects',
                    [:dword, :pointer, :bool, :dword, QueueStatusFlag], :dword

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-msgwaitformultipleobjectsex
      # @param [Integer] nCount
      # @param [FFI::Pointer] pHandles
      # @param [Integer] dwMilliseconds
      # @param [Integer] dwWakeMask
      # @param [Integer] dwFlags
      # @return [Integer]
    def self.MsgWaitForMultipleObjectsEx(nCount, pHandles, dwMilliseconds, dwWakeMask, dwFlags) end
    attach_function 'MsgWaitForMultipleObjectsEx',
                    [:dword, :pointer, :dword, QueueStatusFlag, MsgWaitForMultipleObjectsFlag], :dword
  end
end