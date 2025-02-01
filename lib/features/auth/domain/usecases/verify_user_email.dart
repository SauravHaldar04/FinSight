
import 'package:datazen/core/error/failure.dart';
import 'package:datazen/core/usecase/usecase.dart';
import 'package:datazen/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';


class VerifyUserEmail implements Usecase<void,NoParams> {
  final AuthRepository authRepository;
  const VerifyUserEmail(this.authRepository);
  @override
  Future<Either<Failure,bool>> call(NoParams params) async{
    return authRepository.verifyEmail();
  }
}
