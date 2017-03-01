require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp

    require 'win-ffi/user32/enum/interaction/rawinput/rawinput_type'
    require 'win-ffi/user32/enum/interaction/rawinput/rawinput_device_flag'
    require 'win-ffi/user32/enum/interaction/rawinput/rawinput_mouse_state'
    require 'win-ffi/user32/enum/interaction/rawinput/rawinput_mouse_flag'
    require 'win-ffi/user32/enum/interaction/rawinput/rawinput_keyboard_flag'

    module User32
      class RAWINPUTHEADER < FFIAdditions::Struct
        layout dwType: RawInputType,
               dwSize:       :dword,
               hDevice:     :handle,
               wParam:      :wparam

        def initialize
          self.dwSize = self.size
        end
      end

      # Raw Input request APIs
      class RAWINPUTDEVICE < FFIAdditions::Struct
        layout usUsagePage:        :ushort, # Toplevel collection UsagePage,
               usUsage:            :ushort, # Toplevel collection Usage,
               dwFlags: RawInputDeviceFlag,
               hwndTarget:           :hwnd # Target hwnd. NULL = follows keyboard focus
      end

      class RAWINPUTDEVICELIST < FFIAdditions::Struct
        layout hDevice:     :handle,
               dwType: RawInputType
      end

      class RAWMOUSE_UNION_STRUCT < FFIAdditions::Struct
        layout usButtonFlags: RawInputMouseState,
               usButtonData:             :ushort
      end

      class RAWMOUSE_UNION < FFIAdditions::Union
        layout ulButtons:             :ulong,
               struct: RAWMOUSE_UNION_STRUCT
      end

      # Raw format of the mouse input
      class RAWMOUSE < FFIAdditions::Struct
        layout usFlags: RawInputMouseFlag, # Indicator flags.
               u:          RAWMOUSE_UNION, # The transition state of the mouse buttons.
               ulRawButtons:       :ulong, # The raw state of the mouse buttons.
               lLastX:              :long, # The signed relative or absolute motion in the X direction.
               lLastY:              :long, # The signed relative or absolute motion in the Y direction.
               ulExtraInformation: :ulong  # Device-specific additional information for the event.
      end

      # Raw format of the keyboard input
      class RAWKEYBOARD < FFIAdditions::Struct
        layout MakeCode:           :ushort, # The "make" scan code (key depression).
               Flags: RawInputKeybpardFlag, # The flags field indicates a "break" (key release) and other miscellaneous scan code information defined in ntddkbd.h.
               Reserved:           :ushort,
               VKey:               :ushort, # Windows message compatible information
               Message:              :uint,
               ExtraInformation:    :ulong  # Device-specific additional information for the event.
      end

      # Raw format of the input from Human Input Devices
      class RAWHID < FFIAdditions::Struct
        layout dwSizeHid:   :dword,
               dwCount:     :dword,
               bRawData: [:byte, 1]
      end

      class RAWINPUT_UNION < FFIAdditions::Union
        layout mouse:       RAWMOUSE,
               keyboard: RAWKEYBOARD,
               hid:           RAWHID
      end

      # RAWINPUT data structure.
      class RAWINPUT < FFIAdditions::Struct
        layout header: RAWINPUTHEADER,
               u:      RAWINPUT_UNION
      end
    end
  end
end