import 'package:dio/dio.dart';

// DataState is a generic class that can be used to represent the state of a data request.
// It can be in one of two states: DataSuccess or DataError.
abstract class DataState<T> {
  final T ? data;
  final DioError ? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataError<T> extends DataState<T> {
  const DataError(DioError error) : super(error: error);
}