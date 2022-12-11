import 'package:flutter_advanced/data/data_source/remote_data_source.dart';
import 'package:flutter_advanced/data/mapper/mapper.dart';
import 'package:flutter_advanced/data/network/netwrok_info.dart';
import 'package:flutter_advanced/domain/models/models.dart';
import 'package:flutter_advanced/data/network/requests.dart';
import 'package:flutter_advanced/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_advanced/domain/repository/repository.dart';

import '../response/responses.dart';

class RepositoryImpl implements Repository {
  final NetworkInfo _networkInfo;
  final RemoteDataSource _remoteDataSource;

  RepositoryImpl(this._networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, AuthenticationModel>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      /// there is internet
      final AuthentecationResponse response =
          await _remoteDataSource.login(loginRequest);
      if (response.status == 0) {
        /// success
        // Right means the right return type
        return Right(response.toDomain());
      } else {
        /// failure -- Business error 
        // Left means the Left return type
        return Left(Failure(400, response.message ?? "Business error"));
      }
    } else {
      /// there is not internet
      return Left(Failure(501, "please, Check you Network"));
    }
  }
}

// Draft

// Either :
//     Function: 
//          - it is able to return 2 type 
