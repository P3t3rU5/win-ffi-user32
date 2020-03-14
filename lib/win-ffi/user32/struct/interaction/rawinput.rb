module WinFFI
  if WINDOWS_VERSION >= :xp

    require_relative '../../enum/interaction/rawinput/type'
    require_relative '../../enum/interaction/rawinput/device_flag'
    require_relative '../../enum/interaction/rawinput/mouse_state'
    require_relative '../../enum/interaction/rawinput/mouse_flag'
    require_relative '../../enum/interaction/rawinput/keyboard_flag'

    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rawinputheader
      class RAWINPUTHEADER < FFIAdditions::Struct
        attr_accessor :dwType,
                      :dwSize,
                      :hDevice,
                      :wParam

        layout dwType:  RawInputType,
               dwSize:  :dword,
               hDevice: :handle,
               wParam:  :wparam

        def initialize
          super
          self.dwSize = self.size
        end

        private :dwSize, :dwSize=
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rawinputdevice
      # Raw Input request APIs
      class RAWINPUTDEVICE < FFIAdditions::Struct
        attr_accessor :usUsagePage,
                      :usUsage,
                      :dwFlags,
                      :hwndTarget

        layout usUsagePage: :ushort,
               usUsage:     :ushort,
               dwFlags:     RawInputDeviceFlag,
               hwndTarget:  :hwnd
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rawinputdevicelist
      class RAWINPUTDEVICELIST < FFIAdditions::Struct
        attr_accessor :hDevice, :dwType

        layout hDevice: :handle,
               dwType:  RawInputType
      end

      class RAWMOUSE_UNION_STRUCT < FFIAdditions::Struct
        attr_accessor :usButtonFlags, :usButtonData

        layout usButtonFlags: RawInputMouseState,
               usButtonData:  :ushort
      end

      class RAWMOUSE_UNION < FFIAdditions::Union
        attr_accessor :ulButtons, :struct

        layout ulButtons: :ulong,
               struct:    RAWMOUSE_UNION_STRUCT
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rawmouse
      # Raw format of the mouse input
      class RAWMOUSE < FFIAdditions::Struct
        attr_accessor :usFlags,
                      :u,
                      :ulRawButtons,
                      :lLastX,
                      :lLastY,
                      :ulExtraInformation

        layout usFlags:            RawInputMouseFlag,
               u:                  RAWMOUSE_UNION,
               ulRawButtons:       :ulong,
               lLastX:             :long,
               lLastY:             :long,
               ulExtraInformation: :ulong
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rawkeyboard
      # Raw format of the keyboard input
      class RAWKEYBOARD < FFIAdditions::Struct
        attr_accessor :MakeCode,
                      :Flags,
                      :Reserved,
                      :VKey,
                      :Message,
                      :ExtraInformation

        layout MakeCode:         :ushort,
               Flags:            RawInputKeybpardFlag,
               Reserved:         :ushort,
               VKey:             :ushort,
               Message:          :uint,
               ExtraInformation: :ulong
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rawhid
      # Raw format of the input from Human Input Devices
      class RAWHID < FFIAdditions::Struct
        attr_accessor :dwSizeHid,
                      :dwCount,
                      :bRawData

        layout dwSizeHid: :dword,
               dwCount:   :dword,
               bRawData:  [:byte, 1]
      end

      class RAWINPUT_UNION < FFIAdditions::Union
        attr_accessor :mouse,
                      :keyboard,
                      :hid

        layout mouse:    RAWMOUSE,
               keyboard: RAWKEYBOARD,
               hid:      RAWHID
      end

      # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-rawinput
      # RAWINPUT data structure.
      class RAWINPUT < FFIAdditions::Struct
        attr_accessor :header, :u

        layout header: RAWINPUTHEADER,
               u:      RAWINPUT_UNION
      end
    end
  end
end