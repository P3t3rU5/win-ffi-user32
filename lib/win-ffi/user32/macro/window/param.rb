require 'win-ffi/core/macro/util'

module WinFFI
  module User32
    class << self
      # define GET_LPARAM(wp,lp) (lp)
      def GET_LPARAM(_, lp) lp end

      # define GET_WPARAM(wp,lp) (wp)
      def GET_WPARAM(wp, _) wp end

      # define GET_X_LPARAM(lp) ((int)(short)LOWORD(lp))
      def GET_X_LPARAM(lp) WinFFI.LOWORD(lp) end

      # define GET_Y_LPARAM(lp) ((int)(short)HIWORD(lp))
      def GET_Y_LPARAM(lp) WinFFI.HIWORD(lp) end

      # System Menu Command Values
      # define GET_SC_WPARAM(wParam) ((int)wParam & 0xFFF0)
      def GET_SC_WPARAM(wParam) wParam & 0xFFF0 end
    end
  end
end
