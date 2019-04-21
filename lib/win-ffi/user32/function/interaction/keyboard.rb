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
    # @param [FFI::Pointer] hkl
    # @param [Integer] flags
    # @return [FFI::Pointer]
    def self.ActivateKeyboardLayout(hkl, flags); end
    attach_function 'ActivateKeyboardLayout', [:hkl, KeyboardLayoutFlag], :hkl

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646290
    # @param [true, false] fBlockIt
    # @return [true, false]
    def self.BlockInput(fBlockIt); end
    attach_function 'BlockInput', [:bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646291
    # @param [FFI::Pointer] hWnd
    # @param [true, false] bEnable
    # @return [true, false]
    def self.EnableWindow(hWnd, bEnable); end
    attach_function 'EnableWindow', [:hwnd, :bool], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646292
    # @return [FFI::Pointer]
    def self.GetActiveWindow; end
    attach_function 'GetActiveWindow', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646293
    # @param [Integer] vKey
    # @return [Integer]
    def self.GetAsyncKeyState(vKey); end
    attach_function 'GetAsyncKeyState', [VirtualKeyCode], :short

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646294
    # @return [FFI::Pointer]
    def self.GetFocus; end
    attach_function 'GetFocus', [], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646295
    # This function is provided only for compatibility with 16-bit versions of Windows.
    # @return [Integer]
    def self.GetKBCodePage; end
    attach_function 'GetKBCodePage', [], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646296
    # @param [Integer] idThread
    # @return [FFI::Pointer]
    def self.GetKeyboardLayout(idThread); end
    attach_function 'GetKeyboardLayout', [:dword], :hkl

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646297
    # @param [Integer] idThread
    # @param [FFI::Pointer] lpList
    # @return [Integer]
    def self.GetKeyboardLayoutList(idThread, lpList); end
    attach_function 'GetKeyboardLayoutList', [:int, :hkl], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646298
    # @param [String] pwszKLID
    # @return [true, false]
    def self.GetKeyboardLayoutName(pwszKLID); end
    encoded_function 'GetKeyboardLayoutName', [:string], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646299
    # @param [FFI::Pointer] lpKeyState
    # @return [true, false]
    def self.GetKeyboardState(lpKeyState); end
    attach_function 'GetKeyboardState', [:pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms724336
    # int GetKeyboardType( _In_  int nTypeFlag )
    def self.GetKeyboardType(nTypeFlag); end
    attach_function 'GetKeyboardType', [KeyboardTypeArgument], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646300
    # @param [Integer] lParam
    # @param [FFI::Pointer] lpString
    # @param [Integer] cchSize
    # @return [Integer]
    def self.GetKeyNameText(lParam, lpString, cchSize); end
    encoded_function 'GetKeyNameText', [:long, :pointer, :int], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646301
    # @param [Integer] nVirtKey
    # @return [Integer]
    def self.GetKeyState(nVirtKey); end
    attach_function 'GetKeyState', [VirtualKeyCode], :short

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646302
    # @param [FFI::Pointer] plii
    # @return [true, false]
    def self.GetLastInputInfo(plii); end
    attach_function 'GetLastInputInfo', [LASTINPUTINFO.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646303
    # @param [FFI::Pointer] hWnd
    # @return [true, false]
    def self.IsWindowEnabled(hWnd); end
    attach_function 'IsWindowEnabled', [:hwnd], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646304
    # Use SendInput instead
    # @param [Integer] bVk
    # @param [:byte] bScan
    # @param [Integer] dwFlags
    # @param [Integer] dwExtraInfo
    def self.keybd_event(bVk, bScan, dwFlags, dwExtraInfo); end
    attach_function 'keybd_event', [VirtualKeyCode, :byte, KeyboardEventFlag, :ulong_ptr], :void

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646305
    # @param [String] pwszKLID
    # @param [Integer] flags
    # @return [FFI::Pointer]
    def self.LoadKeyboardLayout(pwszKLID, flags); end
    encoded_function 'LoadKeyboardLayout', [:string, KeyboardLayoutFlag], :hkl

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646306
    # @param [Integer] uCode
    # @param [Integer] uMapType
    # @return [Integer]
    def self.MapVirtualKey(uCode, uMapType); end
    encoded_function 'MapVirtualKey', [VirtualKeyCode, MapVirtualKey], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646307
    # @param [Integer] uCode
    # @param [Integer] uMapType
    # @param [FFI::Pointer] dwhkl
    # @return [Integer]
    def self.MapVirtualKeyEx(uCode, uMapType, dwhkl); end
    encoded_function 'MapVirtualKeyEx', [VirtualKeyCode, MapVirtualKey, :hkl], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646308
    # @param [Integer] wOemChar
    # @return [Integer]
    def self.OemKeyScan(wOemChar); end
    attach_function 'OemKeyScan', [:word], :dword

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646310
    # @param [Integer] nInputs
    # @param [FFI::Pointer] pInputs
    # @param [Integer] cbSize
    # @return [Integer]
    def self.SendInput(nInputs, pInputs, cbSize); end
    attach_function 'SendInput', [:uint, :pointer, :int], :uint

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646311
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.SetActiveWindow(hWnd); end
    attach_function 'SetActiveWindow', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646312
    # @param [FFI::Pointer] hWnd
    # @return [FFI::Pointer]
    def self.SetFocus(hWnd); end
    attach_function 'SetFocus', [:hwnd], :hwnd

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646314
    # @param [FFI::Pointer] lpKeyState
    # @return [true, false]
    def self.SetKeyboardState(lpKeyState); end
    attach_function 'SetKeyboardState', [:pointer], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646316
    # @param [Integer] uVirtKey
    # @param [Integer] uScanCode
    # @param [FFI::Pointer] lpKeyState
    # @param [FFI::Pointer] lpChar
    # @param [Integer] uFlags
    # @return [Integer]
    def self.ToAscii(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags); end
    attach_function 'ToAscii', [VirtualKeyCode, :uint, :pointer, :pointer, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646318
    # @param [Integer] uVirtKey
    # @param [Integer] uScanCode
    # @param [FFI::Pointer] lpKeyState
    # @param [FFI::Pointer] lpChar
    # @param [Integer] uFlags
    # @param [FFI::Pointer] dwhkl
    # @return [Integer]
    def self.ToAsciiEx(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags, dwhkl); end
    attach_function 'ToAsciiEx', [VirtualKeyCode, :uint, :pointer, :pointer, :uint, :hkl], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646320
    # @param [Integer] wVirtKey
    # @param [Integer] wScanCode
    # @param [FFI::Pointer] lpKeyState
    # @param [FFI::Pointer] pwszBuff
    # @param [Integer] cchBuff
    # @param [Integer] wFlags
    # @return [Integer]
    def self.ToUnicode(wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags); end
    attach_function 'ToUnicode', [VirtualKeyCode, :uint, :pointer, :pointer , :int, :uint], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646322
    # @param [Integer] wVirtKey
    # @param [Integer] wScanCode
    # @param [FFI::Pointer] lpKeyState
    # @param [FFI::Pointer] pwszBuff
    # @param [Integer] cchBuff
    # @param [Integer] wFlags
    # @param [FFI::Pointer] dwhkl
    # @return [Integer]
    def self.ToUnicodeEx(wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags, dwhkl); end
    attach_function 'ToUnicodeEx', [VirtualKeyCode, :uint, :pointer, :pointer , :int, :uint, :hkl], :int

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646324
    # @param [FFI::Pointer] hkl
    # @return [true, false]
    def self.UnloadKeyboardLayout(hkl); end
    attach_function 'UnloadKeyboardLayout', [:hkl], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646327
    # @param [FFI::Pointer] hWnd
    # @param [Integer] id
    # @return [true, false]
    def self.UnregisterHotKey(hWnd, id); end
    attach_function 'UnregisterHotKey', [:hwnd, :int], :bool

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646329
    # @param [char] ch
    # @return [Integer]
    def self.VkKeyScan(ch); end
    encoded_function 'VkKeyScan', [:char], :short

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646332
    # @param [char] ch
    # @param [FFI::Pointer] dwhkl
    # @return [Integer]
    def self.VkKeyScanEx(ch, dwhkl); end
    encoded_function 'VkKeyScanEx', [:char, :hkl], :short

    if WINDOWS_VERSION >= :vista
      require_relative '../../enum/interaction/keyboard/modifier'

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646309
      # @param [FFI::Pointer] hWnd
      # @param [Integer] id
      # @param [Integer] fsModifiers
      # @param [Integer] vk
      # @return [true, false]
      def self.RegisterHotKey(hWnd, id, fsModifiers, vk); end
      attach_function 'RegisterHotKey', [:hwnd, :int, KeyboardModifier, VirtualKeyCode], :bool
    end
  end
end