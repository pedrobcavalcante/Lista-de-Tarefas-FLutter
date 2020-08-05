import 'dart:convert';
import 'dart:io';
import 'package:listadetarefas/Models/tile.model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';
part 'home.controller.g.dart';

class PathProvider = _PathProviderBase with _$PathProvider;

abstract class _PathProviderBase with Store {
  @observable
  TextEditingController controller = TextEditingController();
  @observable
  List<TileModel> tarefas = ObservableList<TileModel>();

  Future<File> getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("{$directory.path}/data.json");
  }

  Future saveData() async {
    String data = json.encode(tarefas);
    final file = await getFile();
    return file.writeAsString(data);
  }

  Future<String> readData() async {
    var file;
    try {
      file = await getFile();
    } catch (e) {
      file = '';
    }
    return file;
  }

  @action
  add(TextEditingController title) {
    TileModel tile = TileModel(title: title.text);
    tarefas.add(tile);
    controller = TextEditingController(text: '');
  }

  @action
  clicked(index) {
    print('Primeiro Valor: ${tarefas[index].isClicked}');
    tarefas[index].isClicked = !tarefas[index].isClicked;
    print('Segundo Valor: ${tarefas[index].isClicked}');
  }
}

PathProvider data = PathProvider();
