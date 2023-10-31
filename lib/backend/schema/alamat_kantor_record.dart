import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlamatKantorRecord extends FirestoreRecord {
  AlamatKantorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Kantor" field.
  String? _kantor;
  String get kantor => _kantor ?? '';
  bool hasKantor() => _kantor != null;

  // "Alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  bool hasAlamat() => _alamat != null;

  // "Foto_Kantor" field.
  String? _fotoKantor;
  String get fotoKantor => _fotoKantor ?? '';
  bool hasFotoKantor() => _fotoKantor != null;

  // "Tlpnkntr" field.
  String? _tlpnkntr;
  String get tlpnkntr => _tlpnkntr ?? '';
  bool hasTlpnkntr() => _tlpnkntr != null;

  // "TlpnWa" field.
  String? _tlpnWa;
  String get tlpnWa => _tlpnWa ?? '';
  bool hasTlpnWa() => _tlpnWa != null;

  void _initializeFields() {
    _kantor = snapshotData['Kantor'] as String?;
    _alamat = snapshotData['Alamat'] as String?;
    _fotoKantor = snapshotData['Foto_Kantor'] as String?;
    _tlpnkntr = snapshotData['Tlpnkntr'] as String?;
    _tlpnWa = snapshotData['TlpnWa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Alamat_Kantor');

  static Stream<AlamatKantorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlamatKantorRecord.fromSnapshot(s));

  static Future<AlamatKantorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlamatKantorRecord.fromSnapshot(s));

  static AlamatKantorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlamatKantorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlamatKantorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlamatKantorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlamatKantorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlamatKantorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlamatKantorRecordData({
  String? kantor,
  String? alamat,
  String? fotoKantor,
  String? tlpnkntr,
  String? tlpnWa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Kantor': kantor,
      'Alamat': alamat,
      'Foto_Kantor': fotoKantor,
      'Tlpnkntr': tlpnkntr,
      'TlpnWa': tlpnWa,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlamatKantorRecordDocumentEquality
    implements Equality<AlamatKantorRecord> {
  const AlamatKantorRecordDocumentEquality();

  @override
  bool equals(AlamatKantorRecord? e1, AlamatKantorRecord? e2) {
    return e1?.kantor == e2?.kantor &&
        e1?.alamat == e2?.alamat &&
        e1?.fotoKantor == e2?.fotoKantor &&
        e1?.tlpnkntr == e2?.tlpnkntr &&
        e1?.tlpnWa == e2?.tlpnWa;
  }

  @override
  int hash(AlamatKantorRecord? e) => const ListEquality()
      .hash([e?.kantor, e?.alamat, e?.fotoKantor, e?.tlpnkntr, e?.tlpnWa]);

  @override
  bool isValidKey(Object? o) => o is AlamatKantorRecord;
}
