# Futur Store App 📱🎮📚

[Flutter](https://docs.flutter.dev/get-started/install) Mobile app client for accessing the Futur Store Decentralized marketplace.

## Environment Setup

The FuturStore app and [Kaggu](https://github.com/RELAI-Network/kaggu) App are built in Flutter so get the [environment](https://docs.flutter.dev/get-started/install) ready first.

### Running the app

There are 2 maim files you can choose from when running the app:

`lib/main.development.dart` and  `lib/main.production.dart`and you can choose one of them to run and test the app.

Once you are set up and have your virtual device running for example

```
flutter run -t lib/main.development.dart
```

There is a compagnon app [Kaggu](https://github.com/RELAI-Network/kaggu) that is used to read the ebooks downloaded from the Futurstore app

The app interacts with Relai Network Devnet and also Firebase and some configs needs to be done to run the app.


## Generating Relai Network Substrate types

To interact with the blockchain the [polkadart](https://pub.dev/packages/polkadart) package is used.


At the root of the project get first the packages by typing `pub get` and after

`dart run polkadart_cli:generate -v` to generate the Relai Network Substrate chain types.

The generated types should be located under `lib/generated/relai` folder.

If you want to generatee types against a local version of [Relai Network](https://github.com/RELAI-Network/relai-network).

You can modify the `pubspec.yaml` file and replace

```yaml
polkadart:
  output_dir: lib/generated
  chains:
    relai_network: wss://rpc1.relai.network
```
by

```yaml
polkadart:
  output_dir: lib/generated
  chains:
    local: ws://localhost:9944   # or 9945 depending on the port you chose
```

**NB**
On Windows, this generation can [cause](https://github.com/dart-lang/code_builder/issues/383) [import issues](https://github.com/leonardocustodio/polkadart/issues/323). Running `sh .replace_backslash_in_dart_files.sh lib/generated` should [resolve them](https://github.com/encointer/encointer-wallet-flutter/blob/5197562a9f0c2103e40f69ee4b09b52a4197f9ca/scripts/replace_backslash_in_dart_files.sh).


## Configuring Firebase

You first need to create a firebase project and [FlutterFire](https://firebase.google.com/docs/flutter/setup?platform=web) SDK (just follow step 1 and 2).

There is an already built apks for both FuturStore and Kaggu that can be found and downloaded [here](https://drive.google.com/drive/u/1/folders/1cfoUhpKXK46_57sAQPWOqfSUNhTFdEa7) and a [tutorial](https://blog.relai.network/futur-store-app-devnet-relai-network) that shows us how to use the app.



