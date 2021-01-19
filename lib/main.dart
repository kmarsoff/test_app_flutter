import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_flutter/repository.dart';
import 'bloc.dart';
import 'cat_widget.dart';
import 'events.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Repository _repository = Repository();

  @override
  Widget build(BuildContext context) {

    return BlocProvider<CatBloc>(
        create: (context) => CatBloc(repository: _repository),
        child: Scaffold(
            body: CatWidget(),
        )
    );
  }
}
