/// Core application constants
class CoreConstants {
  CoreConstants._(); // Private constructor to prevent instantiation

  // API
  static const String connectTimeout = 'Connection timeout';
  static const String receiveTimeout = 'Receive timeout';
  static const String requestCancelled = 'Request cancelled';
  static const String serverError = 'Server error occurred';
  static const String networkError = 'Network error occurred';
  static const String unknownError = 'Unknown error occurred';
  static const String unauthorizedError = 'Unauthorized access';
  static const String forbiddenError = 'Access forbidden';
  static const String notFoundError = 'Resource not found';
  static const String validationError = 'Validation error occurred';
  static const String defaultErrorMessage = 'An unexpected error occurred';

  // Cache keys
  static const String cacheKeyUserProfile = 'user_profile_cache';
  static const String cacheKeyAppConfig = 'app_config_cache';
  static const String cacheKeyCategories = 'categories_cache';
  static const String cacheKeyBanners = 'banners_cache';

  // Storage keys
  static const String storageKeyAuthToken = 'auth_token';
  static const String storageKeyUserData = 'user_data';
  static const String storageKeyLanguage = 'language';
  static const String storageKeyTheme = 'theme';

  // Timeouts (in seconds)
  static const int apiTimeoutSeconds = 30;
  static const int cacheTimeoutSeconds = 3600; // 1 hour
  static const int userProfileCacheSeconds = 1800; // 30 minutes

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Delays
  static const Duration debounceDelay = Duration(milliseconds: 500);
  static const Duration throttleDelay = Duration(milliseconds: 1000);
  static const Duration loadingDelay = Duration(milliseconds: 200);
}

/// HTTP status codes
class HttpStatusCodes {
  HttpStatusCodes._(); // Private constructor to prevent instantiation

  // Success codes
  static const int ok = 200;
  static const int created = 201;
  static const int accepted = 202;
  static const int noContent = 204;

  // Redirect codes
  static const int movedPermanently = 301;
  static const int found = 302;
  static const int notModified = 304;

  // Client error codes
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int methodNotAllowed = 405;
  static const int conflict = 409;
  static const int unprocessableEntity = 422;
  static const int tooManyRequests = 429;

  // Server error codes
  static const int internalServerError = 500;
  static const int badGateway = 502;
  static const int serviceUnavailable = 503;
  static const int gatewayTimeout = 504;
}

/// Regular expressions for validation
class ValidationRegex {
  ValidationRegex._(); // Private constructor to prevent instantiation

  static final RegExp email = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  static final RegExp password = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

  static final RegExp phone = RegExp(r'^[0-9]{10,}$');

  static final RegExp url = RegExp(
    r'^(https?|http):\/\/[^\s/$.?#].[^\s]*$',
  );

  static final RegExp alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');

  static final RegExp numbersOnly = RegExp(r'^[0-9]+$');

  static final RegExp username = RegExp(r'^[a-zA-Z0-9_-]{3,20}$');
}

/// Error codes used throughout the application
class ErrorCodes {
  ErrorCodes._(); // Private constructor to prevent instantiation

  // Network errors
  static const String networkError = 'NETWORK_ERROR';
  static const String timeoutError = 'TIMEOUT_ERROR';
  static const String connectionError = 'CONNECTION_ERROR';

  // Server errors
  static const String serverError = 'SERVER_ERROR';
  static const String internalServerError = 'INTERNAL_SERVER_ERROR';
  static const String serviceUnavailable = 'SERVICE_UNAVAILABLE';

  // Client errors
  static const String badRequest = 'BAD_REQUEST';
  static const String unauthorized = 'UNAUTHORIZED';
  static const String forbidden = 'FORBIDDEN';
  static const String notFound = 'NOT_FOUND';
  static const String validationError = 'VALIDATION_ERROR';

  // Cache errors
  static const String cacheError = 'CACHE_ERROR';
  static const String cacheMiss = 'CACHE_MISS';

  // Auth errors
  static const String authError = 'AUTH_ERROR';
  static const String sessionExpired = 'SESSION_EXPIRED';
  static const String invalidCredentials = 'INVALID_CREDENTIALS';

  // Unknown error
  static const String unknownError = 'UNKNOWN_ERROR';
}
