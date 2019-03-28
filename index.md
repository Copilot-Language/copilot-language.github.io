# Copilot runtime verification framework
Copilot is a runtime verification framework written in Haskell. It allows the
user to write programs in a simple but powerful way using a stream-based
approach.

Programs can be interpreted for testing, or translated C99 code to be
incorporated in a project, or as a standalone application. The C99 backend
ensures us that the output is constant in memory and time, making it suitable
for systems with hard realtime requirements.
