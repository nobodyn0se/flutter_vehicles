# flutter_vehicle_makes

### What is it?

This simple application lists vehicles manufacturers fetched from a publicly listed database and their makes, models in a paginated list view across 3 pages. The app supports offline data storage capability with the help of Hive DB. Every list viewed by the user in a session will be saved for offline retrieval. The next time the app is opened and no internet connectivity is available, offline data will be read for each page.

The first page (home page) will display a list of all vehicle manufacturers fetched from the API. Each list item can be clicked and navigate to a separate page (details page) that will display a list of makes manufactured by that manufacturer. Upon further clicking the make, you will find a list of all the models of that make on the models page.

#### How does offline storage work?
The offline storage will be cleared and updated for a new session if the internet is accessible during any subsequent app runs. Example, if you view 2 pages of vehicle manufacturers while connected to the web, they will be stored to the offline DB. If you further view the makes or models for a manufacturer by clicking on individual list items, that data would also be stored offline. 

This means that to store an offline copy, you must view that data first. If you reopen the app or a page without internet access, it will try to read that page from offline storage. If the data does not exist, the page will show an error UI. Currently, the storage data will be loaded into memory when the app starts. This can be changed to lazy loading.

The next time you open the app with internet access, it will overwrite the offline storage with data from the new session. If you previously viewed 3 pages of vehicle makes then viewed 1 page upon restarting the app, you will only have data containing 1 page of vehicle makes (session persistence only).

### How is the app structured?
The overall architecture of the app closely resembles MVVM implementation with proper separation between the presentation layer and business logic. GetX controllers and services have been used to define the business logic for this project. Here is a brief rundown of the folder substructure and their purpose:


> bindings - This folder contains the bindings information for every route. Relevant controllers are listed in this class and will be loaded/lazy-loaded when the binding is initialized.
> 
> constants - Contains an AppConstants class with static const variables which are used across the app.
>
> controllers - This folder is the heart of the business logic of this app. It contains the controllers for each route which manipulate data and core logic.
>
> helpers - Contains a WidgetHelper class with static const methods/variables to be used for common operations throughout the app such as parsing, trimming whitespaces, etc. to avoid rewriting them in every file.
>
> models - Contains the model classes that are used to serialize/deserialize dart objects from JSON response of API calls.
>
> network - Contains online/API related network call methods, services and their definitions.
>
> offline - Contains services required for offline storage management using Hive DB.
>
> pages - Contains the codebase of the main UI of the app. This UI is highly decoupled from the business logic and does not have any data manipulation within the files.
>
> routes - Contains app routes and page references for those routes.
>
> theme - Contains an AppTheme and AppTextTheme class where themeData can be defined and reused across the app.
>
> widgets - Contains reusable widgets generated during the course of development.
>
> /services - Contains methods and definitions which can be used through a singleton instance of a particular service. The instance will be injected using GetX dependency injection support (Get.put() or Get.lazyPut()). This is an abstraction layer between controllers and network/db.

### How to install it?
In order to test the app for development/debugging purposes, clone this repository onto your local machine. Run the following commands from your terminal, with your current working directory set to a location of your choice.

```
git clone https://github.com/nobodyn0se/flutter_vehicles.git
cd flutter_vehicles
flutter pub get
```

Thereafter, open an emulator (iOS/Android) on your device and run the app through your IDE UI or CLI command `flutter run`.

### Unit testing
A few unit tests are included with the current version of the app. These unit tests can be run using the command `flutter test test/<oathNameOfTest.dart>` for instance `flutter test test/network/services/api_service_test.dart`.

### Version Info
Current version: v1.1.2

### Checklist for pending items
- [ ] Make the app network aware using connectivity listeners
- [ ] Enhance pagination with higher modularity
- [ ] Increase unit testing coverage
- [ ] Write widget tests
- [ ] Localize strings using the EasyLocalization package
- [ ] Change placement of the Load More button
- [ ] Enhance styling for list pagination loader and end of list indicator on home page
- [ ] Dynamically disable the Load More button on home page
- [ ] Change font styling of the app
- [ ] Introduce dark/light theme toggle using BLoC



