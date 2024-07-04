// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

import 'package:cloud_functions/cloud_functions.dart';

Future createUsers(
    String email,
    String password,
    String endereco,
    String telefone,
    String responsavel,
    String emailResp,
    String telResp,
    String instituicao,
    String biblioteca,
    String? resp2,
    String? telResp2,
    String? emailResp2,
    String cargoResp,
    String? cargoResp2,
    String cep) async {
  final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
    'createUser',
  );
  try {
    final HttpsCallableResult result = await callable.call({
      'email': email,
      'senha': password,
      'biblioteca': biblioteca,
      'endereco': endereco,
      'telefone': telefone,
      'responsavel': responsavel,
      'emailResp': emailResp,
      'telResp': telResp,
      'instituicao': instituicao,
      'responsavel2': resp2,
      'telResp2': telResp2,
      'emailResp2': emailResp2,
      'cargoResp': cargoResp,
      'cargoResp2': cargoResp2,
      'cep': cep,
    });
    print('User created: ${result.data}');
  } catch (e) {
    print('Error: $e');
  }
}
