import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:fooddelevery/core/domaiin/value/failer.dart';

class Title extends Equatable {
  final String value;
  const Title._(this.value);
  static Either<Failure, Title> create(String value) {
    if (value.isEmpty) {
      return Left(Failure(messege: 'Title Can'));
    } else
      // ignore: curly_braces_in_flow_control_structures
      return Right(Title._(value));
  }

  @override
  List<Object?> get props => [value];
}
