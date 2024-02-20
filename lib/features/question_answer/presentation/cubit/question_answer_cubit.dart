// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'question_answer_state.dart';

class QuestionAnswerCubit extends Cubit<QuestionAnswerState> {
  QuestionAnswerCubit() : super(QuestionAnswerInitial());
}
