import '../questions/questions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bucket.freezed.dart';

part 'bucket.g.dart';

@freezed
class Bucket with _$Bucket {
  const factory Bucket({
    String? id,
    String? name,
    String? description,
    String? category,
    @Default(false)bool? published,
    @Default([]) List<Questions> questions,
  }) = _Bucket;

  factory Bucket.fromJson(Map<String, dynamic> json) => _$BucketFromJson(json);
}
