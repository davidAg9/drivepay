import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:drivepay/core/interfaces/signup/account_registeration_interface.dart';
import 'package:drivepay/features/motorists/models/motorist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  late Motorist user;
  final AccountRegistrationRepositoryInterface<Motorist> repo;
  RegistrationBloc(this.repo) : super(const _Initial()) {
    on<_Register>((event, emit) async {
      try {
        emit(const RegistrationState.registering());
        final res = await repo.register(fullname: event.fullname, email: event.email, password: event.password);
        user = res;
        emit(const RegistrationState.registered());
      } catch (e) {
        emit(RegistrationState.registrationError(e.toString()));
      }
    }, transformer: droppable());
    on<_SaveMotorist>((event, emit) async {
      user = await repo.save(user: event.user);
      emit(RegistrationState.saved(user));
    });
  }
}
