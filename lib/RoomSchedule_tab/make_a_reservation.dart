import 'package:iterasi2/RoomSchedule_tab/make_a_reservation2.dart';
import 'package:iterasi2/template/general_background2.dart';
import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

class MakeAReservation extends StatefulWidget {
  const MakeAReservation({super.key});

  @override
  State<MakeAReservation> createState() => _MakeAReservationState();
}

class _MakeAReservationState extends State<MakeAReservation> {
  // DateTime _selectedDay = DateTime.now();

  final TextEditingController requesterController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController contactpersonController = TextEditingController();
  final TextEditingController eventcategoriesController =
      TextEditingController();
  final TextEditingController eventnameController = TextEditingController();
  final TextEditingController useramountController = TextEditingController();
  final TextEditingController additionalequipmentController =
      TextEditingController();
  final TextEditingController notesController = TextEditingController();
  bool _notShowErrorRequester = true;
  bool _notShowErrorDepartment = true;
  bool _notShowErrorContactPerson = true;
  bool _notShowErrorEventCategories = true;
  bool _notShowErrorEventName = true;
  bool _notShowErrorUserAmount = true;
  bool _notShowErrorAdditionalEquipment = true;
  List<String> enteredRequester = [];
  List<String> enteredDepartment = [];
  List<String> enteredContactPerson = [];
  List<String> selectedEventCategories = [];
  List<String> enteredEventCategories = [];
  List<String> enteredEventName = [];
  List<String> enteredUserAmount = [];
  List<String> enteredAdditionalEquipment = [];
  List<String> enteredNotes = [];

  @override
  void dispose() {
    requesterController.dispose();
    departmentController.dispose();
    contactpersonController.dispose();
    eventcategoriesController.dispose();
    eventnameController.dispose();
    useramountController.dispose();
    additionalequipmentController.dispose();
    notesController.dispose();
    super.dispose();
  }

  String selectedEventCat = '';
  bool isOrange = false;
  bool isOrange2 = false;
  bool isOrange3 = false;
  bool isOrange4 = false;
  bool isOrange5 = false;
  bool isOrange6 = false;

  int qtyMarker = 0,
      qtyPen = 0,
      qtyRuler = 0,
      qtyScissors = 0,
      qtyGlue = 0,
      qtyCelotape = 0;

  bool isButtonEnabled = false;
  bool isChecked = false;

  void _onButtonClicked() async {
    String enteredRequester2 = requesterController.text.trim();
    String enteredDepartment2 = departmentController.text.trim();
    String enteredContactPerson2 = contactpersonController.text.trim();
    String enteredEventCategories2 = eventcategoriesController.text.trim();
    String enteredEventName2 = eventnameController.text.trim();
    String enteredUserAmount2 = useramountController.text.trim();
    String enteredNotes2 = notesController.text.trim();
    print('button clicked');
    setState(() {
      if (isButtonEnabled &&
          enteredRequester2.isNotEmpty &&
          enteredDepartment2.isNotEmpty &&
          enteredContactPerson2.isNotEmpty &&
          enteredEventCategories.isNotEmpty &&
          enteredEventName2.isNotEmpty &&
          enteredUserAmount2.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MakeReservationDetails(
                enteredRequester,
                enteredDepartment,
                enteredContactPerson,
                enteredEventCategories,
                enteredEventName,
                enteredUserAmount,
                enteredAdditionalEquipment,
                enteredNotes),
          ),
        );
        enteredRequester.add(requesterController.text);
        enteredDepartment.add(departmentController.text);
        enteredContactPerson.add(contactpersonController.text);
        enteredEventName.add(eventnameController.text);
        enteredUserAmount.add(useramountController.text);
        if (enteredNotes2.isNotEmpty) enteredNotes.add(notesController.text);
      } else if (enteredRequester2.isEmpty &&
          enteredDepartment2.isEmpty &&
          enteredContactPerson2.isEmpty &&
          enteredEventCategories2.isEmpty &&
          enteredEventName2.isEmpty &&
          enteredUserAmount2.isEmpty) {
        if (enteredRequester2.isEmpty) _notShowErrorRequester = false;
        if (enteredDepartment2.isEmpty) _notShowErrorDepartment = false;
        if (enteredContactPerson2.isEmpty) _notShowErrorContactPerson = false;
        if (enteredEventCategories2.isEmpty)
          _notShowErrorEventCategories = false;
        if (enteredEventName2.isEmpty) _notShowErrorEventName = false;
        if (enteredUserAmount2.isEmpty) _notShowErrorUserAmount = false;
      }
      if (enteredRequester2.isEmpty) _notShowErrorRequester = false;
      if (enteredDepartment2.isEmpty) _notShowErrorDepartment = false;
      if (enteredContactPerson2.isEmpty) _notShowErrorContactPerson = false;
      if (enteredEventCategories2.isEmpty) _notShowErrorEventCategories = false;
      if (enteredEventName2.isEmpty) _notShowErrorEventName = false;
      if (enteredUserAmount2.isEmpty) _notShowErrorUserAmount = false;
    });
  }

  void _onCheckboxChanged(bool? value) {
    if (value != null) {
      setState(() {
        isChecked = value;
        isButtonEnabled = value;
      });
    }
  }

  void toggleColor() {
    setState(() {
      isOrange = !isOrange;
    });
  }

  void toggleColor2() {
    setState(() {
      isOrange2 = !isOrange2;
    });
  }

  void toggleColor3() {
    setState(() {
      isOrange3 = !isOrange3;
    });
  }

  void toggleColor4() {
    setState(() {
      isOrange4 = !isOrange4;
    });
  }

  void toggleColor5() {
    setState(() {
      isOrange5 = !isOrange5;
    });
  }

  void toggleColor6() {
    setState(() {
      isOrange6 = !isOrange6;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            child: GeneralBackground2(
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
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Make a Reservation',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Container(
                          width: 318,
                          // height: 200,
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(0), // Adjust as needed
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Requester',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _notShowErrorRequester
                                        ? Colors.grey.shade400
                                        : Color.fromARGB(255, 214, 44, 32),
                                    width: 1.5,
                                  ),
                                ),
                                child: TextField(
                                  controller: requesterController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText: 'BN123******',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    prefixIcon: Icon(Icons.person),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  onChanged: (text) {
                                    setState(() {
                                      _notShowErrorRequester = text.isNotEmpty;
                                    });
                                  },
                                  onSubmitted: (String text) {
                                    print('Requester: $text');
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    _notShowErrorRequester
                                        ? ' '
                                        : 'Input the correct requester ID!',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 214, 44, 32),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Department/UKM/HMJ',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _notShowErrorDepartment
                                        ? Colors.grey.shade400
                                        : Color.fromARGB(255, 214, 44, 32),
                                    width: 1.5,
                                  ),
                                ),
                                child: TextField(
                                  controller: departmentController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText:
                                        'Enter your Department/UKM/HMJ...',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  onChanged: (text) {
                                    setState(() {
                                      _notShowErrorDepartment = text.isNotEmpty;
                                    });
                                  },
                                  onSubmitted: (String text) {
                                    print('Department: $text');
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    _notShowErrorDepartment
                                        ? ' '
                                        : 'You must fill this section!',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 214, 44, 32),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Contact Person',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _notShowErrorContactPerson
                                        ? Colors.grey.shade400
                                        : Color.fromARGB(255, 214, 44, 32),
                                    width: 1.5,
                                  ),
                                ),
                                child: TextField(
                                  controller: contactpersonController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText: 'Enter your phone number...',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.number,
                                  onChanged: (text) {
                                    setState(() {
                                      _notShowErrorContactPerson =
                                          text.isNotEmpty;
                                    });
                                  },
                                  onSubmitted: (String text) {
                                    print('Contact person: $text');
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    _notShowErrorContactPerson
                                        ? ' '
                                        : 'You must fill this section!',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 214, 44, 32),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Event Categories',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      backgroundColor: Colors.white,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(15),
                                        ),
                                      ),
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                          height: 300,
                                          child: ListView.builder(
                                            itemCount: 4,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              String event_cat;
                                              String event_cat_desc;

                                              if (index == 0) {
                                                event_cat = 'LEC/LAB/TUT';
                                                event_cat_desc =
                                                    'Academic Activities';
                                              } else if (index == 1) {
                                                event_cat = 'Meeting';
                                                event_cat_desc =
                                                    'Community organizations or social groups';
                                              } else if (index == 2) {
                                                event_cat = 'Open Event';
                                                event_cat_desc =
                                                    'Accessible to the public or a wide audience';
                                              } else {
                                                event_cat = 'Others';
                                                event_cat_desc =
                                                    'Other activities';
                                              }
                                              return Column(
                                                children: [
                                                  ListTile(
                                                    title: Text(
                                                      event_cat,
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      event_cat_desc,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    onTap: () {
                                                      selectedEventCat =
                                                          event_cat;
                                                      setState(() {
                                                        if (enteredEventCategories
                                                            .isEmpty) {
                                                          enteredEventCategories
                                                              .add(event_cat);
                                                          event_cat =
                                                              eventcategoriesController
                                                                  .text
                                                                  .trim();
                                                        } else if (enteredEventCategories
                                                            .isNotEmpty) {
                                                          enteredEventCategories
                                                              .removeAt(0);
                                                          enteredEventCategories
                                                              .add(event_cat);
                                                        }
                                                      });
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                  if (index <
                                                      3) // Add divider for the first three roles
                                                    Container(
                                                      width: 360,
                                                      height: 2,
                                                      color: Colors.grey[300],
                                                    ),
                                                ],
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: const Size(350, 35),
                                    alignment: Alignment.centerLeft,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 20,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                selectedEventCat.isNotEmpty
                                                    ? selectedEventCat
                                                    : 'We will prioritize educational activities',
                                                style: const TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.grey[500],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    _notShowErrorEventCategories
                                        ? ' '
                                        : 'You must fill this section!',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 214, 44, 32),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Event Name',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _notShowErrorEventName
                                        ? Colors.grey.shade400
                                        : Color.fromARGB(255, 214, 44, 32),
                                    width: 1.5,
                                  ),
                                ),
                                child: TextField(
                                  controller: eventnameController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText: 'Enter your event name...',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  onChanged: (text) {
                                    setState(() {
                                      _notShowErrorEventName = text.isNotEmpty;
                                    });
                                  },
                                  onSubmitted: (String text) {
                                    print('Event name: $text');
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    _notShowErrorEventName
                                        ? ' '
                                        : 'You must fill this section!',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 214, 44, 32),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              // const Row(
                              //   children: [
                              //     Text(
                              //       'Date',
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 13,
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // Center(
                              //   child: ElevatedButton(
                              //     onPressed: () {
                              //       showModalBottomSheet(
                              //         context: context,
                              //         shape: const RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.vertical(
                              //             top: Radius.circular(15),
                              //           ),
                              //         ),
                              //         builder: (BuildContext context) {
                              //           return SizedBox(
                              //             height: 420,
                              //             child: Column(
                              //               children: [
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Container(
                              //                   color: Colors.grey[350],
                              //                   width: 90,
                              //                   height: 4,
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 20,
                              //                 ),
                              //                 Container(
                              //                   padding: const EdgeInsets.only(
                              //                       left: 40, right: 40),
                              //                   color: Colors.transparent,
                              //                   child: Row(
                              //                     mainAxisAlignment:
                              //                         MainAxisAlignment
                              //                             .spaceBetween,
                              //                     children: [
                              //                       Container(
                              //                         width: 30,
                              //                         height: 30,
                              //                         decoration: BoxDecoration(
                              //                           shape: BoxShape.circle,
                              //                           color:
                              //                               Colors.transparent,
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1.5,
                              //                           ),
                              //                         ),
                              //                         child: const Icon(
                              //                           Icons
                              //                               .arrow_back_ios_new,
                              //                           color: Colors.grey,
                              //                           size: 20,
                              //                         ),
                              //                       ),
                              //                       const Text(
                              //                         'Desember 2023',
                              //                         style: TextStyle(
                              //                           fontSize: 18,
                              //                           fontWeight:
                              //                               FontWeight.w500,
                              //                         ),
                              //                       ),
                              //                       Container(
                              //                         width: 30,
                              //                         height: 30,
                              //                         decoration: BoxDecoration(
                              //                           shape: BoxShape.circle,
                              //                           color:
                              //                               Colors.transparent,
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1.5,
                              //                           ),
                              //                         ),
                              //                         child: const Icon(
                              //                           Icons.arrow_forward_ios,
                              //                           color: Colors.grey,
                              //                           size: 20,
                              //                         ),
                              //                       ),
                              //                     ],
                              //                   ),
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 15,
                              //                 ),
                              //                 SizedBox(
                              //                   width: 280,
                              //                   child: Row(
                              //                     mainAxisAlignment:
                              //                         MainAxisAlignment
                              //                             .spaceBetween,
                              //                     children: <Widget>[
                              //                       const Text(
                              //                         'Sun',
                              //                         style: TextStyle(
                              //                             color: Colors.red,
                              //                             fontWeight:
                              //                                 FontWeight.w500),
                              //                       ),
                              //                       const Spacer(),
                              //                       Text(
                              //                         'Mon',
                              //                         style: TextStyle(
                              //                           fontSize: 14,
                              //                           color: Colors.grey[700],
                              //                           fontWeight:
                              //                               FontWeight.w500,
                              //                         ),
                              //                       ),
                              //                       const Spacer(),
                              //                       Text(
                              //                         'Tue',
                              //                         style: TextStyle(
                              //                           fontSize: 14,
                              //                           color: Colors.grey[700],
                              //                           fontWeight:
                              //                               FontWeight.w500,
                              //                         ),
                              //                       ),
                              //                       const Spacer(),
                              //                       Text(
                              //                         'Wed',
                              //                         style: TextStyle(
                              //                           fontSize: 14,
                              //                           color: Colors.grey[700],
                              //                           fontWeight:
                              //                               FontWeight.w500,
                              //                         ),
                              //                       ),
                              //                       const Spacer(),
                              //                       Text(
                              //                         'Thu',
                              //                         style: TextStyle(
                              //                           fontSize: 14,
                              //                           color: Colors.grey[700],
                              //                           fontWeight:
                              //                               FontWeight.w500,
                              //                         ),
                              //                       ),
                              //                       const Spacer(),
                              //                       Text(
                              //                         'Fri',
                              //                         style: TextStyle(
                              //                           fontSize: 14,
                              //                           color: Colors.grey[700],
                              //                           fontWeight:
                              //                               FontWeight.w500,
                              //                         ),
                              //                       ),
                              //                       const Spacer(),
                              //                       Text(
                              //                         'Sat',
                              //                         style: TextStyle(
                              //                           fontSize: 14,
                              //                           color: Colors.grey[700],
                              //                           fontWeight:
                              //                               FontWeight.w500,
                              //                         ),
                              //                       ),
                              //                     ],
                              //                   ),
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 15,
                              //                 ),
                              //                 Container(
                              //                   width: 300,
                              //                   decoration: BoxDecoration(
                              //                     border: Border.all(
                              //                       color: Colors.grey,
                              //                       width: 1,
                              //                     ),
                              //                     borderRadius:
                              //                         BorderRadius.circular(10),
                              //                   ),
                              //                   child: TableCalendar(
                              //                     rowHeight: 45,
                              //                     calendarStyle:
                              //                         const CalendarStyle(
                              //                       cellMargin:
                              //                           EdgeInsets.all(2),
                              //                       defaultTextStyle: TextStyle(
                              //                         fontSize: 12,
                              //                       ),
                              //                       weekendTextStyle: TextStyle(
                              //                         fontSize: 12,
                              //                       ),
                              //                       outsideTextStyle: TextStyle(
                              //                         fontSize: 12,
                              //                         color: Colors.grey,
                              //                       ),
                              //                       selectedTextStyle:
                              //                           TextStyle(
                              //                         fontSize: 12,
                              //                         color: Colors.white,
                              //                       ),
                              //                       todayTextStyle: TextStyle(
                              //                         fontSize: 12,
                              //                         color: Colors.white,
                              //                       ),
                              //                     ),
                              //                     headerVisible: false,
                              //                     daysOfWeekVisible: false,
                              //                     daysOfWeekHeight: 100,
                              //                     firstDay:
                              //                         DateTime(2020, 1, 1),
                              //                     lastDay:
                              //                         DateTime(2025, 12, 31),
                              //                     focusedDay: DateTime.now(),
                              //                     onDaySelected: (selectedDay,
                              //                         focusedDay) {
                              //                       _selectedDay = selectedDay;
                              //                     },
                              //                     selectedDayPredicate:
                              //                         (DateTime date) {
                              //                       return isSameDay(
                              //                           date, _selectedDay);
                              //                     },
                              //                   ),
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment
                              //                           .spaceBetween,
                              //                   children: <Widget>[
                              //                     const Spacer(),
                              //                     Row(
                              //                       children: [
                              //                         Container(
                              //                           width: 7,
                              //                           height: 7,
                              //                           decoration:
                              //                               const BoxDecoration(
                              //                             shape:
                              //                                 BoxShape.circle,
                              //                             color: Colors.green,
                              //                           ),
                              //                         ),
                              //                         const SizedBox(
                              //                           width: 10,
                              //                         ),
                              //                         const Text(
                              //                           '100% Shift Available',
                              //                           style: TextStyle(
                              //                             fontSize: 9,
                              //                           ),
                              //                         ),
                              //                       ],
                              //                     ),
                              //                     const Spacer(),
                              //                     Row(
                              //                       children: [
                              //                         Container(
                              //                           width: 7,
                              //                           height: 7,
                              //                           decoration:
                              //                               const BoxDecoration(
                              //                             shape:
                              //                                 BoxShape.circle,
                              //                             color: Colors.blue,
                              //                           ),
                              //                         ),
                              //                         const SizedBox(
                              //                           width: 10,
                              //                         ),
                              //                         const Text(
                              //                           '50% Shift Available',
                              //                           style: TextStyle(
                              //                             fontSize: 9,
                              //                           ),
                              //                         ),
                              //                       ],
                              //                     ),
                              //                     const Spacer(),
                              //                     Row(
                              //                       children: [
                              //                         Container(
                              //                           width: 7,
                              //                           height: 7,
                              //                           decoration:
                              //                               const BoxDecoration(
                              //                             shape:
                              //                                 BoxShape.circle,
                              //                             color: Colors.red,
                              //                           ),
                              //                         ),
                              //                         const SizedBox(
                              //                           width: 10,
                              //                         ),
                              //                         const Text(
                              //                           '0% Shift Available',
                              //                           style: TextStyle(
                              //                             fontSize: 9,
                              //                           ),
                              //                         ),
                              //                       ],
                              //                     ),
                              //                     const Spacer(),
                              //                   ],
                              //                 ),
                              //               ],
                              //             ),
                              //           );
                              //         },
                              //       );
                              //     },
                              //     style: ElevatedButton.styleFrom(
                              //       backgroundColor: Colors.white,
                              //       minimumSize: const Size(350, 35),
                              //       alignment: Alignment.centerLeft,
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(0),
                              //       ),
                              //     ),
                              //     child: Container(
                              //       width: 300,
                              //       padding: const EdgeInsets.symmetric(
                              //           vertical: 5, horizontal: 0),
                              //       decoration: const BoxDecoration(
                              //         color: Colors.white,
                              //       ),
                              //       child: Row(
                              //         children: [
                              //           const Expanded(
                              //             flex: 10,
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Text(
                              //                   'Tell us when you want to use the room',
                              //                   style: TextStyle(
                              //                     color: Colors.black,
                              //                     fontWeight: FontWeight.w400,
                              //                     fontSize: 12,
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //           Expanded(
                              //             flex: 1,
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.end,
                              //               children: [
                              //                 Icon(
                              //                   Icons.arrow_drop_down,
                              //                   color: Colors.grey[500],
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              // const Row(
                              //   children: [
                              //     Text(
                              //       'Available Shift',
                              //       style: TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 13,
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              // Center(
                              //   child: ElevatedButton(
                              //     onPressed: () {
                              //       showModalBottomSheet(
                              //         context: context,
                              //         shape: const RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.vertical(
                              //             top: Radius.circular(15),
                              //           ),
                              //         ),
                              //         builder: (BuildContext context) {
                              //           return SizedBox(
                              //             height: 380,
                              //             child: Column(
                              //               children: [
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Container(
                              //                   color: Colors.grey[350],
                              //                   width: 90,
                              //                   height: 4,
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 20,
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.center,
                              //                   children: [
                              //                     GestureDetector(
                              //                       onTap: toggleColor,
                              //                       child: Container(
                              //                         width: 300,
                              //                         height: 35,
                              //                         decoration: BoxDecoration(
                              //                           color: isOrange
                              //                               ? Colors.orange
                              //                               : Colors.white,
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(7),
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1,
                              //                           ),
                              //                         ),
                              //                         child: Center(
                              //                           child: Text(
                              //                             isOrange
                              //                                 ? 'Shift 1                      07.20 - 09.00 WIB'
                              //                                 : 'Shift 1                      07.20 - 09.00 WIB',
                              //                             style: TextStyle(
                              //                               fontSize: 13,
                              //                               color: isOrange
                              //                                   ? Colors.white
                              //                                   : Colors.black,
                              //                               fontWeight:
                              //                                   FontWeight.bold,
                              //                             ),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.center,
                              //                   children: [
                              //                     GestureDetector(
                              //                       onTap: toggleColor2,
                              //                       child: Container(
                              //                         width: 300,
                              //                         height: 35,
                              //                         decoration: BoxDecoration(
                              //                           color: isOrange2
                              //                               ? Colors.orange
                              //                               : Colors.white,
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(7),
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1,
                              //                           ),
                              //                         ),
                              //                         child: Center(
                              //                           child: Text(
                              //                             isOrange2
                              //                                 ? 'Shift 2                      09.20 - 11.00 WIB'
                              //                                 : 'Shift 2                      09.20 - 11.00 WIB',
                              //                             style: TextStyle(
                              //                               fontSize: 13,
                              //                               color: isOrange2
                              //                                   ? Colors.white
                              //                                   : Colors.black,
                              //                               fontWeight:
                              //                                   FontWeight.bold,
                              //                             ),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.center,
                              //                   children: [
                              //                     GestureDetector(
                              //                       onTap: toggleColor3,
                              //                       child: Container(
                              //                         width: 300,
                              //                         height: 35,
                              //                         decoration: BoxDecoration(
                              //                           color: isOrange3
                              //                               ? Colors.orange
                              //                               : Colors.white,
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(7),
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1,
                              //                           ),
                              //                         ),
                              //                         child: Center(
                              //                           child: Text(
                              //                             isOrange3
                              //                                 ? 'Shift 3                      11.20 - 13.00 WIB'
                              //                                 : 'Shift 3                      11.20 - 13.00 WIB',
                              //                             style: TextStyle(
                              //                               fontSize: 13,
                              //                               color: isOrange3
                              //                                   ? Colors.white
                              //                                   : Colors.black,
                              //                               fontWeight:
                              //                                   FontWeight.bold,
                              //                             ),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.center,
                              //                   children: [
                              //                     GestureDetector(
                              //                       onTap: toggleColor4,
                              //                       child: Container(
                              //                         width: 300,
                              //                         height: 35,
                              //                         decoration: BoxDecoration(
                              //                           color: isOrange4
                              //                               ? Colors.orange
                              //                               : Colors.white,
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(7),
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1,
                              //                           ),
                              //                         ),
                              //                         child: Center(
                              //                           child: Text(
                              //                             isOrange4
                              //                                 ? 'Shift 4                      13.20 - 15.00 WIB'
                              //                                 : 'Shift 4                      13.20 - 15.00 WIB',
                              //                             style: TextStyle(
                              //                               fontSize: 13,
                              //                               color: isOrange4
                              //                                   ? Colors.white
                              //                                   : Colors.black,
                              //                               fontWeight:
                              //                                   FontWeight.bold,
                              //                             ),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.center,
                              //                   children: [
                              //                     GestureDetector(
                              //                       onTap: toggleColor5,
                              //                       child: Container(
                              //                         width: 300,
                              //                         height: 35,
                              //                         decoration: BoxDecoration(
                              //                           color: isOrange5
                              //                               ? Colors.orange
                              //                               : Colors.white,
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(7),
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1,
                              //                           ),
                              //                         ),
                              //                         child: Center(
                              //                           child: Text(
                              //                             isOrange5
                              //                                 ? 'Shift 5                      15.20 - 17.00 WIB'
                              //                                 : 'Shift 5                      15.20 - 17.00 WIB',
                              //                             style: TextStyle(
                              //                               fontSize: 13,
                              //                               color: isOrange5
                              //                                   ? Colors.white
                              //                                   : Colors.black,
                              //                               fontWeight:
                              //                                   FontWeight.bold,
                              //                             ),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 10,
                              //                 ),
                              //                 Row(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.center,
                              //                   children: [
                              //                     GestureDetector(
                              //                       onTap: toggleColor6,
                              //                       child: Container(
                              //                         width: 300,
                              //                         height: 35,
                              //                         decoration: BoxDecoration(
                              //                           color: isOrange6
                              //                               ? Colors.orange
                              //                               : Colors.white,
                              //                           borderRadius:
                              //                               BorderRadius
                              //                                   .circular(7),
                              //                           border: Border.all(
                              //                             color: Colors
                              //                                 .grey.shade300,
                              //                             width: 1,
                              //                           ),
                              //                         ),
                              //                         child: Center(
                              //                           child: Text(
                              //                             isOrange6
                              //                                 ? 'Shift 6                      17.20 - 19.00 WIB'
                              //                                 : 'Shift 6                      17.20 - 19.00 WIB',
                              //                             style: TextStyle(
                              //                               fontSize: 13,
                              //                               color: isOrange6
                              //                                   ? Colors.white
                              //                                   : Colors.black,
                              //                               fontWeight:
                              //                                   FontWeight.bold,
                              //                             ),
                              //                           ),
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //                 const SizedBox(
                              //                   height: 20,
                              //                 ),
                              //                 ElevatedButton(
                              //                   onPressed: (isOrange ||
                              //                           isOrange2 ||
                              //                           isOrange3 ||
                              //                           isOrange4 ||
                              //                           isOrange5 ||
                              //                           isOrange6)
                              //                       ? () {
                              //                           Navigator.pop(context);
                              //                           print('yes');

                              //                         }
                              //                       : null,
                              //                   style: ButtonStyle(
                              //                     minimumSize:
                              //                         MaterialStateProperty.all(
                              //                             const Size(150, 35)),
                              //                   ),
                              //                   child: const Text('Ok'),
                              //                 ),
                              //               ],
                              //             ),
                              //           );
                              //         },
                              //       );
                              //     },
                              //     style: ElevatedButton.styleFrom(
                              //       backgroundColor: Colors.white,
                              //       minimumSize: const Size(350, 35),
                              //       alignment: Alignment.centerLeft,
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(0),
                              //       ),
                              //     ),
                              //     child: Container(
                              //       width: 300,
                              //       padding: const EdgeInsets.symmetric(
                              //           vertical: 5, horizontal: 0),
                              //       decoration: const BoxDecoration(
                              //         color: Colors.white,
                              //       ),
                              //       child: Row(
                              //         children: [
                              //           const Expanded(
                              //             flex: 10,
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Text(
                              //                   'Pick shift you desire the most. Don\'t forget to discuss with your teammate!',
                              //                   style: TextStyle(
                              //                     color: Colors.black,
                              //                     fontWeight: FontWeight.w400,
                              //                     fontSize: 12,
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //           Expanded(
                              //             flex: 1,
                              //             child: Column(
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.end,
                              //               children: [
                              //                 Icon(
                              //                   Icons.arrow_drop_down,
                              //                   color: Colors.grey[500],
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              const Row(
                                children: [
                                  Text(
                                    'User Amount',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: _notShowErrorUserAmount
                                        ? Colors.grey.shade400
                                        : Color.fromARGB(255, 214, 44, 32),
                                    width: 1.5,
                                  ),
                                ),
                                child: TextField(
                                  controller: useramountController,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    hintText: 'Max capacity: 30 People',
                                    hintStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                    ),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  onChanged: (text) {
                                    setState(() {
                                      _notShowErrorUserAmount = text.isNotEmpty;
                                    });
                                  },
                                  onSubmitted: (String text) {
                                    print('User amount: $text people');
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    _notShowErrorUserAmount
                                        ? ' '
                                        : 'You must fill this section!',
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 214, 44, 32),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Venue',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    'Digital Industry Laboratory - HD08',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Equipment Available in Venue',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                // height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'Whiteboard',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'x1',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          child: const Text(
                                            'Monitors',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            'x2',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          child: const Text(
                                            'Personal Computer',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            'x1',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Add Additional Equipment',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(15),
                                        ),
                                      ),
                                      builder: (BuildContext context) {
                                        return SingleChildScrollView(
                                          child: SizedBox(
                                            // height: 500,
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'Item',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12),
                                                    ),
                                                    Text(
                                                      'Item Name',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12),
                                                    ),
                                                    Text(
                                                      'Avail Qty',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12),
                                                    ),
                                                    Text(
                                                      'Qty Needed',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 1.5,
                                                  color: Colors.grey[300],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Image.asset(
                                                          'images/marker.png'),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        'Whiteboard Marker',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        '6',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Center(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyMarker <
                                                                          6 &&
                                                                      qtyMarker >
                                                                          0) {
                                                                    qtyMarker--;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/removeButton.png'),
                                                              ),
                                                            ),
                                                            Text(
                                                              '$qtyMarker',
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyMarker <
                                                                          6 &&
                                                                      qtyMarker >
                                                                          0) {
                                                                    qtyMarker++;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/addButton.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 1.5,
                                                  color: Colors.grey[300],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Image.asset(
                                                          'images/pen.png'),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        'Pen',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        '6',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Center(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyPen <
                                                                          6 &&
                                                                      qtyPen >
                                                                          0) {
                                                                    qtyPen--;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/removeButton.png'),
                                                              ),
                                                            ),
                                                            Text(
                                                              '$qtyPen',
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyPen <
                                                                          6 &&
                                                                      qtyPen >
                                                                          0) {
                                                                    qtyPen++;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/addButton.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 1.5,
                                                  color: Colors.grey[300],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Image.asset(
                                                          'images/ruler.png'),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        'Ruler',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        '2',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Center(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyRuler <
                                                                          2 &&
                                                                      qtyRuler >
                                                                          0) {
                                                                    qtyRuler--;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/removeButton.png'),
                                                              ),
                                                            ),
                                                            Text(
                                                              '$qtyRuler',
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyRuler <
                                                                          2 &&
                                                                      qtyRuler >
                                                                          0) {
                                                                    qtyRuler++;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/addButton.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 1.5,
                                                  color: Colors.grey[300],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Image.asset(
                                                          'images/scissors.png'),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        'Scissors',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        '2',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Center(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyScissors <
                                                                          2 &&
                                                                      qtyScissors >
                                                                          0) {
                                                                    qtyScissors--;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/removeButton.png'),
                                                              ),
                                                            ),
                                                            Text(
                                                              '$qtyScissors',
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyScissors <
                                                                          2 &&
                                                                      qtyScissors >
                                                                          0) {
                                                                    qtyScissors++;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/addButton.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 1.5,
                                                  color: Colors.grey[300],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Image.asset(
                                                          'images/glue.png'),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        'Glue',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        '3',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Center(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyGlue <
                                                                          3 &&
                                                                      qtyGlue >
                                                                          0) {
                                                                    qtyGlue--;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/removeButton.png'),
                                                              ),
                                                            ),
                                                            Text(
                                                              '$qtyGlue',
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyGlue <
                                                                          3 &&
                                                                      qtyGlue >
                                                                          0) {
                                                                    qtyGlue++;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/addButton.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 1.5,
                                                  color: Colors.grey[300],
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Image.asset(
                                                          'images/celotape.png'),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        'Celotape',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 12,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 80,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: const Text(
                                                        '3',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 110,
                                                      height: 80,
                                                      color: Colors.transparent,
                                                      child: Center(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyCelotape <
                                                                          3 &&
                                                                      qtyCelotape >
                                                                          0) {
                                                                    qtyCelotape--;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/removeButton.png'),
                                                              ),
                                                            ),
                                                            Text(
                                                              '$qtyCelotape',
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  if (qtyCelotape <
                                                                          3 &&
                                                                      qtyCelotape >
                                                                          0) {
                                                                    qtyCelotape++;
                                                                  }
                                                                });
                                                                print('yes');
                                                              },
                                                              child: SizedBox(
                                                                width: 30,
                                                                height: 30,
                                                                child: Image.asset(
                                                                    'images/addButton.png'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width: 350,
                                                  height: 1.5,
                                                  color: Colors.grey[300],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        Colors.orangeAccent,
                                                    minimumSize:
                                                        const Size(310, 30),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('Next'),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: const Size(350, 35),
                                    alignment: Alignment.centerLeft,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                  child: Container(
                                    width: 300,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                    ),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          flex: 20,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Select the equipment you\'d like to borrow...',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.grey[500],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Notes (optional)',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                padding: EdgeInsets.only(left: 10),
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: TextField(
                                  controller: notesController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                    // hintText: '',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  onSubmitted: (String text) {
                                    print('Notes: $text');
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Rules & Regulations',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                width: 320,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade400,
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 280,
                                          child: const Text(
                                            'Reservation and reschedule can only be made at least 1 day before event date with maximum chance of 1 reschedule.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '2. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 290,
                                          child: const Text(
                                            'The borrower is responsible for any damage or removal of facilities within the room and will be penalized according to the laboratory\'s regulations.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '3. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 290,
                                          child: const Text(
                                            'Smoking and the use of weapons are strictly prohibited inside the premises.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          '4. ',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Container(
                                          color: Colors.transparent,
                                          width: 290,
                                          child: const Text(
                                            'Every person using the room is obligated to maintain its cleanliness.',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        side: const BorderSide(
                                            color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: _onCheckboxChanged,
                                        activeColor: Colors.green,
                                      ),
                                      Container(
                                        color: Colors.transparent,
                                        child: const Text(
                                          'I agree with the rules and regulations.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.orangeAccent,
                                  minimumSize: const Size(310, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                                onPressed:
                                    isButtonEnabled ? _onButtonClicked : null,
                                child: const Text('NEXT'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 230,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
