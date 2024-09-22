import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/viewModal/home_vm.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeVm>(
      create:(ctx)=>HomeVm(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("kkk"),
        ),
    body: Column(children: [
    Consumer<HomeVm>(builder: (ctx,home,child){
    return Center(child: Text("${home.counter}"),);
    })


    ],),
    floatingActionButton: Consumer<HomeVm>(
      builder: (context,home,child) {
        return FloatingActionButton(onPressed: () {
          home.addCounter();

        },
          child: Icon(Icons.add),
        );
      }
    ),
    ),
    );

  }
}
