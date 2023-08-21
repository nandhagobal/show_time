// Mocks generated by Mockito 5.4.2 from annotations
// in book_show/test/unit_tests/modules/home/infra/datasource/movie_datasource_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:book_show/core/network/base_api.dart' as _i3;
import 'package:book_show/modules/home/infra/models/movie.dart' as _i6;
import 'package:http/http.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFuture_0<T1> extends _i1.SmartFake implements _i2.Future<T1> {
  _FakeFuture_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [BaseApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockBaseApi extends _i1.Mock implements _i3.BaseApi {
  MockBaseApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Map<String, String> get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: <String, String>{},
      ) as Map<String, String>);
  @override
  _i2.Future<T> get<T>(
    String? path,
    T Function(_i4.Response)? callBack,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [
            path,
            callBack,
          ],
        ),
        returnValue: _i5.ifNotNull(
              _i5.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #get,
                  [
                    path,
                    callBack,
                  ],
                ),
              ),
              (T v) => _i2.Future<T>.value(v),
            ) ??
            _FakeFuture_0<T>(
              this,
              Invocation.method(
                #get,
                [
                  path,
                  callBack,
                ],
              ),
            ),
      ) as _i2.Future<T>);
}

/// A class which mocks [Movie].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovie extends _i1.Mock implements _i6.Movie {
  MockMovie() {
    _i1.throwOnMissingStub(this);
  }

  @override
  double get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: 0.0,
      ) as double);
  @override
  set id(double? _id) => super.noSuchMethod(
        Invocation.setter(
          #id,
          _id,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get adult => (super.noSuchMethod(
        Invocation.getter(#adult),
        returnValue: false,
      ) as bool);
  @override
  String get originalLanguage => (super.noSuchMethod(
        Invocation.getter(#originalLanguage),
        returnValue: '',
      ) as String);
  @override
  String get originalTitle => (super.noSuchMethod(
        Invocation.getter(#originalTitle),
        returnValue: '',
      ) as String);
  @override
  set originalTitle(String? _originalTitle) => super.noSuchMethod(
        Invocation.setter(
          #originalTitle,
          _originalTitle,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get overview => (super.noSuchMethod(
        Invocation.getter(#overview),
        returnValue: '',
      ) as String);
  @override
  set overview(String? _overview) => super.noSuchMethod(
        Invocation.setter(
          #overview,
          _overview,
        ),
        returnValueForMissingStub: null,
      );
  @override
  double get popularity => (super.noSuchMethod(
        Invocation.getter(#popularity),
        returnValue: 0.0,
      ) as double);
  @override
  set popularity(double? _popularity) => super.noSuchMethod(
        Invocation.setter(
          #popularity,
          _popularity,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get posterPath => (super.noSuchMethod(
        Invocation.getter(#posterPath),
        returnValue: '',
      ) as String);
  @override
  set posterPath(String? _posterPath) => super.noSuchMethod(
        Invocation.setter(
          #posterPath,
          _posterPath,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get releaseDate => (super.noSuchMethod(
        Invocation.getter(#releaseDate),
        returnValue: '',
      ) as String);
  @override
  set releaseDate(String? _releaseDate) => super.noSuchMethod(
        Invocation.setter(
          #releaseDate,
          _releaseDate,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get title => (super.noSuchMethod(
        Invocation.getter(#title),
        returnValue: '',
      ) as String);
  @override
  set title(String? _title) => super.noSuchMethod(
        Invocation.setter(
          #title,
          _title,
        ),
        returnValueForMissingStub: null,
      );
  @override
  double get averageRating => (super.noSuchMethod(
        Invocation.getter(#averageRating),
        returnValue: 0.0,
      ) as double);
  @override
  set averageRating(double? _averageRating) => super.noSuchMethod(
        Invocation.setter(
          #averageRating,
          _averageRating,
        ),
        returnValueForMissingStub: null,
      );
  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
}