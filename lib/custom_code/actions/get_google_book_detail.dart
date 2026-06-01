// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;
import '/backend/schema/structs/index.dart';

Future<GoogleBookV4Struct> getGoogleBookDetail(String? bookId) async {
  final emptyBook = GoogleBookV4Struct(
    id: bookId ?? '',
    title: 'No encontrado',
    authors: '',
    description: '',
    thumbnail: 'https://via.placeholder.com/150x220.png?text=Error',
    pageCount: 0,
    publishedDate: '',
    categories: '',
  );
  if (bookId == null || bookId.trim().isEmpty) return emptyBook;
  // Usa la API Key proporcionada por el usuario para evitar el error 429
  final String apiKey = 'AIzaSyDvzbhoqIN9ElrN1PkJikO1oCIOrrD9jFs';
  final uri = Uri.parse(
    'https://www.googleapis.com/books/v1/volumes/$bookId?key=$apiKey',
  );
  try {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final item = json.decode(response.body);
      final info = item['volumeInfo'] ?? {};
      final imageLinks = info['imageLinks'] ?? {};
      String thumb = imageLinks['thumbnail']?.toString() ?? '';
      if (thumb.startsWith('http://')) {
        thumb = thumb.replaceFirst('http://', 'https://');
      }
      if (thumb.isEmpty) {
        thumb = 'https://via.placeholder.com/150x220.png?text=Sin+Portada';
      }
      return GoogleBookV4Struct(
        id: item['id']?.toString() ?? '',
        title: info['title']?.toString() ?? 'Título desconocido',
        authors: (info['authors'] as List<dynamic>?)?.join(', ') ??
            'Autor desconocido',
        description:
            info['description']?.toString() ?? 'Sin descripción disponible.',
        thumbnail: thumb,
        pageCount: info['pageCount'] is int ? info['pageCount'] : 0,
        publishedDate: info['publishedDate']?.toString() ?? '',
        categories: (info['categories'] as List<dynamic>?)?.join(', ') ?? '',
      );
    }
    // Si hubo un error (ej. 429), puedes añadir un log o devolver un dummy.
    // Para no complicar, devolvemos el emptyBook por defecto.
    return emptyBook;
  } catch (e) {
    return emptyBook;
  }
}
