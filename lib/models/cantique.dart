import 'dart:convert';

import 'package:flutter/foundation.dart';

class Cantique {
  final String title;
  final int number;
  final String category;
  final List<String> content;
  final bool? withRefrain;
  Cantique({
    required this.title,
    required this.number,
    required this.category,
    required this.content,
    this.withRefrain,
  });

  @override
  String toString() {
    return 'Cantique(title: $title, number: $number, category: $category, content: $content, withRefrain: $withRefrain)';
  }

  Cantique copyWith({
    String? title,
    int? number,
    String? category,
    List<String>? content,
    bool? withRefrain,
  }) {
    return Cantique(
      title: title ?? this.title,
      number: number ?? this.number,
      category: category ?? this.category,
      content: content ?? this.content,
      withRefrain: withRefrain ?? this.withRefrain,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'number': number,
      'category': category,
      'content': content,
      'withRefrain': withRefrain,
    };
  }

  factory Cantique.fromMap(Map<String, dynamic> map) {
    return Cantique(
      title: map['title'] ?? '',
      number: map['number']?.toInt() ?? 0,
      category: map['category'] ?? '',
      content: List<String>.from(map['content']),
      withRefrain: map['withRefrain'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cantique.fromJson(String source) =>
      Cantique.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cantique &&
        other.title == title &&
        other.number == number &&
        other.category == category &&
        listEquals(other.content, content) &&
        other.withRefrain == withRefrain;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        number.hashCode ^
        category.hashCode ^
        content.hashCode ^
        withRefrain.hashCode;
  }
}
