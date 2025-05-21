// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opinionpoll_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpinionPollResponseImpl _$$OpinionPollResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpinionPollResponseImpl(
      id: json['id'] as String,
      opinionPollName: json['opinionPollName'] as String,
      questionList: (json['questionList'] as List<dynamic>)
          .map((e) => QuestionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OpinionPollResponseImplToJson(
        _$OpinionPollResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'opinionPollName': instance.opinionPollName,
      'questionList': instance.questionList,
    };
