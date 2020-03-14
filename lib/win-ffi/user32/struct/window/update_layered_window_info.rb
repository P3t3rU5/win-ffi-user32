require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/size'
require 'win-ffi/core/struct/rect'

require_relative '../../enum/window/function/update_layered_window_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-updatelayeredwindowinfo
    class UPDATELAYEREDWINDOWINFO < FFIAdditions::Struct
      attr_accessor :cbSize,
                    :hdcDst,
                    :pptDst,
                    :psize,
                    :hdcSrc,
                    :pptSrc,
                    :crKey,
                    :pblend,
                    :dwFlags,
                    :prcDirty

      layout cbSize:   :dword,
             hdcDst:   :hdc,
             pptDst:   POINT.ptr,
             psize:    SIZE.ptr,
             hdcSrc:   :hdc,
             pptSrc:   POINT.ptr,
             crKey:    :dword,
             pblend:   :pointer,
             dwFlags:  UpdateLayeredWindowFlag,
             prcDirty: RECT.ptr

      def initialize
        super
        self.cbSize = self.size
      end

      private :cbSize, :cbSize=
    end
  end
end