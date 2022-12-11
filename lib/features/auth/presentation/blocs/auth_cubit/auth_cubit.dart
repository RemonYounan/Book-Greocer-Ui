import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  bool _obscure = true;
  bool get obscure {
    return _obscure;
  }

  void toggleObscure() {
    _obscure = !_obscure;
    emit(ObscureToggledState());
  }
}
