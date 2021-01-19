import 'package:flutter/cupertino.dart';

abstract class CatsState{}

class EmptyState extends CatsState{}

class LoadingState extends CatsState{}

class LoadedState extends CatsState{
  String loadedCat;
  LoadedState({@required this.loadedCat}) : assert(loadedCat != null);
}

class ErrorState extends CatsState{

}