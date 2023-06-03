import 'package:bloc/bloc.dart';
import '../core/presentation/base_view_model.dart';
import '../features/teachers/presentation/cubit/teacher_cubit.dart';

class BaseCubit<T extends BaseViewModel> extends Cubit<T> {
  BaseCubit(super.initialState);
}
