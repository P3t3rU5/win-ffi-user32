module WinFFI
  if WINDOWS_VERSION >= 10
    module Shcore
      ShellUiComponent = enum :ShellUiComponent, [
          :TASKBARS,         0,
          :NOTIFICATIONAREA, 1,
          :DESKBAND,         2,
      ]

      define_prefix(:SHELL_UI_COMPONENT, ShellUiComponent)
    end
  end
end