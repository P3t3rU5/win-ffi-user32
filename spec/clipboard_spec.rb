require 'rspec'

require_relative 'spec_helper'

# require 'win-ffi/user32/function/window/window'
require_relative '../lib/win-ffi/user32/function/data_exchange/clipboard'

require 'win-ffi/kernel32/function/error'

include WinFFI
include WinFFI::User32


RSpec.describe 'Clipboard' do
  describe 'ChangeClipboardChain' do
    it 'Removes a specified window from the chain of clipboard viewers' do
      # hwnd = GetActiveWindow()
      #
      # expect(ChangeClipboardChain(hwnd, )).to be true

    end
  end

  describe '::CloseClipboard' do
    it 'Closes the clipboard' do
      expect(User32.CloseClipboard).to be true
      LOGGER.debug GetLastError
    end
  end
end