# Plutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## name: Dart

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest

    # Note that this workflow uses the latest stable version of the Dart SDK.
    # Docker images for other release channels - like dev and beta - are also
    # available. See https://hub.docker.com/r/google/dart/ for the available
    # images.
    container:
      image:  google/dart:latest

    steps:
      - uses: actions/checkout@v2

      - name: Print Dart SDK version
        run: dart --version

      - name: Install dependencies
        run: dart pub get

      # Uncomment this step to verify the use of 'dart format' on each commit.
      # - name: Verify formatting
      #   run: dart format --output=none --set-exit-if-changed .

      # Consider passing '--fatal-infos' for slightly stricter analysis.
      - name: Analyze project source
        run: dart analyze

      # Your project will need to have tests in test/ and a dependency on
      # package:test for this step to succeed. Note that Flutter projects will
      # want to change this to 'flutter test'.
      - name: Run tests
        run: dart test
