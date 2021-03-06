import 'package:flutter/material.dart';

import 'package:devquiz/view/home/home_repository.dart';
import 'package:devquiz/view/home/home_state.dart';
import 'package:devquiz/view/shared/models/quiz_model.dart';
import 'package:devquiz/view/shared/models/user_model.dart';

class HomeController {
  // O value notifier eh um tipo de notificador advindo do proprio flutter, sem precisar de uma biblioteca
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;

    user = await repository.getUser();

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;

    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
