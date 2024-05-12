# Clean Architecture with Flutter
This project implement a news app using the clean architecture principles. 
This implementation is based on the [Flutter Guys tutorial](https://www.youtube.com/watch?v=7V_P6dovixg&list=PLjyxas0TsCpnjpzCv3rnsX3LjS9G2K05f&ab_channel=FlutterGuysd). With some modification and explanation to make it more understandable.

The app uses the [News API](https://newsapi.org/) to fetch the news data.


# Getting Started

The following is the bese architecture that will be followed in this project.

```
lib
|---core
|   |---error
|   |---network
|   |---usecase
|   |---utils
|---config
|   |---routes
|   |---theme
|---features
|   |---data
|   |   |---datasources
|   |   |---models
|   |   |---repositories
|   |---domain
|   |   |---entities
|   |   |---repositories
|   |   |---usecases
|   |---presentation
|   |   |---bloc
|   |   |---pages
|   |   |---widgets
|---main.dart
```

### Core
This layer contains all the business logic of the application. It is divided into four packages:
- error: Contains all the exceptions that can be thrown by the application.
- network: Contains the abstract class that defines the methods that the data sources must implement.
- usecase: Contains the abstract class that defines the methods that the use cases must implement.
- utils: Contains all the utility classes that can be used by the application.

### Config
This layer contains all the configuration of the application. It is divided into two packages:
- routes: Contains the routes (page navigation) of the application.
- theme: Contains the theme of the application.


### Features
This layer contains all the features of the application. It is divided into three packages:
- data: Contains the data sources, models, and repositories of the feature. (should be independent of the presentation layer)
- domain: Contains the entities, repositories, and use cases of the feature.
- presentation: Contains the BLoC, pages, and widgets of the feature.

Each subdirectory of the features directory contains it's own Readme file with more information about the layer.


