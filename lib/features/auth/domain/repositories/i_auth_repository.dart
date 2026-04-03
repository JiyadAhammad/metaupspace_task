import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../params/sign_in_param.dart';
import '../params/sign_up_params.dart';

abstract interface class IAuthRepository {
  Future<Either<Failure, AuthResult>> signIn(SignInParams request);
  Future<Either<Failure, AuthResult>> signUp(SignUpParams request);
}
