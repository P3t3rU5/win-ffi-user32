require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      typedef :pointer, :hgestureinfo
    end
  end
end