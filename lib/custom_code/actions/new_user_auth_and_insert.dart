// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future newUserAuthAndInsert(
  String? emailInput,
  String passwordInput,
  String? userName,
) async {
  final supabase = Supabase.instance.client;

  final userObj =
      await supabase.auth.signUp(email: emailInput, password: passwordInput);

  final userId = Supabase.instance.client.auth.currentUser!.id;

  final res = await supabase.from('profiles').insert([
    {'user_id': userId, 'email': emailInput, 'username': userName}
  ]).execute();
}
