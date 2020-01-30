import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'toast.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

// Signing in with Google Method
// Used in the onPressed for a sign out button
Future<String> signInGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential authCredential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult =
      await _firebaseAuth.signInWithCredential(authCredential);
  final FirebaseUser firebaseUser = authResult.user;

  // These are check on the user (firebaseUser) that they are
  // not anonymous
  assert(!firebaseUser.isAnonymous);
  // the id token is not null after it's retrieved
  assert(await firebaseUser.getIdToken() != null);

  return 'signInWithGoogle succeeded: $firebaseUser';
}

void signOutGoogle() async {
  await googleSignIn.signOut();
  print('Signed Out');
}
