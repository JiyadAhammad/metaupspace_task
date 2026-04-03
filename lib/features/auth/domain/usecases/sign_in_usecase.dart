import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../params/sign_in_param.dart';
import '../repositories/i_auth_repository.dart';

class SignInUseCase {
  SignInUseCase(this.repository);
  final IAuthRepository repository;

  Future<Either<Failure, AuthResult>> call(SignInParams request) {
    return repository.signIn(request);
  }
}
