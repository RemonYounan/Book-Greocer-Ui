// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'on_boarding_cubit.dart';

@immutable
abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}

class OnBoardingLoadedState extends OnBoardingState {}

class OnBoardingPageChangedState extends OnBoardingState {}
