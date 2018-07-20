module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      # WM_POINTERACTIVATE return codes
      # https://docs.microsoft.com/en-us/previous-versions/windows/desktop/inputmsg/wm-pointeractivate
      PointerActivateReturn = enum :pointer_activate_return, [:ACTIVATE, 1, :NOACTIVATE, 3]

      define_prefix(:PA, PointerActivateReturn)
    end
  end
end
