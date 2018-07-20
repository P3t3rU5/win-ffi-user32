module WinFFI
  if WINDOWS_VERSION >= :xp
    require 'win-ffi/core/struct/luid'

    require_relative '../../../function/desktop/desktop'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644957
      class BSMINFO < FFIAdditions::Struct
        def cItems; end
        def cItems=(v); end
        def hdesk; end
        def hdesk=(v); end
        def hwnd; end
        def hwnd=(v); end
        def luid; end
        def luid=(v); end

        layout cItems: :int,
               hdesk:  :hdesk,
               hwnd:   :hwnd,
               luid:   LUID
      end
    end
  end
end