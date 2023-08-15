# CEC CONNECT APP IN FLUTTER  
 
CEC CONNECT is a fully functional social media app with multiple features built with flutter and dart.

Star⭐ the repo if you like what you see😉.
![bmi (820 x 360 px)](https://raw.githubusercontent.com/nibinpsreenivas/CEC-CONNECT/main/image/Screenshot%20from%202023-07-07%2020-47-15.png)

## ✨ Requirements

* Any Operating System (ie. MacOS X, Linux, Windows)
* Any IDE with Flutter SDK installed (ie. IntelliJ, Android Studio, VSCode etc)
* A little knowledge of Dart and Flutter
* A brain to modify it

## Features

* student and teachers can register in the app
* Post photo posts from camera or gallery
    * View all comments on a post
* Search for users using skill keywords
* Realtime posting and Sending images
* Deleting Posts
* Profile Pages
    * profile picture
    *  username
* Notifications Feed showing recent  posts 
* calculate sgpa
* chat bot

## Screenshots


![bmi (820 x 360 px)](https://raw.githubusercontent.com/nibinpsreenivas/CEC-CONNECT/main/image/Screenshot%20from%202023-07-07%2020-47-18.png)
![bmi (820 x 360 px)](https://raw.githubusercontent.com/nibinpsreenivas/CEC-CONNECT/main/image/Screenshot%20from%202023-07-07%2020-47-20.png)
![bmi (820 x 360 px)](https://raw.githubusercontent.com/nibinpsreenivas/CEC-CONNECT/main/image/Screenshot%20from%202023-07-07%2020-47-22.png)
![bmi (820 x 360 px)](https://raw.githubusercontent.com/nibinpsreenivas/CEC-CONNECT/main/image/Screenshot%20from%202023-07-07%2020-47-24.png)




## Installation

#### 1. [Setup Flutter](https://flutter.dev/docs/get-started/install)

#### 2. Clone the repo

#### 3. Setup the firebase app

- You'll need to create a Firebase instance. Follow the instructions
  at https://console.firebase.google.com.
- Once your Firebase instance is created, you'll need to enable Google authentication.

* Go to the Firebase Console for your new instance.
* Click "Authentication" in the left-hand menu
* Click the "sign-in method" tab
* Click "Email and Password" and enable it
* Create an app within your Firebase instance for Android, with package name com.yourcompany.news
* Run the following command to get your SHA-1 key:

* In the Firebase console, in the settings of your Android app, add your SHA-1 key by clicking "Add
  Fingerprint".
* Follow instructions to download google-services.json
* place `google-services.json` into `/android/app/`.

- (skip if not running on iOS)

* Create an app within your Firebase instance for iOS, with your app package name
* Follow instructions to download GoogleService-Info.plist
* Open XCode, right click the Runner folder, select the "Add Files to 'Runner'" menu, and select the
  GoogleService-Info.plist file to add it to /ios/Runner in XCode
* Open /ios/Runner/Info.plist in a text editor. Locate the CFBundleURLSchemes key. The second item
  in the array value of this key is specific to the Firebase instance. Replace it with the value for
  REVERSED_CLIENT_ID from GoogleService-Info.plist

Double check install instructions for both

- Google Auth Plugin
    - https://pub.dartlang.org/packages/firebase_auth
- Firestore Plugin
    - https://pub.dartlang.org/packages/cloud_firestore

# What's Next?
- [] chating
- [] messaging
- [] Reels
- [] Sending and Uploading Videos(Video Compatibility)



## 🤓 Author(s)

**Nibin P Sreenivas

