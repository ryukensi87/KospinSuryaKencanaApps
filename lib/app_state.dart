import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _waRegister = prefs.getString('ff_waRegister') ?? _waRegister;
    });
    _safeInit(() {
      _namaRegister = prefs.getString('ff_namaRegister') ?? _namaRegister;
    });
    _safeInit(() {
      _noTlp = prefs.getString('ff_noTlp') ?? _noTlp;
    });
    _safeInit(() {
      _password = prefs.getString('ff_password') ?? _password;
    });
    _safeInit(() {
      _isAdmin = prefs.getBool('ff_isAdmin') ?? _isAdmin;
    });
    _safeInit(() {
      _isLogin = prefs.getBool('ff_isLogin') ?? _isLogin;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _waRegister = '';
  String get waRegister => _waRegister;
  set waRegister(String _value) {
    _waRegister = _value;
    prefs.setString('ff_waRegister', _value);
  }

  String _namaRegister = '';
  String get namaRegister => _namaRegister;
  set namaRegister(String _value) {
    _namaRegister = _value;
    prefs.setString('ff_namaRegister', _value);
  }

  String _noTlp = '';
  String get noTlp => _noTlp;
  set noTlp(String _value) {
    _noTlp = _value;
    prefs.setString('ff_noTlp', _value);
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
    prefs.setString('ff_password', _value);
  }

  bool _isAdmin = false;
  bool get isAdmin => _isAdmin;
  set isAdmin(bool _value) {
    _isAdmin = _value;
    prefs.setBool('ff_isAdmin', _value);
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool _value) {
    _isLogin = _value;
    prefs.setBool('ff_isLogin', _value);
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
