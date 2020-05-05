# About
Copilot is a realtime programming language and Runtime Verification framework.
It allows users to write concise programs in a simple but powerful way using a
stream-based approach.

Programs can be interpreted for testing, or translated C99 code to be
incorporated in a project, or as a standalone application. The C99 backend
ensures us that the output is constant in memory and time, making it suitable
for systems with hard realtime requirements. Copilot provides a strong type
system that helps keeping programmers from making common mistakes, aiding in
the quality of the code.

Copilot provides a library providing higher-level constructs, for example for
defining clocks, a Boyer-Moore majority voting implementation and various
temporal logics, including Linear Temporal logic (LTL) and Past Time LTL.


## Code example
This is a simple example showing basic usage. It implements a home heating
system: It heats when temp gets too low, and stops when it is high enough.  It
reads temperature as a byte (range -50C to 100C) and translates this to
Celsius.
<pre><code class="language-haskell"><mark class="comment">{-# LANGUAGE RebindableSyntax #-}</mark>

<mark class="keyword">module</mark> Main <mark class="keyword">where</mark>

<mark class="keyword">import</mark> Language.Copilot
<mark class="keyword">import</mark> Copilot.Compile.C99

<mark class="comment">-- External temperature as a byte, range of -50C to 100C.</mark>
temp :: Stream Word8
temp = extern <mark class="string">"temperature"</mark> Nothing

<mark class="comment">-- Calculate temperature in Celsius.
-- We need to cast the Word8 to a Float. Note that it is an unsafeCast, as there
-- is no direct relation between Word8 and Float.</mark>
ctemp :: Stream Float
ctemp = (unsafeCast temp) * (<mark class="literal">150.0</mark> / <mark class="literal">255.0</mark>) - <mark class="literal">50.0</mark>

spec = <mark class="keyword">do</mark>
  <mark class="comment">-- Triggers that fire when the ctemp is too low or too high,
  -- pass the current ctemp as an argument.</mark>
  trigger <mark class="string">"heaton"</mark>  (ctemp < <mark class="literal">18.0</mark>) [arg ctemp]
  trigger <mark class="string">"heatoff"</mark> (ctemp > <mark class="literal">21.0</mark>) [arg ctemp]

<mark class="comment">-- Compile the spec</mark>
main = reify spec >>= compile <mark class="string">"heater"</mark></code></pre>
