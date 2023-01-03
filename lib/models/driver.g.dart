// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Driver _$DriverFromJson(Map<String, dynamic> json) => Driver(
      id :json['_id'] as String? ?? "null",
      email: json['email'] as String? ?? "null",
      password: json['password'] as String? ?? "null",
      name: json['name'] as String? ?? "null",
      surname: json['surname'] as String? ?? "null",
      birthDate: json['birthDate'] as String? ?? "null",
      gender: json['gender'] as String? ?? "null",
      phoneNumber: json['phoneNumber'] as String? ?? "null",
      nationalId: json['nationalId'] as String? ?? "null",
      passportNumber: json['passportNumber'] as String? ?? "null",
      location: json['location'] as String? ?? "null",
      bio: json['bio'] as String? ?? "null",
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      licenseNumber: json['licenseNumber'] as String? ?? "null",
      licenseYear: json['licenseYear'] as String? ?? "null",
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      hourlyPrice: json['hourlyPrice'] as int? ?? 0,
      taxNumber: json['taxNumber'] as String? ?? "null",
      carInfo: json['carInfo'] as Map<String, dynamic>? ?? const {},
      profileImage: json['profile_image64'] as String? ?? "null",
      trips: (json['trips'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      balance: json['balance'] as int? ?? 0,
      isActive: json['isActive'] as bool? ?? false,
    );

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'surname': instance.surname,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'nationalId': instance.nationalId,
      'passportNumber': instance.passportNumber,
      'location': instance.location,
      'bio': instance.bio,
      'skills': instance.skills,
      'languages': instance.languages,
      'licenseNumber': instance.licenseNumber,
      'licenseYear': instance.licenseYear,
      'rating': instance.rating,
      'hourlyPrice': instance.hourlyPrice,
      'taxNumber': instance.taxNumber,
      'carInfo': instance.carInfo,
      'profile_image64': instance.profileImage,
      'trips': instance.trips,
      'balance':instance.balance,
      'isActive':instance.isActive
    };
