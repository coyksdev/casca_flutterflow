import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingItemWidget extends StatefulWidget {
  const OnBoardingItemWidget({
    Key? key,
    this.imageUrl,
    this.title,
  }) : super(key: key);

  final String? imageUrl;
  final String? title;

  @override
  _OnBoardingItemWidgetState createState() => _OnBoardingItemWidgetState();
}

class _OnBoardingItemWidgetState extends State<OnBoardingItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Expanded(
          child: Image.network(
            widget.imageUrl!,
            width: 281.9,
            height: 465.4,
            fit: BoxFit.contain,
          ),
        ),
        Spacer(),
        Text(
          widget.title!,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: FlutterFlowTheme.of(context).title1Family,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).title1Family),
              ),
        ),
        Spacer(),
      ],
    );
  }
}
