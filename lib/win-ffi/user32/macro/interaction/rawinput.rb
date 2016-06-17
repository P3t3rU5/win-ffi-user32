require 'win-ffi/user32'

module WinFFI
  module User32
    def self.EXMODE(mode)
      mode & RIDEV_EXMODEMASK
    end
  end
end
