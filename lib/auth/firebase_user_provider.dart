import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TanzenFirebaseUser {
  TanzenFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

TanzenFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TanzenFirebaseUser> tanzenFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<TanzenFirebaseUser>((user) => currentUser = TanzenFirebaseUser(user));
