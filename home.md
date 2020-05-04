# Copilot Runtime Verification Framework
Copilot is a runtime verification framework written in Haskell. It allows the
user to write programs in a simple but powerful way using a stream-based
approach.

Programs can be interpreted for testing, or translated C99 code to be
incorporated in a project, or as a standalone application. The C99 backend
ensures us that the output is constant in memory and time, making it suitable
for systems with hard realtime requirements.



## Example
Here follows a simple example of a heating system. Other examples can be found
in the [Examples
directory](https://github.com/Copilot-Language/Copilot/tree/master/Examples)
of the main repository.

    -- This is a simple example with basic usage. It implements a simple home
    -- heating system: It heats when temp gets too low, and stops when it is high
    -- enough. It read temperature as a byte (range -50C to 100C) and translates
    -- this to Celcius.

    module Heater where

    import Language.Copilot
    import Copilot.Compile.C99

    import Prelude hiding ((>), (<), div)

    -- External temperature as a byte, range of -50C to 100C
    temp :: Stream Word8
    temp = extern "temperature" Nothing

    -- Calculate temperature in Celcius.
    -- We need to cast the Word8 to a Float. Note that it is an unsafeCast, as there
    -- is no direct relation between Word8 and Float.
    ctemp :: Stream Float
    ctemp = (unsafeCast temp) * (150.0 / 255.0) - 50.0

    spec = do
      -- Triggers that fire when the ctemp is too low or too high,
      -- pass the current ctemp as an argument.
      trigger "heaton"  (ctemp < 18.0) [arg ctemp]
      trigger "heatoff" (ctemp > 21.0) [arg ctemp]

    -- Compile the spec
    main = reify spec >>= compile "heater"
