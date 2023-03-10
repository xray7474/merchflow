import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://fjuqhkcsuncjjbllaepn.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZqdXFoa2NzdW5jampibGxhZXBuIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzczNDk1MDIsImV4cCI6MTk5MjkyNTUwMn0.r3yboEHYV7FFtgwTaaxjnEpUBV0X9mBp-CaJQhkM-TM';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
