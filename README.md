# Turtle Weather App

A turtle-themed weather app built with Flutter. Goal: publish an Android version on Google Play in about 1 month. iOS comes later.

> This README is also the project context file for Claude. Keep Status, Decisions, Open questions and Progress log up to date.

## Status
- Current day: Day 0 (not started)
- Flutter installed: yes
- Repo created: yes
- Last updated: 2026-10-2

## Goals
1. Working weather app: current conditions, hourly, 7-day forecast, city search, device location, favorites, unit toggle.
2. Turtle theme: mascot art that changes with the weather, light/dark theme, small animations.
3. Published Android release on Google Play (closed testing required, see below).
4. Clean, documented GitHub repo.

## Scope
- In: Android release, one shared Flutter codebase, free weather API.
- Out for now: iOS release, login/accounts, custom backend, push notifications.

## Tech stack
- Flutter + Dart (official docs reflected Flutter 3.47.2 in Sep 2026)
- VS Code with the Flutter extension; Android Studio for the Android SDK and emulator
- Weather data: Open-Meteo (assumed, free, no API key). Verify its terms before any monetization.
- Packages, added only when needed: http, provider or riverpod (undecided), geolocator, shared_preferences
- Git + GitHub

## Dev environment
- OS: Windows
- No Mac, no iPhone available
- Test device: not decided (phone with USB debugging, or Android emulator)

## Working agreement with Claude
- Start every message with "Ian,".
- Always say whether the GitHub project source was checked, and why or why not.
- No em-dashes. Efficient, hands-on tone.
- Paste text directly in chat, avoid file downloads.
- Ask targeted questions or research instead of assuming.
- Before answering plan questions, check this README (Status, Decisions, Progress log).

## Setup checklist (Windows)
1. Install Git for Windows and VS Code.
2. Install the Flutter extension (Dart-Code.flutter). Ctrl+Shift+P > "Flutter: New Project" > Download SDK > Clone Flutter > Add SDK to PATH. Restart terminals and VS Code.
3. Run `flutter doctor -v`.
4. Install Android Studio. SDK Manager: API 36 platform, plus Build-Tools, Command-line Tools, Emulator, Platform-Tools, CMake, NDK (Side by side).
5. Run `flutter doctor --android-licenses` and accept all.
6. Device: phone (Developer options, USB debugging, OEM USB driver if needed) or emulator (enable virtualization in BIOS, hardware graphics acceleration).
7. Verify: `flutter doctor`, `flutter emulators`, `flutter devices`.
8. Create the app:
```
cd C:\src
flutter create turtle_weather
cd turtle_weather
flutter run
```
9. Push to GitHub:
```
git init
git add .
git commit -m "Initial commit"
git remote add origin <repo-url>
git branch -M main
git push -u origin main
```

## 30-day plan
Tick items as they are done.

### Week 1: Setup and basics
- [ ] D1: Install Flutter, Git, VS Code, Android Studio; clean `flutter doctor`
- [ ] D2: Run default app; create GitHub repo; first commit; add this README
- [ ] D3: Dart basics (classes, null safety, async/await)
- [ ] D4: Widgets (Stateless vs Stateful, Row/Column/Container, hot reload)
- [ ] D5: Static weather screen with fake data
- [ ] D6: Folder structure (models, services, screens, widgets) and navigation
- [ ] D7: Buffer and review

### Week 2: Real data
- [ ] D8: Test Open-Meteo in the browser; create Google Play Console account ($25) and start any identity verification
- [ ] D9: Model classes and JSON parsing
- [ ] D10: `http` package and weather service
- [ ] D11: Show real current weather
- [ ] D12: Loading and error states (FutureBuilder)
- [ ] D13: State management (Provider or Riverpod); set up app signing
- [ ] D14: First signed .aab uploaded to a Play closed test; invite 12 testers

### Week 3: Features (closed test running)
- [ ] D15: City search (geocoding)
- [ ] D16: Device location and permissions (also write the iOS location permission text in advance, untested)
- [ ] D17: Hourly forecast
- [ ] D18: 7-day forecast
- [ ] D19: Favorite cities (shared_preferences)
- [ ] D20: Units toggle (C/F, km/h)
- [ ] D21: Buffer; ship an update to the closed test; collect feedback

### Week 4: Turtle polish and release
- [ ] D22: Turtle design: palette, mascot, light/dark theme
- [ ] D23: Map weather conditions to turtle art
- [ ] D24: Animations
- [ ] D25: Unit tests for parsing plus one widget test
- [ ] D26: Bug fixes, edge cases, offline behavior
- [ ] D27: App icon, splash screen, app name (Android)
- [ ] D28: Confirm the 14-day closed test is complete; apply for production access
- [ ] D29: Store listing assets (description, screenshots, privacy policy), repo cleanup
- [ ] D30: Demo, retro, next ideas

## Google Play launch requirements (verify in Play Console Help)
- Personal developer accounts created after Nov 13, 2023 must run a closed test with at least 12 testers opted in continuously for 14 days before applying for production access.
- Testers should be real people on real Android devices. Emulators and duplicate accounts do not count.
- The 14-day clock starts only after Google approves the release and 12 testers have opted in, so Day 28 may slip.
- Upload a signed Android App Bundle (.aab), not an APK.
- New apps must target Android 16 (API 36) from Aug 31, 2026.
- One-time $25 registration fee. Developer identity verification is being rolled out, so check what the account asks for.
- After applying: about 48 hours for the decision, then up to 7 days of production review. Public launch may land about a week after Day 30.
- The app uses location, so a privacy policy is likely required.

## iOS later
- No Mac or iPhone now, so iOS is deferred.
- Keep the generated `ios/` folder untouched.
- Use only packages that support both Android and iOS.
- Use `SafeArea` and relative sizing; avoid Android-only APIs.
- iOS needs: a Mac with Xcode (or a cloud Mac build service such as Codemagic or GitHub Actions macOS runners), plus an Apple Developer account (about $99 USD/year) to test on a real iPhone or publish.

## Decisions
- One shared Flutter codebase.
- Android-only launch first; iOS deferred.
- Windows development environment.

## Open questions and assumptions
- Assumed: "Turtle" is a theme and mascot, not turtle-specific data. Confirm.
- Test device: phone or emulator?
- Google Play developer account: does one exist, and was it created before Nov 13, 2023?
- State management: Provider or Riverpod?

## Progress log
| Date | Day | Done | Blockers / notes |
|------|-----|------|------------------|
|      |     |      |                  |

## References
- Flutter install with VS Code: https://docs.flutter.dev/install/with-vs-code
- Flutter Android setup: https://docs.flutter.dev/platform-integration/android/setup
- Play Console testing requirements: https://support.google.com/googleplay/android-developer/answer/14151465
