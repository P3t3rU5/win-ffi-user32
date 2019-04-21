require 'win-ffi/user32/struct/window/message/msg'

module WinFFI
  module User32
    typedef :pointer, :haccel

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyacceleratortablea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyacceleratortablew
    # @param [FFI::Pointer] hAccelSrc
    # @param [FFI::Pointer] lpAccelDst
    # @param [Integer] cAccelEntries
    # @return [Integer]
    def self.CopyAcceleratorTable(hAccelSrc, lpAccelDst, cAccelEntries); end
    encoded_function 'CopyAcceleratorTable', [:haccel, :pointer, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createacceleratortablea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createacceleratortablew
    # @param [FFI::Pointer] lpaccl
    # @param [Integer] cEntries
    # @return [FFI::Pointer]
    def self.CreateAcceleratorTable(lpaccl, cEntries); end
    encoded_function 'CreateAcceleratorTable', [:pointer, :int], :haccel

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroyacceleratortable
    # @param [FFI::Pointer] hAccel
    # @return [true, false]
    def self.DestroyAcceleratorTable(hAccel); end
    attach_function 'DestroyAcceleratorTable', [:haccel], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadacceleratorsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadacceleratorsw
    # @param [FFI::Pointer] hInstance
    # @param [String] lpTableName
    # @return [FFI::Pointer]
    def self.LoadAccelerators(hInstance, lpTableName); end
    encoded_function 'LoadAccelerators', [:hinstance, :string], :haccel

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-translateacceleratora
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-translateacceleratorw
    # @param [FFI::Pointer] hWnd
    # @param [FFI::Pointer] hAccTable
    # @param [FFI::Pointer] lpMsg
    # @return [Integer]
    def self.TranslateAccelerator(hWnd, hAccTable, lpMsg); end
    encoded_function 'TranslateAccelerator', [:hwnd, :haccel, MSG.ptr(:in)], :int
  end
end