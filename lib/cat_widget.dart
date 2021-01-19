import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'states.dart';
import 'events.dart';
import 'bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CatWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final CatBloc _catBloc = BlocProvider.of<CatBloc>(context);

    return Container(
      child: Stack(
        children: [
          BlocBuilder<CatBloc, CatsState>(
              builder: (context, state) {
                if(state is EmptyState) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Text('Нажмите на кнопку внизу для загрузки фото'),
                    ),
                  );
                } else if(state is LoadedState){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: CachedNetworkImage(
                      imageUrl: state.loadedCat,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  );
                } else if(state is ErrorState){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Text('ERROR'),
                    ),
                  );
                } else if(state is LoadingState){
                  _catBloc.add(Loading());
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else {
                  return Container();
                }
              }

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(onPressed: () {
                _catBloc.add(Loading());
            },
              child: Text('NEXT'),
            ),
          )
        ],
      )
    );
  }
}

