# flutter_application_1

A new Flutter project.

### Notes

We are using getx to manage state and do routes

state management using getX

1. Go and install from pub.dev (get)

Our state is stored in the controller folder
for example for the calculator
we create a calculator controller

## Routes

create a file to handle routes in utils
in the routes.dart create your routes
in the main.dart, use GetMaterialApp
pass the initial route and getPages in the main.dart inside GetMaterialApp.

# Routing Option

Get.toNamed("/home"); //allow user to come back there with back arror
Get.offAndToNamed("/home"); //no back arrow once navigated
