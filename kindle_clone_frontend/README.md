# kindle_clone_frontend

Minimal Flutter app scaffold to ensure successful build/run.

## Project status
This container includes a valid Flutter project structure with a minimal entry point at:
- lib/main.dart

## Run locally
1) Ensure Flutter is installed and a device/emulator is available.
2) From this directory:
   - flutter pub get
   - flutter run

To run tests:
- flutter test

## Notes
- The app uses a simple MaterialApp and a bottom navigation scaffold (Library / Downloads / Settings) to validate rendering.
- Assets directory exists for future use (assets/). The pubspec.yaml already includes assets and .env mapping.

If you encounter dependency resolution issues, try:
- flutter clean
- flutter pub get

