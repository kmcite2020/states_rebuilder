import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/code_view.dart';

class FormzPage extends StatelessWidget {
  const FormzPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CodeView(text: '''
## Working with TextFields and Form validation

To deal with TextFields and Form validation

  ```dart
  final email =  RM.injectTextEditing():

  final password = RM.injectTextEditing(
    validators: [
      (String? value) {
        if (value!.length < 6) {
          return "Password must have at least 6 characters";
        }
        return null;
      },
    ],
  );

    final acceptLicence = RM.injectedFormField(
    validators: [
      (bool? value) {
        if (bool != true) {
          return "You have to accept the licence";
        }
        return null;
      },
    ],
  );

  final form = RM.injectForm(
    autovalidateMode: AutovalidateMode.disable,
    autoFocusOnFirstError: true,
    submit: () async {
      // This is the default submission logic:
      //  1. it may be override when calling form.submit( () async { });
      //  2. it may contains server validation.
      await serverError =  authRepository.signInWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );
        // After server validation
        if(serverError == 'Invalid-Email'){
          email.error = 'Invalid email';
        }
        if(serverError == 'Weak-Password'){
          email.error = 'Password must have more the 6 characters';
        }
    },
    onSubmitting: () {
      // Called while waiting for form submission,
    },
    onSubmitted: () {
      // Called after form is successfully submitted
      // for example: navigation to user page
    }
  );
  ```

  In the UI:

  ```dart
    OnFormBuilder(
      listenTo: form,
      builder: () => Column(
        children: <Widget>[
            TextField(
                focusNode: email.focusNode,
                controller: email.controller,
                decoration: InputDecoration(
                  errorText: email.error,
                ),
                onSubmitted: (_) {
                  // Request the password node
                  password.focusNode.requestFocus();
                },
            ),
            TextField(
                focusNode: password.focusNode,
                controller: password.controller,
                decoration: new InputDecoration(
                  errorText: password.error,
                ),
                onSubmitted: (_) {
                  // Request the submit button node
                  form.submitFocusNode.requestFocus();
                },
            ),
            OnFormFieldBuilder<bool>(
              listenTo: acceptLicence,
              builder: (value, onChanged){
                return CheckBoxListTile(
                  value: value,
                  onChanged: onChanged,
                  title: Text('Do you accept the licence?'),
                )
              }
            ),
            OnFormSubmissionBuilder(
              listenTo: form,
              onSubmitting: () => CircularProgressIndicator(),
              child : ElevatedButton(
                focusNode: form.submitFocusNode,
                onPressed: (){
                    form.submit();
                },
                child: Text('Submit'),
              ),
            ),     
        ],
      ),
  ),
  ```

- [🔍 See more detailed information about `InjectedTextEditing, InjectedFormField, and InjectedForm`](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_text_editing_api).

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
