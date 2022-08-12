import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'internet_state.dart';

/// internet cubit
class InternetCubit extends Cubit<InternetState> {
  /// contructor
  /// init data loading
  InternetCubit({required this.connectivity}) : super(InternetLoading()) {
    monitorInternetConnection();
  }

  /// [connectivity]
  final Connectivity connectivity;

  /// handle listening internet network
  StreamSubscription<ConnectivityResult> monitorInternetConnection() {
    return connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi) {
        emitInternetConnected(ConnectionType.wifi);
      } else if (connectivityResult == ConnectivityResult.mobile) {
        emitInternetConnected(ConnectionType.mobile);
      } else {
        emitInternetDisconnected();
      }
    });
  }

  /// emit internet has connected
  void emitInternetConnected(ConnectionType _connectionType) =>
      emit(InternetConnected(_connectionType));

  /// emit internet disconnected
  void emitInternetDisconnected() => emit(InternetDisconnected());

  @override
  Future<void> close() {
    return super.close();
  }
}

/// type connection network
enum ConnectionType {
  /// wifi
  wifi,

  /// network mobile
  mobile,
}
