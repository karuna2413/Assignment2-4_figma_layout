import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingStyle extends StatefulWidget {
  const SettingStyle({super.key});

  @override
  State<SettingStyle> createState() => _SettingStyleState();
}

class _SettingStyleState extends State<SettingStyle> {
 // final dynamic font1;
  Map<String,TextStyle>fontstylelist = {
    'font1': GoogleFonts.aBeeZee(),
    'font2':GoogleFonts.abel(),
    'font3':GoogleFonts.abhayaLibre(),
    'font4':GoogleFonts.abyssinicaSil(),
  };
  TextStyle initialfont = GoogleFonts.abyssinicaSil();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('setting'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('select font-style'),
              //           DropdownButton(
              //               items: fontstylelist.map((e) {
              //                  return
              // DropdownMenuItem(
              //     child:Text('text'),
              //     // child: Text('text',style:e));
              //
              //               }).toList(),
              //
              //
              //
              //               onChanged: (value) {
              //                 setState(() {
              //                   initialfont = value;
              //                   print(initialfont);
              //                   // Navigator.pop(context,initialfont);
              //
              //                 });
              //               })

              DropdownButton(
                value: initialfont,
                  items: fontstylelist.entries.map((e) {
                    return DropdownMenuItem(
                        value: e.value,
                        child: Column(
                          children: [
                            Text(e.key,style:e.value),
                            // Text('$e.keys',style:e['font2']),
                            // Text('$e.keys',style:e['font3']),
                            // Text('$e.keys',style:e['font4']),

                          ],
                        ));
                  }).toList(),
                  onChanged: (value) {
                  setState(() {

                    initialfont=value!;
                  });
                  })
            ],
          ),
        ],
      ),
    );
  }
}

// class _SettingStyleState extends State<SettingStyle> {
//   var initialfont = 'Roboto';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('setting'),
//       ),
//       body:Column(
//         children: [
//           Row(
//             children: [
//               Text('select font-style'),
//               DropdownButton(
//                   value: initialfont,
//               items:<String>['Open Sans', 'Roboto', 'Lobster','Lato','Croissant One','Raleway','Kenia','Nunito']
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Column(
//                     children: [
//                       Text(value),
//                     ],
//                   ),
//                 );
//               }).toList(),
//
//
//
//                   onChanged: (value) {
//                     setState(() {
//                       initialfont = value!;
//
//                     });
//                   })
//             ],
//           ),
//
//         ],
//       ),
//     );
//   }
// }

// var fontstylelist = {
//   Model(
//       font1: GoogleFonts.aBeeZee(),
//       font2: GoogleFonts.abel(),
//       font3: GoogleFonts.abhayaLibre(),
//       font4: GoogleFonts.abyssinicaSil(),
//       font5: GoogleFonts.abrilFatfaceTextTheme(),
//   )
// };
// var fontstylelist=[
//   'Open Sans', 'Roboto', 'Lobster'
// ];

//             [...fontstylelist.map((newfont){
//               return
//               DropdownMenuItem(child: Column(
//                 children: [
//                   Text(newfont),
//                   // Text('fontstyle1',style: e.font2),
//                   // Text('fontstyle1',style: e.font3),
//                   // Text('fontstyle1',style: e.font4),
//                   // Text('fontstyle1',style: e.font5),
//
//                 ],
//               ));
// })],
