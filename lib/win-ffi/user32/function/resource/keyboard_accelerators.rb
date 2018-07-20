require 'win-ffi/user32/struct/window/message/msg'

module WinFFI
  module User32
    typedef :pointer, :haccel

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyacceleratortablea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-copyacceleratortablew
    def self.CopyAcceleratorTable(hAccelSrc, lpAccelDst, cAccelEntries); end
    # int CopyAcceleratorTable(_In_ HACCEL hAccelSrc, _Out_opt_ LPACCEL lpAccelDst, _In_ int cAccelEntries )
    encoded_function 'CopyAcceleratorTable', [:haccel, :pointer, :int], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createacceleratortablea
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-createacceleratortablew
    # HACCEL CreateAcceleratorTable( _In_  LPACCEL lpaccl, _In_  int cEntries )
    def self.CreateAcceleratorTable(lpaccl, cEntries); end
    encoded_function 'CreateAcceleratorTable', [:pointer, :int], :haccel

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-destroyacceleratortable
    # BOOL DestroyAcceleratorTable( _In_  HACCEL hAccel )
    def self.DestroyAcceleratorTable(hAccel); end
    attach_function 'DestroyAcceleratorTable', [:haccel], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadacceleratorsa
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadacceleratorsw
    # HACCEL LoadAccelerators( _In_opt_  HINSTANCE hInstance, _In_      LPCTSTR lpTableName )
    def self.LoadAccelerators(hInstance, lpTableName); end
    encoded_function 'LoadAccelerators', [:hinstance, :string], :haccel

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-translateacceleratora
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-translateacceleratorw
    # int TranslateAccelerator( _In_  HWND hWnd, _In_  HACCEL hAccTable, _In_  LPMSG lpMsg )
    def self.TranslateAccelerator(hWnd, hAccTable, lpMsg); end
    encoded_function 'TranslateAccelerator', [:hwnd, :haccel, MSG.ptr], :int
  end
end