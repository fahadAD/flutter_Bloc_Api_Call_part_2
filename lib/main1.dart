import 'package:block_part2/BLOCK/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    context.read<UserBloc>().add(user_All_data());

    return Scaffold(
      appBar: AppBar(),

      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is user_loding) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            );
          }
          if (state is user_data_loding) {
            return ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: state.userModel.length,
              itemBuilder: (BuildContext context, int index) {
                var data = state.userModel[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    child: ListTile(
                      title: Text("${data.name}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
