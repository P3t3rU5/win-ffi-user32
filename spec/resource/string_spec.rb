require_relative '../spec_helper'

require_relative '../../lib/win-ffi/user32/function/resource/string'

include WinFFI
include WinFFI::User32
include WinFFI::Kernel32

RSpec.describe 'String' do
  describe '::CharLower' do
    it 'Converts a character string or a single character to lowercase.' do
      # expect(User32.CharLower()).to be
      fail
    end
  end
end