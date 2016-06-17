require 'win-ffi/user32'


module WinFFI
  if WindowsVersion >= :xp

    require 'win-ffi/user32/enum/process/gui_resources_flag'
    require 'win-ffi/user32/enum/process/auto_rotation_state'
    require 'win-ffi/user32/enum/process/orientation_preference'

    module User32

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms687022(v=vs.85).aspx
      # DWORD WINAPI WaitForInputIdle(
      #   _In_  HANDLE hProcess,
      #   _In_  DWORD dwMilliseconds )
      attach_function 'WaitForInputIdle', [:handle, :dword], :dword

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683192(v=vs.85).aspx
      # DWORD WINAPI GetGuiResources(
      #   _In_  HANDLE hProcess,
      #   _In_  DWORD uiFlags )
      attach_function 'GetGuiResources', [:handle, GuiResourcesFlag], :dword

      # https://msdn.microsoft.com/en-us/library/windows/desktop/ms686884(v=vs.85).aspx
      # BOOL WINAPI UserHandleGrantAccess(
      #   _In_  HANDLE hUserHandle,
      #   _In_  HANDLE hJob,
      #   _In_  BOOL bGrant )
      attach_function 'UserHandleGrantAccess', [:handle, :handle, :bool], :bool

      if WindowsVersion >= 7

        # https://msdn.microsoft.com/en-us/library/windows/desktop/dn629264(v=vs.85).aspx
        # BOOL WINAPI GetAutoRotationState(_Out_ PAR_STATE pState)
        attach_function 'GetAutoRotationState', [AutoRotationState], :bool

        # Defined in header file but doesn't exist
        # https://msdn.microsoft.com/en-us/library/windows/desktop/dn629266(v=vs.85).aspx
        # BOOL WINAPI GetDisplayAutoRotationPreferencesByProcessId(
        #   _In_  DWORD                  *dwProcessId,
        #   _Out_ ORIENTATION_PREFERENCE *pOrientation,
        #   _Out_ BOOL                   *fRotateScreen)
        # attach_function 'GetDisplayAutoRotationPreferencesByProcessId', [:pointer, :pointer, :pointer], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/dn629265(v=vs.85).aspx
        # BOOL WINAPI GetDisplayAutoRotationPreferences(_Out_ ORIENTATION_PREFERENCE *pOrientation)
        attach_function 'GetDisplayAutoRotationPreferences', [:pointer], :bool

        # https://msdn.microsoft.com/en-us/library/windows/desktop/dn629268(v=vs.85).aspx
        # BOOL WINAPI SetDisplayAutoRotationPreferences(_In_ ORIENTATION_PREFERENCE *pOrientation)
        attach_function 'SetDisplayAutoRotationPreferences', [OrientationPreference], :bool

        if WindowsVersion >= 8

          # https://msdn.microsoft.com/en-us/library/windows/desktop/hh448383(v=vs.85).aspx
          # BOOL WINAPI IsImmersiveProcess( _In_  HANDLE hProcess )
          attach_function 'IsImmersiveProcess', [:handle], :bool

          # https://msdn.microsoft.com/en-us/library/windows/desktop/jj613327(v=vs.85).aspx
          # BOOL WINAPI SetProcessRestrictionExemption( BOOL fEnableExemption )
          attach_function 'SetProcessRestrictionExemption', [:bool], :bool
        end
      end
    end
  end
end