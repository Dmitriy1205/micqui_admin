import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore firestore;

  FirestoreService({required this.firestore});

  Future<QuerySnapshot<Map<String, dynamic>>> readAllFields(
      {required String collectionPath}) async {
    try {
      final data = await firestore.collection(collectionPath).get();
      return data;
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    }
  }

  Future<void> write() async {}

  Future<void> updateFieldByName({
    required String collectionName,
    required String docId,
    required String nameFieldToUpdate,
    required data,
  }) async {
    try {
      await firestore
          .collection(collectionName)
          .doc(docId)
          .set({nameFieldToUpdate: data}, SetOptions(merge: true));
    } on FirebaseException catch (e) {
      throw Exception(e.message!);
    }
  }

  Future<void> deleteDocById(
      {required String collectionPath, required String id}) async {
    try {
      firestore.collection(collectionPath).doc(id).delete();
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    }
  }
}
