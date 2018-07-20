module WinFFI
  if WINDOWS_VERSION >= :xp

    require_relative '../../enum/interaction/rawinput/type'
    require_relative '../../enum/interaction/rawinput/device_flag'
    require_relative '../../enum/interaction/rawinput/mouse_state'
    require_relative '../../enum/interaction/rawinput/mouse_flag'
    require_relative '../../enum/interaction/rawinput/keyboard_flag'

    module User32
      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645571
      class RAWINPUTHEADER < FFIAdditions::Struct
        def dwType; end
        def dwType=(v) end
        def dwSize; end
        def dwSize=(v) end
        def hDevice; end
        def hDevice=(v) end
        def wParam; end
        def wParam=(v) end

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

      # Raw Input request APIs
      class RAWINPUTDEVICE < FFIAdditions::Struct
        def usUsagePage; end
        def usUsagePage=(v) end
        def usUsage; end
        def usUsage=(v) end
        def dwFlags; end
        def dwFlags=(v) end
        def hwndTarget; end
        def hwndTarget=(v) end

        layout usUsagePage: :ushort,
               usUsage:     :ushort,
               dwFlags:     RawInputDeviceFlag,
               hwndTarget:  :hwnd
      end

      class RAWINPUTDEVICELIST < FFIAdditions::Struct
        def hDevice; end
        def hDevice=(v) end
        def dwType; end
        def dwType=(v) end

        layout hDevice: :handle,
               dwType:  RawInputType
      end

      class RAWMOUSE_UNION_STRUCT < FFIAdditions::Struct
        def usButtonFlags; end
        def usButtonFlags=(v) end
        def usButtonData; end
        def usButtonData=(v) end

        layout usButtonFlags: RawInputMouseState,
               usButtonData:  :ushort
      end

      class RAWMOUSE_UNION < FFIAdditions::Union
        def ulButtons; end
        def ulButtons=(v) end
        def struct; end
        def struct=(v) end

        layout ulButtons: :ulong,
               struct:    RAWMOUSE_UNION_STRUCT
      end

      # Raw format of the mouse input
      class RAWMOUSE < FFIAdditions::Struct
        def usFlags; end
        def usFlags=(v) end
        def u; end
        def u=(v) end
        def ulRawButtons; end
        def ulRawButtons=(v) end
        def lLastX; end
        def lLastX=(v) end
        def lLastY; end
        def lLastY=(v) end
        def ulExtraInformation; end
        def ulExtraInformation=(v) end

        layout usFlags:            RawInputMouseFlag,
               u:                  RAWMOUSE_UNION,
               ulRawButtons:       :ulong,
               lLastX:             :long,
               lLastY:             :long,
               ulExtraInformation: :ulong
      end

      # Raw format of the keyboard input
      class RAWKEYBOARD < FFIAdditions::Struct
        def MakeCode; end
        def MakeCode=(v) end
        def Flags; end
        def Flags=(v) end
        def Reserved; end
        def Reserved=(v) end
        def VKey; end
        def VKey=(v) end
        def Message; end
        def Message=(v) end
        def ExtraInformation; end
        def ExtraInformation=(v) end

        layout MakeCode:         :ushort,
               Flags:            RawInputKeybpardFlag,
               Reserved:         :ushort,
               VKey:             :ushort,
               Message:          :uint,
               ExtraInformation: :ulong
      end

      # Raw format of the input from Human Input Devices
      class RAWHID < FFIAdditions::Struct
        def dwSizeHid; end
        def dwSizeHid=(v) end
        def dwCount; end
        def dwCount=(v) end
        def bRawData; end
        def bRawData=(v) end

        layout dwSizeHid: :dword,
               dwCount:   :dword,
               bRawData:  [:byte, 1]
      end

      class RAWINPUT_UNION < FFIAdditions::Union
        def mouse; end
        def mouse=(v) end
        def keyboard; end
        def keyboard=(v) end
        def hid; end
        def hid=(v) end

        layout mouse:    RAWMOUSE,
               keyboard: RAWKEYBOARD,
               hid:      RAWHID
      end

      # RAWINPUT data structure.
      class RAWINPUT < FFIAdditions::Struct
        def header; end
        def header=(v) end
        def u; end
        def u=(v) end

        layout header: RAWINPUTHEADER,
               u:      RAWINPUT_UNION
      end
    end
  end
end