// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PathProvider on _PathProviderBase, Store {
  final _$controllerAtom = Atom(name: '_PathProviderBase.controller');

  @override
  TextEditingController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(TextEditingController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  final _$tarefasAtom = Atom(name: '_PathProviderBase.tarefas');

  @override
  List<TileModel> get tarefas {
    _$tarefasAtom.reportRead();
    return super.tarefas;
  }

  @override
  set tarefas(List<TileModel> value) {
    _$tarefasAtom.reportWrite(value, super.tarefas, () {
      super.tarefas = value;
    });
  }

  final _$_PathProviderBaseActionController =
      ActionController(name: '_PathProviderBase');

  @override
  dynamic add(TextEditingController title) {
    final _$actionInfo = _$_PathProviderBaseActionController.startAction(
        name: '_PathProviderBase.add');
    try {
      return super.add(title);
    } finally {
      _$_PathProviderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clicked(dynamic index) {
    final _$actionInfo = _$_PathProviderBaseActionController.startAction(
        name: '_PathProviderBase.clicked');
    try {
      return super.clicked(index);
    } finally {
      _$_PathProviderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controller: ${controller},
tarefas: ${tarefas}
    ''';
  }
}
