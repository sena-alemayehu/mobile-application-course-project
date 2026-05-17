

/// Abstract contract for authentication operations.
abstract class AuthRepository {
  Future<bool> signInWithEmailAndPassword(String email, String password);
  Future<bool> signUpWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}

/// Mock implementation - always succeeds, no real auth.
class MockAuthRepository implements AuthRepository {
  @override
  Future<bool> signInWithEmailAndPassword(String email, String password) async {
   
    await Future.delayed(const Duration(milliseconds: 500));
    return true; 
  }

  @override
  Future<bool> signUpWithEmailAndPassword(String email, String password) async {
   
    await Future.delayed(const Duration(milliseconds: 500));
    return true;
  }

  @override
  Future<void> signOut() async {
    
    await Future.delayed(const Duration(milliseconds: 200));
  }
}
