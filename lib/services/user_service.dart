
import 'package:provider_conceitos/repositories/user_repositories.dart';

class UserService {
  final UserRepositories repositorie;

  UserService({required this.repositorie});

  String getName() => repositorie.name;
}