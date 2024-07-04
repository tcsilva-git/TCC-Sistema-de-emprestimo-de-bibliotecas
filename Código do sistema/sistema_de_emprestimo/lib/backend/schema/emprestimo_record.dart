import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmprestimoRecord extends FirestoreRecord {
  EmprestimoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "curso" field.
  String? _curso;
  String get curso => _curso ?? '';
  bool hasCurso() => _curso != null;

  // "matricula" field.
  String? _matricula;
  String get matricula => _matricula ?? '';
  bool hasMatricula() => _matricula != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  bool hasAutor() => _autor != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "localizacao" field.
  String? _localizacao;
  String get localizacao => _localizacao ?? '';
  bool hasLocalizacao() => _localizacao != null;

  // "uid_remetente" field.
  String? _uidRemetente;
  String get uidRemetente => _uidRemetente ?? '';
  bool hasUidRemetente() => _uidRemetente != null;

  // "uid_destinatario" field.
  String? _uidDestinatario;
  String get uidDestinatario => _uidDestinatario ?? '';
  bool hasUidDestinatario() => _uidDestinatario != null;

  // "autor2" field.
  String? _autor2;
  String get autor2 => _autor2 ?? '';
  bool hasAutor2() => _autor2 != null;

  // "titulo2" field.
  String? _titulo2;
  String get titulo2 => _titulo2 ?? '';
  bool hasTitulo2() => _titulo2 != null;

  // "localizacao2" field.
  String? _localizacao2;
  String get localizacao2 => _localizacao2 ?? '';
  bool hasLocalizacao2() => _localizacao2 != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "dataEmprestimo" field.
  DateTime? _dataEmprestimo;
  DateTime? get dataEmprestimo => _dataEmprestimo;
  bool hasDataEmprestimo() => _dataEmprestimo != null;

  // "dataDevolucao" field.
  DateTime? _dataDevolucao;
  DateTime? get dataDevolucao => _dataDevolucao;
  bool hasDataDevolucao() => _dataDevolucao != null;

  // "biblioteca" field.
  String? _biblioteca;
  String get biblioteca => _biblioteca ?? '';
  bool hasBiblioteca() => _biblioteca != null;

  // "instituicao" field.
  String? _instituicao;
  String get instituicao => _instituicao ?? '';
  bool hasInstituicao() => _instituicao != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _curso = snapshotData['curso'] as String?;
    _matricula = snapshotData['matricula'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _email = snapshotData['email'] as String?;
    _autor = snapshotData['autor'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _localizacao = snapshotData['localizacao'] as String?;
    _uidRemetente = snapshotData['uid_remetente'] as String?;
    _uidDestinatario = snapshotData['uid_destinatario'] as String?;
    _autor2 = snapshotData['autor2'] as String?;
    _titulo2 = snapshotData['titulo2'] as String?;
    _localizacao2 = snapshotData['localizacao2'] as String?;
    _status = snapshotData['status'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _dataEmprestimo = snapshotData['dataEmprestimo'] as DateTime?;
    _dataDevolucao = snapshotData['dataDevolucao'] as DateTime?;
    _biblioteca = snapshotData['biblioteca'] as String?;
    _instituicao = snapshotData['instituicao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emprestimo');

  static Stream<EmprestimoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmprestimoRecord.fromSnapshot(s));

  static Future<EmprestimoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmprestimoRecord.fromSnapshot(s));

  static EmprestimoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmprestimoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmprestimoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmprestimoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmprestimoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmprestimoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmprestimoRecordData({
  String? nome,
  String? curso,
  String? matricula,
  String? telefone,
  String? email,
  String? autor,
  String? titulo,
  String? localizacao,
  String? uidRemetente,
  String? uidDestinatario,
  String? autor2,
  String? titulo2,
  String? localizacao2,
  String? status,
  DateTime? createdTime,
  DateTime? dataEmprestimo,
  DateTime? dataDevolucao,
  String? biblioteca,
  String? instituicao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'curso': curso,
      'matricula': matricula,
      'telefone': telefone,
      'email': email,
      'autor': autor,
      'titulo': titulo,
      'localizacao': localizacao,
      'uid_remetente': uidRemetente,
      'uid_destinatario': uidDestinatario,
      'autor2': autor2,
      'titulo2': titulo2,
      'localizacao2': localizacao2,
      'status': status,
      'created_time': createdTime,
      'dataEmprestimo': dataEmprestimo,
      'dataDevolucao': dataDevolucao,
      'biblioteca': biblioteca,
      'instituicao': instituicao,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmprestimoRecordDocumentEquality implements Equality<EmprestimoRecord> {
  const EmprestimoRecordDocumentEquality();

  @override
  bool equals(EmprestimoRecord? e1, EmprestimoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.curso == e2?.curso &&
        e1?.matricula == e2?.matricula &&
        e1?.telefone == e2?.telefone &&
        e1?.email == e2?.email &&
        e1?.autor == e2?.autor &&
        e1?.titulo == e2?.titulo &&
        e1?.localizacao == e2?.localizacao &&
        e1?.uidRemetente == e2?.uidRemetente &&
        e1?.uidDestinatario == e2?.uidDestinatario &&
        e1?.autor2 == e2?.autor2 &&
        e1?.titulo2 == e2?.titulo2 &&
        e1?.localizacao2 == e2?.localizacao2 &&
        e1?.status == e2?.status &&
        e1?.createdTime == e2?.createdTime &&
        e1?.dataEmprestimo == e2?.dataEmprestimo &&
        e1?.dataDevolucao == e2?.dataDevolucao &&
        e1?.biblioteca == e2?.biblioteca &&
        e1?.instituicao == e2?.instituicao;
  }

  @override
  int hash(EmprestimoRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.curso,
        e?.matricula,
        e?.telefone,
        e?.email,
        e?.autor,
        e?.titulo,
        e?.localizacao,
        e?.uidRemetente,
        e?.uidDestinatario,
        e?.autor2,
        e?.titulo2,
        e?.localizacao2,
        e?.status,
        e?.createdTime,
        e?.dataEmprestimo,
        e?.dataDevolucao,
        e?.biblioteca,
        e?.instituicao
      ]);

  @override
  bool isValidKey(Object? o) => o is EmprestimoRecord;
}
