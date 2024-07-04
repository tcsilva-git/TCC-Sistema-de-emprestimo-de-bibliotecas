import '/backend/backend.dart';
import '/componentes/lista_vazia/lista_vazia_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'emprestimos_widget.dart' show EmprestimosWidget;
import 'package:flutter/material.dart';

class EmprestimosModel extends FlutterFlowModel<EmprestimosWidget> {
  ///  Local state fields for this page.

  List<EmprestimoRecord> empAtivos = [];
  void addToEmpAtivos(EmprestimoRecord item) => empAtivos.add(item);
  void removeFromEmpAtivos(EmprestimoRecord item) => empAtivos.remove(item);
  void removeAtIndexFromEmpAtivos(int index) => empAtivos.removeAt(index);
  void insertAtIndexInEmpAtivos(int index, EmprestimoRecord item) =>
      empAtivos.insert(index, item);
  void updateEmpAtivosAtIndex(int index, Function(EmprestimoRecord) updateFn) =>
      empAtivos[index] = updateFn(empAtivos[index]);

  bool search = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in emprestimos widget.
  List<EmprestimoRecord>? emprestimos;
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
  List<EmprestimoRecord> simpleSearchResults = [];
  // Model for listaVazia component.
  late ListaVaziaModel listaVaziaModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<EmprestimoRecord>();

  @override
  void initState(BuildContext context) {
    listaVaziaModel = createModel(context, () => ListaVaziaModel());
  }

  @override
  void dispose() {
    tfSearchFocusNode?.dispose();
    tfSearchTextController?.dispose();

    listaVaziaModel.dispose();
  }
}
