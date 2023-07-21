# Flutter Profile Edit

## Environment

- Flutter Version: 3.10.6

## Application Demo:

![](https://camo.githubusercontent.com/227cc79a6575a12361346c04a977641c3ba2320bf7a4d77aba4610c07204e263/68747470733a2f2f687263646e2e6e65742f73335f7075622f697374726565742d6173736574732f3946714c6856777542485043477a44465961675255412f656469742d70726f66696c652e676966)

## Functionality Requirements

Create a profile screen, as shown above. Application requirements are given below, and the finished application must pass all of the unit tests.

Your task is to complete the implementation of `lib/profile_edit.dart` according to the following requirements:

- The app consists of two views:
  - In the initial view, the profile view should
    - display the name of the user
    - display the email of the user
    - display the edit button on top of the screen
    - hide the inputs for name and email
    - hide the save button
  - Clicking on the edit button, the profile view should be hidden and the edit view should be made visible.
    - the name, the email screen, and the edit button should be hidden.
    - the edit new screen with input for name, email, and a save button should be shown.
- The user should be able to change the name and email in the inputs on the edit screen.
- Clicking on the save button should update the name and email in the initial profile screen too.
- You can set anything as the name and email to display on the initial profile screen.

Initially, the file is filled with boilerplate code.

## Testing Requirements

- The `Name` input widget must use `TextFormField` class.
- The `Email` input widget must use `TextFormField` class.
- The `Name` text widget must use `Text` class.
- The `Email` text widget must use `Text` class.
- The `SAVE` button widget must use `ElevatedButton` class.
- The `EDIT` button must use `OutlinedButton` class.
- The `Email` input must have key=`email`.
- The `Email` text must have key=`email`.
- The `Name` input must have key=`name`.
- The `Name` text must have key=`name`.

Please note that the widgets use the above classes for test cases for rendering purposes. It is advised not to change them.

## Project Specifications

**Read Only Files**

- `test/widget_test.dart`
- `lib/main.dart`

**Commands**

```bash
flutter run --no-sound-null-safety
```

- install:

```bash
flutter pub  get
```

- test:

```bash
flutter test --no-sound-null-safety test/widget_test.dart
```
