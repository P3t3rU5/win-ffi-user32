module WinFFI
  module User32
    def self.PostAppMessage(idThread, wMsg, wParam, lParam)
      PostThreadMessage(idThread, wMsg, wParam, lParam)
    end
  end
end