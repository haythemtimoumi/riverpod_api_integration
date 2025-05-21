// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return _QuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponse {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<OptionResponse> get optionsList => throw _privateConstructorUsedError;
  bool get openForCustomAnswer => throw _privateConstructorUsedError;

  /// Serializes this QuestionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionResponseCopyWith<QuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseCopyWith<$Res> {
  factory $QuestionResponseCopyWith(
          QuestionResponse value, $Res Function(QuestionResponse) then) =
      _$QuestionResponseCopyWithImpl<$Res, QuestionResponse>;
  @useResult
  $Res call(
      {String id,
      String question,
      List<OptionResponse> optionsList,
      bool openForCustomAnswer});
}

/// @nodoc
class _$QuestionResponseCopyWithImpl<$Res, $Val extends QuestionResponse>
    implements $QuestionResponseCopyWith<$Res> {
  _$QuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? optionsList = null,
    Object? openForCustomAnswer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      optionsList: null == optionsList
          ? _value.optionsList
          : optionsList // ignore: cast_nullable_to_non_nullable
              as List<OptionResponse>,
      openForCustomAnswer: null == openForCustomAnswer
          ? _value.openForCustomAnswer
          : openForCustomAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionResponseImplCopyWith<$Res>
    implements $QuestionResponseCopyWith<$Res> {
  factory _$$QuestionResponseImplCopyWith(_$QuestionResponseImpl value,
          $Res Function(_$QuestionResponseImpl) then) =
      __$$QuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      List<OptionResponse> optionsList,
      bool openForCustomAnswer});
}

/// @nodoc
class __$$QuestionResponseImplCopyWithImpl<$Res>
    extends _$QuestionResponseCopyWithImpl<$Res, _$QuestionResponseImpl>
    implements _$$QuestionResponseImplCopyWith<$Res> {
  __$$QuestionResponseImplCopyWithImpl(_$QuestionResponseImpl _value,
      $Res Function(_$QuestionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? optionsList = null,
    Object? openForCustomAnswer = null,
  }) {
    return _then(_$QuestionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      optionsList: null == optionsList
          ? _value._optionsList
          : optionsList // ignore: cast_nullable_to_non_nullable
              as List<OptionResponse>,
      openForCustomAnswer: null == openForCustomAnswer
          ? _value.openForCustomAnswer
          : openForCustomAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionResponseImpl implements _QuestionResponse {
  const _$QuestionResponseImpl(
      {required this.id,
      required this.question,
      required final List<OptionResponse> optionsList,
      required this.openForCustomAnswer})
      : _optionsList = optionsList;

  factory _$QuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String question;
  final List<OptionResponse> _optionsList;
  @override
  List<OptionResponse> get optionsList {
    if (_optionsList is EqualUnmodifiableListView) return _optionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionsList);
  }

  @override
  final bool openForCustomAnswer;

  @override
  String toString() {
    return 'QuestionResponse(id: $id, question: $question, optionsList: $optionsList, openForCustomAnswer: $openForCustomAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._optionsList, _optionsList) &&
            (identical(other.openForCustomAnswer, openForCustomAnswer) ||
                other.openForCustomAnswer == openForCustomAnswer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_optionsList), openForCustomAnswer);

  /// Create a copy of QuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      __$$QuestionResponseImplCopyWithImpl<_$QuestionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestionResponse implements QuestionResponse {
  const factory _QuestionResponse(
      {required final String id,
      required final String question,
      required final List<OptionResponse> optionsList,
      required final bool openForCustomAnswer}) = _$QuestionResponseImpl;

  factory _QuestionResponse.fromJson(Map<String, dynamic> json) =
      _$QuestionResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  List<OptionResponse> get optionsList;
  @override
  bool get openForCustomAnswer;

  /// Create a copy of QuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
