import '/backend/backend.dart';
import '/componentes/lista_vazia/lista_vazia_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'index_widget.dart' show IndexWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class IndexModel extends FlutterFlowModel<IndexWidget> {
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

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in index widget.
  List<EmprestimoRecord>? querySolicit;
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
  // State field(s) for Drop_instituicoes widget.
  String? dropInstituicoesValue;
  FormFieldController<String>? dropInstituicoesValueController;
  // State field(s) for tf_nome widget.
  FocusNode? tfNomeFocusNode;
  TextEditingController? tfNomeTextController;
  String? Function(BuildContext, String?)? tfNomeTextControllerValidator;
  String? _tfNomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o nome do aluno';
    }

    return null;
  }

  // State field(s) for tf_curso widget.
  FocusNode? tfCursoFocusNode;
  TextEditingController? tfCursoTextController;
  String? Function(BuildContext, String?)? tfCursoTextControllerValidator;
  String? _tfCursoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o curso do aluno';
    }

    return null;
  }

  // State field(s) for tf_matricula widget.
  FocusNode? tfMatriculaFocusNode;
  TextEditingController? tfMatriculaTextController;
  String? Function(BuildContext, String?)? tfMatriculaTextControllerValidator;
  String? _tfMatriculaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a matrícula do aluno';
    }

    return null;
  }

  // State field(s) for tf_telefone widget.
  FocusNode? tfTelefoneFocusNode;
  TextEditingController? tfTelefoneTextController;
  final tfTelefoneMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)? tfTelefoneTextControllerValidator;
  String? _tfTelefoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o telefone do aluno';
    }

    if (val.length < 13) {
      return 'Informe um telefone válido';
    }
    if (val.length > 14) {
      return 'Informe um telefone válido';
    }

    return null;
  }

  // State field(s) for tf_email widget.
  FocusNode? tfEmailFocusNode;
  TextEditingController? tfEmailTextController;
  String? Function(BuildContext, String?)? tfEmailTextControllerValidator;
  String? _tfEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o e-mail do aluno';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Informe um e-mail válido';
    }
    return null;
  }

  // State field(s) for tf_autor widget.
  FocusNode? tfAutorFocusNode1;
  TextEditingController? tfAutorTextController1;
  String? Function(BuildContext, String?)? tfAutorTextController1Validator;
  // State field(s) for tf_titulo widget.
  FocusNode? tfTituloFocusNode;
  TextEditingController? tfTituloTextController;
  String? Function(BuildContext, String?)? tfTituloTextControllerValidator;
  String? _tfTituloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o título do livro';
    }

    return null;
  }

  // State field(s) for tf_localizacao widget.
  FocusNode? tfLocalizacaoFocusNode;
  TextEditingController? tfLocalizacaoTextController;
  String? Function(BuildContext, String?)? tfLocalizacaoTextControllerValidator;
  String? _tfLocalizacaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a localização do livro';
    }

    return null;
  }

  // State field(s) for tf_autor widget.
  FocusNode? tfAutorFocusNode2;
  TextEditingController? tfAutorTextController2;
  String? Function(BuildContext, String?)? tfAutorTextController2Validator;
  // State field(s) for tf_titulo2 widget.
  FocusNode? tfTitulo2FocusNode;
  TextEditingController? tfTitulo2TextController;
  String? Function(BuildContext, String?)? tfTitulo2TextControllerValidator;
  String? _tfTitulo2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o titulo';
    }

    return null;
  }

  // State field(s) for tf_localizacao2 widget.
  FocusNode? tfLocalizacao2FocusNode;
  TextEditingController? tfLocalizacao2TextController;
  String? Function(BuildContext, String?)?
      tfLocalizacao2TextControllerValidator;
  String? _tfLocalizacao2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
    tfNomeTextControllerValidator = _tfNomeTextControllerValidator;
    tfCursoTextControllerValidator = _tfCursoTextControllerValidator;
    tfMatriculaTextControllerValidator = _tfMatriculaTextControllerValidator;
    tfTelefoneTextControllerValidator = _tfTelefoneTextControllerValidator;
    tfEmailTextControllerValidator = _tfEmailTextControllerValidator;
    tfTituloTextControllerValidator = _tfTituloTextControllerValidator;
    tfLocalizacaoTextControllerValidator =
        _tfLocalizacaoTextControllerValidator;
    tfTitulo2TextControllerValidator = _tfTitulo2TextControllerValidator;
    tfLocalizacao2TextControllerValidator =
        _tfLocalizacao2TextControllerValidator;
    listaVaziaModel = createModel(context, () => ListaVaziaModel());
  }

  @override
  void dispose() {
    tfNomeFocusNode?.dispose();
    tfNomeTextController?.dispose();

    tfCursoFocusNode?.dispose();
    tfCursoTextController?.dispose();

    tfMatriculaFocusNode?.dispose();
    tfMatriculaTextController?.dispose();

    tfTelefoneFocusNode?.dispose();
    tfTelefoneTextController?.dispose();

    tfEmailFocusNode?.dispose();
    tfEmailTextController?.dispose();

    tfAutorFocusNode1?.dispose();
    tfAutorTextController1?.dispose();

    tfTituloFocusNode?.dispose();
    tfTituloTextController?.dispose();

    tfLocalizacaoFocusNode?.dispose();
    tfLocalizacaoTextController?.dispose();

    tfAutorFocusNode2?.dispose();
    tfAutorTextController2?.dispose();

    tfTitulo2FocusNode?.dispose();
    tfTitulo2TextController?.dispose();

    tfLocalizacao2FocusNode?.dispose();
    tfLocalizacao2TextController?.dispose();

    tfSearchFocusNode?.dispose();
    tfSearchTextController?.dispose();

    listaVaziaModel.dispose();
  }
}
