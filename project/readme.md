# Project folder

Our project folder is set up as:
- hardware
- software
    - backend
    - frontend_mobile (Flutter)
    - frontend_web (React)

# Backend
## Express
1. Navigate to `software/backend` folder and run `npm i` to install dependencies.
2. Use `npm start` to run the server and access the express page through `http://localhost:3000/`.

## MongoDB
1. Accept the MongoDB invite
2. Through MongoDB, add yourself as a database user and your network through "Database Access" and "Network Access" on the navigation bar on the left.
3. Navigate to `backend/public/javascript` and at the beginning the file `DatabaseService.js` update username and password with yours that you created in step 2. **Do not commit your username and password**
4. Run `node DatabaseService.js` and verify that the printed result is 
```
{ title: 'The Room', imdb: { rating: 3.5, votes: 25673, id: 368226 } }
```

# Frontend - Web Application
1. Navigate to `software/frontend-web` folder
2. Run `npm i` to install dependencies.
3. Use `npm run dev` to run web application and access the page through `http://localhost:5173/`.

# Frontend - Mobile Application
## Install tools
1. Follow along with the [Flutter](https://docs.flutter.dev/get-started/install) installation website to install Flutter.
2. Install [Android Studio](https://developer.android.com/studio) and [Xcode](https://developer.apple.com/xcode/resources/), which allows you to use the Android and iOS simulators.
    * Android Studio: Open Android Studio :arrow_right: go to `Plugins` :arrow_right: search "Flutter" :arrow_right: cick `Install` (also install Dart). Go to `More Actions` :arrow_right: select `SDK Manager` :arrow_right: navigate to `Android SDK` :arrow_right: select `SDK Tools` option :arrow_right: install `Android SDK Command-line tools (latest)`. Run `flutter doctor --android-licenses` to accept the licences.
    * Xcode: Open Xcode :arrow_right: select `Settings` :arrow_right: select `location` tab :arrow_right: select version of Xcode in the `Command Line Tools` selector. You also have to install cocoapods by running `sudo gem install cocoapods` in your terminal

To check whether you have installed everything successfully, run `flutter doctor` in your terminal and you should get green ticks for Flutter, Android Studio and Xcode.

## Run the project
1. Clone the project
2. Use either the terminal or the Visual Studio Code to launch the project...
    * **Terminal**
        1. Launch either the iOS simulator `open -a Simulator` or the Andriod simulator (open Android Studio :arrow_right: click on `More Actions` :arrow_right: select `Virtual Device Manager` :arrow_right: then select the device)
        2. Go into the application directory `cd frontend-mobile`
        3. Run the Flutter app `flutter run`
    * **VS Code**
        1. Open the cloned project
        2. Select emluator: Press `Cmd+Shift+P` on keyboard for macOS or press `Ctrl+Shift+P` for Windows :arrow_right: choose `Flutter: Launch Emulator` :arrow_right: then choose either the iOS or the Andriod emulator. 
        3. Open the `main.dart` file and launch the application by click on `Run` :arrow_right: then click `Run Without Debugging`.
