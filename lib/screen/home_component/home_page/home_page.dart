part of '../home_component.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
          if(state is homePageLoading){
            // TODO: setState with isLoading(bool) is true to tell screen now is loading time
          }
          if(state is homePageFailed){
            // TODO: send a message using event.message using any notification or snackbar
          }
          if(state is homePageSuccess){
            // TODO: Make any changes from data being process inside home_bloc -> _homePageMethodTest
          }
          if(state is homePageFinished){
            // TODO: setState with isLoading(bool) is false to tell screen now loading is done

          }
        },
        child: Container(
          // TODO: Do something here
        ),
      ),
    );
  }
}
