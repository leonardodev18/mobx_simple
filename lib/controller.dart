import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

  @computed
  String get nomecompleto => "$nome $sobrenome";

  mudarNome(String newName) {
    nome = newName;
  }

  mudarSobrenome(String newName) {
    sobrenome = newName;
  }
}
