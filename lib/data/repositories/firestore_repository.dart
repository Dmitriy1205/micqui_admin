import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:micqui_admin/core/constants/strings.dart';
import 'package:micqui_admin/data/models/answer/answer.dart';
import 'package:micqui_admin/data/models/bucket/bucket.dart';

import '../../core/constants/exceptions.dart';
import '../models/questions/questions.dart';

class FirestoreRepository {
  final FirebaseFirestore _firestore;

  FirestoreRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;
  List<Bucket>? buckets = [];
  List<Questions>? questions = [];
  late Bucket bucket;

  Future<List<Bucket>?> getBuckets() async {
    try {
      final data = await _firestore.collection('buckets').get();
      buckets = data.docs.map((e) => Bucket.fromJson(e.data())).toList();
      return buckets;
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    } on Exception catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }

  Future<List<Questions>>? getQuestions({required String bucketId}) async {
    DocumentSnapshot doc =
        await _firestore.collection('buckets').doc(bucketId).get();

    final questionsData =
        List<Map<String, dynamic>>.from(doc.get('questions') ?? []);

    return questionsData.map((data) => Questions.fromJson(data)).toList();
  }

  addBucket() {
    buckets!.add(const Bucket(
      name: 'Name',
      description: 'Description',
    ));
    print('==================$buckets');
    return buckets;
  }

  addQuestion({required String id}) async {
    try {
      questions!.add(const Questions(name: 'Name', variants: []));
      print('===============$questions');
      return questions;
    } on BadRequestException catch (e) {
      print(e.message);
    }
  }

  Future<void> setBucket(
      {required String? bucketId, required Bucket bucket}) async {
    try {
      String id;
      if (bucketId != null && bucketId == bucket.id) {
        id = bucketId;
      } else {
        id = bucketGeneratedId();
      }
      Bucket buck = Bucket(
        id: id,
        name: bucket.name,
        description: bucket.description,
        category: bucket.category,
        questions: bucket.questions,
      );
      await _firestore
          .collection('buckets')
          .doc(id)
          .set(buck.toJson(), SetOptions(merge: true));
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<void> deleteFullBucket(
      {required String bucketId}) async {
    try {
      await _firestore.collection('buckets').doc(bucketId).delete();
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<List<Bucket>?> deleteBucket(
      {required String bucketId,
      Bucket? existedBucket,
      int? indexToDelete}) async {
    try {
      final buckets = await getBuckets();

      // if (existedBucket == null && indexToDelete == null) {
      await _firestore.collection('buckets').doc(bucketId).delete();
      // } else {
      //   await _firestore.collection('buckets').doc(bucketId).delete();
      // }

      return buckets;
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    } on Error {
      throw Error();
    }
  }

  Future<List<Questions>> setQuestion(
      {required String bucketId,
      required int? index,
      required String? questionId,
      required Questions question}) async {
    try {
      String id;
      if (questionId != null && questionId == question.id) {
        id = questionId;
        final bucketRef =
            FirebaseFirestore.instance.collection('buckets').doc(bucketId);

        final snapshot = await bucketRef.get();
        final questions = snapshot.data()!['questions'] as List<dynamic>;

        final questionToUpdate = questions[index!];

        final updatedQuestion = {
          'id': questionToUpdate['id'],
          'name': question.name,
          'variants': questionToUpdate['variants'],
        };

        questions[index] = updatedQuestion;

        await bucketRef.update({
          'questions': questions,
        });
      } else {
        id = questionGeneratedId();
        DocumentSnapshot doc =
            await _firestore.collection('buckets').doc(bucketId).get();
        List<dynamic>? q = doc.get('questions') ?? [];

        Questions quest = Questions(
          id: id,
          name: question.name,
          variants: [],
        );
        q!.add(quest.toJson());

        if (doc.exists) {
          await _firestore
              .collection('buckets')
              .doc(bucketId)
              .update({'questions': q});
        } else {
          await _firestore
              .collection('buckets')
              .doc(bucketId)
              .set({'questions': q}, SetOptions(mergeFields: ['questions']));
        }
      }
      DocumentSnapshot doc =
          await _firestore.collection('buckets').doc(bucketId).get();

      final questionsData =
          List<Map<String, dynamic>>.from(doc.get('questions') ?? []);

      return questionsData.map((data) => Questions.fromJson(data)).toList();
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<List<Questions>> setAnswer(
      {required String bucketId,
      required Questions existedQuestions,
      required Answer answer}) async {
    try {
      final questions =
          (await _firestore.collection('buckets').doc(bucketId).get())
              .data()!['questions'] as List<dynamic>;

      final question = questions.firstWhere(
          (q) => q['id'] == existedQuestions.id,
          orElse: () => null);
      if (question != null) {
        final i = questions.indexOf(question);
        final variants =
            List<Map<String, dynamic>>.from(question['variants'] ?? []);

        variants.add({
          'name': answer.name,
          'isRight': answer.isRight
        }); // Modify the variant list as needed
        final updatedQuestion = {
          'id': question['id'],
          'name': question['name'],
          'variants': variants,
        };

        questions[i] = updatedQuestion;
      }

      await _firestore.collection('buckets').doc(bucketId).set(
          {'questions': questions}, SetOptions(mergeFields: ['questions']));
      DocumentSnapshot doc =
          await _firestore.collection('buckets').doc(bucketId).get();

      final questionsData =
          List<Map<String, dynamic>>.from(doc.get('questions') ?? []);

      return questionsData.map((data) => Questions.fromJson(data)).toList();
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<void> updateBucketCategory(
      {required String bucketId, required String category}) async {
    try {
      await _firestore
          .collection('buckets')
          .doc(bucketId)
          .set({'category': category}, SetOptions(merge: true));
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<List<Questions>> deleteAnswer(
      {required String bucketId,
      required Questions existedQuestions,
      required int indexToDelete}) async {
    try {
      final questions =
          (await _firestore.collection('buckets').doc(bucketId).get())
              .data()!['questions'] as List<dynamic>;

      final question = questions.firstWhere(
          (q) => q['id'] == existedQuestions.id,
          orElse: () => null);
      if (question != null) {
        final variants =
            List<Map<String, dynamic>>.from(question['variants'] ?? []);
        if (variants.length > indexToDelete) {
          variants.removeAt(indexToDelete);
        }
        final updatedQuestion = {
          'id': question['id'],
          'name': question['name'],
          'variants': variants,
        };
        final index = questions.indexOf(question);
        questions[index] = updatedQuestion;
      }

      await _firestore.collection('buckets').doc(bucketId).set(
          {'questions': questions}, SetOptions(mergeFields: ['questions']));
      DocumentSnapshot doc =
          await _firestore.collection('buckets').doc(bucketId).get();

      final questionsData =
          List<Map<String, dynamic>>.from(doc.get('questions') ?? []);

      return questionsData.map((data) => Questions.fromJson(data)).toList();
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    } on Error {
      throw Error();
    }
  }

  Future<List<Questions>> deleteQuestion(
      {required String bucketId, required int index}) async {
    try {
      final questions =
          (await _firestore.collection('buckets').doc(bucketId).get())
              .data()!['questions'] as List<dynamic>;

      if (index >= 0 && index < questions.length) {
        questions.removeAt(index);
      } else {
        throw RangeError("Invalid index");
      }

      await _firestore.collection('buckets').doc(bucketId).set(
          {'questions': questions}, SetOptions(mergeFields: ['questions']));
      DocumentSnapshot doc =
          await _firestore.collection('buckets').doc(bucketId).get();

      final questionsData =
          List<Map<String, dynamic>>.from(doc.get('questions') ?? []);

      return questionsData.map((data) => Questions.fromJson(data)).toList();
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    } on Error {
      throw Error();
    }
  }

  Future<void> publishBucket(
      {required String bucketId, required bool isPublish}) async {
    try {
      await _firestore
          .collection('buckets')
          .doc(bucketId)
          .set({'published': isPublish}, SetOptions(merge: true));
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    }
  }

  Future<List<Bucket>?> sort(String value) async {
    final buck = await getBuckets();
    if (value == AppStrings.manager) {
      buck!.removeWhere((element) => element.category == AppStrings.employee);
    } else if (value == AppStrings.employee) {
      buck!.removeWhere((element) => element.category == AppStrings.manager);
    }
    return buck;
  }

  String bucketGeneratedId() {
    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    final random = Random.secure();
    return String.fromCharCodes(Iterable.generate(
        9, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
  }

  String questionGeneratedId() {
    final Random random = Random.secure();

    const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    const int charsLength = chars.length;

    String id = '';

    for (int i = 0; i < 8; i++) {
      id += chars[random.nextInt(charsLength)];
    }

    return id;
  }
}
