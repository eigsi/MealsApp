# Meals App IDATA2503

The objective of this project is to create a cross-plateform recipe app using `Flutter`, available on Android and IOS .
there are different categories of dishes, and the user can filter the recipes at his convenience.

## Project Features

This project runs on `dart` and can be launched on the simulator of your choice using `Android studio` for Android devices, and `Xcode` pour IOS devices, and allows you to simulate a fonctional quizz application.
- There are 10 categories, offering a total of 10 meals.
- There is a favorite section where the user can find the recipes he saved.
- Users can now select a meal difficulty level (easy, challenging, or hard) in the filters section.
- In the categories screen, only categories containing meals that match the selected filters are displayed.


## Project Prerequisites
You need at least one emulateur to run this project, like `Android studio` or `Xcode`. You also need to install flutter on your device.
To set up your flutter environement, you can follow the [macOS Setup](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/learn/lecture/37213684#overview) or [Windows Setup](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/learn/lecture/37213680#overview) video from the course "A Complete Guide to the Flutter FrameWork on Udemy.

## Installation
1. **Clone the GitHub repo**
```bash
git clone https://github.com/eigsi/MealsApp.git
cd MealsApp
```
2. **Look for a simulator device to use**
```bash
flutter devices
```
3. **run the Application**
```bash
flutter run -d [device id]
```
4. **refresh after changes**
```bash
flutter hot reload
```

## Recipes Material
The data of the app are in the file `/lib/data/dummy_data.dart`


## User Stories
- The user can find recipes sort by categories and follow them
- The user can see the time required for each recipe, their complexity and cost
- The user can add meals to the favorite section to find them easily
- The user can add filters to sort displayed meals

