module WinFFI
  if WINDOWS_VERSION >= :xp

    require_relative '../enum/process/gui_resources_flag'
    require_relative '../enum/process/auto_rotation_state'
    require_relative '../enum/process/orientation_preference'

    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-waitforinputidle
      # @param [FFI::Pointer] hProcess
      # @param [Integer] dwMilliseconds
      # @return [Integer]
      def self.WaitForInputIdle(hProcess, dwMilliseconds) end
      attach_function 'WaitForInputIdle', [:handle, :dword], :dword

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getguiresources
      # @param [FFI::Pointer] hProcess
      # @param [Integer] uiFlags
      # @return [Integer]
      def self.GetGuiResources(hProcess, uiFlags) end
      attach_function 'GetGuiResources', [:handle, GuiResourcesFlag], :dword

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-userhandlegrantaccess
      # @param [FFI::Pointer] hUserHandle
      # @param [FFI::Pointer] hJob
      # @param [true, false] bGrant
      # @return [true, false]
      def self.UserHandleGrantAccess(hUserHandle, hJob, bGrant) end
      attach_function 'UserHandleGrantAccess', [:handle, :handle, :bool], :bool

      if WINDOWS_VERSION >= 7
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getautorotationstate
        # @param [Integer] pState
        # @return [true, false]
        def self.GetAutoRotationState(pState) end
        attach_function 'GetAutoRotationState', [AutoRotationState], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdisplayautorotationpreferencesbyprocessid
        # Defined in header file but doesn't exist #TODO Kernel.dll
        # @param [Integer] dwProcessId
        # @param [FFI::Pointer] pOrientation
        # @param [FFI::Pointer] fRotateScreen
        # @return [true, false]
        # def self.GetDisplayAutoRotationPreferencesByProcessId(dwProcessId, pOrientation, fRotateScreen) end
        # attach_function 'GetDisplayAutoRotationPreferencesByProcessId', [:pointer, :pointer, :pointer], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdisplayautorotationpreferences
        # @param [FFI::Pointer] pOrientation
        # @return [true, false]
        def self.GetDisplayAutoRotationPreferences(pOrientation) end
        attach_function 'GetDisplayAutoRotationPreferences', [:pointer], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdisplayautorotationpreferences
        # @param [Integer] pOrientation
        # @return [true, false]
        def self.SetDisplayAutoRotationPreferences(pOrientation) end
        attach_function 'SetDisplayAutoRotationPreferences', [OrientationPreference], :bool

        if WINDOWS_VERSION >= 8
          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isimmersiveprocess
          # @param [FFI::Pointer] hProcess
          # @return [true, false]
          def self.IsImmersiveProcess(hProcess) end
          attach_function 'IsImmersiveProcess', [:handle], :bool

          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setprocessrestrictionexemption
          # @param [true, false] fEnableExemption
          # @return [true, false]
          def self.SetProcessRestrictionExemption(fEnableExemption) end
          attach_function 'SetProcessRestrictionExemption', [:bool], :bool
        end
      end
    end
  end
end