require 'win-ffi/core'
require 'win-ffi/core/lib_base'

module WinFFI
  module Msftedit
    extend LibBase

    ffi_lib "#{ENV['windir']}\\System32\\msftedit"
  end
end