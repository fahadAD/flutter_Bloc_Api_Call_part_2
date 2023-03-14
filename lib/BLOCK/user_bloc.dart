import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../SERVICES/api_call.dart';
import '../api_service.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {

  Api_Services _api_services=Api_Services();

List<Samijson> sami_json_list=[];

  UserBloc() : super(UserInitial()) {
    on<user_All_data>((event, emit) async{

     emit(user_loding());

     sami_json_list=(await _api_services.getUser_data())!;

     emit(user_data_loding(sami_json_list));


    });
  }
}
