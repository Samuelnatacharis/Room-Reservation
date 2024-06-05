import 'package:flutter/material.dart';
import 'package:iterasi2/user_home_widgets/help_tutorial.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class makereservationtutorial1 extends StatefulWidget {
  const makereservationtutorial1({super.key});

  @override
  State<makereservationtutorial1> createState() =>
      _makereservationtutorialState();
}

class _makereservationtutorialState extends State<makereservationtutorial1> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial1.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial2(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial2 extends StatelessWidget {
  const makereservationtutorial2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial2.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial3(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial3 extends StatelessWidget {
  const makereservationtutorial3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial3.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial4(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial4 extends StatelessWidget {
  const makereservationtutorial4({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial4.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial5(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial5 extends StatelessWidget {
  const makereservationtutorial5({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial5.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial6(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial6 extends StatelessWidget {
  const makereservationtutorial6({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial6.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial7(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial7 extends StatelessWidget {
  const makereservationtutorial7({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial7.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial8(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial8 extends StatelessWidget {
  const makereservationtutorial8({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial8.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial9(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial9 extends StatelessWidget {
  const makereservationtutorial9({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial9.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial10(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial10 extends StatelessWidget {
  const makereservationtutorial10({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial10.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const makereservationtutorial11(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}

class makereservationtutorial11 extends StatelessWidget {
  const makereservationtutorial11({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 500,
        height: 785,
        child: Image.asset(
          'images/tutorial11.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'images/xsign.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
            const SizedBox(
              height: 350,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: Image.asset(
                        'images/backbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'images/forwardbutton.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
