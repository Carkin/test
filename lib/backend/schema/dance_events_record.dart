import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'dance_events_record.g.dart';

abstract class DanceEventsRecord
    implements Built<DanceEventsRecord, DanceEventsRecordBuilder> {
  static Serializer<DanceEventsRecord> get serializer =>
      _$danceEventsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'event_title')
  String get eventTitle;

  @nullable
  @BuiltValueField(wireName: 'event_date')
  DateTime get eventDate;

  @nullable
  @BuiltValueField(wireName: 'lesson_start_time')
  DateTime get lessonStartTime;

  @nullable
  @BuiltValueField(wireName: 'lesson_end_time')
  DateTime get lessonEndTime;

  @nullable
  @BuiltValueField(wireName: 'social_start_time')
  DateTime get socialStartTime;

  @nullable
  @BuiltValueField(wireName: 'social_end_time')
  DateTime get socialEndTime;

  @nullable
  @BuiltValueField(wireName: 'lesson_teacher')
  DocumentReference get lessonTeacher;

  @nullable
  @BuiltValueField(wireName: 'lesson_title')
  String get lessonTitle;

  @nullable
  @BuiltValueField(wireName: 'lesson_description')
  String get lessonDescription;

  @nullable
  DocumentReference get dj;

  @nullable
  @BuiltValueField(wireName: 'dj_start_time')
  DateTime get djStartTime;

  @nullable
  @BuiltValueField(wireName: 'dj_end_time')
  DateTime get djEndTime;

  @nullable
  @BuiltValueField(wireName: 'users_going')
  BuiltList<DocumentReference> get usersGoing;

  @nullable
  @BuiltValueField(wireName: 'event_privacy')
  bool get eventPrivacy;

  @nullable
  @BuiltValueField(wireName: 'header_image')
  String get headerImage;

  @nullable
  @BuiltValueField(wireName: 'event_photos')
  String get eventPhotos;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DanceEventsRecordBuilder builder) => builder
    ..eventTitle = ''
    ..lessonTitle = ''
    ..lessonDescription = ''
    ..usersGoing = ListBuilder()
    ..eventPrivacy = false
    ..headerImage = ''
    ..eventPhotos = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dance_events');

  static Stream<DanceEventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DanceEventsRecord._();
  factory DanceEventsRecord([void Function(DanceEventsRecordBuilder) updates]) =
      _$DanceEventsRecord;

  static DanceEventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createDanceEventsRecordData({
  String eventTitle,
  DateTime eventDate,
  DateTime lessonStartTime,
  DateTime lessonEndTime,
  DateTime socialStartTime,
  DateTime socialEndTime,
  DocumentReference lessonTeacher,
  String lessonTitle,
  String lessonDescription,
  DocumentReference dj,
  DateTime djStartTime,
  DateTime djEndTime,
  bool eventPrivacy,
  String headerImage,
  String eventPhotos,
}) =>
    serializers.toFirestore(
        DanceEventsRecord.serializer,
        DanceEventsRecord((d) => d
          ..eventTitle = eventTitle
          ..eventDate = eventDate
          ..lessonStartTime = lessonStartTime
          ..lessonEndTime = lessonEndTime
          ..socialStartTime = socialStartTime
          ..socialEndTime = socialEndTime
          ..lessonTeacher = lessonTeacher
          ..lessonTitle = lessonTitle
          ..lessonDescription = lessonDescription
          ..dj = dj
          ..djStartTime = djStartTime
          ..djEndTime = djEndTime
          ..usersGoing = null
          ..eventPrivacy = eventPrivacy
          ..headerImage = headerImage
          ..eventPhotos = eventPhotos));
