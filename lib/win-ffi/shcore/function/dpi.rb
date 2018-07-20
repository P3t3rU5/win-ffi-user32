module WinFFI
  if WINDOWS_VERSION >= 8
    require_relative '../enum/monitor_dpi_type'
    require_relative '../enum/display_device_type'
    require_relative '../enum/process_dpi_awareness'
    require_relative '../enum/shell_ui_component'

    module Shcore

      typedef :hresult, :stdapi


      # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-setprocessdpiawareness
      def self.SetProcessDpiAwareness(value) end
      # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-getprocessdpiawareness
      def self.GetProcessDpiAwareness(hprocess, value) end
      # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-registerscalechangenotifications
      def self.RegisterScaleChangeNotifications(displayDevice, uMsgNotify, pdwCookie) end
      # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-revokescalechangenotifications
      def self.RevokeScaleChangeNotifications(displayDevice, dwCookie) end
      # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-getscalefactorfordevice
      def self.GetScaleFactorForDevice(deviceType) end

      # STDAPI SetProcessDpiAwareness(_In_ PROCESS_DPI_AWARENESS value)
      attach_function 'SetProcessDpiAwareness', [ProcessDpiAwareness], :stdapi

      # STDAPI GetProcessDpiAwareness(_In_opt_ HANDLE hprocess, _Out_ PROCESS_DPI_AWARENESS *value)
      attach_function 'GetProcessDpiAwareness', [:handle, ProcessDpiAwareness], :stdapi

      # STDAPI RegisterScaleChangeNotifications(
      #   _In_ DISPLAY_DEVICE_TYPE displayDevice,
      #   _In_ HWND hwndNotify, _In_ UINT uMsgNotify,
      #   _Out_ DWORD *pdwCookie)
      attach_function 'RegisterScaleChangeNotifications', [DisplayDeviceType, :hwnd, :pointer], :stdapi

      # STDAPI RevokeScaleChangeNotifications(_In_ DISPLAY_DEVICE_TYPE displayDevice, _In_ DWORD dwCookie)
      attach_function 'RevokeScaleChangeNotifications', [DisplayDeviceType, :dword], :stdapi

      # STDAPI_(DEVICE_SCALE_FACTOR) GetScaleFactorForDevice(_In_ DISPLAY_DEVICE_TYPE deviceType)
      attach_function 'GetScaleFactorForDevice', [DisplayDeviceType], :dword

      if WINDOWS_VERSION >= 8.1
        # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-getdpiformonitor
        def self.GetDpiForMonitor(hmonitor, dpiType, dpiX, dpiY) end
        # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-getscalefactorformonitor
        def self.GetScaleFactorForMonitor(hMon, pScale) end
        # https://docs.microsoft.com/en-us/windows/desktop/api/shellscalingapi/nf-shellscalingapi-registerscalechangeevent
        def self.RegisterScaleChangeEvent(hEvent, pdwCookie) end

        # HRESULT WINAPI GetDpiForMonitor(
        #   _In_  HMONITOR         hmonitor,
        #   _In_  MONITOR_DPI_TYPE dpiType,
        #   _Out_ UINT             *dpiX,
        #   _Out_ UINT             *dpiY)
        attach_function 'GetDpiForMonitor', [:hmonitor, MonitorDpiType, :pointer, :pointer], :hresult

        # STDAPI GetScaleFactorForMonitor(_In_ HMONITOR hMon, _Out_ DEVICE_SCALE_FACTOR *pScale)
        attach_function 'GetScaleFactorForMonitor', [:hmonitor, :pointer], :stdapi

        # STDAPI RegisterScaleChangeEvent(_In_ HANDLE hEvent, _Out_ DWORD_PTR *pdwCookie)
        attach_function 'RegisterScaleChangeEvent', [:handle, :pointer], :stdapi

        # STDAPI UnregisterScaleChangeEvent(_In_ DWORD_PTR dwCookie)

        if WINDOWS_VERSION >= 10
          # https://msdn.microsoft.com/en-us/library/windows/desktop/dn706120(v=vs.85).aspx
          # UINT WINAPI GetDpiForShellUiComponent(_In_ SHELL_UI_COMPONENT component)
          # attach_function 'GetDpiForShellUiComponent', [ShellUiComponent], :uint
        end
      end
    end
  end
end