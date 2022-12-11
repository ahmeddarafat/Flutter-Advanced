import 'package:dartz/dartz.dart';
import 'package:flutter_advanced/data/network/requests.dart';
import 'package:flutter_advanced/domain/models/models.dart';

import '../../data/network/failure.dart';

abstract class Repository{

 Future<Either<Failure,AuthenticationModel>> login(LoginRequest loginRequest);

}