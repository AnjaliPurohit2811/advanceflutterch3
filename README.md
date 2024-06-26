# AdvanceFlutter3
## Connectivity Plus Package

The `connectivity_plus` package is a tool for Flutter developers that enhances connectivity management in mobile apps. It provides features to monitor network changes, check connectivity status, and handle various network scenarios, enabling more robust and responsive applications.

### Installation

To use `connectivity_plus` in your Flutter project, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  connectivity_plus: ^x.x.x


This setup ensures that the UI updates dynamically based on the network connectivity status of the device.


        body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
              if (snapshot.data!.contains(ConnectivityResult.mobile)) {
                // RETURN MOBILE DATA
                return Text('connection of mobile');
              } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
                // RETURN WIFI
                return Text('connection of wifi');
              } else {  
                // RETURN NO INTERNET CONNECTION
                return Text('no internet connection');
              }
            },
          ),
   
```



### Screenshots

<div align="center">
  <img src= "https://github.com/AnjaliPurohit2811/advanceflutterch3/assets/143180602/6cdbb89a-a6f8-4971-a66c-8b401b97b5f1"  width = 240> &nbsp;&nbsp;&nbsp;&nbsp;

   <img src= "https://github.com/AnjaliPurohit2811/advanceflutterch3/assets/143180602/2505fda1-ad27-4bb9-a3ab-4b256fe5e08e"  width = 240> &nbsp;&nbsp;&nbsp;&nbsp;


  
</div>

### Video 

[internetcheck.webm](https://github.com/AnjaliPurohit2811/advanceflutterch3/assets/143180602/da7b5e58-1de0-44eb-a7ec-21389db64e2a)

## 3.2 Chrome : flutter_inappwebview Package


`flutter_inappwebview` is a Flutter package that allows you to embed WebView widgets into your Flutter application with ease. It provides a comprehensive set of features and functionalities, enabling you to control web content dynamically.

## Installation

Run `flutter pub get` to install the package.

## Usage

Here's a simple example demonstrating how to use `InAppWebView` and control it using its methods: `goBack`, `goForward`, `reload`, and `loadUrl`.


```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectivity Network'),
        ),
        body:InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("https://flutter.dev")),
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
```

### Screenshots

<div align="center">
  <img src= "https://github.com/AnjaliPurohit2811/advanceflutterch3/assets/143180602/942be855-1de5-4009-8335-a0f721009cb2" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/AnjaliPurohit2811/advanceflutterch3/assets/143180602/dad895a3-a7f2-4a7f-8729-8f8f5251b4eb" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;

</div>

### Video 

<div align="center">
    <video src="https://github.com/AnjaliPurohit2811/advanceflutterch3/assets/143180602/efad7263-a24a-42fa-ac92-3d9c108fd65e" height=500px></div>




