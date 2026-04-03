import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../params/sign_up_params.dart';
import '../repositories/i_auth_repository.dart';

class SignUpUseCase {
  SignUpUseCase(this.repository);
  final IAuthRepository repository;

  Future<Either<Failure, AuthResult>> call(SignUpParams params) {
    return repository.signUp(params);
  }
}
