// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participate_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipateRequestDtoImpl _$$ParticipateRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipateRequestDtoImpl(
      userId: json['userId'] as String,
      questionAnsweerId: json['questionAnsweerId'] as String,
      userCustomAnswer: json['userCustomAnswer'] as String?,
    );

Map<String, dynamic> _$$ParticipateRequestDtoImplToJson(
        _$ParticipateRequestDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'questionAnsweerId': instance.questionAnsweerId,
      'userCustomAnswer': instance.userCustomAnswer,
    };
