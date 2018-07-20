module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      require_relative '../../struct/interaction/gesture/config'
      require_relative '../../struct/interaction/gesture/info'

      typedef :pointer, :hgestureinfo

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-closegestureinfohandle
      # BOOL CloseGestureInfoHandle( HGESTUREINFO hGestureInfo )
      def self.CloseGestureInfoHandle(hGestureInfo); end
      attach_function 'CloseGestureInfoHandle', [:pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getgestureconfig
      # BOOL GetGestureConfig(
      #   _In_     HWND hwnd,
      #   _In_     DWORD dwReserved,
      #   _In_     DWORD dwFlags,
      #   _In_     PUINT pcIDs,
      #   _Inout_  PGESTURECONFIG pGestureConfig,
      #   _In_     UINT cbSize )
      def self.GetGestureConfig(hwnd, dwReserved, dwFlags, pcIDs, pGestureConfig, cbSize); end
      attach_function 'GetGestureConfig', [:hwnd, :dword, :dword, :uint, GESTURECONFIG.ptr, :uint], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getgestureextraargs
      # BOOL GetGestureExtraArgs( _In_   HGESTUREINFO hGestureInfo, _In_   UINT cbExtraArgs, _Out_  PBYTE pExtraArgs )
      def self.GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs); end
      attach_function 'GetGestureExtraArgs', [:pointer, :uint, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getgestureinfo
      # BOOL GetGestureInfo(_In_   HGESTUREINFO hGestureInfo,  _Out_  PGESTUREINFO pGestureInfo )
      def self.GetGestureInfo(hGestureInfo, pGestureInfo); end
      attach_function 'GetGestureInfo', [GESTUREINFO.ptr, GESTUREINFO.ptr], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setgestureconfig
      # BOOL SetGestureConfig(
      #   _In_  HWND hwnd,
      #   _In_  DWORD dwReserved,
      #   _In_  UINT cIDs,
      #   _In_  PGESTURECONFIG pGestureConfig,
      #   _In_  UINT cbSize )
      def self.SetGestureConfig(hwnd, dwReserved, cIDs, pGestureConfig, cbSize); end
      attach_function 'SetGestureConfig', [:hwnd, :dword, :uint, GESTURECONFIG.ptr, :uint], :bool
    end
  end
end
