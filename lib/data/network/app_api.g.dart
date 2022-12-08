// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AppServiceClient implements AppServiceClient {
  final Dio _dio;
  String? baseUrl;

  _AppServiceClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://ahmedarafat.mocklab.io';
  }

  @override
  Future<AuthentecationResponse> login(
    email,
    password,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'password': password,
    };
    _data.removeWhere((k, v) => v == null);

    // _dio.fetch is the mehtod that include all other method like post & get & ... etc 
    final _result = await _dio.fetch<Map<String, dynamic>>(
      _setStreamType<AuthentecationResponse>(
        Options(
          // When pass 'POST' To method attribute you make _dio.fetch work as a _dio.post method
          method: 'POST',
          headers: _headers,
          extra: _extra,
        )
        // compose method of Option class convert the Option instance to RequestOptions instance
        // that _dio.fetch needs as a parameter
            .compose(
              _dio.options,
              '/customer/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl),
      ),
    );
    final value = AuthentecationResponse.fromJson(_result.data!);
    return value;
  }

  // TODO: "Method" explanation
  //       - need more understanding
  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// notes:   "write here the draft of summay and when finishing, move to notion "

// -----------------------------------
// ----------- Dio -------------------
// [1] _dio.fetch is the mehtod that include all other method like post & get & ... etc 
// [2] When pass 'POST' To method attribute you make _dio.fetch work as a _dio.post method
// [3] compose method of Option class convert the Option instance to RequestOptions instance
//     that _dio.fetch needs as a parameter

