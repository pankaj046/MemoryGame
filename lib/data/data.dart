
import 'package:memory_game/model/TileModel.dart';

int point = 0;
int hpoint = 0;
bool isSelected = false;
List<TileModel> pairs = new List<TileModel>();
String selectedImagePath = "";
int selectedTileIndex;
List<TileModel> visiblePairs = new List<TileModel>();

List<TileModel> getPairs(){

  List<TileModel> pairs = new List<TileModel>();
  pairs.add(new TileModel('assets/images/game1/fox.png', false));
  pairs.add(new TileModel('assets/images/game1/fox.png', false));
  pairs.add(new TileModel('assets/images/game1/zoo.png', false));
  pairs.add(new TileModel('assets/images/game1/zoo.png', false));
  pairs.add(new TileModel('assets/images/game1/hippo.png', false));
  pairs.add(new TileModel('assets/images/game1/hippo.png', false));
  pairs.add(new TileModel('assets/images/game1/horse.png', false));
  pairs.add(new TileModel('assets/images/game1/horse.png', false));
  pairs.add(new TileModel('assets/images/game1/monkey.png', false));
  pairs.add(new TileModel('assets/images/game1/monkey.png', false));
  pairs.add(new TileModel('assets/images/game1/parrot.png', false));
  pairs.add(new TileModel('assets/images/game1/parrot.png', false));
  pairs.add(new TileModel('assets/images/game1/panda.png', false));
  pairs.add(new TileModel('assets/images/game1/panda.png', false));
  pairs.add(new TileModel('assets/images/game1/rabbit.png', false));
  pairs.add(new TileModel('assets/images/game1/rabbit.png', false));
  return pairs;
}

List<TileModel> getQuestions(){

  List<TileModel> pairs = new List<TileModel>();
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  return pairs;
}


List<TileModel> getHPairs(){

  List<TileModel> pairs = new List<TileModel>();
  pairs.add(new TileModel('assets/images/game1/fox.png', false));
  pairs.add(new TileModel('assets/images/game1/fox.png', false));
  pairs.add(new TileModel('assets/images/game1/zoo.png', false));
  pairs.add(new TileModel('assets/images/game1/zoo.png', false));
  pairs.add(new TileModel('assets/images/game1/hippo.png', false));
  pairs.add(new TileModel('assets/images/game1/hippo.png', false));
  pairs.add(new TileModel('assets/images/game1/horse.png', false));
  pairs.add(new TileModel('assets/images/game1/horse.png', false));
  pairs.add(new TileModel('assets/images/game1/monkey.png', false));
  pairs.add(new TileModel('assets/images/game1/monkey.png', false));
  pairs.add(new TileModel('assets/images/game1/parrot.png', false));
  pairs.add(new TileModel('assets/images/game1/parrot.png', false));
  pairs.add(new TileModel('assets/images/game1/panda.png', false));
  pairs.add(new TileModel('assets/images/game1/panda.png', false));
  pairs.add(new TileModel('assets/images/game1/rabbit.png', false));
  pairs.add(new TileModel('assets/images/game1/rabbit.png', false));
  pairs.add(new TileModel('assets/images/game1/zebra.png', false));
  pairs.add(new TileModel('assets/images/game1/zebra.png', false));
  pairs.add(new TileModel('assets/images/game1/lion.png', false));
  pairs.add(new TileModel('assets/images/game1/lion.png', false));
  pairs.add(new TileModel('assets/images/game1/giraffe.png', false));
  pairs.add(new TileModel('assets/images/game1/giraffe.png', false));
  pairs.add(new TileModel('assets/images/game1/pelican.png', false));
  pairs.add(new TileModel('assets/images/game1/pelican.png', false));
  return pairs;
}

List<TileModel> getHQuestions(){

  List<TileModel> pairs = new List<TileModel>();
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  pairs.add(new TileModel('assets/images/game1/question.png', false));
  return pairs;
}