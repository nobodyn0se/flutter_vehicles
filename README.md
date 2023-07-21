# flutter_vehicle_makes

This simple application lists vehicles manufacturers fetched from a publicly listed database and their makes, models in a paginated list view across 3 pages. The app supports offline data storage capability with the help of Hive DB. Every list viewed by the user in a session will be saved for offline retrieval. The next time the app is opened and no internet connectivity is available, offline data will be read for each page.

The overall architecture of the app closely resembles MVVM implementation with proper separation between the presentation layer and business logic.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
