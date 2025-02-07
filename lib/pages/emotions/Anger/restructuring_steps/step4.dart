import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../../../design_course_app_theme.dart';
import 'display_text.dart';
import 'edit_text.dart';

class Step4 extends StatefulWidget {
  @override
  _Step4State createState() => _Step4State();
}

class _Step4State extends State<Step4> with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController?.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.2,
                  child: FittedBox(
                    child: Image.asset('assets/images/evaluate_thought.gif'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: DesignCourseAppTheme.nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: DesignCourseAppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32.0, left: 18, right: 16),
                            child: Text(
                              'Step 4: Evaluate the thought',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                letterSpacing: 0.27,
                                color: DesignCourseAppTheme.darkerText,
                              ),
                            ),
                          ),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: opacity1,
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: <Widget>[
//                                  getTimeBoxUI('5min', 'Practice'),
//                                 getTimeBoxUI('1 time', 'Day'),
                                  //getTimeBoxUI('', 'Seat'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: SingleChildScrollView(
                                  child: Text(
                                    'You want to evaluate the accuracy of your upsetting thought as carefully and objectively as possible. To do this, first think of all of the evidence you can that supports your thought or makes you think it is accurate. For example, for the thought You said “hello” to an old friend whom you met in  grocery store, and that friend ignored you". The person could ask "Why do I think there will be an old friend in the grocery store?" "If there was a friend there, why do I think I would be ignored by her?". Write all the evidence down on the worksheet.\nThen, think of all the evidence you can that does not support your thought, or suggests it may not be accurate. Consider as many reasons as you can for why your thought might not be correct. Then, write all the evidence against the thought down on the worksheet\n',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      letterSpacing: 0.27,
                                      color: DesignCourseAppTheme.grey,
                                    ),
                                    maxLines: 50,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: DisplayText(steps: '4')),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: opacity3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, bottom: 16, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  // Container(
                                  //   width: 48,
                                  //   height: 48,
                                  //   child: Container(
                                  // decoration: BoxDecoration(
                                  //   color: DesignCourseAppTheme.nearlyWhite,
                                  //   borderRadius: const BorderRadius.all(
                                  //     Radius.circular(16.0),
                                  //   ),
                                  //   border: Border.all(
                                  //       color: DesignCourseAppTheme.grey
                                  //           .withOpacity(0.2)),
                                  // ),
                                  // child: Icon(
                                  //   Icons.add,
                                  //   color: DesignCourseAppTheme.nearlyBlue,
                                  //   size: 28,
                                  // ),
                                  //       ),
                                  // ),
                                  // const SizedBox(
                                  //   width: 16,
                                  // ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EditText(steps: '4')),
                                        );
                                      },
                                      child: Container(
                                        height: 48,
                                        decoration: BoxDecoration(
                                          color:
                                              DesignCourseAppTheme.nearlyBlue,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(16.0),
                                          ),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: DesignCourseAppTheme
                                                    .nearlyBlue
                                                    .withOpacity(0.5),
                                                offset: const Offset(1.1, 1.1),
                                                blurRadius: 10.0),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Type here',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              letterSpacing: 0.0,
                                              color: DesignCourseAppTheme
                                                  .nearlyWhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).padding.bottom,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController!, curve: Curves.fastOutSlowIn),
                child: InkWell(
                  onTap: () async {
                    await Share.share(
                        'Make a Decision \nThis involves making a decision about whether your thought is accurate or not, based on all the evidence you have listed in Step 3, and then taking action based on your decision.When considering the evidence for and against the accuracy of your thought, you should place the greatest weight on strong evidence that is objective and based on facts, and give less attention to weak evidence that is based only on feelings or beliefs.Being objective when evaluating your thought is important, since you want your understanding of the situation to be as accurate as possible so that any actions you take are informed and effective.After deciding whether the thought is accurate or not, you then take action, depending on your decision.');
                  },
                  child: Card(
                    color: DesignCourseAppTheme.nearlyBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    elevation: 10.0,
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: Icon(
                          Icons.share,
                          color: DesignCourseAppTheme.nearlyWhite,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: SizedBox(
                width: AppBar().preferredSize.height,
                height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: DesignCourseAppTheme.nearlyBlack,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget getTimeBoxUI(String text1, String txt2) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: DesignCourseAppTheme.nearlyWhite,
  //         borderRadius: const BorderRadius.all(Radius.circular(16.0)),
  //         boxShadow: <BoxShadow>[
  //           BoxShadow(
  //               color: DesignCourseAppTheme.grey.withOpacity(0.2),
  //               offset: const Offset(1.1, 1.1),
  //               blurRadius: 8.0),
  //         ],
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.only(
  //             left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: <Widget>[
  //             Text(
  //               text1,
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontWeight: FontWeight.w600,
  //                 fontSize: 14,
  //                 letterSpacing: 0.27,
  //                 color: DesignCourseAppTheme.nearlyBlue,
  //               ),
  //             ),
  //             Text(
  //               txt2,
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontWeight: FontWeight.w200,
  //                 fontSize: 14,
  //                 letterSpacing: 0.27,
  //                 color: DesignCourseAppTheme.grey,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
