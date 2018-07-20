require_relative '../../enum/window/return/appcommand_return'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646247
    # define GET_APPCOMMAND_LPARAM(lParam) ((short)(HIWORD(lParam) & ~FAPPCOMMAND_MASK))
    def self.GET_APPCOMMAND_LPARAM(lParam)
      HIWORD(lParam) & ~FAPPCOMMAND_MASK
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646248
    # define GET_DEVICE_LPARAM(lParam)     ((WORD)(HIWORD(lParam) & FAPPCOMMAND_MASK))
    def self.GET_DEVICE_LPARAM(lParam)
      HIWORD(lParam) & FAPPCOMMAND_MASK
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646249
    # define GET_FLAGS_LPARAM(lParam)      (LOWORD(lParam))
    def self.GET_FLAGS_LPARAM(lParam)
      LOWORD(lParam)
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646250
    # define GET_KEYSTATE_LPARAM(lParam)   GET_FLAGS_LPARAM(lParam)
    def self.GET_KEYSTATE_LPARAM(lParam)
      GET_FLAGS_LPARAM(lParam)
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646252
    # define GET_KEYSTATE_WPARAM(wParam) (LOWORD(wParam))
    def self.GET_KEYSTATE_WPARAM(wParam)
      LOWORD(wParam)
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646252
    # define GET_MOUSEORKEY_LPARAM         GET_DEVICE_LPARAM
    def self.GET_MOUSEORKEY_LPARAM
      GET_DEVICE_LPARAM
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646253
    # define GET_NCHITTEST_WPARAM(wParam)    ((short)LOWORD(wParam))
    def self.GET_NCHITTEST_WPARAM(wParam)
      LOWORD(wParam)
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646254
    # define GET_WHEEL_DELTA_WPARAM(wParam)  ((short)HIWORD(wParam))
    def self.GET_WHEEL_DELTA_WPARAM(wParam)
      HIWORD(wParam)
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms646255
    # define GET_XBUTTON_WPARAM(wParam)      (HIWORD(wParam))
    def self.GET_XBUTTON_WPARAM(wParam)
      HIWORD(wParam)
    end
  end
end