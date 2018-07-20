module WinFFI
  if WINDOWS_VERSION >= :xp

    require_relative '../enum/process/gui_resources_flag'
    require_relative '../enum/process/auto_rotation_state'
    require_relative '../enum/process/orientation_preference'

    module User32

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-waitforinputidle
      # DWORD WINAPI WaitForInputIdle( _In_  HANDLE hProcess, _In_  DWORD dwMilliseconds )
      def self.WaitForInputIdle(hProcess, dwMilliseconds); end
      attach_function 'WaitForInputIdle', [:handle, :dword], :dword

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getguiresources
      # DWORD WINAPI GetGuiResources( _In_  HANDLE hProcess, _In_  DWORD uiFlags )
      def self.GetGuiResources(hProcess, uiFlags); end
      attach_function 'GetGuiResources', [:handle, GuiResourcesFlag], :dword

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-userhandlegrantaccess
      # BOOL WINAPI UserHandleGrantAccess( _In_  HANDLE hUserHandle, _In_  HANDLE hJob, _In_  BOOL bGrant )
      def self.UserHandleGrantAccess(hUserHandle, hJob, bGrant); end
      attach_function 'UserHandleGrantAccess', [:handle, :handle, :bool], :bool

      if WINDOWS_VERSION >= 7
        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getautorotationstate
        # BOOL WINAPI GetAutoRotationState(_Out_ PAR_STATE pState)
        def self.GetAutoRotationState(pState); end
        attach_function 'GetAutoRotationState', [AutoRotationState], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdisplayautorotationpreferencesbyprocessid
        # Defined in header file but doesn't exist #TODO Kernel.dll
        # BOOL WINAPI GetDisplayAutoRotationPreferencesByProcessId(
        #   _In_  DWORD                  *dwProcessId,
        #   _Out_ ORIENTATION_PREFERENCE *pOrientation,
        #   _Out_ BOOL                   *fRotateScreen)
        # def self.GetDisplayAutoRotationPreferencesByProcessId(dwProcessId, pOrientation, fRotateScreen); end
        # attach_function 'GetDisplayAutoRotationPreferencesByProcessId', [:pointer, :pointer, :pointer], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getdisplayautorotationpreferences
        # BOOL WINAPI GetDisplayAutoRotationPreferences(_Out_ ORIENTATION_PREFERENCE *pOrientation)
        def self.GetDisplayAutoRotationPreferences(pOrientation); end
        attach_function 'GetDisplayAutoRotationPreferences', [:pointer], :bool

        # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setdisplayautorotationpreferences
        # BOOL WINAPI SetDisplayAutoRotationPreferences(_In_ ORIENTATION_PREFERENCE *pOrientation)
        def self.SetDisplayAutoRotationPreferences(pOrientation); end
        attach_function 'SetDisplayAutoRotationPreferences', [OrientationPreference], :bool

        if WINDOWS_VERSION >= 8
          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-isimmersiveprocess
          # BOOL WINAPI IsImmersiveProcess( _In_  HANDLE hProcess )
          def self.IsImmersiveProcess(hProcess); end
          attach_function 'IsImmersiveProcess', [:handle], :bool

          # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setprocessrestrictionexemption
          # BOOL WINAPI SetProcessRestrictionExemption( BOOL fEnableExemption )
          def self.SetProcessRestrictionExemption(fEnableExemption); end
          attach_function 'SetProcessRestrictionExemption', [:bool], :bool
        end
      end
    end
  end
end