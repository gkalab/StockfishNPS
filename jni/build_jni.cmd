@echo off

rem Use cp from https://git-scm.com/download/win
cp ../src/evaluateS.h ../src/evaluate.h
cp ../src/nnue/nnue_architectureS.h ../src/nnue/nnue_architecture.h

rem Adjust the path ndk-build for your system
rem Building non-Neon code is no longer supported with the current NDK.
rem d:\bin\android-ndk-r25c\ndk-build.cmd
d:\bin\android-sdk\ndk\21.4.7075529\ndk-build.cmd