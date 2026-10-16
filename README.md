# Abysall Updated (source fork)

This is a modified source tree based on the original Abysall project.

## Changes in this build
- Added a Language selector with English (default) and Português (Brasil).
- Added the `Noclip Better` toggle with a separate hotkey (`J` by default).
- Hardened remote module loading with clearer download/compile/runtime errors.
- Added clipboard API fallbacks for executors exposing `setclipboard` instead of `toclipboard`.
- Made unsupported executor capability tests report as skipped rather than ordinary failures.
- Improved ESP camera refresh, object-pivot error handling, and render-limit clamping.

## Publish before using the remote loader
The loader downloads the modules over HTTPS. To run this modified source tree, publish the entire folder to a GitHub repository named `Abysall-Updated`, then replace `SEU_USUARIO` in every `raw.githubusercontent.com/SEU_USUARIO/Abysall-Updated/refs/heads/main/` URL with your GitHub username. Keep the repository paths and filenames unchanged.

Until you publish the modified files and update those URLs, the online loader cannot load these local changes. The original project's URL is intentionally not used as a fallback, because that would silently run the unmodified code.

## Compatibility note
Executor APIs differ and can change. This build adds fallbacks and better diagnostics, but cannot guarantee maximum compatibility with every Solara version. Features depending on unsupported executor APIs (notably `require` in this source) remain unavailable instead of being falsely reported as supported.

## Localization note
The selector translates matching UI text to Brazilian Portuguese. Strings not present in `Components/Localization.luau`, including some game-specific labels and dynamically generated text, remain in English until translated entries are added.

## License
Retain the original MIT license and attribution when redistributing this derivative.
