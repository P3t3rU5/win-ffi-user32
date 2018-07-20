require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/size'
require 'win-ffi/core/struct/rect'

require_relative '../../enum/window/function/update_layered_window_flag'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632609
    class UPDATELAYEREDWINDOWINFO < FFIAdditions::Struct
      def cbSize; end
      def cbSize=(v); end
      def hdcDst; end
      def hdcDst=(v); end
      def pptDst; end
      def pptDst=(v); end
      def psize; end
      def psize=(v); end
      def hdcSrc; end
      def hdcSrc=(v); end
      def pptSrc; end
      def pptSrc=(v); end
      def crKey; end
      def crKey=(v); end
      def pblend; end
      def pblend=(v); end
      def dwFlags; end
      def dwFlags=(v); end
      def prcDirty; end
      def prcDirty=(v); end

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