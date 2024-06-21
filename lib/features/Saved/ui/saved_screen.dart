import 'package:beka_store/core/widgets/normal_text.dart';
import 'package:beka_store/features/Home/logic/HomeBloc/home_bloc.dart';
import 'package:beka_store/features/Home/logic/HomeBloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Home/ui/widgets/item_widget.dart';

class SavedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc,HomeState>(
        builder: (context,state) {
          if(state is HomeLoadedState){
            return ListView.builder(
              itemCount: state.savedItems?.length,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: state.savedItems![index]!
                );
              },
            );
          }
          else{
          return Center(
            child: NormalTextWidget(
              text: "No Items Yet!",
              fontSize: 18,
            ),
          );
          }
        }
      ),
    );
  }
}
