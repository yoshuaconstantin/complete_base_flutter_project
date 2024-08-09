import 'package:complete_base_flutter_project/providers/bloc/home/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



///This class consist of list bloc provider for better maintainability, readability and cleaner code inside main.dart
class ListOfBlockProvider{

  var blocProvider = [
    BlocProvider(create: (context) => HomeBloc()),
  ];
}