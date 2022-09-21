import 'package:flutter/material.dart';

import 'package:snippet_coder_utils/FormHelper.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  List<dynamic> pravince = [];
  List<dynamic> stateMasters = [];
  List<dynamic> states = [];
  List<dynamic> stateMasters1 = [];
  List<dynamic> states1 = [];
  String? countryId;
  String? stateId;
  String? stateId1;

  @override
  void initState() {
    super.initState();

    this.pravince.add({'id': 1, 'label': 'Jizzax viloyati'});
    this.pravince.add({'id': 2, 'label': 'Toshkent shahri'});
    this.pravince.add({'id': 4, 'label': "Qoraqalpog'iston Respublikasi"});
    this.pravince.add({'id': 5, 'label': 'Buxoro viloyati'});
    this.pravince.add({'id': 6, 'label': "Farg'ona viloyati"});
    this.pravince.add({'id': 7, 'label': 'Xorazm viloyati'});
    this.pravince.add({'id': 8, 'label': 'Namangan viloyati'});
    this.pravince.add({'id': 9, 'label': 'Navoiy viloyati'});
    this.pravince.add({'id': 10, 'label': 'Qashqadaryo viloyati'});
    this.pravince.add({'id': 11, 'label': 'Samarqand viloyati'});
    this.pravince.add({'id': 12, 'label': 'Surxondaryo viloyati'});
    this.pravince.add({'id': 13, 'label': 'Toshkent viloyati'});
    this.pravince.add({'id': 14, 'label': 'Sirdaryo viloyati'});
    this.pravince.add({'id': 15, 'label': 'Andijon viloyati'});
    this.stateMasters = [
      {"Id": 1, "Name": "Sharof Rashidov", "ParentId": 1},
      {"Id": 2, "Name": "Zomin", "ParentId": 1},
      {"Id": 3, "Name": "Paxtakor", "ParentId": 2},
      {"Id": 4, "Name": "Mirzacho'l", "ParentId": 2},
      this.stateMasters1 = [
        {"ID": 1, "Name1": "maktab", "Parent":1},
        {"ID": 2, "Name1": "maktab", "Parent":1  },
        {"ID": 3, "Name1": "maktab",  "Parent":1},
        {"ID": 4, "Name1": "maktab", "Parent":1 },
        {"ID": 5, "Name1": "maktab", "Parent":1 },

      ]
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildClipPath(),
            Center(
                child: Text(
                  "Ro'yxatdan o'tish",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 50,
            ),
            FormHelper.dropDownWidgetWithLabel(
              context,
              "Hududingizni tanlang",
              "Viloyatlar",
              this.countryId,
              this.pravince,
                  (onChangedVal) {
                this.countryId = onChangedVal;
                this.states =
                    this.stateMasters.where((stateItem) => stateItem["ParentId"]
                        .toString() == onChangedVal.toString())
                        .toList();
                this.stateId=null;
              },
                  (onValidetVal) {
                if (onValidetVal == null) {
                  return "Hududingizni tanlang";
                }
                return null;

              },
              borderColor: Theme
                  .of(context)
                  .cardColor,
              borderFocusColor: Theme
                  .of(context)
                  .backgroundColor,
              borderRadius: 10,
              optionValue: "id",
              optionLabel: "label",
            ),
            // dropDownPravince(),
            SizedBox(
              height: 12,
            ),
            FormHelper.dropDownWidgetWithLabel(
              context,
              'Tumanni tanlang',
              'Tumanlar',
              this.stateId,
              this.stateMasters,
                  (onChangedVal) {
                this.stateMasters = onChangedVal;
                this.states1 =
                    this.stateMasters1.where((stateItem) => stateItem["Parent"]
                        .toString() == onChangedVal.toString())
                        .toList();
                this.stateId1=null;
              },
                  (onValidate) {
                if (onValidate == null) {
                  return "";
                }
                return null;
              },
              borderColor: Theme
                  .of(context)
                  .cardColor,
              borderFocusColor: Theme
                  .of(context)
                  .backgroundColor,
              borderRadius: 10,
              optionValue: "Id",
              optionLabel: "Name",
            ),
            SizedBox(
              height: 12,
            ),
            FormHelper.dropDownWidgetWithLabel(
                context,
                "",
                "",
                this.stateId1,
                this.stateMasters1,
                (onChanged){
                  this.stateId1=onChanged;
                },
                (onValidate1){
                  if (onValidate1 == null) {
                    return "aa";
                  }
                  return null;
                },
                borderColor: Theme
                .of(context)
                .cardColor,
        borderFocusColor: Theme
            .of(context)
            .backgroundColor,
        borderRadius: 10,
        optionValue: "ID",
        optionLabel: "Name1",
                )
            //     FormHelper.dropDownWidgetWithLabel(
            //         context,
            //         "Maktabni tanlang",
            //         "Maktab raqami",
            //         this.stateId1,
            //         this.stateMasters1,
            //         (onChangedVal){
            //           this.stateMasters1=onChangedVal;
            //         },
            //         (onValidateval){
            //           if (onValidateval == null) {
            //             return "Hududingizni tanlang";
            //           }
            //           return null;                },
            //         borderColor: Theme.of(context).cardColor,
            // borderFocusColor: Theme.of(context).backgroundColor,
            // borderRadius: 10,
            // optionValue: "ID",
            // optionLabel: "Name1",
            //     )
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          item,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget buildClipPath() {
    return Container(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.green,
                height: 200,
              ),
            ),
          )
        ],
      ),
    );
  }

// Widget dropDownPravince() {
//  return Column(
//    children: [
//      Text("Hududni tanlang"),
//      Container(
//       margin: EdgeInsets.all(12),
//      decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//        border: Border.all(color: Colors.green, width: 3)),
//     child: DropdownButtonHideUnderline(
//       child: DropdownButton<String>(
//            value: value,
//            isExpanded: true,
//             iconSize: 36,
//            icon: Icon(
//              Icons.arrow_drop_down,
//              color: Colors.black,
//            ),
//            items: items.map(buildMenuItem).toList(),
//            onChanged: (value) {
//              setState(() {
//                this.value = value;
//                });
//              }),
//      ),
//    ),
//  ],
// );
// }

}

class WaveClipper extends CustomClipper<Path> {
  final double waveDeep;
  final double waveDeep2;

  WaveClipper({this.waveDeep = 100, this.waveDeep2 = 0});

  @override
  Path getClip(Size size) {
    final double sw = size.width;
    final double sh = size.height;

    final Offset controlPoint1 = Offset(sw * .25, sh - waveDeep2 * 2);
    final Offset destinationPoint1 = Offset(sw * .5, sh - waveDeep - waveDeep2);

    final Offset controlPoint2 = Offset(sw * .75, sh - waveDeep * 2);
    final Offset destinationPoint2 = Offset(sw, sh - waveDeep);

    final Path path = Path()
      ..lineTo(0, size.height - waveDeep2)
      ..quadraticBezierTo(controlPoint1.dx, controlPoint1.dy,
          destinationPoint1.dx, destinationPoint1.dy)..quadraticBezierTo(
          controlPoint2.dx, controlPoint2.dy,
          destinationPoint2.dx, destinationPoint2.dy)
      ..lineTo(size.width, 0)..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
