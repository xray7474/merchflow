import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _AccessToken = prefs.getString('ff_AccessToken') ?? _AccessToken;
    _UserEmail = prefs.getString('ff_UserEmail') ?? _UserEmail;
    _UserProfileUrl = prefs.getString('ff_UserProfileUrl') ?? _UserProfileUrl;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _currentPage = 'dashboard';
  String get currentPage => _currentPage;
  set currentPage(String _value) {
    _currentPage = _value;
  }

  String _AccessToken = '';
  String get AccessToken => _AccessToken;
  set AccessToken(String _value) {
    _AccessToken = _value;
    prefs.setString('ff_AccessToken', _value);
  }

  String _UserName = '';
  String get UserName => _UserName;
  set UserName(String _value) {
    _UserName = _value;
  }

  String _UserEmail = '';
  String get UserEmail => _UserEmail;
  set UserEmail(String _value) {
    _UserEmail = _value;
    prefs.setString('ff_UserEmail', _value);
  }

  String _UserProfileUrl = '';
  String get UserProfileUrl => _UserProfileUrl;
  set UserProfileUrl(String _value) {
    _UserProfileUrl = _value;
    prefs.setString('ff_UserProfileUrl', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
