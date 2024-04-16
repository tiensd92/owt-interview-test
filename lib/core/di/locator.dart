import 'package:get_it/get_it.dart';
import 'package:owt_interview_test/repositories/repositories.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton<DeliveryRepository>(
    DeliveryRepositoryImpl(),
  );
}
