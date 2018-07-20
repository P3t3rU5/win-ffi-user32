module WinFFI
  if WINDOWS_VERSION >= 8
    module User32
      TouchPredictionParameters = enum :touch_prediction_parameters, [
          :LATENCY,                      8,
          :SAMPLETIME,                   8,
          :USE_HW_TIMESTAMP,             1,
          :RLS_DELTA,                0.001,
          :RLS_LAMBDA_MIN,             0.9,
          :RLS_LAMBDA_MAX,           0.999,
          :RLS_LAMBDA_LEARNING_RATE, 0.001,
          :RLS_EXPO_SMOOTH_ALPHA,     0.99,
      ]

      MAX_TOUCH_PREDICTION_FILTER_TAPS = 3

      define_prefix(:TOUCHPREDICTIONPARAMETERS_DEFAULT, TouchPredictionParameters)
    end
  end
end