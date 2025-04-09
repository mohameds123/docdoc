import 'package:alex9/core/api_paths.dart';
import 'package:alex9/data/user_model.dart';
import 'package:alex9/logic/sign_up/state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());
  Dio dio = Dio();

  Future signUp(UserModel user) async {
    emit(SignUpLoadingState());
    try {
      final response = await dio.post(
        ApiPaths.signUpUrl,
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        emit(SignUpSuccessState());
      }
    } catch (e) {
      print(e.toString());
      emit(SignUpErrorState(e.toString()));
    }
  }
}
