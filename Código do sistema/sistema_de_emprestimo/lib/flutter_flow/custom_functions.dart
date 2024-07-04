import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<UsuarioRecord> sortMyData(
  List<UsuarioRecord> listToSort,
  bool isAsc,
  int sortColumIndex,
) {
  // ordenar as colunas display_name e instituicao do datatable verificando letras maisculas e minusculas
  if (sortColumIndex == 0) {
    listToSort.sort((a, b) => isAsc
        ? a.displayName.toLowerCase().compareTo(b.displayName.toLowerCase())
        : b.displayName.toLowerCase().compareTo(a.displayName.toLowerCase()));
  } else if (sortColumIndex == 1) {
    listToSort.sort((a, b) => isAsc
        ? a.instituicao.toLowerCase().compareTo(b.instituicao.toLowerCase())
        : b.instituicao.toLowerCase().compareTo(a.instituicao.toLowerCase()));
  }
  return listToSort;
}

List<EmprestimoRecord> sortDate(
  List<EmprestimoRecord> listToSort,
  bool isAsc,
  int sortColumIndex,
) {
  // ordenar as linhas de um datatable pela coluna created_time
  if (sortColumIndex == 0) {
    // Sort by created_time column
    listToSort.sort((a, b) {
      final aTime = a.createdTime?.millisecondsSinceEpoch ?? 0;
      final bTime = b.createdTime?.millisecondsSinceEpoch ?? 0;
      return isAsc ? aTime.compareTo(bTime) : bTime.compareTo(aTime);
    });
  } else if (sortColumIndex == 1) {
    listToSort.sort((a, b) => isAsc
        ? a.nome.toLowerCase().compareTo(b.nome.toLowerCase())
        : b.nome.toLowerCase().compareTo(a.nome.toLowerCase()));
  } else if (sortColumIndex == 3) {
    listToSort.sort((a, b) => isAsc
        ? a.status.toLowerCase().compareTo(b.status.toLowerCase())
        : b.status.toLowerCase().compareTo(a.status.toLowerCase()));
  }

  return listToSort;
}
