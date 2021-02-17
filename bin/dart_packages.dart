/**
 * Se recomienda poner las dependencias en el siguiente orden:
 * 
 * 1. Importaciones del lenguaje
 * 2. Paquetes de terceros
 * 3. Dependencias propias
 */
// import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:dart_packages/dart_packages.dart' as dart_packages;

import 'package:dart_packages/modules/RequestResponse.dart';

void main(List<String> arguments) {
  // dart_packages.getRequestResponseService();
  dart_packages.getColombiaDataService();
}
