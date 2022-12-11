import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  
  int currentIndex = 0;
  void pageViewChanged(int newIndex) {
    currentIndex = newIndex;
    emit(OnBoardingPageChangedState());
  }
}
