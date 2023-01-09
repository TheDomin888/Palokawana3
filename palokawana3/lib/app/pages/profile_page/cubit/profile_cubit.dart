import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit()
      : super(
          ProfileState(
            currentUser: '',
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
  }

  Future<void> start() async {
    emit(
      ProfileState(
        currentUser: '',
      ),
    );

    _streamSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        emit(
          ProfileState(
            currentUser: '',
          ),
        );
      },
    )..onError(
        (error) {
          emit(
            ProfileState(
              currentUser: '',
            ),
          );
        },
      );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
