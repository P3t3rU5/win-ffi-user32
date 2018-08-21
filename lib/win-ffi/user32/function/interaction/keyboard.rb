require_relative '../../enum/interaction/keyboard/layout_flag'
require_relative '../../enum/interaction/keyboard/virtual_key_code'
require_relative '../../enum/interaction/keyboard/map_virtual_key'
require_relative '../../enum/interaction/keyboard/event_flag'
require_relative '../../enum/interaction/keyboard/type_argument'
require_relative '../../enum/interaction/keyboard/type'

require_relative '../../struct/interaction/keyboard/last_input_info'
require_relative '../../struct/interaction/input'

module WinFFI
  module User32

    typedef :pointer, :hkl

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646289
    # HKL ActivateKeyboardLayout( _In_  HKL hkl, _In_  UINT Flags )
    def self.ActivateKeyboardLayout(hkl, flags); end
    attach_function 'ActivateKeyboardLayout', [:hkl, KeyboardLayoutFlag], :hkl

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646290
    # BOOL BlockInput( _In_  BOOL fBlockIt )
    def self.BlockInput(fBlockIt); end
    attach_function 'BlockInput', [:bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646291
    # BOOL EnableWindow(__in HWND hWnd, __in BOOL bEnable)
    def self.EnableWindow(hWnd, bEnable); end
    attach_function 'EnableWindow', [:hwnd, :bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646292
    # HWND GetActiveWindow(void);
    def self.GetActiveWindow; end
    attach_function 'GetActiveWindow', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646293
    # SHORT GetAsyncKeyState(_In_  int vKey)
    def self.GetAsyncKeyState(vKey); end
    attach_function 'GetAsyncKeyState', [VirtualKeyCode], :short

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646294
    # HWND GetFocus(void)
    def self.GetFocus; end
    attach_function 'GetFocus', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646295
    # This function is provided only for compatibility with 16-bit versions of Windows.
    # UINT GetKBCodePage(void)
    def self.GetKBCodePage; end
    attach_function 'GetKBCodePage', [], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646296
    # HKL GetKeyboardLayout(_In_  DWORD idThread)
    def self.GetKeyboardLayout(idThread); end
    attach_function 'GetKeyboardLayout', [:dword], :hkl

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646297
    # int GetKeyboardLayoutList(_In_   int nBuff, _Out_  HKL *lpList )
    def self.GetKeyboardLayoutList(idThread); end
    attach_function 'GetKeyboardLayoutList', [:int, :hkl], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646298
    # BOOL GetKeyboardLayoutName( _Out_  LPTSTR pwszKLID )
    def self.GetKeyboardLayoutName(pwszKLID); end
    encoded_function 'GetKeyboardLayoutName', [:pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646299
    # BOOL GetKeyboardState( _Out_  PBYTE lpKeyState )
    def self.GetKeyboardState(lpKeyState); end
    attach_function 'GetKeyboardState', [:pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724336
    # int GetKeyboardType( _In_  int nTypeFlag )
    def self.GetKeyboardType(nTypeFlag); end
    attach_function 'GetKeyboardType', [KeyboardTypeArgument], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646300
    # int GetKeyNameText(_In_   LONG lParam, _Out_  LPTSTR lpString, _In_   int cchSize )
    def self.GetKeyNameText(lParam, lpString, cchSize); end
    encoded_function 'GetKeyNameText', [:long, :pointer, :int], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646301
    # SHORT GetKeyState(_In_  int nVirtKey)
    def self.GetKeyState(nVirtKey); end
    attach_function 'GetKeyState', [VirtualKeyCode], :short

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646302
    # BOOL GetLastInputInfo( _Out_  PLASTINPUTINFO plii )
    def self.GetLastInputInfo(plii); end
    attach_function 'GetLastInputInfo', [LASTINPUTINFO.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646303
    # BOOL IsWindowEnabled( _In_  HWND hWnd )
    def self.IsWindowEnabled(hWnd); end
    attach_function 'IsWindowEnabled', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646304
    # Use SendInput instead
    # VOID keybd_event( _In_ BYTE bVk, _In_ BYTE bScan, _In_ DWORD dwFlags, _In_ ULONG_PTR dwExtraInfo )
    def self.keybd_event(bVk, bScan, dwFlags, dwExtraInfo); end
    attach_function 'keybd_event', [VirtualKeyCode, :byte, KeyboardEventFlag, :ulong_ptr], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646305
    # HKL LoadKeyboardLayout(_In_ LPCTSTR pwszKLID, _In_ UINT Flags )
    def self.LoadKeyboardLayout(pwszKLID, flags); end
    encoded_function 'LoadKeyboardLayout', [:string, KeyboardLayoutFlag], :hkl

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646306
    # UINT MapVirtualKey( _In_ UINT uCode, _In_ UINT uMapType )
    def self.MapVirtualKey(uCode, uMapType); end
    encoded_function 'MapVirtualKey', [VirtualKeyCode, MapVirtualKey], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646307
    # UINT MapVirtualKeyEx( _In_ UINT uCode, _In_ UINT uMapType, _Inout_opt_ HKL dwhkl )
    def self.MapVirtualKeyEx(uCode, uMapType, dwhkl); end
    encoded_function 'MapVirtualKeyEx', [VirtualKeyCode, MapVirtualKey, :hkl], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646308
    # DWORD OemKeyScan( _In_  WORD wOemChar )
    def self.OemKeyScan(wOemChar); end
    attach_function 'OemKeyScan', [:word], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646310
    # UINT SendInput( _In_ UINT nInputs, _In_ LPINPUT pInputs, _In_ int cbSize )
    def self.SendInput(nInputs, pInputs, cbSize); end
    attach_function 'SendInput', [:uint, :pointer, :int], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646311
    # HWND SetActiveWindow( _In_  HWND hWnd )
    def self.SetActiveWindow(hWnd); end
    attach_function 'SetActiveWindow', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646312
    # HWND SetFocus( _In_opt_  HWND hWnd )
    def self.SetFocus(hWnd); end
    attach_function 'SetFocus', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646314
    # BOOL SetKeyboardState( _In_  LPBYTE lpKeyState )
    def self.SetKeyboardState(lpKeyState); end
    attach_function 'SetKeyboardState', [:pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646316
    # int ToAscii(
    #   _In_      UINT uVirtKey,
    #   _In_      UINT uScanCode,
    #   _In_opt_  const BYTE *lpKeyState,
    #   _Out_     LPWORD lpChar,
    #   _In_      UINT uFlags )
    def self.ToAscii(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags); end
    attach_function 'ToAscii', [VirtualKeyCode, :uint, :pointer, :pointer, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646318
    # int ToAsciiEx(
    #   _In_      UINT uVirtKey,
    #   _In_      UINT uScanCode,
    #   _In_opt_  const BYTE *lpKeyState,
    #   _Out_     LPWORD lpChar,
    #   _In_      UINT uFlags,
    #   _In_opt_  HKL dwhkl )
    def self.ToAsciiEx(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags, dwhkl); end
    attach_function 'ToAsciiEx', [VirtualKeyCode, :uint, :pointer, :pointer, :uint, :hkl], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646320
    # int ToUnicode(
    #   _In_      UINT wVirtKey,
    #   _In_      UINT wScanCode,
    #   _In_opt_  const BYTE *lpKeyState,
    #   _Out_     LPWSTR pwszBuff,
    #   _In_      int cchBuff,
    #   _In_      UINT wFlags )
    def self.ToUnicode(wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags); end
    attach_function 'ToUnicode', [VirtualKeyCode, :uint, :pointer, :pointer , :int, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646322
    # int ToUnicodeEx(
    #   _In_      UINT wVirtKey,
    #   _In_      UINT wScanCode,
    #   _In_      const BYTE *lpKeyState,
    #   _Out_     LPWSTR pwszBuff,
    #   _In_      int cchBuff,
    #   _In_      UINT wFlags,
    #   _In_opt_  HKL dwhkl )
    def self.ToUnicodeEx(wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags, dwhkl); end
    attach_function 'ToUnicodeEx', [VirtualKeyCode, :uint, :pointer, :pointer , :int, :uint, :hkl], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646324
    # BOOL UnloadKeyboardLayout( _In_  HKL hkl )
    def self.UnloadKeyboardLayout(hkl); end
    attach_function 'UnloadKeyboardLayout', [:hkl], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646327
    # BOOL UnregisterHotKey( __in_opt HWND hWnd, __in int  id)
    def self.UnregisterHotKey(hWnd, id); end
    attach_function 'UnregisterHotKey', [:hwnd, :int], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646329
    # SHORT VkKeyScan( _In_  TCHAR ch )
    def self.VkKeyScan(ch); end
    encoded_function 'VkKeyScan', [:char], :short

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646332
    # SHORT VkKeyScanEx( _In_ TCHAR ch, _In_ HKL dwhkl )
    def self.VkKeyScanEx(ch, dwhkl); end
    encoded_function 'VkKeyScanEx', [:char, :hkl], :short

    if WINDOWS_VERSION >= :vista
      require_relative '../../enum/interaction/keyboard/modifier'

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646309
      # BOOL RegisterHotKey(__in_opt HWND hWnd, __in int id, __in UINT fsModifiers, __in UINT vk)
      def self.RegisterHotKey(hWnd, id, fsModifiers, vk); end
      attach_function 'RegisterHotKey', [:hwnd, :int, KeyboardModifier, VirtualKeyCode], :bool
    end
  end
end