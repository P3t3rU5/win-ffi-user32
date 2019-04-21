module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      require_relative '../../struct/interaction/gesture/config'
      require_relative '../../struct/interaction/gesture/info'

      typedef :pointer, :hgestureinfo

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-closegestureinfohandle
      # @param [FFI::Pointer] hGestureInfo
      # @return [true, false]
      def self.CloseGestureInfoHandle(hGestureInfo) end
      attach_function 'CloseGestureInfoHandle', [:pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getgestureconfig
      # @param [FFI::Pointer] hwnd
      # @param [Integer] dwReserved
      # @param [Integer] dwFlags
      # @param [Integer] pcIDs
      # @param [FFI::Pointer] pGestureConfig
      # @param [Integer] cbSize
      # @return [true, false]
      def self.GetGestureConfig(hwnd, dwReserved, dwFlags, pcIDs, pGestureConfig, cbSize); end
      attach_function 'GetGestureConfig', [:hwnd, :dword, :dword, :uint, GESTURECONFIG.ptr, :uint], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getgestureextraargs
      # @param [FFI::Pointer] hGestureInfo
      # @param [Integer] cbExtraArgs
      # @param [FFI::Pointer] pExtraArgs
      # @return [true, false]
      def self.GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs); end
      attach_function 'GetGestureExtraArgs', [:pointer, :uint, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getgestureinfo
      # @param [FFI::Pointer] hGestureInfo
      # @param [FFI::Pointer] pGestureInfo
      # @return [true, false]
      def self.GetGestureInfo(hGestureInfo, pGestureInfo); end
      attach_function 'GetGestureInfo', [GESTUREINFO.ptr, GESTUREINFO.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setgestureconfig
      # @param [FFI::Pointer] hwnd
      # @param [Integer] dwReserved
      # @param [Integer] cIDs
      # @param [FFI::Pointer] pGestureConfig
      # @param [Integer] cbSize
      # @return [true, false]
      def self.SetGestureConfig(hwnd, dwReserved, cIDs, pGestureConfig, cbSize); end
      attach_function 'SetGestureConfig', [:hwnd, :dword, :uint, GESTURECONFIG.ptr, :uint], :bool
    end
  end
end
