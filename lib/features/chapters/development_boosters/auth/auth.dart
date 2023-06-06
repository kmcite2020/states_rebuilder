import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ParagraphView(text: '''## Authentication and authorization

To authenticate and authorize users,

  ```dart
  final user = RM.injectAuth<User?, Param>(
      ()=> MyAuthRepository(),// Implements IAuth<User?, Param>
      autoRefreshTokenOrSignOut: (user)=> Duration(seconds: user.tokenExpiryDate)
  );
  ```

  ```dart
  // in the widget tree
  OnAuthBuilder(
    listenTo: user,
    onUnsigned: ()=> LoginPage(),
    onSigned: ()=> UserHomePage(),
  )
  // later on: 
  // Sign up
  user.auth.signUp((param)=> Param());
  // Sign in
  user.auth.signIn((param)=> Param());
  // Sign out
  user.auth.signOut();
  ```

- [🔍 See more detailed information about `InjectAuth`](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_auth_api).

- [**Here is a typical auth app**](https://github.com/GIfatahTH/states_rebuilder/blob/dev/examples/ex006_00_authentication_and_authorization).

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
