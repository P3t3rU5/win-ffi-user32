require 'win-ffi/core/struct/rect'

require_relative 'pos'

module WinFFI
  module User32
    # WM_NCCALCSIZE parameter structure
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-nccalcsize_params
    class NCCALCSIZE_PARAMS < FFIAdditions::Struct
      attr_accessor :rgrc, :lppos

      layout rgrc:  [RECT, 3],
             lppos: WINDOWPOS
    end
  end
end