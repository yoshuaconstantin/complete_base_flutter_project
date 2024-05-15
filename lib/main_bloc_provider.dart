import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home/home_bloc.dart';

///This class consist of list bloc provider for better maintability, readability and cleaner code inside main.dart
class ListOfBlockProvider{

  var blocProvider = [
    BlocProvider(create: (context) => HomeBloc()),
  ];
}