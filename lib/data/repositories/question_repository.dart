import '../../core/services/firestore_sevice.dart';

class QuestionRepository {
  final FirestoreService _firestore;

  QuestionRepository({required FirestoreService firestore})
      : _firestore = firestore;
}
