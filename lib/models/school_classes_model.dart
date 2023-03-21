class SchoolClassesModel {
final String? message;
final Data? data;
const SchoolClassesModel({this.message , this.data });
SchoolClassesModel copyWith({String? message, Data? data}){
return SchoolClassesModel(
            message:message ?? this.message,
data:data ?? this.data
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'message': message,
'data': data?.toJson()
    };
}

static SchoolClassesModel fromJson(Map<String , Object?> json){
    return SchoolClassesModel(
            message:json['message'] == null ? null : json['message'] as String,
data:json['data'] == null ? null : Data.fromJson(json['data']  as Map<String,Object?>)
    );
}

@override
String toString(){
    return '''SchoolClassesModel(
                message:$message,
data:${data.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is SchoolClassesModel && 
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
final bool? profileCompleted;
final List<Classes>? classes;
const Data({this.id , this.profileCompleted , this.classes });
Data copyWith({String? id, bool? profileCompleted, List<Classes>? classes}){
return Data(
            id:id ?? this.id,
profileCompleted:profileCompleted ?? this.profileCompleted,
classes:classes ?? this.classes
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'id': id,
'profileCompleted': profileCompleted,
'classes': classes?.map<Map<String,dynamic>>((data)=> data.toJson()).toList()
    };
}

static Data fromJson(Map<String , Object?> json){
    return Data(
            id:json['_id'] == null ? null : json['_id'] as String,
profileCompleted:json['profile_completed'] == null ? null : json['profile_completed'] as bool,
classes:json['classes'] == null ? null : (json['classes'] as List).map<Classes>((data)=> Classes.fromJson(data  as Map<String,Object?>)).toList()
    );
}

@override
String toString(){
    return '''Data(
                id:$id,
profileCompleted:$profileCompleted,
classes:${classes.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Data && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.profileCompleted == profileCompleted && 
other.classes == classes;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
profileCompleted, 
classes
    );
}
    
}
      
      
class Classes {
final String? id;
final String? classTitle;
final List<dynamic>? subjects;
final String? schoolRef;
final String? createdAt;
final String? updatedAt;
final int? V;
const Classes({this.id , this.classTitle , this.subjects , this.schoolRef , this.createdAt , this.updatedAt , this.V });
Classes copyWith({String? id, String? classTitle, List<dynamic>? subjects, String? schoolRef, String? createdAt, String? updatedAt, int? V}){
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
            '_id': id,
'classTitle': classTitle,
'subjects': subjects,
'school_ref': schoolRef,
'createdAt': createdAt,
'updatedAt': updatedAt,
'_v': V
    };
}

static Classes fromJson(Map<String , Object?> json){
    return Classes(
            id:json['_id'] == null ? null : json['_id'] as String,
classTitle:json['classTitle'] == null ? null : json['classTitle'] as String,
subjects:json['subjects'] == null ? null : json['subjects'] as List<dynamic>,
schoolRef:json['school_ref'] == null ? null : json['school_ref'] as String,
createdAt:json['createdAt'] == null ? null : json['createdAt'] as String,
updatedAt:json['updatedAt'] == null ? null : json['updatedAt'] as String,
V:json['_v'] == null ? null : json['_v'] as int
    );
}

@override
String toString(){
    return '''Classes(
                id:$id,
classTitle:$classTitle,
subjects:$subjects,
school_ref:$schoolRef,
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
      
      
  
     