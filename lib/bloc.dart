import 'package:flutter_bloc/flutter_bloc.dart';
import 'events.dart';
import 'states.dart';
import 'repository.dart';

class CatBloc extends Bloc<Event, CatsState>{

  final Repository repository;
  CatBloc({this.repository}) : super(EmptyState());

  @override
  Stream<CatsState> mapEventToState(Event event) async*{

    if(event is Loading){
      try{
        final String _loadedCat = await repository.getData();
        if(_loadedCat == null){
          yield EmptyState();
        }
        yield LoadedState(loadedCat: _loadedCat);
      } catch(_){
        yield ErrorState();
      }
    }
  }



}