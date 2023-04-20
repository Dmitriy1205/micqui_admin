import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:micqui_admin/core/constants/strings.dart';
import 'package:micqui_admin/data/models/bucket/bucket.dart';

import '../../core/constants/exceptions.dart';
import '../models/questions/questions.dart';

class FirestoreRepository {
  final FirebaseFirestore _firestore;

  FirestoreRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;
  List<Bucket>? buckets = [];
  List<Questions>? questions = [];


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

  Future<Bucket> getBucket({required String bucketId}) async {
    try {
      DocumentSnapshot doc =
      await _firestore.collection('buckets').doc(bucketId).get();

      return Bucket.fromJson(doc.data() as Map<String,dynamic>);
    } on FirebaseException catch (e) {
      throw BadRequestException(message: e.message!);
    } on Exception catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }

  List<Questions>? getQuestions({required Bucket? bucket}) {
    for (final i in bucket?.questions ?? []) {
      questions!.add(i);
    }
    return questions;
  }

  addBucket() {
    buckets!.add(const Bucket(
      name: 'Name',
      description: 'Description',
    ));
    print('==================$buckets');
    return buckets;
  }

  addQuestion() {
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
        id = generateRandomString();
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

  Future<void> setQuestion(
      {required String bucketId, required Questions question}) async {

    try {
      DocumentSnapshot doc =
          await _firestore.collection('buckets').doc(bucketId).get();
      List<dynamic>? q = doc.get('questions') ?? [];

      Questions quest = Questions(
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

  Future<bool> publishBucket(
      {required String bucketId, required bool isPublish}) async {
    try {
      DocumentSnapshot doc = await _firestore
          .collection('buckets')
          .doc(bucketId)
          .set({'published': isPublish}, SetOptions(merge: true)).then((value) => _firestore
          .collection('buckets')
          .doc(bucketId).get());
      bool publish = doc.get('published');
      return publish;
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

  String generateRandomString() {
    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    final random = Random.secure();
    return String.fromCharCodes(Iterable.generate(
        9, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
  }
}
