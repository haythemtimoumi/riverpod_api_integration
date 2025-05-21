// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackRequestDtoImpl _$$FeedbackRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackRequestDtoImpl(
      typeFeedback: json['typeFeedback'] as String,
      customFeedback: json['customFeedback'] as String?,
    );

Map<String, dynamic> _$$FeedbackRequestDtoImplToJson(
        _$FeedbackRequestDtoImpl instance) =>
    <String, dynamic>{
      'typeFeedback': instance.typeFeedback,
      'customFeedback': instance.customFeedback,
    };
