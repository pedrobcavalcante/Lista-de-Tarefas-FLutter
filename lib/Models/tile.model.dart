import 'package:mobx/mobx.dart';
part 'tile.model.g.dart';

class TileModel = _TileModelBase with _$TileModel;

abstract class _TileModelBase with Store {
  @observable
  String title;
  @observable
  dynamic leading;
  @observable
  String subtitle;
  @observable
  bool isClicked;
  _TileModelBase(
      {this.isClicked = false,
      this.leading,
      this.subtitle = '',
      this.title = ''});
}
