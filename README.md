# Flutter Base Project: Supercharge Your App Development

## Description:

**Kickstart your Flutter projects in a flash! This base project provides a robust and well-structured foundation for building modern mobile apps with ease.**

## Key Features:

- **Flavor**: No worries about building dev, stg and release, we have all the settings here.
- **Bloc State Management**: Simplify state management and enhance code organization with the powerful Bloc library.
- **Hive (Blazing Fast Offline Database)**: Ensure seamless offline functionality and data persistence using Hive's efficient local storage capabilities.
- **API Service for Custom APIs**: Integrate your backend APIs effortlessly with the included API service, tailored for your specific needs.
- **Theming System**: Craft beautiful and consistent UI experiences with a flexible theming system.
- **Localization Support**: Make your app accessible to a global audience with built-in translation support.
- **Overlay Handler**: Manage in-app overlays efficiently for modal dialogs, progress indicators, and more.
- **Updated Plugins and Flutter Version**: Rest assured, you'll be working with the latest stable versions of Flutter and essential plugins.

## Benefits:

- **Save Time**: Skip the tedious initial project setup and boilerplate code.
- **Focus on Your App**: Dedicate your energy to building the core functionalities of your app.
- **Organized Structure**: Maintain a clean and maintainable codebase for future development.
- **Modern Practices**: Leverage industry-standard tools and techniques.

## Customization:

- **API Service**: Configure the API service for your specific endpoints and data models.
- **Themes**: Define your app's color schemes and styles.
- **Translations**: Add translations for different languages.

## How to?

### How to generate new Hive model.g:
1. Create a hive model inside **model->hive_model->here** with given example.
2. Run inside terminal **flutter packages pub run build_runner build**.
3. Wait and it will generated after the model name with **.g**.
4. Register the adapter inside **module->hive_offline_database->setting_hive.dart** after **hive..init...-> ;** and copy paste the code but with new **adapter**

### How to generate new JsonSerializable model.g:
1. Create new model inside model->non_hive_model->here with given example.
2. Run inside terminal **flutter packages pub run build_runner build**.
3. Wait and it will generated after the model name with **.g**.
4. And you are good to go

### How to run flavor in DEBUG mode:
1. Type the following list for your preference of building the apps
- **For Development run this on terminal**: flutter run -t lib/main.dart --flavor dev
- **For Stagging run this on terminal**: flutter run -t lib/main.dart --flavor stg
- **For Release run this on terminal**: flutter run -t lib/main.dart --flavor release

### How to run in PROFILE and RELEASE mode:
1. Add --profile after flutter run
2. Add --release after flutter run
3. Example for running the apps development using profile mode: ***flutter run --profile -t lib/main.dart --flavor dev***

# Many more will be updated ASAP!!
