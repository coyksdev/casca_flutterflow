// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:casca_flutter/components/on_boarding_item_widget.dart';
import 'package:casca_flutter/components/primary_button_widget.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _OnBoardingPageViewState createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  PageController pageViewController = PageController(initialPage: 0);

  int? _currentPage;

  @override
  void dispose() {
    _currentPage = 0;

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 500,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                      child: PageView(
                        controller: pageViewController,
                        onPageChanged: (i) {
                          setState(() {
                            _currentPage = i;
                          });
                        },
                        scrollDirection: Axis.horizontal,
                        children: [
                          OnBoardingItemWidget(
                            imageUrl:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/casca-flutter-fgm39i/assets/03bvuahl2jlt/Frame.png',
                            title:
                                'Find Barbers and Salons Easily in Your Hands',
                          ),
                          OnBoardingItemWidget(
                            imageUrl:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/casca-flutter-fgm39i/assets/yq8qgpte7rxg/Frame_(1).png',
                            title:
                                'Book Your Favorite Barber and Salon Quickly',
                          ),
                          OnBoardingItemWidget(
                            imageUrl:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/casca-flutter-fgm39i/assets/608ge7r3424p/Frame_(2).png',
                            title:
                                'Come be handsome and beautiful with us right now!',
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: pageViewController,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) {
                            pageViewController.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 2,
                            spacing: 8,
                            radius: 16,
                            dotWidth: 16,
                            dotHeight: 16,
                            dotColor: Color(0xFF9E9E9E),
                            activeDotColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: PrimaryButtonWidget(
                label: (_currentPage ?? 0) < 2 ? 'Next' : 'Get Started',
                onPressed: () {
                  if ((_currentPage ?? 0) < 2) {
                    pageViewController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  } else {
                    print('Get Started pressed ...');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
