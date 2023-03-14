part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable{

}

class UserInitial extends UserState {
  @override

  List<Object?> get props =>  [];

}

class user_loding extends UserState{
  @override

  List<Object?> get props => [];

}

class user_data_loding extends UserState{

  @override



  List <Samijson> userModel=[];

user_data_loding(this.userModel);

  List<Object?> get props => [userModel];
}