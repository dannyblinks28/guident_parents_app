class SchoolSessionModel {
final String? message;
final List<Data>? data;
const SchoolSessionModel({this.message , this.data });
SchoolSessionModel copyWith({String? message, List<Data>? data}){
return SchoolSessionModel(
            message:message ?? this.message,
data:data ?? this.data
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'message': message,
'data': data?.map<Map<String,dynamic>>((data)=> data.toJson()).toList()
    };
}

static SchoolSessionModel fromJson(Map<String , Object?> json){
    return SchoolSessionModel(
            message:json['message'] == null ? null : json['message'] as String,
data:json['data'] == null ? null : (json['data'] as List).map<Data>((data)=> Data.fromJson(data  as Map<String,Object?>)).toList()
    );
}

@override
String toString(){
    return '''SchoolSessionModel(
                message:$message,
data:${data.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is SchoolSessionModel && 
        other.runtimeType == runtimeType &&
        other.message == message && 
other.data == data;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                message, 
data
    );
}
    
}
      
      
class Data {
final String? id;
final String? sessionPeriod;
final List<Terms>? terms;
final String? schoolRef;
final bool? current;
final List<dynamic>? results;
final String? sessionStartDate;
final String? sessionEndDate;
final List<Classes>? classes;
final List<dynamic>? students;
final String? createdAt;
final String? updatedAt;
final int? V;
const Data({this.id , this.sessionPeriod , this.terms , this.schoolRef , this.current , this.results , this.sessionStartDate , this.sessionEndDate , this.classes , this.students , this.createdAt , this.updatedAt , this.V });
Data copyWith({String? id, String? sessionPeriod, List<Terms>? terms, String? schoolRef, bool? current, List<dynamic>? results, String? sessionStartDate, String? sessionEndDate, List<Classes>? classes, List<dynamic>? students, String? createdAt, String? updatedAt, int? V}){
return Data(
            id:id ?? this.id,
sessionPeriod:sessionPeriod ?? this.sessionPeriod,
terms:terms ?? this.terms,
schoolRef:schoolRef ?? this.schoolRef,
current:current ?? this.current,
results:results ?? this.results,
sessionStartDate:sessionStartDate ?? this.sessionStartDate,
sessionEndDate:sessionEndDate ?? this.sessionEndDate,
classes:classes ?? this.classes,
students:students ?? this.students,
createdAt:createdAt ?? this.createdAt,
updatedAt:updatedAt ?? this.updatedAt,
V:V ?? this.V
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'id': id,
'sessionPeriod': sessionPeriod,
'terms': terms?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'schoolRef': schoolRef,
'current': current,
'results': results,
'sessionStartDate': sessionStartDate,
'sessionEndDate': sessionEndDate,
'classes': classes?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'students': students,
'createdAt': createdAt,
'updatedAt': updatedAt,
'V': V
    };
}

static Data fromJson(Map<String , Object?> json){
    return Data(
            id:json['_id'] == null ? null : json['_id'] as String,
sessionPeriod:json['sessionPeriod'] == null ? null : json['sessionPeriod'] as String,
terms:json['terms'] == null ? null : (json['terms'] as List).map<Terms>((data)=> Terms.fromJson(data  as Map<String,Object?>)).toList(),
schoolRef:json['school_ref'] == null ? null : json['school_ref'] as String,
current:json['current'] == null ? null : json['current'] as bool,
results:json['results'] == null ? null : json['results'] as List<dynamic>,
sessionStartDate:json['session_start_date'] == null ? null : json['session_start_date'] as String,
sessionEndDate:json['session_end_date'] == null ? null : json['session_end_date'] as String,
classes:json['classes'] == null ? null : (json['classes'] as List).map<Classes>((data)=> Classes.fromJson(data  as Map<String,Object?>)).toList(),
students:json['students'] == null ? null : json['students'] as List<dynamic>,
createdAt:json['createdAt'] == null ? null : json['createdAt'] as String,
updatedAt:json['updatedAt'] == null ? null : json['updatedAt'] as String,
V:json['__v'] == null ? null : json['__v'] as int
    );
}

@override
String toString(){
    return '''Data(
                id:$id,
sessionPeriod:$sessionPeriod,
terms:${terms.toString()},
schoolRef:$schoolRef,
current:$current,
results:$results,
sessionStartDate:$sessionStartDate,
sessionEndDate:$sessionEndDate,
classes:${classes.toString()},
students:$students,
createdAt:$createdAt,
updatedAt:$updatedAt,
V:$V
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Data && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.sessionPeriod == sessionPeriod && 
other.terms == terms && 
other.schoolRef == schoolRef && 
other.current == current && 
other.results == results && 
other.sessionStartDate == sessionStartDate && 
other.sessionEndDate == sessionEndDate && 
other.classes == classes && 
other.students == students && 
other.createdAt == createdAt && 
other.updatedAt == updatedAt && 
other.V == V;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
sessionPeriod, 
terms, 
schoolRef, 
current, 
results, 
sessionStartDate, 
sessionEndDate, 
classes, 
students, 
createdAt, 
updatedAt, 
V
    );
}
    
}
      
      
class Classes {
final String? id;
final String? classTitle;
final List<Subjects>? subjects;
final String? schoolRef;
final String? createdAt;
final String? updatedAt;
final int? V;
const Classes({this.id , this.classTitle , this.subjects , this.schoolRef , this.createdAt , this.updatedAt , this.V });
Classes copyWith({String? id, String? classTitle, List<Subjects>? subjects, String? schoolRef, String? createdAt, String? updatedAt, int? V}){
return Classes(
            id:id ?? this.id,
classTitle:classTitle ?? this.classTitle,
subjects:subjects ?? this.subjects,
schoolRef:schoolRef ?? this.schoolRef,
createdAt:createdAt ?? this.createdAt,
updatedAt:updatedAt ?? this.updatedAt,
V:V ?? this.V
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'id': id,
'classTitle': classTitle,
'subjects': subjects?.map<Map<String,dynamic>>((data)=> data.toJson()).toList(),
'schoolRef': schoolRef,
'createdAt': createdAt,
'updatedAt': updatedAt,
'V': V
    };
}

static Classes fromJson(Map<String , Object?> json){
    return Classes(
            id:json['_id'] == null ? null : json['_id'] as String,
classTitle:json['classTitle'] == null ? null : json['classTitle'] as String,
subjects:json['subjects'] == null ? null : (json['subjects'] as List).map<Subjects>((data)=> Subjects.fromJson(data  as Map<String,Object?>)).toList(),
schoolRef:json['school_ref'] == null ? null : json['school_ref'] as String,
createdAt:json['createdAt'] == null ? null : json['createdAt'] as String,
updatedAt:json['updatedAt'] == null ? null : json['updatedAt'] as String,
V:json['__v'] == null ? null : json['__v'] as int
    );
}

@override
String toString(){
    return '''Classes(
                id:$id,
classTitle:$classTitle,
subjects:${subjects.toString()},
schoolRef:$schoolRef,
createdAt:$createdAt,
updatedAt:$updatedAt,
V:$V
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Classes && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.classTitle == classTitle && 
other.subjects == subjects && 
other.schoolRef == schoolRef && 
other.createdAt == createdAt && 
other.updatedAt == updatedAt && 
other.V == V;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
classTitle, 
subjects, 
schoolRef, 
createdAt, 
updatedAt, 
V
    );
}
    
}
      
      
class Subjects {
final String? subject;
final String? id;
const Subjects({this.subject , this.id });
Subjects copyWith({String? subject, String? id}){
return Subjects(
            subject:subject ?? this.subject,
id:id ?? this.id
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'subject': subject,
'id': id
    };
}

static Subjects fromJson(Map<String , Object?> json){
    return Subjects(
            subject:json['subject'] == null ? null : json['subject'] as String,
id:json['_id'] == null ? null : json['_id'] as String
    );
}

@override
String toString(){
    return '''Subjects(
                subject:$subject,
id:$id
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Subjects && 
        other.runtimeType == runtimeType &&
        other.subject == subject && 
other.id == id;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                subject, 
id
    );
}
    
}
      
      
class Terms {
final String? id;
final String? termName;
final String? termStartDate;
final String? termEndDate;
final bool? current;
final String? academicSession;
final String? schoolRef;
final int? V;
const Terms({this.id , this.termName , this.termStartDate , this.termEndDate , this.current , this.academicSession , this.schoolRef , this.V });
Terms copyWith({String? id, String? termName, String? termStartDate, String? termEndDate, bool? current, String? academicSession, String? schoolRef, int? V}){
return Terms(
            id:id ?? this.id,
termName:termName ?? this.termName,
termStartDate:termStartDate ?? this.termStartDate,
termEndDate:termEndDate ?? this.termEndDate,
current:current ?? this.current,
academicSession:academicSession ?? this.academicSession,
schoolRef:schoolRef ?? this.schoolRef,
V:V ?? this.V
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'id': id,
'termName': termName,
'termStartDate': termStartDate,
'termEndDate': termEndDate,
'current': current,
'academicSession': academicSession,
'schoolRef': schoolRef,
'V': V
    };
}

static Terms fromJson(Map<String , Object?> json){
    return Terms(
            id:json['_id'] == null ? null : json['_id'] as String,
termName:json['term_name'] == null ? null : json['term_name'] as String,
termStartDate:json['term_start_date'] == null ? null : json['term_start_date'] as String,
termEndDate:json['term_end_date'] == null ? null : json['term_end_date'] as String,
current:json['current'] == null ? null : json['current'] as bool,
academicSession:json['academic_session'] == null ? null : json['academic_session'] as String,
schoolRef:json['school_ref'] == null ? null : json['school_ref'] as String,
V:json['_v'] == null ? null : json['_v'] as int
    );
}

@override
String toString(){
    return '''Terms(
                id:$id,
termName:$termName,
termStartDate:$termStartDate,
termEndDate:$termEndDate,
current:$current,
academicSession:$academicSession,
schoolRef:$schoolRef,
V:$V
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Terms && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.termName == termName && 
other.termStartDate == termStartDate && 
other.termEndDate == termEndDate && 
other.current == current && 
other.academicSession == academicSession && 
other.schoolRef == schoolRef && 
other.V == V;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
termName, 
termStartDate, 
termEndDate, 
current, 
academicSession, 
schoolRef, 
V
    );
}
    
}
      
      
  
     