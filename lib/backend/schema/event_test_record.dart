import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_test_record.g.dart';

abstract class EventTestRecord
    implements Built<EventTestRecord, EventTestRecordBuilder> {
  static Serializer<EventTestRecord> get serializer =>
      _$eventTestRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'event_title')
  String get eventTitle;

  @nullable
  @BuiltValueField(wireName: 'event_date')
  DateTime get eventDate;

  @nullable
  @BuiltValueField(wireName: 'header_image')
  String get headerImage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventTestRecordBuilder builder) => builder
    ..eventTitle = ''
    ..headerImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event_test');

  static Stream<EventTestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventTestRecord._();
  factory EventTestRecord([void Function(EventTestRecordBuilder) updates]) =
      _$EventTestRecord;

  static EventTestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventTestRecordData({
  String eventTitle,
  DateTime eventDate,
  String headerImage,
}) =>
    serializers.toFirestore(
        EventTestRecord.serializer,
        EventTestRecord((e) => e
          ..eventTitle = eventTitle
          ..eventDate = eventDate
          ..headerImage = headerImage));
