import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manufactruingstore/bloc/register_user_cubit/register_user_state.dart';

class RegisterUserCubit extends Cubit<RegisterUserStates> {
  RegisterUserCubit() : super(RegisterUserInitialState());
  static RegisterUserCubit get(context) => BlocProvider.of(context);
  bool agree = false;
  void confirmLicences() {
    agree = !agree;
    emit(AgreeLicencesState());
  }
}
