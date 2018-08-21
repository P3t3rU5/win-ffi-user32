module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../enum/interaction/pointer/input_type'

    require_relative '../../struct/interaction/pointer/info'
    require_relative '../../struct/interaction/pointer/pen_info'
    require_relative '../../struct/interaction/pointer/touch_info'
    require_relative '../../struct/interaction/pointer/device_info'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh447467
      # BOOL EnableMouseInPointer( _In_  BOOL fEnable )
      def self.EnableMouseInPointer(fEnable); end
      attach_function 'EnableMouseInPointer', [:bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454878
      # BOOL GetPointerCursorId ( _In_  UINT32 pointerId, _Out_ UINT32 *cursorId )
      def self.GetPointerCursorId(pointerId, cursorId); end
      attach_function 'GetPointerCursorId', [:uint32, :uint32], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437261
      # WINUSERAPI BOOL GetPointerDevice( _In_  HANDLE device, _Out_ POINTER_DEVICE_INFO *pointerDevice )
      def self.GetPointerDevice(device, pointerDevice); end
      attach_function 'GetPointerDevice', [:handle, POINTER_DEVICE_INFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802884
      # BOOL GetPointerDeviceCursors(
      #   _In_       HANDLE device,
      #   _Inout_    UINT32 *cursorCount,
      #   _Out_opt_  POINTER_DEVICE_CURSOR_INFO *deviceCursors )
      def self.GetPointerDeviceCursors(device, cursorCount, deviceCursors); end
      attach_function 'GetPointerDeviceCursors', [:handle, :uint, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802885
      # BOOL GetPointerDeviceProperties(
      #   _In_       HANDLE device,
      #   _Inout_    UINT32 *propertyCount,
      #   _Out_opt_  POINTER_DEVICE_PROPERTY *pointerProperties )
      def self.GetPointerDeviceProperties(device, propertyCount, pointerProperties); end
      attach_function 'GetPointerDeviceProperties', [:handle, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802886
      # BOOL GetPointerDeviceRects( _In_  HANDLE device, _Out_ RECT *pointerDeviceRect, _Out_ RECT *displayRect )
      def self.GetPointerDeviceRects(device, pointerDeviceRect, displayRect); end
      attach_function 'GetPointerDeviceRects', [:handle, RECT.ptr, RECT.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437265
      # WINUSERAPI BOOL GetPointerDevices( _Inout_   UINT32 deviceCount, _Out_opt_ POINTER_DEVICE_INFO *pointerDevices )
      def self.GetPointerDevices(deviceCount, pointerDevices); end
      attach_function 'GetPointerDevices', [:uint32, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454879
      # BOOL GetPointerFrameInfo(_In_ UINT32 pointerId, _Inout_ UINT32 *pointerCount, _Out_ POINTER_INFO *pointerInfo )
      def self.GetPointerFrameInfo(pointerId, pointerCount, pointerInfo); end
      attach_function 'GetPointerFrameInfo', [:uint32, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454880
      # BOOL GetPointerFrameInfoHistory(
      #   _In_     UINT32 pointerId,
      #   _Inout_  UINT32 *entriesCount,
      #   _Inout_  UINT32 *pointerCount,
      #   _Out_    POINTER_INFO * pointerInfo )
      def self.GetPointerFrameInfoHistory(pointerId, entriesCount, pointerCount, pointerInfo); end
      attach_function 'GetPointerFrameInfoHistory', [:uint32, :pointer, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454881
      # BOOL GetPointerFramePenInfo(
      #   _In_     UINT32 pointerId,
      #   _Inout_  UINT32 *pointerCount,
      #   _Out_    POINTER_PEN_INFO *penInfo )
      def self.GetPointerFramePenInfo(pointerId, pointerCount, penInfo); end
      attach_function 'GetPointerFramePenInfo', [:uint32, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454882
      # BOOL GetPointerFramePenInfoHistory(
      #   _In_       UINT32 pointerId,
      #   _Inout_    UINT32 *entriesCount,
      #   _Inout_    UINT32 *pointerCount,
      #   _Out_opt_  POINTER_PEN_INFO *penInfo )
      def self.GetPointerFramePenInfoHistory(pointerId, entriesCount, pointerCount, penInfo); end
      attach_function 'GetPointerFramePenInfoHistory', [:uint32, :pointer, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454883
      # BOOL GetPointerFrameTouchInfo(
      #   _In_     UINT32 pointerId,
      #   _Inout_  UINT32 *pointerCount,
      #   _Out_    POINTER_TOUCH_INFO *touchInfo )
      def self.GetPointerFrameTouchInfo(pointerId, pointerCount, touchInfo); end
      attach_function 'GetPointerFrameTouchInfo', [:uint32, :pointer, POINTER_TOUCH_INFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454884
      # BOOL GetPointerFrameTouchInfoHistory(
      #   _In_     UINT32 pointerId,
      #   _Inout_  UINT32 *entriesCount,
      #   _Inout_  UINT32 *pointerCount,
      #   _Out_    POINTER_TOUCH_INFO *touchInfo )
      def self.GetPointerFrameTouchInfoHistory(pointerId, entriesCount, pointerCount, touchInfo); end
      attach_function 'GetPointerFrameTouchInfoHistory', [:uint32, :pointer, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454885
      # BOOL GetPointerInfo( _In_   UINT32 pointerId, _Out_  POINTER_INFO *pointerInfo )
      def self.GetPointerInfo(pointerId, pointerInfo); end
      attach_function 'GetPointerInfo', [:uint32, POINTER_INFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454886
      # BOOL GetPointerInfoHistory(
      #   _In_       UINT32 pointerId,
      #   _Inout_    UINT32 *entriesCount,
      #   _Out_opt_  POINTER_INFO *pointerInfo )
      def self.GetPointerInfoHistory(pointerId, entriesCount, pointerInfo); end
      attach_function 'GetPointerInfoHistory', [:uint32, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn280576
      # BOOL GetPointerInputTransform(
      #   _In_   UINT32 pointerId,
      #   _In_   UINT32 historyCount,
      #   _Out_  UINT32 *inputTransform )
      def self.GetPointerInputTransform(pointerId, historyCount, inputTransform); end
      attach_function 'GetPointerInputTransform', [:uint, :uint, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454887
      # BOOL GetPointerPenInfo( _In_   UINT32 pointerId, _Out_  POINTER_PEN_INFO *penInfo )
      def self.GetPointerPenInfo(pointerId, penInfo); end
      attach_function 'GetPointerPenInfo', [:uint32, POINTER_PEN_INFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454889
      # BOOL GetPointerPenInfoHistory(
      #   _In_       UINT32 pointerId,
      #   _Inout_    UINT32 *entriesCount,
      #   _Out_opt_  POINTER_PEN_INFO  *penInfo )
      def self.GetPointerPenInfoHistory(pointerId, entriesCount, penInfo); end
      attach_function 'GetPointerPenInfoHistory', [:uint32, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454890
      # BOOL GetPointerTouchInfo( _In_  UINT32 pointerId, _Out_ POINTER_TOUCH_INFO *touchInfo )
      def self.GetPointerTouchInfo(pointerId, touchInfo); end
      attach_function 'GetPointerTouchInfo', [:uint32, POINTER_TOUCH_INFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454891
      # BOOL GetPointerTouchInfoHistory(
      #   _In_       UINT32 pointerId,
      #   _Inout_    UINT32 *entriesCount,
      #   _Out_opt_  POINTER_TOUCH_INFO *touchInfo )
      def self.GetPointerTouchInfoHistory(pointerId, entriesCount, touchInfo); end
      attach_function 'GetPointerTouchInfoHistory', [:uint32, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454892
      # BOOL GetPointerType ( _In_   UINT32 pointerId, _Out_  POINTER_INPUT_TYPE *pointerType )
      def self.GetPointerType(pointerId, pointerType); end
      attach_function 'GetPointerType', [:uint32, POINTER_INPUT_TYPE], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802887
      # BOOL GetRawPointerDeviceData(
      #   _In_   UINT32 pointerId,
      #   _In_   UINT32 historyCount,
      #   _In_   UINT32 propertiesCount,
      #   _In_   POINTER_DEVICE_PROPERTY *pProperties,
      #   _Out_  LONG *pValues )
      def self.GetRawPointerDeviceData(pointerId, historyCount, propertiesCount, pProperties, pValues); end
      attach_function 'GetRawPointerDeviceData', [:uint32, :uint32, :uint32, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969204
      # DWORD GetUnpredictedMessagePos(void)
      def self.GetUnpredictedMessagePos; end
      attach_function 'GetUnpredictedMessagePos', [], :dword

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh580752
      # BOOL IsMouseInPointerEnabled(void)
      def self.IsMouseInPointerEnabled; end
      attach_function 'IsMouseInPointerEnabled', [], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437257
      # WINUSERAPI BOOL RegisterPointerDeviceNotifications( _In_  HWND class, _In_  BOOL notifyRange )
      def self.RegisterPointerDeviceNotifications(window_class, notifyRange); end
      attach_function 'RegisterPointerDeviceNotifications', [:hwnd, :bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454912
      # BOOL SkipPointerFrameMessages( _In_  UINT32 pointerId )
      def self.SkipPointerFrameMessages(pointerId); end
      attach_function 'SkipPointerFrameMessages', [:uint32], :bool

      #if WDK_NTDDI_VERSION >= NTDDI_WIN10_RS3
      # if WINDOWS_VERSION >= 10
        # BOOL EnableMouseInPointerForThread();
        # def self.EnableMouseInPointerForThread; end
        # attach_function 'EnableMouseInPointerForThread', [], :bool
      # end
    end
  end
end