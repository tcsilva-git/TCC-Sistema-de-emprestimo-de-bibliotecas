import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "responsavel" field.
  String? _responsavel;
  String get responsavel => _responsavel ?? '';
  bool hasResponsavel() => _responsavel != null;

  // "email_responsavel" field.
  String? _emailResponsavel;
  String get emailResponsavel => _emailResponsavel ?? '';
  bool hasEmailResponsavel() => _emailResponsavel != null;

  // "tel_responsavel" field.
  String? _telResponsavel;
  String get telResponsavel => _telResponsavel ?? '';
  bool hasTelResponsavel() => _telResponsavel != null;

  // "instituicao" field.
  String? _instituicao;
  String get instituicao => _instituicao ?? '';
  bool hasInstituicao() => _instituicao != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "tel_responsavel2" field.
  String? _telResponsavel2;
  String get telResponsavel2 => _telResponsavel2 ?? '';
  bool hasTelResponsavel2() => _telResponsavel2 != null;

  // "email_responsavel2" field.
  String? _emailResponsavel2;
  String get emailResponsavel2 => _emailResponsavel2 ?? '';
  bool hasEmailResponsavel2() => _emailResponsavel2 != null;

  // "cargo_responsavel" field.
  String? _cargoResponsavel;
  String get cargoResponsavel => _cargoResponsavel ?? '';
  bool hasCargoResponsavel() => _cargoResponsavel != null;

  // "cargo_responsavel2" field.
  String? _cargoResponsavel2;
  String get cargoResponsavel2 => _cargoResponsavel2 ?? '';
  bool hasCargoResponsavel2() => _cargoResponsavel2 != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "responsavel2" field.
  String? _responsavel2;
  String get responsavel2 => _responsavel2 ?? '';
  bool hasResponsavel2() => _responsavel2 != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _senha = snapshotData['senha'] as String?;
    _uid = snapshotData['uid'] as String?;
    _responsavel = snapshotData['responsavel'] as String?;
    _emailResponsavel = snapshotData['email_responsavel'] as String?;
    _telResponsavel = snapshotData['tel_responsavel'] as String?;
    _instituicao = snapshotData['instituicao'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _telResponsavel2 = snapshotData['tel_responsavel2'] as String?;
    _emailResponsavel2 = snapshotData['email_responsavel2'] as String?;
    _cargoResponsavel = snapshotData['cargo_responsavel'] as String?;
    _cargoResponsavel2 = snapshotData['cargo_responsavel2'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _responsavel2 = snapshotData['responsavel2'] as String?;
    _cep = snapshotData['cep'] as String?;
    _admin = snapshotData['admin'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioRecord.fromSnapshot(s));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioRecord.fromSnapshot(s));

  static UsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioRecordData({
  String? email,
  String? senha,
  String? uid,
  String? responsavel,
  String? emailResponsavel,
  String? telResponsavel,
  String? instituicao,
  DateTime? createdTime,
  String? telResponsavel2,
  String? emailResponsavel2,
  String? cargoResponsavel,
  String? cargoResponsavel2,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  String? endereco,
  String? responsavel2,
  String? cep,
  bool? admin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'senha': senha,
      'uid': uid,
      'responsavel': responsavel,
      'email_responsavel': emailResponsavel,
      'tel_responsavel': telResponsavel,
      'instituicao': instituicao,
      'created_time': createdTime,
      'tel_responsavel2': telResponsavel2,
      'email_responsavel2': emailResponsavel2,
      'cargo_responsavel': cargoResponsavel,
      'cargo_responsavel2': cargoResponsavel2,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'endereco': endereco,
      'responsavel2': responsavel2,
      'cep': cep,
      'admin': admin,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.senha == e2?.senha &&
        e1?.uid == e2?.uid &&
        e1?.responsavel == e2?.responsavel &&
        e1?.emailResponsavel == e2?.emailResponsavel &&
        e1?.telResponsavel == e2?.telResponsavel &&
        e1?.instituicao == e2?.instituicao &&
        e1?.createdTime == e2?.createdTime &&
        e1?.telResponsavel2 == e2?.telResponsavel2 &&
        e1?.emailResponsavel2 == e2?.emailResponsavel2 &&
        e1?.cargoResponsavel == e2?.cargoResponsavel &&
        e1?.cargoResponsavel2 == e2?.cargoResponsavel2 &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.endereco == e2?.endereco &&
        e1?.responsavel2 == e2?.responsavel2 &&
        e1?.cep == e2?.cep &&
        e1?.admin == e2?.admin;
  }

  @override
  int hash(UsuarioRecord? e) => const ListEquality().hash([
        e?.email,
        e?.senha,
        e?.uid,
        e?.responsavel,
        e?.emailResponsavel,
        e?.telResponsavel,
        e?.instituicao,
        e?.createdTime,
        e?.telResponsavel2,
        e?.emailResponsavel2,
        e?.cargoResponsavel,
        e?.cargoResponsavel2,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.endereco,
        e?.responsavel2,
        e?.cep,
        e?.admin
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
