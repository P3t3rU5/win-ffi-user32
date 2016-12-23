require 'rspec'
require 'spec'
require_relative '../spec_helper'

require 'win-ffi/user32/function/desktop/window_station'

include WinFFI
include WinFFI::User32

RSpec.describe 'Window Station' do
  describe '::CloseWindowStation' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::CreateWindowStation' do
    it 'Creates a window station object, associates it with the calling process, and assigns it to the current session' do
      # security_atributes = SECURITY_ATTRIBUTES.new.tap do |sa|
      #   sa.
      # end
      # expect(CreateWindowStation("test", 0, :READ_CONTROL )).not_to eq FFI::MemoryPointer::NULL
      # TODO
      raise NotImplementedError
    end
  end

  describe '::EnumWindowStations' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::GetUserObjectInformation' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::OpenWindowStation' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::SetProcessWindowStation' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::SetUserObjectInformation' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::GetUserObjectSecurity' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end

  describe '::GetUserObjectSecurity' do
    it '' do
      # TODO
      raise NotImplementedError
    end
  end
end