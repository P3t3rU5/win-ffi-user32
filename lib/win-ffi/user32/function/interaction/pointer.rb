module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../../enum/interaction/pointer/input_type'

    require_relative '../../struct/interaction/pointer/info'
    require_relative '../../struct/interaction/pointer/pen_info'
    require_relative '../../struct/interaction/pointer/touch_info'
    require_relative '../../struct/interaction/pointer/device_info'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh447467
      # @param [true, false] fEnable
      # @return [true, false]
      def self.EnableMouseInPointer(fEnable) end
      attach_function 'EnableMouseInPointer', [:bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454878
      # @param [Integer] pointerId
      # @param [Integer] cursorId
      # @return [true, false]
      def self.GetPointerCursorId(pointerId, cursorId) end
      attach_function 'GetPointerCursorId', [:uint32, :uint32], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437261
      # @param [FFI::Pointer] device
      # @param [FFI::Pointer] pointerDevice
      # @return [true, false]
      def self.GetPointerDevice(device, pointerDevice) end
      attach_function 'GetPointerDevice', [:handle, POINTER_DEVICE_INFO.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802884
      # @param [FFI::Pointer] device
      # @param [Integer] cursorCount
      # @param [FFI::Pointer] deviceCursors
      # @return [true, false]
      def self.GetPointerDeviceCursors(device, cursorCount, deviceCursors) end
      attach_function 'GetPointerDeviceCursors', [:handle, :uint, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802885
      # @param [FFI::Pointer] device
      # @param [FFI::Pointer] propertyCount
      # @param [FFI::Pointer] pointerProperties
      # @return [true, false]
      def self.GetPointerDeviceProperties(device, propertyCount, pointerProperties) end
      attach_function 'GetPointerDeviceProperties', [:handle, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802886
      # @param [FFI::Pointer] device
      # @param [FFI::Pointer] pointerDeviceRect
      # @param [FFI::Pointer] displayRect
      # @return [true, false]
      def self.GetPointerDeviceRects(device, pointerDeviceRect, displayRect) end
      attach_function 'GetPointerDeviceRects', [:handle, RECT.ptr, RECT.ptr], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437265
      # @param [Integer] deviceCount
      # @param [FFI::Pointer] pointerDevices
      # @return [true, false]
      def self.GetPointerDevices(deviceCount, pointerDevices) end
      attach_function 'GetPointerDevices', [:uint32, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454879
      # @param [Integer] pointerId
      # @param [FFI::Pointer] pointerCount
      # @param [FFI::Pointer] pointerInfo
      # @return [true, false]
      def self.GetPointerFrameInfo(pointerId, pointerCount, pointerInfo) end
      attach_function 'GetPointerFrameInfo', [:uint32, :pointer, POINTER_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454880
      # @param [Integer] pointerId
      # @param [FFI::Pointer] entriesCount
      # @param [FFI::Pointer] pointerCount
      # @param [FFI::Pointer] pointerInfo
      # @return [true, false]
      def self.GetPointerFrameInfoHistory(pointerId, entriesCount, pointerCount, pointerInfo) end
      attach_function 'GetPointerFrameInfoHistory', [:uint32, :pointer, :pointer, POINTER_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454881
      # @param [Integer] pointerId
      # @param [FFI::Pointer] pointerCount
      # @param [FFI::Pointer] penInfo
      # @return [true, false]
      def self.GetPointerFramePenInfo(pointerId, pointerCount, penInfo) end
      attach_function 'GetPointerFramePenInfo', [:uint32, :pointer, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454882
      # @param [Integer] pointerId
      # @param [FFI::Pointer] entriesCount
      # @param [FFI::Pointer] pointerCount
      # @param [FFI::Pointer] penInfo
      # @return [true, false]
      def self.GetPointerFramePenInfoHistory(pointerId, entriesCount, pointerCount, penInfo) end
      attach_function 'GetPointerFramePenInfoHistory', [:uint32, :pointer, :pointer, POINTER_PEN_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454883
      # @param [Integer] pointerId
      # @param [FFI::Pointer] pointerCount
      # @param [FFI::Pointer] touchInfo
      # @return [true, false]
      def self.GetPointerFrameTouchInfo(pointerId, pointerCount, touchInfo) end
      attach_function 'GetPointerFrameTouchInfo', [:uint32, :pointer, POINTER_TOUCH_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454884
      # @param [Integer] pointerId
      # @param [FFI::Pointer] entriesCount
      # @param [FFI::Pointer] pointerCount
      # @param [FFI::Pointer] touchInfo
      # @return [true, false]
      def self.GetPointerFrameTouchInfoHistory(pointerId, entriesCount, pointerCount, touchInfo) end
      attach_function 'GetPointerFrameTouchInfoHistory', [:uint32, :pointer, :pointer, POINTER_TOUCH_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454885
      # @param [Integer] pointerId
      # @param [FFI::Pointer] pointerInfo
      # @return [true, false]
      def self.GetPointerInfo(pointerId, pointerInfo) end
      attach_function 'GetPointerInfo', [:uint32, POINTER_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454886
      # @param [Integer] pointerId
      # @param [FFI::Pointer] entriesCount
      # @param [FFI::Pointer] pointerInfo
      # @return [true, false]
      def self.GetPointerInfoHistory(pointerId, entriesCount, pointerInfo) end
      attach_function 'GetPointerInfoHistory', [:uint32, :pointer, POINTER_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn280576
      # @param [Integer] pointerId
      # @param [Integer] historyCount
      # @param [FFI::Pointer] inputTransform
      # @return [true, false]
      def self.GetPointerInputTransform(pointerId, historyCount, inputTransform) end
      attach_function 'GetPointerInputTransform', [:uint, :uint, :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454887
      # @param [Integer] pointerId
      # @param [FFI::Pointer] penInfo
      # @return [true, false]
      def self.GetPointerPenInfo(pointerId, penInfo) end
      attach_function 'GetPointerPenInfo', [:uint32, POINTER_PEN_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454889
      # @param [Integer] pointerId
      # @param [FFI::Pointer] entriesCount
      # @param [FFI::Pointer] penInfo
      # @return [true, false]
      def self.GetPointerPenInfoHistory(pointerId, entriesCount, penInfo) end
      attach_function 'GetPointerPenInfoHistory', [:uint32, :pointer, POINTER_PEN_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454890
      # @param [Integer] pointerId
      # @param [FFI::Pointer] touchInfo
      # @return [true, false]
      def self.GetPointerTouchInfo(pointerId, touchInfo) end
      attach_function 'GetPointerTouchInfo', [:uint32, POINTER_TOUCH_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454891
      # @param [Integer] pointerId
      # @param [FFI::Pointer] entriesCount
      # @param [FFI::Pointer] touchInfo
      # @return [true, false]
      def self.GetPointerTouchInfoHistory(pointerId, entriesCount, touchInfo) end
      attach_function 'GetPointerTouchInfoHistory', [:uint32, :pointer, POINTER_TOUCH_INFO.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454892
      # @param [Integer] pointerId
      # @param [FFI::Pointer] pointerType
      # @return [true, false]
      def self.GetPointerType(pointerId, pointerType) end
      attach_function 'GetPointerType', [:uint32, POINTER_INPUT_TYPE.ptr(:out)], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802887
      # @param [Integer] pointerId
      # @param [Integer] historyCount
      # @param [Integer] propertiesCount
      # @param [FFI::Pointer] pProperties
      # @param [FFI::Pointer] pValues
      # @return [true, false]
      def self.GetRawPointerDeviceData(pointerId, historyCount, propertiesCount, pProperties, pValues) end
      attach_function 'GetRawPointerDeviceData', [:uint32, :uint32, :uint32, POINTER_DEVICE_PROPERTY.ptr(:in), :pointer], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh969204
      # @return [Integer]
      def self.GetUnpredictedMessagePos; end
      attach_function 'GetUnpredictedMessagePos', [], :dword

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh580752
      # @return [true, false]
      def self.IsMouseInPointerEnabled; end
      attach_function 'IsMouseInPointerEnabled', [], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh437257
      # @param [FFI::Pointer] window_class
      # @param [true, false] notifyRange
      # @return [true, false]
      def self.RegisterPointerDeviceNotifications(window_class, notifyRange) end
      attach_function 'RegisterPointerDeviceNotifications', [:hwnd, :bool], :bool

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454912
      # @param [Integer] pointerId
      # @return [true, false]
      def self.SkipPointerFrameMessages(pointerId) end
      attach_function 'SkipPointerFrameMessages', [:uint32], :bool

      #if WDK_NTDDI_VERSION >= NTDDI_WIN10_RS3
      # if WINDOWS_VERSION >= 10
        # BOOL EnableMouseInPointerForThread();
        # @return [true, false]
        # def self.EnableMouseInPointerForThread; end
        # attach_function 'EnableMouseInPointerForThread', [], :bool
      # end
    end
  end
end