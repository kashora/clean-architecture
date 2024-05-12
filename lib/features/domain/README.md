# Domain Layer
The domain layer is the core of the application. It contains the business logic and the entities that are used to represent the data. The domain layer is independent of the presentation layer and the data layer. It is a pure date module that does not have any dependencies on flutter framework.

## Entities
**Entities** are *Business objects* of the application. (what kind of data the application will use).

In our case, the api we use return `Article` which contains the following fields `Author`, `Title`, `Description`, `Url`, `UrlToImage`, `PublishedAt`, `Content`.


## Repositories
**Repositories** are the interface that the data layer will implement. It contains the methods that the data layer must implement to fetch the data.
works as a bridge between the data layer and the domain layer.

```
Domain --> Repository <-- Data
```
