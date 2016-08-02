require 'win-ffi/user32'

module WinFFI
  if WindowsVersion >= 8
    module User32
      # WM_POINTERACTIVATE return codes
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh454921(v=vs.85).aspx
      PointerActivateReturn = enum :pointer_activate_return, [
          :ACTIVATE,   1,
          :NOACTIVATE, 3
      ]

      define_prefix(:PA, PointerActivateReturn)
    end
  end
end
