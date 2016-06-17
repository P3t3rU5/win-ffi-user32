module WinFFI
  module User32
    class << self
      #define GET_LPARAM(wp,lp) (lp)
      def GET_LPARAM(_, lp)
        lp
      end

      #define GET_WPARAM(wp,lp) (wp)
      def GET_WPARAM(wp, _)
        wp
      end

      #define GET_X_LPARAM(lp) ((int)(short)LOWORD(lp))
      def GET_X_LPARAM(lp)
        LOWORD(lp)
      end

      #define GET_Y_LPARAM(lp) ((int)(short)HIWORD(lp))
      def GET_Y_LPARAM(lp)
        HIWORD(lp)
      end
    end
  end
end