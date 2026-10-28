# Repository Guidelines

## Project Structure & Module Organization

TaskTracker is a small SwiftUI iOS app with one application target.

- `TaskTracker/TaskTrackerApp.swift` defines the app entry point and root window.
- `TaskTracker/ContentView.swift` contains the task completion interface and local state.
- `TaskTracker/SwiftBasics.swift` contains a Swift playground for language experiments; keep application behavior in app views and supporting types.
- `TaskTracker/Assets.xcassets` stores app icons, colors, and image assets.
- `TaskTracker.xcodeproj` contains target and build configuration. There are currently no test targets.

## Build, Test, and Development Commands

Use Xcode with an iOS 27 SDK or newer; the project currently targets iOS 27.0.

- `open TaskTracker.xcodeproj` opens the project in Xcode.
- `xcodebuild -project TaskTracker.xcodeproj -scheme TaskTracker -destination 'generic/platform=iOS Simulator' build` compiles the app for Simulator.
- In Xcode, select the `TaskTracker` scheme and an available iPhone simulator, then press **Command-R** to build and run. Use **Command-B** to build only.
- Use the `#Preview` in `ContentView.swift` for quick layout checks.

For coding agents inside Xcode, prefer the Xcode tools for project inspection and `BuildProject` for build validation.

## Coding Style & Naming Conventions

Use four-space indentation, PascalCase for types, and camelCase for properties and methods. Name Swift files after their primary type. Keep imports at the top and separate methods with blank lines.

Define SwiftUI interfaces in `View` types with a `body` property. Use `@State private var` for local mutable UI state and `let` for constants. Avoid force unwraps; prefer async/await for asynchronous work. No formatter or linter configuration is currently included; follow the existing Swift formatting.

## Testing Guidelines

No automated test suite or coverage threshold is configured. Manually verify that **Complete Task** changes the status and icon, and **Reset Task** restores the initial state.

When adding tests, use Swift Testing for unit tests and XCUIAutomation for UI tests. Use descriptive behavior names such as `completingTaskUpdatesStatus`. Add test targets to the scheme, then run them with **Command-U**.

## Commit & Pull Request Guidelines

Git history currently contains only `Initial Commit`, so no established commit convention exists. Use concise, imperative subjects such as `Add task reset behavior`.

Keep changes focused. Pull requests should explain the behavior change, list validation performed, link relevant issues, and include screenshots for visible UI changes.
