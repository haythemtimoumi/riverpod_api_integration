// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedbackRequestDto _$FeedbackRequestDtoFromJson(Map<String, dynamic> json) {
  return _FeedbackRequestDto.fromJson(json);
}

/// @nodoc
mixin _$FeedbackRequestDto {
  String get typeFeedback => throw _privateConstructorUsedError;
  String? get customFeedback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<File> get fileList => throw _privateConstructorUsedError;

  /// Serializes this FeedbackRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackRequestDtoCopyWith<FeedbackRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackRequestDtoCopyWith<$Res> {
  factory $FeedbackRequestDtoCopyWith(
          FeedbackRequestDto value, $Res Function(FeedbackRequestDto) then) =
      _$FeedbackRequestDtoCopyWithImpl<$Res, FeedbackRequestDto>;
  @useResult
  $Res call(
      {String typeFeedback,
      String? customFeedback,
      @JsonKey(ignore: true) List<File> fileList});
}

/// @nodoc
class _$FeedbackRequestDtoCopyWithImpl<$Res, $Val extends FeedbackRequestDto>
    implements $FeedbackRequestDtoCopyWith<$Res> {
  _$FeedbackRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeFeedback = null,
    Object? customFeedback = freezed,
    Object? fileList = null,
  }) {
    return _then(_value.copyWith(
      typeFeedback: null == typeFeedback
          ? _value.typeFeedback
          : typeFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      customFeedback: freezed == customFeedback
          ? _value.customFeedback
          : customFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      fileList: null == fileList
          ? _value.fileList
          : fileList // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbackRequestDtoImplCopyWith<$Res>
    implements $FeedbackRequestDtoCopyWith<$Res> {
  factory _$$FeedbackRequestDtoImplCopyWith(_$FeedbackRequestDtoImpl value,
          $Res Function(_$FeedbackRequestDtoImpl) then) =
      __$$FeedbackRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String typeFeedback,
      String? customFeedback,
      @JsonKey(ignore: true) List<File> fileList});
}

/// @nodoc
class __$$FeedbackRequestDtoImplCopyWithImpl<$Res>
    extends _$FeedbackRequestDtoCopyWithImpl<$Res, _$FeedbackRequestDtoImpl>
    implements _$$FeedbackRequestDtoImplCopyWith<$Res> {
  __$$FeedbackRequestDtoImplCopyWithImpl(_$FeedbackRequestDtoImpl _value,
      $Res Function(_$FeedbackRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeFeedback = null,
    Object? customFeedback = freezed,
    Object? fileList = null,
  }) {
    return _then(_$FeedbackRequestDtoImpl(
      typeFeedback: null == typeFeedback
          ? _value.typeFeedback
          : typeFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      customFeedback: freezed == customFeedback
          ? _value.customFeedback
          : customFeedback // ignore: cast_nullable_to_non_nullable
              as String?,
      fileList: null == fileList
          ? _value._fileList
          : fileList // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackRequestDtoImpl implements _FeedbackRequestDto {
  const _$FeedbackRequestDtoImpl(
      {required this.typeFeedback,
      this.customFeedback,
      @JsonKey(ignore: true) final List<File> fileList = const []})
      : _fileList = fileList;

  factory _$FeedbackRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackRequestDtoImplFromJson(json);

  @override
  final String typeFeedback;
  @override
  final String? customFeedback;
  final List<File> _fileList;
  @override
  @JsonKey(ignore: true)
  List<File> get fileList {
    if (_fileList is EqualUnmodifiableListView) return _fileList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileList);
  }

  @override
  String toString() {
    return 'FeedbackRequestDto(typeFeedback: $typeFeedback, customFeedback: $customFeedback, fileList: $fileList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackRequestDtoImpl &&
            (identical(other.typeFeedback, typeFeedback) ||
                other.typeFeedback == typeFeedback) &&
            (identical(other.customFeedback, customFeedback) ||
                other.customFeedback == customFeedback) &&
            const DeepCollectionEquality().equals(other._fileList, _fileList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, typeFeedback, customFeedback,
      const DeepCollectionEquality().hash(_fileList));

  /// Create a copy of FeedbackRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackRequestDtoImplCopyWith<_$FeedbackRequestDtoImpl> get copyWith =>
      __$$FeedbackRequestDtoImplCopyWithImpl<_$FeedbackRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _FeedbackRequestDto implements FeedbackRequestDto {
  const factory _FeedbackRequestDto(
          {required final String typeFeedback,
          final String? customFeedback,
          @JsonKey(ignore: true) final List<File> fileList}) =
      _$FeedbackRequestDtoImpl;

  factory _FeedbackRequestDto.fromJson(Map<String, dynamic> json) =
      _$FeedbackRequestDtoImpl.fromJson;

  @override
  String get typeFeedback;
  @override
  String? get customFeedback;
  @override
  @JsonKey(ignore: true)
  List<File> get fileList;

  /// Create a copy of FeedbackRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackRequestDtoImplCopyWith<_$FeedbackRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
