import '/flutter_flow/flutter_flow_util.dart';
import 'view_cadastro_widget.dart' show ViewCadastroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ViewCadastroModel extends FlutterFlowModel<ViewCadastroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_nome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextField_instituicao widget.
  FocusNode? textFieldInstituicaoFocusNode;
  TextEditingController? textFieldInstituicaoTextController;
  String? Function(BuildContext, String?)?
      textFieldInstituicaoTextControllerValidator;
  // State field(s) for TextField-email widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for TextField_telefone widget.
  FocusNode? textFieldTelefoneFocusNode;
  TextEditingController? textFieldTelefoneTextController;
  final textFieldTelefoneMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextControllerValidator;
  // State field(s) for TextField_endereco widget.
  FocusNode? textFieldEnderecoFocusNode1;
  TextEditingController? textFieldEnderecoTextController1;
  final textFieldEnderecoMask1 = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)?
      textFieldEnderecoTextController1Validator;
  // State field(s) for TextField_endereco widget.
  FocusNode? textFieldEnderecoFocusNode2;
  TextEditingController? textFieldEnderecoTextController2;
  String? Function(BuildContext, String?)?
      textFieldEnderecoTextController2Validator;
  // State field(s) for TextField_responsavel widget.
  FocusNode? textFieldResponsavelFocusNode;
  TextEditingController? textFieldResponsavelTextController;
  String? Function(BuildContext, String?)?
      textFieldResponsavelTextControllerValidator;
  // State field(s) for TextField_cargo widget.
  FocusNode? textFieldCargoFocusNode;
  TextEditingController? textFieldCargoTextController;
  String? Function(BuildContext, String?)?
      textFieldCargoTextControllerValidator;
  // State field(s) for TextField_emailResp widget.
  FocusNode? textFieldEmailRespFocusNode;
  TextEditingController? textFieldEmailRespTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailRespTextControllerValidator;
  // State field(s) for TextField_TelResp widget.
  FocusNode? textFieldTelRespFocusNode;
  TextEditingController? textFieldTelRespTextController;
  final textFieldTelRespMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)?
      textFieldTelRespTextControllerValidator;
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
  void initState(BuildContext context) {}

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

    textFieldEnderecoFocusNode1?.dispose();
    textFieldEnderecoTextController1?.dispose();

    textFieldEnderecoFocusNode2?.dispose();
    textFieldEnderecoTextController2?.dispose();

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
