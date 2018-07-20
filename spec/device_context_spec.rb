require 'rspec'
require_relative 'spec_helper'

require 'win-ffi/user32/function/device_context'
require 'win-ffi/user32/enum/device_context/change_display_settings_return'

include WinFFI
include WinFFI::User32
include WinFFI::Kernel32

RSpec.describe 'DeviceContext' do
  describe '::ChangeDisplaySettings' do
    it 'changes the settings of the default display device to the specified graphics mode' do
      expect(ChangeDisplaySettingsReturn[User32.ChangeDisplaySettings(nil, 0)]).to be_a Symbol
    end
  end

  describe '::ChangeDisplaySettingsEx' do
    it 'changes the settings of the specified display device to the specified graphics mod' do
      User32.ChangeDisplaySettingsEx(nil, )
    end
  end
end