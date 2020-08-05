import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../home.controller.dart';

class Views {
  static Container container() => Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(17, 1, 7, 1),
              child: Row(
                children: <Widget>[
                  Expanded(child: Observer(builder: (_) {
                    return TextField(
                      controller: data.controller,
                      decoration: InputDecoration(
                          labelText: "Nova Tarefa",
                          labelStyle: TextStyle(color: Colors.blueAccent)),
                    );
                  })),
                  RaisedButton(
                      color: Colors.blueAccent,
                      child: Text("ADD"),
                      textColor: Colors.white,
                      onPressed: () {
                        data.add(data.controller);
                      })
                ],
              ),
            ),
            Observer(builder: (_) {
              return Expanded(
                child: ListView.builder(
                  addAutomaticKeepAlives: true,
                  itemCount: data.tarefas.length,
                  itemBuilder: (context, index) => Observer(
                    builder: (_) {
                      print('buiding');
                      return ListTile(
                        title: Text(data.tarefas[index].title),
                        leading: data.tarefas[index].leading ??
                            FlutterLogo(size: 72.0),
                        subtitle: Text(data.tarefas[index].subtitle),
                        trailing: data.tarefas[index].isClicked
                            ? Icon(
                                Icons.star,
                                color: Colors.yellow,
                              )
                            : Icon(Icons.star_border),
                        isThreeLine: true,
                        onTap: () => data.clicked(index),
                      );
                    },
                  ),
                ),
              );
            })
          ],
        ),
      );
}
