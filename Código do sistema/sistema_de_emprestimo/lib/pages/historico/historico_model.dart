import '/backend/backend.dart';
import '/componentes/lista_vazia/lista_vazia_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'historico_widget.dart' show HistoricoWidget;
import 'package:flutter/material.dart';

class HistoricoModel extends FlutterFlowModel<HistoricoWidget> {
  ///  Local state fields for this page.

  List<EmprestimoRecord> historico = [];
  void addToHistorico(EmprestimoRecord item) => historico.add(item);
  void removeFromHistorico(EmprestimoRecord item) => historico.remove(item);
  void removeAtIndexFromHistorico(int index) => historico.removeAt(index);
  void insertAtIndexInHistorico(int index, EmprestimoRecord item) =>
      historico.insert(index, item);
  void updateHistoricoAtIndex(int index, Function(EmprestimoRecord) updateFn) =>
      historico[index] = updateFn(historico[index]);

  bool search = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in historico widget.
  List<EmprestimoRecord>? historic;
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
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<EmprestimoRecord>();
  // Model for listaVazia component.
  late ListaVaziaModel listaVaziaModel;

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
