module WinFFI
  module User32
    # Gesture argument helpers
    # - Angle should be a double in the range of -2pi to +2pi
    # - Argument should be an unsigned 16-bit value
    #define GID_ROTATE_ANGLE_TO_ARGUMENT(_arg_)     ((USHORT)((((_arg_) + 2.0 * 3.14159265) / (4.0 * 3.14159265)) * 65535.0))
    def self.GID_ROTATE_ANGLE_TO_ARGUMENT(_arg_)
      (_arg_ + 2.0 * Math::PI) / (4.0 * Math::PI) * 65535.0
    end

    #define GID_ROTATE_ANGLE_FROM_ARGUMENT(_arg_)   ((((double)(_arg_) / 65535.0) * 4.0 * 3.14159265) - 2.0 * 3.14159265)
    def self.GID_ROTATE_ANGLE_FROM_ARGUMENT(_arg_)
      _arg_ / 65535.0 * 4.0 * Math::PI - 2.0 * Math::PI
    end
  end
end