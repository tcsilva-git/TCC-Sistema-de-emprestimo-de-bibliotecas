// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_functions/cloud_functions.dart';

Future deleteUser(String userRef) async {
  // Add your function code here!
  final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
    'deleteUser',
  );
  try {
    final HttpsCallableResult result = await callable.call({
      'userRef': userRef,
    });
    print('User deleted: ${result.data}');
  } catch (e) {
    print('Error: $e');
  }
}
