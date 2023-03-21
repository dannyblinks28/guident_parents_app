class SchoolDetailModel {
  final String? message;
  final Data? data;
  const SchoolDetailModel({this.message, this.data});
  SchoolDetailModel copyWith({String? message, Data? data}) {
    return SchoolDetailModel(
        message: message ?? this.message, data: data ?? this.data);
  }

  Map<String, Object?> toJson() {
    return {'message': message, 'data': data?.toJson()};
  }

  static SchoolDetailModel fromJson(Map<String, Object?> json) {
    return SchoolDetailModel(
        message: json['message'] == null ? null : json['message'] as String,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''SchoolDetailModel(
                message:$message,
data:${data.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is SchoolDetailModel &&
        other.runtimeType == runtimeType &&
        other.message == message &&
        other.data == data;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, message, data);
  }
}

class Data {
  final Field? field;
  const Data({this.field});
  Data copyWith({Field? field}) {
    return Data(field: field ?? this.field);
  }

  Map<String, Object?> toJson() {
    return {'field': field?.toJson()};
  }

  static Data fromJson(Map<String, Object?> json) {
    return Data(
        field: json['field'] == null
            ? null
            : Field.fromJson(json['field'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''Data(
                field:${field.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Data &&
        other.runtimeType == runtimeType &&
        other.field == field;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, field);
  }
}

class Field {
  final String? id;
  final String? schoolName;
  final String? schoolAddress;
  final int? rcNumber;
  final String? schoolLogo;
  final String? adminFirstName;
  final String? adminLastName;
  final String? phoneNumber;
  final String? schoolEmail;
  final String? adminPosition;
  final bool? profileCompleted;
  final String? ImagePublicUrl;
  const Field(
      {this.id,
      this.schoolName,
      this.schoolAddress,
      this.rcNumber,
      this.schoolLogo,
      this.adminFirstName,
      this.adminLastName,
      this.phoneNumber,
      this.schoolEmail,
      this.adminPosition,
      this.profileCompleted,
      this.ImagePublicUrl});
  Field copyWith(
      {String? id,
      String? schoolName,
      String? schoolAddress,
      int? rcNumber,
      String? schoolLogo,
      String? adminFirstName,
      String? adminLastName,
      String? phoneNumber,
      String? schoolEmail,
      String? adminPosition,
      bool? profileCompleted,
      String? ImagePublicUrl}) {
    return Field(
        id: id ?? this.id,
        schoolName: schoolName ?? this.schoolName,
        schoolAddress: schoolAddress ?? this.schoolAddress,
        rcNumber: rcNumber ?? this.rcNumber,
        schoolLogo: schoolLogo ?? this.schoolLogo,
        adminFirstName: adminFirstName ?? this.adminFirstName,
        adminLastName: adminLastName ?? this.adminLastName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        schoolEmail: schoolEmail ?? this.schoolEmail,
        adminPosition: adminPosition ?? this.adminPosition,
        profileCompleted: profileCompleted ?? this.profileCompleted,
        ImagePublicUrl: ImagePublicUrl ?? this.ImagePublicUrl);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'schoolName': schoolName,
      'schoolAddress': schoolAddress,
      'rcNumber': rcNumber,
      'schoolLogo': schoolLogo,
      'adminFirstName': adminFirstName,
      'adminLastName': adminLastName,
      'phoneNumber': phoneNumber,
      'schoolEmail': schoolEmail,
      'adminPosition': adminPosition,
      'profileCompleted': profileCompleted,
      'ImagePublicUrl': ImagePublicUrl
    };
  }

  static Field fromJson(Map<String, Object?> json) {
    return Field(
        id: json['_id'] == null ? null : json['_id'] as String,
        schoolName:
            json['school_name'] == null ? null : json['school_name'] as String,
        schoolAddress: json['school_address'] == null
            ? null
            : json['school_address'] as String,
        rcNumber: json['rc_number'] == null ? null : json['rc_number'] as int,
        schoolLogo:
            json['school_logo'] == null ? null : json['school_logo'] as String,
        adminFirstName: json['admin_first_name'] == null
            ? null
            : json['admin_first_name'] as String,
        adminLastName: json['admin_last_name'] == null
            ? null
            : json['admin_last_name'] as String,
        phoneNumber: json['phone_number'] == null
            ? null
            : json['phone_number'] as String,
        schoolEmail: json['school_email'] == null
            ? null
            : json['school_email'] as String,
        adminPosition: json['admin_position'] == null
            ? null
            : json['admin_position'] as String,
        profileCompleted: json['profile_completed'] == null
            ? null
            : json['profile_completed'] as bool,
        ImagePublicUrl: json['Image_public_url'] == null
            ? null
            : json['Image_public_url'] as String);
  }

  @override
  String toString() {
    return '''Field(
                id:$id,
schoolName:$schoolName,
schoolAddress:$schoolAddress,
rcNumber:$rcNumber,
schoolLogo:$schoolLogo,
adminFirstName:$adminFirstName,
adminLastName:$adminLastName,
phoneNumber:$phoneNumber,
schoolEmail:$schoolEmail,
adminPosition:$adminPosition,
profileCompleted:$profileCompleted,
ImagePublicUrl:$ImagePublicUrl
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Field &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.schoolName == schoolName &&
        other.schoolAddress == schoolAddress &&
        other.rcNumber == rcNumber &&
        other.schoolLogo == schoolLogo &&
        other.adminFirstName == adminFirstName &&
        other.adminLastName == adminLastName &&
        other.phoneNumber == phoneNumber &&
        other.schoolEmail == schoolEmail &&
        other.adminPosition == adminPosition &&
        other.profileCompleted == profileCompleted &&
        other.ImagePublicUrl == ImagePublicUrl;
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        id,
        schoolName,
        schoolAddress,
        rcNumber,
        schoolLogo,
        adminFirstName,
        adminLastName,
        phoneNumber,
        schoolEmail,
        adminPosition,
        profileCompleted,
        ImagePublicUrl);
  }
}
