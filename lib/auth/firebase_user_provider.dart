import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MerchflowFirebaseUser {
  MerchflowFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MerchflowFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MerchflowFirebaseUser> merchflowFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MerchflowFirebaseUser>(
      (user) {
        currentUser = MerchflowFirebaseUser(user);
        return currentUser!;
      },
    );
