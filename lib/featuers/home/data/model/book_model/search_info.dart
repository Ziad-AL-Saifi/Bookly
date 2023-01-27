import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromGetDataFromJson(Map<String, dynamic> json) {
    return SearchInfo(
      textSnippet: json['textSnippet'] as String?,
    );
  }

  Map<String, dynamic> toGetDataFromJson() => {
        'textSnippet': textSnippet,
      };

  @override
  List<Object?> get props => [textSnippet];
}
