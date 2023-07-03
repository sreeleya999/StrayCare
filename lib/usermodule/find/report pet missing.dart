import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

import '../../connect.dart';
import '../reports/utils.dart';

class Report extends StatefulWidget {
  Report({Key? key,required this.id}) : super(key: key);
  var id;

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  var petname=TextEditingController();
  var age=TextEditingController();
  var color=TextEditingController();
  var date=TextEditingController();
  var phone=TextEditingController();
  Future<void> sendData()async {
    var data = {
      "pet_name": petname.text,
      "age":age.text,
      "color":color.text,
      "missing_date":date.text,
      "location":_locationMessage,
      "missing_date":date.text,
      "phone_no":phone.text,
      "id": widget.id,
    };
    print(data);
    var response = await post(Uri.parse('${Con.url}missing.php'), body: data);
    print(response.body);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body)["result"];
      if (res == 'success') {
        const snackBar = SnackBar(content: Text("successfully added"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
  String _locationMessage = "";

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _locationMessage =
      "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
    });
  }
  Uint8List? _image;
  void selectImage() async{
    Uint8List img= await pickImage(ImageSource.gallery);
    setState(() {
      _image=img;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('''REPORTING YOUR
 PET MISSING''',style: TextStyle(fontSize: 15),),
        backgroundColor: Colors.orangeAccent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Image.asset('assets/new.png'), // Replace with your image path
          ),
        ],
      ),
    body:
    Center(
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Stack(
        alignment: Alignment.bottomRight,
    children:[
    _image !=null ?
    CircleAvatar(
    radius: 64,
    backgroundImage: MemoryImage(_image!),
    ):

    const CircleAvatar(

    radius: 74,

    ),
    IconButton(onPressed:selectImage,
    icon: Icon(Icons.add_a_photo_rounded,),
    ),

      ]
    ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
          controller: petname,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "Pet's Name",

          ),

        ),

      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
          controller: age,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "Age",

          ),

        ),

      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
          controller: color,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "color",

          ),

        ),

      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
          controller: date,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "Missing date",

          ),

        ),

      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
          controller: phone,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "Your phone no",

          ),

        ),

      ),
      SizedBox(
        height: 20,
      ),
      Text(
        _locationMessage,
        style: TextStyle(fontSize: 15),
      ),
      SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: _getCurrentLocation,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            fixedSize: const Size(250, 70),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0))),
        child: const Text('Location'),
      ),

      SizedBox(
        height: 30,
      ),
      ElevatedButton(
        onPressed:(){
          sendData();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700,
            fixedSize: const Size(250, 70),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: const Text('Submit'),
      ),
        ]
    )
    )
    )
    );
  }
}
