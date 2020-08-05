// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile.model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TileModel on _TileModelBase, Store {
  final _$titleAtom = Atom(name: '_TileModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$leadingAtom = Atom(name: '_TileModelBase.leading');

  @override
  dynamic get leading {
    _$leadingAtom.reportRead();
    return super.leading;
  }

  @override
  set leading(dynamic value) {
    _$leadingAtom.reportWrite(value, super.leading, () {
      super.leading = value;
    });
  }

  final _$subtitleAtom = Atom(name: '_TileModelBase.subtitle');

  @override
  String get subtitle {
    _$subtitleAtom.reportRead();
    return super.subtitle;
  }

  @override
  set subtitle(String value) {
    _$subtitleAtom.reportWrite(value, super.subtitle, () {
      super.subtitle = value;
    });
  }

  final _$isClickedAtom = Atom(name: '_TileModelBase.isClicked');

  @override
  bool get isClicked {
    _$isClickedAtom.reportRead();
    return super.isClicked;
  }

  @override
  set isClicked(bool value) {
    _$isClickedAtom.reportWrite(value, super.isClicked, () {
      super.isClicked = value;
    });
  }

  @override
  String toString() {
    return '''
title: ${title},
leading: ${leading},
subtitle: ${subtitle},
isClicked: ${isClicked}
    ''';
  }
}
