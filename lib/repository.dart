import 'provider.dart';

class Repository {

  Provider _provider = Provider();
  Future <String> getData() => _provider.getImageUrl();

}