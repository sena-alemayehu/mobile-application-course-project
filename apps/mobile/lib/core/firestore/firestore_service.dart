
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  FirestoreService({FirebaseAuth? auth, FirebaseFirestore? firestore})
    : _auth = auth ?? FirebaseAuth.instance,
      _firestore = firestore ?? FirebaseFirestore.instance;

  CollectionReference? getWatchlistCollection() {
    final user = _auth.currentUser;
    if (user == null) return null;
    return _firestore.collection('users').doc(user.uid).collection('watchlist');
  }

  Future<void> addToWatchlist(int movieId, Map<String, dynamic> data) async {
    final collection = getWatchlistCollection();
    if (collection == null) throw Exception('User not signed in');
    await collection.doc(movieId.toString()).set(data);
  }

  Future<void> removeFromWatchlist(int movieId) async {
    final collection = getWatchlistCollection();
    if (collection == null) throw Exception('User not signed in');
    await collection.doc(movieId.toString()).delete();
  }
}
