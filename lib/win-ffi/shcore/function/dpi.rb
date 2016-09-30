require 'win-ffi/shcore'

require 'win-ffi/shcore/enum/monitor_dpi_type'
require 'win-ffi/user32/typedef/hmonitor'
require 'win-ffi/shcore/enum/display_device_type'
require 'win-ffi/shcore/enum/process_dpi_awareness'

module WinFFI
  module Shcore

    typedef :hresult, :stdapi

    if WindowsVersion >= 8

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn302122(v=vs.85).aspx
      # STDAPI SetProcessDpiAwareness(_In_ PROCESS_DPI_AWARENESS value)
      attach_function 'SetProcessDpiAwareness', [ProcessDpiAwareness], :stdapi

      # https://msdn.microsoft.com/en-us/library/windows/desktop/dn302113(v=vs.85).aspx
      # STDAPI GetProcessDpiAwareness(_In_opt_ HANDLE hprocess, _Out_ PROCESS_DPI_AWARENESS *value)
      attach_function 'GetProcessDpiAwareness', [:handle, ProcessDpiAwareness], :stdapi

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802769(v=vs.85).aspx
      # STDAPI RegisterScaleChangeNotifications(
      #   _In_ DISPLAY_DEVICE_TYPE displayDevice,
      #   _In_ HWND hwndNotify, _In_ UINT uMsgNotify,
      #   _Out_ DWORD *pdwCookie);
      attach_function 'RegisterScaleChangeNotifications', [DisplayDeviceType, :hwnd, :pointer], :stdapi

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802770(v=vs.85).aspx
      # STDAPI RevokeScaleChangeNotifications(_In_ DISPLAY_DEVICE_TYPE displayDevice, _In_ DWORD dwCookie);
      attach_function 'RevokeScaleChangeNotifications', [DisplayDeviceType, :dword], :stdapi

      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh802763(v=vs.85).aspx
      # STDAPI_(DEVICE_SCALE_FACTOR) GetScaleFactorForDevice(_In_ DISPLAY_DEVICE_TYPE deviceType);
      attach_function 'GetScaleFactorForDevice', [DisplayDeviceType], :dword

      if WindowsVersion >= 8.1
        # https://msdn.microsoft.com/en-us/library/windows/desktop/dn280510(v=vs.85).aspx
        # HRESULT WINAPI GetDpiForMonitor(
        #   _In_  HMONITOR         hmonitor,
        #   _In_  MONITOR_DPI_TYPE dpiType,
        #   _Out_ UINT             *dpiX,
        #   _Out_ UINT             *dpiY)
        attach_function 'GetDpiForMonitor', [:hmonitor, MonitorDpiType, :pointer, :pointer], :hresult

        # https://msdn.microsoft.com/en-us/library/windows/desktop/dn302060(v=vs.85).aspx
        # STDAPI GetScaleFactorForMonitor(_In_ HMONITOR hMon, _Out_ DEVICE_SCALE_FACTOR *pScale);
        attach_function 'GetScaleFactorForMonitor', [:hmonitor, :pointer], :stdapi

        # https://msdn.microsoft.com/en-us/library/windows/desktop/dn302215(v=vs.85).aspx
        # STDAPI RegisterScaleChangeEvent(_In_ HANDLE hEvent, _Out_ DWORD_PTR *pdwCookie);
        attach_function 'RegisterScaleChangeEvent', [:handle, :pointer], :stdapi

        # STDAPI UnregisterScaleChangeEvent(_In_ DWORD_PTR dwCookie);

        if WindowsVersion >= 10
          # https://msdn.microsoft.com/en-us/library/windows/desktop/dn706120(v=vs.85).aspx
          # UINT WINAPI GetDpiForShellUiComponent(_In_ SHELL_UI_COMPONENT component)
          attach_function 'GetDpiForShellUiComponent', [ShellUiComponent], :uint
        end

      end
    end


    # UINT WINAPI GetDpiForShellUiComponent(_In_ SHELL_UI_COMPONENT component)

  end
end