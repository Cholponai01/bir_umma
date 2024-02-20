// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'zikir_state.dart';

class ZikirCubit extends Cubit<ZikirState> {
  ZikirCubit() : super(ZikirInitial());
}
