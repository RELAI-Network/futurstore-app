# Futur Store App 📱🎮📚

Flutter Mobile app client for accessing the Futur Store Decentralized marketplace.

## Internationalization

[Flutter internationalization](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization) and [arb_translate package](https://pub.dev/packages/arb_translate) are used to auto translate internationalization files, using Gemini. More [details](https://leancode.co/blog/flutter-app-localization-with-ai).

1. Provide internationationalization messages for main file (en).
2. Run _arb_translate_ in command line to complete arb translations files for other languages.
3. Run _flutter gen-l10n_ to generate dart translation files.

Follow [setup](https://pub.dev/packages/arb_translate#installation) instructions, to make sure everything is setted up on your local machine.

## Using Polkadart

`dart run polkadart_cli:generate -v`

This generation can [cause](https://github.com/dart-lang/code_builder/issues/383) [import issues](https://github.com/leonardocustodio/polkadart/issues/323). Running `sh .replace_backslash_in_dart_files.sh lib/generated` should [resolve them](https://github.com/encointer/encointer-wallet-flutter/blob/5197562a9f0c2103e40f69ee4b09b52a4197f9ca/scripts/replace_backslash_in_dart_files.sh).
