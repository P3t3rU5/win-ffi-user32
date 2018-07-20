require_relative '../../enum/window/function/system_parameters_info_action'
require_relative '../../enum/window/function/system_metrics_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemmetricsfordpi
    # int WINAPI GetSystemMetrics( _In_  int nIndex )
    def self.GetSystemMetrics(nIndex) end
    attach_function 'GetSystemMetrics', [SystemMetricsFlag], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-systemparametersinfofordpi
    # BOOL WINAPI SystemParametersInfo(_In_ UINT uiAction, _In_ UINT uiParam, _Inout_ PVOID pvParam, _In_ UINT fWinIni )
    def self.SystemParametersInfo(uiAction, uiParam, pvParam, fWinIni) end
    encoded_function 'SystemParametersInfo', [SystemParametersInfoAction, :uint, :pointer, :uint], :bool
  end
end