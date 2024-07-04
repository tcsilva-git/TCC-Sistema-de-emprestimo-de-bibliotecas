import '/flutter_flow/flutter_flow_util.dart';
import 'view_solicitacoes_widget.dart' show ViewSolicitacoesWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ViewSolicitacoesModel extends FlutterFlowModel<ViewSolicitacoesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for tf_nome widget.
  FocusNode? tfNomeFocusNode;
  TextEditingController? tfNomeTextController;
  String? Function(BuildContext, String?)? tfNomeTextControllerValidator;
  // State field(s) for tf_curso widget.
  FocusNode? tfCursoFocusNode;
  TextEditingController? tfCursoTextController;
  String? Function(BuildContext, String?)? tfCursoTextControllerValidator;
  // State field(s) for tf_matricula widget.
  FocusNode? tfMatriculaFocusNode;
  TextEditingController? tfMatriculaTextController;
  String? Function(BuildContext, String?)? tfMatriculaTextControllerValidator;
  // State field(s) for tf_telefone widget.
  FocusNode? tfTelefoneFocusNode;
  TextEditingController? tfTelefoneTextController;
  final tfTelefoneMask = MaskTextInputFormatter(mask: '(##) #########');
  String? Function(BuildContext, String?)? tfTelefoneTextControllerValidator;
  // State field(s) for tf_email widget.
  FocusNode? tfEmailFocusNode;
  TextEditingController? tfEmailTextController;
  String? Function(BuildContext, String?)? tfEmailTextControllerValidator;
  // State field(s) for tf_autor widget.
  FocusNode? tfAutorFocusNode1;
  TextEditingController? tfAutorTextController1;
  String? Function(BuildContext, String?)? tfAutorTextController1Validator;
  // State field(s) for tf_titulo widget.
  FocusNode? tfTituloFocusNode;
  TextEditingController? tfTituloTextController;
  String? Function(BuildContext, String?)? tfTituloTextControllerValidator;
  // State field(s) for tf_localizacao widget.
  FocusNode? tfLocalizacaoFocusNode;
  TextEditingController? tfLocalizacaoTextController;
  String? Function(BuildContext, String?)? tfLocalizacaoTextControllerValidator;
  // State field(s) for tf_autor widget.
  FocusNode? tfAutorFocusNode2;
  TextEditingController? tfAutorTextController2;
  String? Function(BuildContext, String?)? tfAutorTextController2Validator;
  // State field(s) for tf_titulo2 widget.
  FocusNode? tfTitulo2FocusNode;
  TextEditingController? tfTitulo2TextController;
  String? Function(BuildContext, String?)? tfTitulo2TextControllerValidator;
  // State field(s) for tf_localizacao2 widget.
  FocusNode? tfLocalizacao2FocusNode;
  TextEditingController? tfLocalizacao2TextController;
  String? Function(BuildContext, String?)?
      tfLocalizacao2TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    textFieldFocusNode8?.dispose();
    textController8?.dispose();

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
  }
}
