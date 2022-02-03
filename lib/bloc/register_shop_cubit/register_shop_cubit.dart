import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manufactruingstore/bloc/register_shop_cubit/register_shop_state.dart';

class RegisterShopCubit extends Cubit<RegisterShopStates> {
  RegisterShopCubit() : super(RegisterInitialState());
  static RegisterShopCubit get(context) => BlocProvider.of(context);
  bool agree = false;
  void confirmLicences() {
    agree = !agree;
    emit(ChangeAgreementState());
  }
}
