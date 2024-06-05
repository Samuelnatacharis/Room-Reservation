import 'package:flutter/material.dart';

class sendFeedback extends StatefulWidget {
  const sendFeedback({super.key});

  @override
  State<sendFeedback> createState() => _sendFeedbackState();
}

class _sendFeedbackState extends State<sendFeedback> {
  String selectedEventCat = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        // Navigator.pushReplacementNamed(context, '/settings');
                      },
                      child: const Text(
                        'Send Feedback',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Send Your Feedback',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 345,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1.5,
                        ),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.done,
                        onChanged: (value) {},
                        onSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Email Address',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 345,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1.5,
                        ),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'user@binus.edu',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.done,
                        onChanged: (value) {},
                        onSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Role',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 345,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1.5,
                        ),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'Employee',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.done,
                        onChanged: (value) {},
                        onSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'BINUSIAN ID',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 345,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1.5,
                        ),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'BN123******',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.done,
                        onChanged: (value) {},
                        onSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Feedback',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 345,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1.5,
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'Tell us your feedback',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.done,
                        onChanged: (value) {},
                        onSubmitted: (value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: const Size(120, 30),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              contentPadding: EdgeInsets.zero,
                              content: SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.925,
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 30, top: 30),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Are you sure want to submit?',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                              height:
                                                  30), // Add space between text sections
                                          const SizedBox(
                                              height:
                                                  16), // Add space between text and button
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.orangeAccent,
                                                  minimumSize:
                                                      const Size(120, 30),
                                                ),
                                                child: const Text(
                                                  'No',
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      barrierDismissible: true,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AlertDialog(
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          contentPadding:
                                                              EdgeInsets.zero,
                                                          content: SizedBox(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.925,
                                                            height: 200,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    left: 30,
                                                                    right: 30,
                                                                    top: 10,
                                                                  ),
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      const Text(
                                                                        'Feedback Submitted',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            10,
                                                                      ),
                                                                      const Text(
                                                                        'Thank you for your feedback. It is very meaningful for the future development of the application.',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                            15,
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                              Navigator.of(context).pop();
                                                                              Navigator.of(context).pop();
                                                                              Navigator.of(context).pop();
                                                                          // Navigator.pushNamed(
                                                                          //     context,
                                                                          //     '/sendfeedback');
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              Colors.orangeAccent,
                                                                          minimumSize: const Size(
                                                                              120,
                                                                              30),
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(7),
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          'Ok',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                14,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.orangeAccent,
                                                  minimumSize:
                                                      const Size(120, 30),
                                                ),
                                                child: const Text(
                                                  'Yes',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
