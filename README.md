# InfoMovie

InfoMovie is a mobile application for searching and viewing information about movies. The application allows users to search for movies by various criteria and display detailed information about the selected movie.

## Functionalities

InfoMovie provides the following features:

- Search for movies by title, genre, or actor's name.
- Display search results on the same page as the search form.
- Support for two platforms: iOS and Android using Xamarin.Forms.
- Use of the MVVM pattern.
- Storage of movie data in a local SQLite database.
- Additional advantage is the use of Entity Framework as an ORM.
- Unified code style with minimal comments for better readability.
- Documentation describing functionality and deployment instructions.

## Deployment Instructions

1. Clone the repository using the command:
   git clone https://github.com/your-username/InfoMovie.git

2. Open the InfoMovie solution in Visual Studio for Mac.

3. Ensure that all required NuGet packages are installed. If not, restore NuGet packages.

4. Build the project to ensure that the application compiles without errors.

5. Select the target platform (iOS or Android) and launch the application on the emulator or a real device.

6. After successful launch, you can use the InfoMovie application to view information about movies.

## Additional Information

- Additional information about the features and usage of the application can be found in the documentation within the code.
- All movie data is loaded from the built-in SQLite database and stored locally on the user's device.
- Movies can be added via a JSON file (movies.json) located in the root folder of the project.

## Authors

- Usolcev Vitaliy @ra5kolnikov - developer
