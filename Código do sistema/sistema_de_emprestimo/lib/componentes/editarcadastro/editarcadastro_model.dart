import '/flutter_flow/flutter_flow_util.dart';
import 'editarcadastro_widget.dart' show EditarcadastroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarcadastroModel extends FlutterFlowModel<EditarcadastroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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

  // State field(s) for TextField_cep widget.
  FocusNode? textFieldCepFocusNode;
  TextEditingController? textFieldCepTextController;
  final textFieldCepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textFieldCepTextControllerValidator;
  String? _textFieldCepTextControllerValidator(
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

  @override
  void initState(BuildContext context) {
    textFieldNomeTextControllerValidator =
        _textFieldNomeTextControllerValidator;
    textFieldInstituicaoTextControllerValidator =
        _textFieldInstituicaoTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldTelefoneTextControllerValidator =
        _textFieldTelefoneTextControllerValidator;
    textFieldCepTextControllerValidator = _textFieldCepTextControllerValidator;
    textFieldResponsavelTextControllerValidator =
        _textFieldResponsavelTextControllerValidator;
    textFieldCargoTextControllerValidator =
        _textFieldCargoTextControllerValidator;
    textFieldEmailRespTextControllerValidator =
        _textFieldEmailRespTextControllerValidator;
    textFieldTelRespTextControllerValidator =
        _textFieldTelRespTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldInstituicaoFocusNode?.dispose();
    textFieldInstituicaoTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldTelefoneFocusNode?.dispose();
    textFieldTelefoneTextController?.dispose();

    textFieldCepFocusNode?.dispose();
    textFieldCepTextController?.dispose();

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
  }
}
