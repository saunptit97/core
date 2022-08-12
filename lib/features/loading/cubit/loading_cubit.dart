import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.dart';
part 'loading_cubit.freezed.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(const LoadingState.initial());

  showLoading(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(50.0),
              child: const LoadingWidget(),
            ),
          ),
        );
      },
    );
    emit(state.copyWith(isLoading: true));
  }

  hideLoading(BuildContext context) {
    Navigator.of(context).pop();
    emit(state.copyWith(isLoading: false));
  }
}
