import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure({List properties = const <dynamic>[]}) : super(properties);
}

class ServerFailures extends Failure{}


class CacheFailures extends Failure{}