// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StudentScoreModel {
  String? studentName;
  String? score;
  StudentScoreModel({
    this.studentName,
    this.score,
  });

  StudentScoreModel copyWith({
    String? studentName,
    String? score,
  }) {
    return StudentScoreModel(
      studentName: studentName ?? this.studentName,
      score: score ?? this.score,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'student_name': studentName,
      'score': score,
    };
  }

  factory StudentScoreModel.fromMap(Map<String, dynamic> map) {
    return StudentScoreModel(
      studentName: map['student_name'] != null ? map['student_name'] as String : null,
      score: map['score'] != null ? map['score'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentScoreModel.fromJson(String source) => StudentScoreModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'StudentScoreModel(student_name: $studentName, score: $score)';

  @override
  bool operator ==(covariant StudentScoreModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.studentName == studentName &&
      other.score == score;
  }

  @override
  int get hashCode => studentName.hashCode ^ score.hashCode;
}
