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
