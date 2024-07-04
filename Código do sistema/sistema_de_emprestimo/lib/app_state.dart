import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _menuSelecionado = 'Cadastrar Usuário';
  String get menuSelecionado => _menuSelecionado;
  set menuSelecionado(String value) {
    _menuSelecionado = value;
  }

  String _menuSelecIndex = 'solicitar';
  String get menuSelecIndex => _menuSelecIndex;
  set menuSelecIndex(String value) {
    _menuSelecIndex = value;
  }

  bool _menu = true;
  bool get menu => _menu;
  set menu(bool value) {
    _menu = value;
  }
}
