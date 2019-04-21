require_relative '../../enum/window/function/system_parameters_info_action'
require_relative '../../enum/window/function/system_metrics_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getsystemmetricsfordpi
    # int WINAPI GetSystemMetrics( _In_  int nIndex )
    # @param [Integer] nIndex
    # @return [Integer]
    def self.GetSystemMetrics(nIndex) end
    attach_function 'GetSystemMetrics', [SystemMetricsFlag], :int

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-systemparametersinfofordpi
      # @param [Integer] uiAction
      # @param [Integer] uiParam
      # @param [FFI::Pointer] pvParam
      # @param [Integer] fWinIni
      # @return [true, false]
    def self.SystemParametersInfo(uiAction, uiParam, pvParam, fWinIni) end
    encoded_function 'SystemParametersInfo', [SystemParametersInfoAction, :uint, :pointer, :uint], :bool
  end
end