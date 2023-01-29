import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButtonWidget extends StatefulWidget {
  const PrimaryButtonWidget({
    Key? key,
    this.label,
    this.onPressed,
  }) : super(key: key);

  final String? label;
  final VoidCallback? onPressed;

  @override
  _PrimaryButtonWidgetState createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: widget.onPressed,
      text: widget.label!,
      options: FFButtonOptions(
        width: double.infinity,
        height: 40,
        color: FlutterFlowTheme.of(context).primaryColor,
        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: 'Urbanist',
              color: Colors.white,
            ),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
