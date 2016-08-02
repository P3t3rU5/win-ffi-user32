require 'win-ffi/user32'
require 'win-ffi/user32/function/window/hook'


module WinFFI
  module User32

    # define DefHookProc(nCode, wParam, lParam, phhk)\
    # CallNextHookEx((HHOOK)*phhk, nCode, wParam, lParam)
    def DefHookProc(nCode, wParam, lParam, phhk)
      User32.CallNextHookEx((HHOOK)*phhk, nCode, wParam, lParam)
    end

  end
end