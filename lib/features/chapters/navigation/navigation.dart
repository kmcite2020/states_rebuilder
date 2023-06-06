// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../widgets/code_view.dart';
import '../../widgets/paragraph_view.dart';
import '../../widgets/topic_view.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const TopicView(
            text: 'Route Management',
          ),
          const ParagraphView(
            text: '''
To use Navigator version 2,''',
          ),
          const CodeView(
            text: '''
```dart
   final InjectedNavigator myNavigator = RM.injectNavigator(
     // Define your routes map
     routes: {
       '/': (RouteData data) => Home(),
        // redirect all paths that starts with '/home' to '/' path
       '/home/*': (RouteData data) => data.redirectTo('/'),
       '/page1': (RouteData data) => Page1(),
       '/page1/page11': (RouteData data) => Page11(),
       '/page2/:id': (RouteData data) {
         // Extract path parameters from dynamic links
         final id = data.pathParams['id'];
         // OR inside Page2 you can use `context.routeData.pathParams['id']`
         return Page2(id: id);
        },
       '/page3/:kind(all|popular|favorite)': (RouteData data) {
         // Use custom regular expression
         final kind = data.pathParams['kind'];
         return Page3(kind: kind);
        },
       '/page4': (RouteData data) {
         // Extract query parameters from links
         // Ex link is `/page4?age=4`
         final age = data.queryParams['age'];
         // OR inside Page4 you can use `context.routeData.queryParams['age']`
         return Page4(age: age);
        },
        // Using sub routes
        '/page5': (RouteData data) => RouteWidget(
              builder: (Widget routerOutlet) {
                return MyParentWidget(
                  child: routerOutlet;
                  // OR inside MyParentWidget you can use `context.routerOutlet`
                )
              },
              routes: {
                '/': (RouteData data) => Page5(),
                '/page51': (RouteData data) => Page51(),
              },
            ),
     },
     //
     // Called after a location is resolved and just before navigation.
     // It is used for route guarding and global redirection.
     onNavigate: (RouteData data) {
       final toLocation = data.location;
       if (toLocation == '/homePage' && userIsNotSigned) {
         return data.redirectTo('/signInPage');
       }
       if (toLocation == '/signInPage' && userIsSigned) {
         return data.redirectTo('/homePage');
       }
     
       //You can also check query or path parameters
       if (data.queryParams['userId'] == '1') {
         return data.redirectTo('/superUserPage');
       }
     },
     //
     // Called when route is going back.
     // It is used to prevent leaving pages before date is validated
     onNavigateBack: (RouteData data) {
       if(data== null){
         // data is null when the back Button of Android device is hit and the route 
         // stack is empty.

         // returning true we will exit the app.
         // returning false we will stay on the app.
         return false;
       }
       final backFrom = data.location;
       if (backFrom == '/SingInFormPage' && formIsNotSaved) {
         RM.navigate.toDialog(
           AlertDialog(
             content: Text('The form is not saved yet! Do you want to exit?'),
             actions: [
               ElevatedButton(
                 onPressed: () => RM.navigate.forceBack(),
                 child: Text('Yes'),
               ),
               ElevatedButton(
                 onPressed: () => RM.navigate.back(),
                 child: Text('No'),
               ),
             ],
           ),
         );
 
         return false;
       }
     },
   );''',
          ),
          const ParagraphView(
            text: '''In the widget tree, use `MaterialApp.router` widget: ''',
          ),
          const CodeView(text: '''
```dart
  class MyApp extends StatelessWidget {
     const MyApp({Key? key}) : super(key: key);
 
     @override
     Widget build(BuildContext context) {
       return MaterialApp.router(
         routeInformationParser: myNavigator.routeInformationParser,
         routerDelegate: myNavigator.routerDelegate,
       );
     }
   }
  ```'''),
          const ParagraphView(
            text: '''To navigate imperatively:''',
          ),
          const CodeView(
            text: '''
```dart
  myNavigator.to('/page1');
  myNavigator.toDeeply('/page1');
  myNavigator.toReplacement('/page1', argument: 'myArgument');
  myNavigator.toAndRemoveUntil('/page1', queryParam: {'id':'1'});
  myNavigator.back();
  myNavigator.backUntil('/page1');
  ```''',
          ),
          const ParagraphView(text: '''
To navigate declaratively:'''),
          const CodeView(
            text: '''  ```dart
  myNavigator.setRouteStack(
    (pages){
      // exposes a copy of the current route stack
      return [...newPagesList];
    }
  )
  ```''',
          ),
          const ParagraphView(
            text: '''To navigate to pageless routes, show dialogs and snackBars without `BuildContext`:''',
          ),
          const CodeView(
            text: '''
  ```dart
  myNavigator.toPageless(HomePage());
  RM.navigate.toDialog(AlertDialog( ... ));
  RM.scaffoldShow.snackbar(SnackBar( ... ));''',
          ),
          const ParagraphView(text: '''
You can easily change page transition animation, using one of the predefined TransitionBuilder or just define yours.


- [🔍 See more detailed information about router](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_navigator_api).
''')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
