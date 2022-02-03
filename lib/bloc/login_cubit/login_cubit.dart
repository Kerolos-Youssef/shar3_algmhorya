import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);
  bool userAccount = false;

  void changeAccountType(bool user) {
    userAccount = user;
    emit(ChangeAccountTypeColorsState());
  }
}
