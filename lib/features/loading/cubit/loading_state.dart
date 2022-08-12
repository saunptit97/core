part of 'loading_cubit.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.initial({
    @Default(true) bool isLoading,
  }) = LoadingStateInit;
}
