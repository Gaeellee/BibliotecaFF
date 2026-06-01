import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

/// Joins the list of authors with a comma separator.
String? formatAuthors(List<String>? authors) {
  String formatAuthors(List<String>? authors) {
    if (authors == null || authors.isEmpty) return 'Autor desconocido';
    return authors.join(', ');
  }
}

/// Formats rating into star emojis.
String? formatRating(int? rating) {
  String formatRating(int? rating) {
    if (rating == null || rating <= 0) return 'Sin calificar';
    return '⭐' * rating;
  }
}

/// Checks if a book should be visible based on status filter.
bool? shouldShowBook(
  String? activeFilter,
  String? bookStatus,
) {
  bool shouldShowBook(String? activeFilter, String? bookStatus) {
    if (activeFilter == null || activeFilter == 'all') return true;
    return bookStatus == activeFilter;
  }
}

/// Counts library books with a specific reading status.
int? countBooksByStatus(
  UserBooksRow? list,
  String? status,
) {
  int countBooksByStatus(List<dynamic>? list, String? status) {
    if (list == null || status == null) return 0;
    return list.where((item) => item['status'] == status).length;
  }
}

/// Converts an integer to a string.
String? intToString(int? val) {
  String intToString(int? val) {
    return val?.toString() ?? "5";
  }
}

/// Parses a string to an integer.
int? stringToInt(String? val) {
  int stringToInt(String? val) {
    return int.tryParse(val ?? "5") ?? 5;
  }
}

/// Counts library books with a specific reading status.
int? countSavedBooksByStatus(
  List<SavedBookStruct>? list,
  String? status,
) {
  int countBooksByStatus(List<dynamic>? list, String? status) {
    if (list == null || status == null) return 0;
    return list.where((item) => item.status == status).length;
  }
}

/// Joins the list of authors with a comma separator.
String? formatAuthorsV3(List<String>? authors) {
  String formatAuthorsV3(List<String>? authors) {
    if (authors == null || authors.isEmpty) return 'Autor desconocido';
    return authors.join(', ');
  }
}

/// Formats rating into star emojis.
String? formatRatingV3(int? rating) {
  String formatRatingV3(int? rating) {
    if (rating == null || rating <= 0) return 'Sin calificar';
    return '⭐' * rating;
  }
}

/// Checks if a book should be visible based on status filter.
bool? shouldShowBookV3(
  String? activeFilter,
  String? bookStatus,
) {
  bool shouldShowBookV3(String? activeFilter, String? bookStatus) {
    if (activeFilter == null || activeFilter == 'all') return true;
    return bookStatus == activeFilter;
  }
}

/// Converts an integer to a string.
String? intToStringV3(int? val) {
  String intToStringV3(int? val) {
    return val?.toString() ?? "5";
  }
}

/// Parses a string to an integer.
int? stringToIntV3(String? val) {
  int stringToIntV3(String? val) {
    return int.tryParse(val ?? "5") ?? 5;
  }
}

/// Returns a fallback string if the value is null or empty.
String? safeString(
  String? val,
  String? fallback,
) {
  String safeString(String? val, String fallback) {
    if (val == null || val.trim().isEmpty) return fallback;
    return val;
  }
}

/// Filters books by status.
bool? shouldShowBookV4(
  String? activeFilter,
  String? bookStatus,
) {
  if (activeFilter == null || activeFilter == 'all') return true;
  return bookStatus == activeFilter;
}

/// Formats rating into star emojis.
String? formatRatingV4(int? rating) {
  if (rating == null || rating <= 0) return 'Sin calificar';
  return '\u2B50' * rating;
}

/// Converts integer to string.
String? intToStringV4(int? val) {
  return val?.toString() ?? "5";
}

/// Parses string to integer.
int? stringToIntV4(String? val) {
  return int.tryParse(val ?? "5") ?? 5;
}

/// Counts books with a specific status.
String? countBooksV4(
  List<SavedBookV4Struct>? list,
  String? status,
) {
  if (list == null || status == null) return '0';
  return list.where((b) => b.status == status).length.toString();
}

List<SavedBookV4Struct> mapSupabaseToSavedBooks(
    List<UserBooksRow> supabaseBooks) {
  return supabaseBooks
      .map((row) => SavedBookV4Struct(
            bookId: row.bookId ?? '',
            title: row.title ?? '',
            authors: row.authors ?? '',
            thumbnailUrl: (row.thumbnailUrl ?? '')
                .replaceAll('zoom=1', 'zoom=0')
                .replaceAll('http://', 'https://'),
            status: row.status ?? '',
            notes: row.notes ?? '',
            rating: row.rating ?? 0,
          ))
      .toList();
}

dynamic fixThumbnailUrl(String? url) {
  if (url == null || url.isEmpty) return '';

  // Cambia zoom=1 por zoom=0 y fuerza HTTPS
  String fixed = url.replaceAll('zoom=1', 'zoom=0');
  fixed = fixed.replaceAll('http://', 'https://');

  return fixed;
}

List<String> getThumbnailUrls(List<UserBooksRow> supabaseBooks) {
  return supabaseBooks.map((row) {
    String url = row.thumbnailUrl ?? '';
    url = url.replaceAll('zoom=1', 'zoom=0');
    url = url.replaceAll('http://', 'https://');
    return url;
  }).toList();
}

/// Returns a placeholder image if the URL is null, and forces HTTPS.
String? safeImage(String? url) {
  if (url == null || url.trim().isEmpty) {
    return 'https://via.placeholder.com/150x220.png?text=Sin+Portada';
  }

// Fuerza https
  String fixed = url.replaceFirst('http://', 'https://');

// Extrae solo el id y construye URL limpia
  final uri = Uri.tryParse(fixed);
  if (uri != null) {
    final id = uri.queryParameters['id'];
    if (id != null && id.isNotEmpty) {
      return 'https://books.google.com/books/content?id=$id&printsec=frontcover&img=1&zoom=0&source=gbs_api';
    }
  }

  return fixed;
}

String? urlToImage(String? url) {
  if (url == null || url.isEmpty) {
    return null;
  }

  return url;
}
