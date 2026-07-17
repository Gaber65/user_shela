import 'package:sixam_mart/core/error/either.dart';
import 'package:sixam_mart/core/error/failure.dart';

/// Type definition for Either result with Failure as left type
/// 
/// Simplifies function signatures and makes code more readable.
/// 
/// Instead of writing:
/// ```dart
/// Future<Either<Failure, String>> fetchUser() {...}
/// ```
/// 
/// You can write:
/// ```dart
/// FutureResult<String> fetchUser() {...}
/// ```
typedef FutureResult<T> = Future<Either<Failure, T>>;

/// Type definition for sync Either result with Failure as left type
typedef SyncResult<T> = Either<Failure, T>;

/// Type definition for callback that returns a value
typedef Callback<T> = T Function();

/// Type definition for callback that accepts a value and returns nothing
typedef VoidCallback<T> = void Function(T value);

/// Type definition for callback that accepts a value and returns another value
typedef ValueTransformer<T, R> = R Function(T value);

/// Type definition for predicate function
typedef Predicate<T> = bool Function(T value);

/// Type definition for comparator function
typedef Comparator<T> = int Function(T a, T b);

/// Type definition for JSON decoder
typedef JsonDecoder<T> = T Function(Map<String, dynamic> json);

/// Type definition for JSON encoder
typedef JsonEncoder<T> = Map<String, dynamic> Function(T value);

/// Type definition for async operation
typedef AsyncOperation<T> = Future<T> Function();

/// Type definition for API response handler
typedef ApiResponseHandler<T> = T? Function(dynamic response);

/// Type definition for error handler
typedef ErrorHandler = void Function(Failure error);

/// Type definition for success handler
typedef SuccessHandler<T> = void Function(T data);
