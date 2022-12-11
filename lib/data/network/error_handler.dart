enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorised,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  recieveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection
}

class ResponseCode {
  /// external status code
  static const int success = 200; // success with data
  static const int noContent = 201; // success without data

  static const int badRequest = 400; 
  static const int unauthorised = 401; // user is not authorised
  static const int forbidden = 403; 
  static const int notFound = 404; 

  static const int internalServerError = 500; // crash in server side

  /// local status code
  static const int connectTimeout = -1; 
  static const int cancel = -2; 
  static const int recieveTimeout = -3; 
  static const int sendTimeout = -4; 
  static const int cacheError = -5; 
  static const int noInternetConnection = -6; 
  static const int unknown = -7; 
}

class ResponseMessage {
  static const String success = "success"; // success with data
  static const String noContent =
      "success"; // success with no data (no content)
  static const String badRequest =
      "Bad request, Try again later"; // failure, API rejected request
  static const String unauthoriesed =
      "User is unauthorised, Try again later"; // failure, user is not authorised
  static const String forbeidden =
      "Forbidden request, Try again later"; //  failure, API rejected request
  static const String internalServerError =
      "Some thing went wrong, Try again later"; // failure, crash in server side

  // local status code
  static const String connectTimeout = "Time out error, Try again later";
  static const String cancel = "Request was cancelled, Try again later";
  static const String receiveTimeout = "Time out error, Try again later";
  static const String sendTimeout = "Time out error, Try again later";
  static const String cacheTimeout = "Cache error, Try again later";
  static const String noInternetConnection =
      "Please check your internet connection";
  static const String unknown = "Some thing went wrong, Try again later";
}
