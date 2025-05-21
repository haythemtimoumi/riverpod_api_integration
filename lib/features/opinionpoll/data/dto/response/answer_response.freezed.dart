// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerResponse _$AnswerResponseFromJson(Map<String, dynamic> json) {
  return _AnswerResponse.fromJson(json);
}

/// @nodoc
mixin _$AnswerResponse {
  String get userId => throw _privateConstructorUsedError;
  String get questionAnsweerId => throw _privateConstructorUsedError;
  String? get userCustomAnswer => throw _privateConstructorUsedError;

  /// Serializes this AnswerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerResponseCopyWith<AnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerResponseCopyWith<$Res> {
  factory $AnswerResponseCopyWith(
          AnswerResponse value, $Res Function(AnswerResponse) then) =
      _$AnswerResponseCopyWithImpl<$Res, AnswerResponse>;
  @useResult
  $Res call(
      {String userId, String questionAnsweerId, String? userCustomAnswer});
}

/// @nodoc
class _$AnswerResponseCopyWithImpl<$Res, $Val extends AnswerResponse>
    implements $AnswerResponseCopyWith<$Res> {
  _$AnswerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? questionAnsweerId = null,
    Object? userCustomAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnsweerId: null == questionAnsweerId
          ? _value.questionAnsweerId
          : questionAnsweerId // ignore: cast_nullable_to_non_nullable
              as String,
      userCustomAnswer: freezed == userCustomAnswer
          ? _value.userCustomAnswer
          : userCustomAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerResponseImplCopyWith<$Res>
    implements $AnswerResponseCopyWith<$Res> {
  factory _$$AnswerResponseImplCopyWith(_$AnswerResponseImpl value,
          $Res Function(_$AnswerResponseImpl) then) =
      __$$AnswerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, String questionAnsweerId, String? userCustomAnswer});
}

/// @nodoc
class __$$AnswerResponseImplCopyWithImpl<$Res>
    extends _$AnswerResponseCopyWithImpl<$Res, _$AnswerResponseImpl>
    implements _$$AnswerResponseImplCopyWith<$Res> {
  __$$AnswerResponseImplCopyWithImpl(
      _$AnswerResponseImpl _value, $Res Function(_$AnswerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? questionAnsweerId = null,
    Object? userCustomAnswer = freezed,
  }) {
    return _then(_$AnswerResponseImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnsweerId: null == questionAnsweerId
          ? _value.questionAnsweerId
          : questionAnsweerId // ignore: cast_nullable_to_non_nullable
              as String,
      userCustomAnswer: freezed == userCustomAnswer
          ? _value.userCustomAnswer
          : userCustomAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerResponseImpl implements _AnswerResponse {
  const _$AnswerResponseImpl(
      {required this.userId,
      required this.questionAnsweerId,
      this.userCustomAnswer});

  factory _$AnswerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerResponseImplFromJson(json);

  @override
  final String userId;
  @override
  final String questionAnsweerId;
  @override
  final String? userCustomAnswer;

  @override
  String toString() {
    return 'AnswerResponse(userId: $userId, questionAnsweerId: $questionAnsweerId, userCustomAnswer: $userCustomAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.questionAnsweerId, questionAnsweerId) ||
                other.questionAnsweerId == questionAnsweerId) &&
            (identical(other.userCustomAnswer, userCustomAnswer) ||
                other.userCustomAnswer == userCustomAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, questionAnsweerId, userCustomAnswer);

  /// Create a copy of AnswerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerResponseImplCopyWith<_$AnswerResponseImpl> get copyWith =>
      __$$AnswerResponseImplCopyWithImpl<_$AnswerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerResponseImplToJson(
      this,
    );
  }
}

abstract class _AnswerResponse implements AnswerResponse {
  const factory _AnswerResponse(
      {required final String userId,
      required final String questionAnsweerId,
      final String? userCustomAnswer}) = _$AnswerResponseImpl;

  factory _AnswerResponse.fromJson(Map<String, dynamic> json) =
      _$AnswerResponseImpl.fromJson;

  @override
  String get userId;
  @override
  String get questionAnsweerId;
  @override
  String? get userCustomAnswer;

  /// Create a copy of AnswerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerResponseImplCopyWith<_$AnswerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
