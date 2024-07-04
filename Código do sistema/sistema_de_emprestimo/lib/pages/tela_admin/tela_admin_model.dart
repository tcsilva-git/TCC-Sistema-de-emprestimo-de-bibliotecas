import '/backend/backend.dart';
import '/componentes/lista_vazia/lista_vazia_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tela_admin_widget.dart' show TelaAdminWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TelaAdminModel extends FlutterFlowModel<TelaAdminWidget> {
  ///  Local state fields for this page.

  List<UsuarioRecord> listUsuarios = [];
  void addToListUsuarios(UsuarioRecord item) => listUsuarios.add(item);
  void removeFromListUsuarios(UsuarioRecord item) => listUsuarios.remove(item);
  void removeAtIndexFromListUsuarios(int index) => listUsuarios.removeAt(index);
  void insertAtIndexInListUsuarios(int index, UsuarioRecord item) =>
      listUsuarios.insert(index, item);
  void updateListUsuariosAtIndex(int index, Function(UsuarioRecord) updateFn) =>
      listUsuarios[index] = updateFn(listUsuarios[index]);

  bool search = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in TelaAdmin widget.
  List<UsuarioRecord>? listUsers;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for tf_search widget.
  FocusNode? tfSearchFocusNode;
  TextEditingController? tfSearchTextController;
  String? Function(BuildContext, String?)? tfSearchTextControllerValidator;
  List<UsuarioRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsuarioRecord>();
  // Model for listaVazia component.
  late ListaVaziaModel listaVaziaModel;
  // State field(s) for TextField_nome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  String? _textFieldNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_instituicao widget.
  FocusNode? textFieldInstituicaoFocusNode;
  TextEditingController? textFieldInstituicaoTextController;
  String? Function(BuildContext, String?)?
      textFieldInstituicaoTextControllerValidator;
  String? _textFieldInstituicaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField-email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Informe um e-mail válido';
    }
    return null;
  }

  // State field(s) for TextField_telefone widget.
  FocusNode? textFieldTelefoneFocusNode;
  TextEditingController? textFieldTelefoneTextController;
  final textFieldTelefoneMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextControllerValidator;
  String? _textFieldTelefoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextFied_cep widget.
  FocusNode? textFiedCepFocusNode;
  TextEditingController? textFiedCepTextController;
  final textFiedCepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textFiedCepTextControllerValidator;
  String? _textFiedCepTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_endereco widget.
  FocusNode? textFieldEnderecoFocusNode;
  TextEditingController? textFieldEnderecoTextController;
  String? Function(BuildContext, String?)?
      textFieldEnderecoTextControllerValidator;
  String? _textFieldEnderecoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_responsavel widget.
  FocusNode? textFieldResponsavelFocusNode;
  TextEditingController? textFieldResponsavelTextController;
  String? Function(BuildContext, String?)?
      textFieldResponsavelTextControllerValidator;
  String? _textFieldResponsavelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_cargo widget.
  FocusNode? textFieldCargoFocusNode;
  TextEditingController? textFieldCargoTextController;
  String? Function(BuildContext, String?)?
      textFieldCargoTextControllerValidator;
  String? _textFieldCargoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_emailResp widget.
  FocusNode? textFieldEmailRespFocusNode;
  TextEditingController? textFieldEmailRespTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailRespTextControllerValidator;
  String? _textFieldEmailRespTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Informe um e-mail válido';
    }
    return null;
  }

  // State field(s) for TextField_TelResp widget.
  FocusNode? textFieldTelRespFocusNode;
  TextEditingController? textFieldTelRespTextController;
  final textFieldTelRespMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)?
      textFieldTelRespTextControllerValidator;
  String? _textFieldTelRespTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TextField_nomeResp2 widget.
  FocusNode? textFieldNomeResp2FocusNode;
  TextEditingController? textFieldNomeResp2TextController;
  String? Function(BuildContext, String?)?
      textFieldNomeResp2TextControllerValidator;
  // State field(s) for TextField_cargoResp2 widget.
  FocusNode? textFieldCargoResp2FocusNode;
  TextEditingController? textFieldCargoResp2TextController;
  String? Function(BuildContext, String?)?
      textFieldCargoResp2TextControllerValidator;
  // State field(s) for TextField_emailResp2 widget.
  FocusNode? textFieldEmailResp2FocusNode;
  TextEditingController? textFieldEmailResp2TextController;
  String? Function(BuildContext, String?)?
      textFieldEmailResp2TextControllerValidator;
  // State field(s) for TextField_TelResp2 widget.
  FocusNode? textFieldTelResp2FocusNode;
  TextEditingController? textFieldTelResp2TextController;
  final textFieldTelResp2Mask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)?
      textFieldTelResp2TextControllerValidator;
  // State field(s) for TextField_senha widget.
  FocusNode? textFieldSenhaFocusNode;
  TextEditingController? textFieldSenhaTextController;
  late bool textFieldSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldSenhaTextControllerValidator;
  String? _textFieldSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 6) {
      return 'Minimo de 6 caracteres';
    }

    return null;
  }

  // State field(s) for TextField_confSenha widget.
  FocusNode? textFieldConfSenhaFocusNode;
  TextEditingController? textFieldConfSenhaTextController;
  late bool textFieldConfSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfSenhaTextControllerValidator;
  String? _textFieldConfSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    listaVaziaModel = createModel(context, () => ListaVaziaModel());
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
    textFieldInstituicaoTextControllerValidator =
        _textFieldInstituicaoTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldTelefoneTextControllerValidator =
        _textFieldTelefoneTextControllerValidator;
    textFiedCepTextControllerValidator = _textFiedCepTextControllerValidator;
    textFieldEnderecoTextControllerValidator =
        _textFieldEnderecoTextControllerValidator;
    textFieldResponsavelTextControllerValidator =
        _textFieldResponsavelTextControllerValidator;
    textFieldCargoTextControllerValidator =
        _textFieldCargoTextControllerValidator;
    textFieldEmailRespTextControllerValidator =
        _textFieldEmailRespTextControllerValidator;
    textFieldTelRespTextControllerValidator =
        _textFieldTelRespTextControllerValidator;
    textFieldSenhaVisibility = false;
    textFieldSenhaTextControllerValidator =
        _textFieldSenhaTextControllerValidator;
    textFieldConfSenhaVisibility = false;
    textFieldConfSenhaTextControllerValidator =
        _textFieldConfSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    tfSearchFocusNode?.dispose();
    tfSearchTextController?.dispose();

    listaVaziaModel.dispose();
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldInstituicaoFocusNode?.dispose();
    textFieldInstituicaoTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldTelefoneFocusNode?.dispose();
    textFieldTelefoneTextController?.dispose();

    textFiedCepFocusNode?.dispose();
    textFiedCepTextController?.dispose();

    textFieldEnderecoFocusNode?.dispose();
    textFieldEnderecoTextController?.dispose();

    textFieldResponsavelFocusNode?.dispose();
    textFieldResponsavelTextController?.dispose();

    textFieldCargoFocusNode?.dispose();
    textFieldCargoTextController?.dispose();

    textFieldEmailRespFocusNode?.dispose();
    textFieldEmailRespTextController?.dispose();

    textFieldTelRespFocusNode?.dispose();
    textFieldTelRespTextController?.dispose();

    textFieldNomeResp2FocusNode?.dispose();
    textFieldNomeResp2TextController?.dispose();

    textFieldCargoResp2FocusNode?.dispose();
    textFieldCargoResp2TextController?.dispose();

    textFieldEmailResp2FocusNode?.dispose();
    textFieldEmailResp2TextController?.dispose();

    textFieldTelResp2FocusNode?.dispose();
    textFieldTelResp2TextController?.dispose();

    textFieldSenhaFocusNode?.dispose();
    textFieldSenhaTextController?.dispose();

    textFieldConfSenhaFocusNode?.dispose();
    textFieldConfSenhaTextController?.dispose();
  }
}
