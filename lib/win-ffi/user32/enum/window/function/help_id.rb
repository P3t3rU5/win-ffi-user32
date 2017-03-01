require 'win-ffi/user32'

module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # These are in winhelp.h in Win95.
      HelpId = enum :help_id, [
          :NO_HELP,             28440,
          :MISSING_CONTEXT,     28441, # Control doesn't have matching help context
          :GENERIC_HELP_BUTTON, 28442, # Property sheet help button
          :OK,                  28443,
          :CANCEL,              28444,
          :HELP,                28445,
      ]

      define_prefix(:HELP, HelpId)
    end
  end
end