import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var qrstr = 'Add Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating QR code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarcodeWidget(data: qrstr,
          barcode: Barcode.qrCode(),
           color : Colors.blue,
          height : 250,
          width: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*8,
            child: TextField(
              onChanged: (val)
              {
                setState(() {
                  qrstr = val;
                });
              },
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: 'Enter your data here',
                border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color:Colors.blue, width : 1),
                ),
               
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,

          )
        ],
      ),
    );
  }
}
