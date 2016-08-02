require 'win-ffi/user32/enum/window/function/show_window_flag'
require 'win-ffi/user32/enum/window/control/scrollbar'

module WinFFI
  module User32
    class << self
      #define ScrollBar_Enable(hwndCtl,flags) EnableScrollBar((hwndCtl),SB_CTL,(flags))
      def ScrollBar_Enable(hwndCtl, flags)
        EnableScrollBar(hwndCtl, SB_CTL, flags)
      end

      #define ScrollBar_GetPos(hwndCtl) GetScrollPos((hwndCtl),SB_CTL)
      def ScrollBar_GetPos(hwndCtl)
        GetScrollPos(hwndCtl, SB_CTL)
      end

      #define ScrollBar_GetRange(hwndCtl,lpposMin,lpposMax) GetScrollRange((hwndCtl),SB_CTL,(lpposMin),(lpposMax))
      def ScrollBar_GetRange(hwndCtl, lpposMin, lpposMax)
        GetScrollRange(hwndCtl, SB_CTL, lpposMin, lpposMax)
      end

      #define ScrollBar_SetPos(hwndCtl,pos,fRedraw) SetScrollPos((hwndCtl),SB_CTL,(pos),(fRedraw))
      def ScrollBar_SetPos(hwndCtl, pos, fRedraw)
        SetScrollPos(hwndCtl, SB_CTL, pos, fRedraw)
      end

      #define ScrollBar_SetRange(hwndCtl,posMin,posMax,fRedraw) SetScrollRange((hwndCtl),SB_CTL,(posMin),(posMax),(fRedraw))
      def ScrollBar_SetRange(hwndCtl, posMin, posMax, fRedraw)
        SetScrollRange(hwndCtl, SB_CTL, posMin, posMax, fRedraw)
      end

      #define ScrollBar_Show(hwndCtl,fShow) ShowWindow((hwndCtl),(fShow) ? SW_SHOWNORMAL : SW_HIDE)
      def ScrollBar_Show(hwndCtl, fShow)
        ShowWindow(hwndCtl, fShow ? :SHOWNORMAL : :HIDE)
      end
    end
  end
end