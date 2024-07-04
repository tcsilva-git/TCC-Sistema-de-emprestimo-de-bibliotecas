import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bibliotecas_widget.dart' show BibliotecasWidget;
import 'package:flutter/material.dart';

class BibliotecasModel extends FlutterFlowModel<BibliotecasWidget> {
  ///  Local state fields for this page.

  UsuarioRecord? bibSelecionada;

  bool addLivro = true;

  List<EmprestimoRecord> solicitacoes = [];
  void addToSolicitacoes(EmprestimoRecord item) => solicitacoes.add(item);
  void removeFromSolicitacoes(EmprestimoRecord item) =>
      solicitacoes.remove(item);
  void removeAtIndexFromSolicitacoes(int index) => solicitacoes.removeAt(index);
  void insertAtIndexInSolicitacoes(int index, EmprestimoRecord item) =>
      solicitacoes.insert(index, item);
  void updateSolicitacoesAtIndex(
          int index, Function(EmprestimoRecord) updateFn) =>
      solicitacoes[index] = updateFn(solicitacoes[index]);

  List<EmprestimoRecord> empAtivos = [];
  void addToEmpAtivos(EmprestimoRecord item) => empAtivos.add(item);
  void removeFromEmpAtivos(EmprestimoRecord item) => empAtivos.remove(item);
  void removeAtIndexFromEmpAtivos(int index) => empAtivos.removeAt(index);
  void insertAtIndexInEmpAtivos(int index, EmprestimoRecord item) =>
      empAtivos.insert(index, item);
  void updateEmpAtivosAtIndex(int index, Function(EmprestimoRecord) updateFn) =>
      empAtivos[index] = updateFn(empAtivos[index]);

  List<EmprestimoRecord> historico = [];
  void addToHistorico(EmprestimoRecord item) => historico.add(item);
  void removeFromHistorico(EmprestimoRecord item) => historico.remove(item);
  void removeAtIndexFromHistorico(int index) => historico.removeAt(index);
  void insertAtIndexInHistorico(int index, EmprestimoRecord item) =>
      historico.insert(index, item);
  void updateHistoricoAtIndex(int index, Function(EmprestimoRecord) updateFn) =>
      historico[index] = updateFn(historico[index]);

  bool search = true;

  List<UsuarioRecord> bibliotecas = [];
  void addToBibliotecas(UsuarioRecord item) => bibliotecas.add(item);
  void removeFromBibliotecas(UsuarioRecord item) => bibliotecas.remove(item);
  void removeAtIndexFromBibliotecas(int index) => bibliotecas.removeAt(index);
  void insertAtIndexInBibliotecas(int index, UsuarioRecord item) =>
      bibliotecas.insert(index, item);
  void updateBibliotecasAtIndex(int index, Function(UsuarioRecord) updateFn) =>
      bibliotecas[index] = updateFn(bibliotecas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in bibliotecas widget.
  List<UsuarioRecord>? biblio;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for tf_search widget.
  FocusNode? tfSearchFocusNode;
  TextEditingController? tfSearchTextController;
  String? Function(BuildContext, String?)? tfSearchTextControllerValidator;
  List<UsuarioRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsuarioRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfSearchFocusNode?.dispose();
    tfSearchTextController?.dispose();
  }
}
