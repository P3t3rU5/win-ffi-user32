require 'win-ffi/core'

module WinFFI
  module Shcore
    extend LibBase

    ffi_lib 'shcore'
  end
end