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

final supabase = Supabase.instance.client;

Future<String> newUserGetUsername(String userId) async {
  //final supabase = Supabase.instance.client;

  final dynamic data = await supabase
      .from('profiles')
      .select('username')
      .eq('user_id', userId)
      .execute();

  //final dynamic result = (data['user_id'] ?? '') as String;

  return data;
}
