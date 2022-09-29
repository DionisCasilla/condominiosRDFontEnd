// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

// import 'package:meta/meta.dart';
import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
  LoginResponseModel({
    required this.success,
    required this.message,
    this.resultData,
  });

  bool success;
  String message;
  ResultData? resultData;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        resultData: json["result"] == null ? null : ResultData.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? false : success,
        "message": message == null ? "" : message,
        "resultData": resultData == null ? null : resultData!.toJson(),
      };
}

class ResultData {
  ResultData({
    required this.documentoTipo,
    required this.documentoNumero,
    required this.correo,
    required this.clienteId,
    required this.id,
    this.tipoUsuario,
    required this.usuario,
    required this.nombre,
    required this.token,
  });

  String documentoTipo;
  String documentoNumero;
  String correo;
  List<ClienteId> clienteId;
  String id;
  TipoUsuario? tipoUsuario;
  String usuario;
  String nombre;
  String token;

  factory ResultData.fromJson(Map<String, dynamic> json) => ResultData(
        documentoTipo: json["documento_tipo"] == null ? null : json["documento_tipo"],
        documentoNumero: json["documento_numero"] == null ? null : json["documento_numero"],
        correo: json["correo"] == null ? null : json["correo"],
        clienteId: json["cliente_id"] == null ? [] : List<ClienteId>.from(json["cliente_id"].map((x) => ClienteId.fromJson(x))),
        id: json["_id"] == null ? null : json["_id"],
        tipoUsuario: json["tipo_usuario"] == null ? null : TipoUsuario.fromJson(json["tipo_usuario"]),
        usuario: json["usuario"] == null ? null : json["usuario"],
        nombre: json["nombre"] == null ? null : json["nombre"],
        token: json["token"] == null ? null : json["token"],
      );

  Map<String, dynamic> toJson() => {
        "documento_tipo": documentoTipo == null ? null : documentoTipo,
        "documento_numero": documentoNumero == null ? null : documentoNumero,
        "correo": correo == null ? null : correo,
        "cliente_id": clienteId == null ? null : List<dynamic>.from(clienteId.map((x) => x.toJson())),
        "_id": id == null ? null : id,
        "tipo_usuario": tipoUsuario == null ? null : tipoUsuario!.toJson(),
        "usuario": usuario == null ? null : usuario,
        "nombre": nombre == null ? null : nombre,
        "token": token == null ? null : token,
      };
}

class ClienteId {
  ClienteId({
    required this.id,
    required this.cliente,
    required this.planId,
  });

  String id;
  String cliente;
  String planId;

  factory ClienteId.fromJson(Map<String, dynamic> json) => ClienteId(
        id: json["_id"] == null ? null : json["_id"],
        cliente: json["cliente"] == null ? null : json["cliente"],
        planId: json["plan_id"] == null ? null : json["plan_id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "cliente": cliente == null ? null : cliente,
        "plan_id": planId == null ? null : planId,
      };
}

class TipoUsuario {
  TipoUsuario({
    required this.isAdmin,
    required this.id,
    required this.descrpTipos,
  });

  bool isAdmin;
  String id;
  String descrpTipos;

  factory TipoUsuario.fromJson(Map<String, dynamic> json) => TipoUsuario(
        isAdmin: json["isAdmin"] == null ? null : json["isAdmin"],
        id: json["_id"] == null ? null : json["_id"],
        descrpTipos: json["DescrpTipos"] == null ? null : json["DescrpTipos"],
      );

  Map<String, dynamic> toJson() => {
        "isAdmin": isAdmin == null ? null : isAdmin,
        "_id": id == null ? null : id,
        "DescrpTipos": descrpTipos == null ? null : descrpTipos,
      };
}
