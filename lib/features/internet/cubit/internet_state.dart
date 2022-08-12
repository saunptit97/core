part of 'internet_cubit.dart';

/// internet state
@immutable
abstract class InternetState {}

/// internet loading
class InternetLoading extends InternetState {}

/// internet connected
class InternetConnected extends InternetState {
  /// contructor
  InternetConnected(this.connectionType);

  /// [connectionType] connection type : network, wifi
  final ConnectionType connectionType;
}

/// internet disconnected
class InternetDisconnected extends InternetState {}
