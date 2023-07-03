import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

import '../connect.dart';
import '../usermodule/reports/utils.dart';

class Fohom extends StatefulWidget {
  const Fohom({Key? key}) : super(key: key);

  @override
  State<Fohom> createState() => _FohomState();
}

class _FohomState extends State<Fohom> {
  var reporter=TextEditingController();
  var description=TextEditingController();
  var time=TextEditingController();


  Future<void> sendData()async {
    var data = {
      "reporter_name":reporter.text,
      "time":time.text,
      "description": description.text,
      "location": _locationMessage,


    };
    var response = await post(Uri.parse('${Con.url}forest.php'), body: data);
    print(response.body);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body)["result"];
      if (res == 'success') {
        const snackBar = SnackBar(content: Text("successfully collected"),
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
        body:
        Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _image !=null ?
                      CircleAvatar(
                        radius: 64,
                        backgroundImage: MemoryImage(_image!),
                      ):

                      Positioned(
                          right: -16,
                          bottom: 0,
                          child: SizedBox(
                              height: 46,
                              width: 46,
                              child: IconButton(onPressed:selectImage,
                                icon: Icon(Icons.add_a_photo_rounded,),
                              ),),),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: reporter,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Reporter Name",

                          ),

                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: time,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Time",

                          ),

                        ),

                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: description,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "Add a Description",

                          ),

                        ),

                      ),
                      Text(
                        _locationMessage,
                        style: TextStyle(fontSize: 10),
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
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed:(){
                          Uri launchUri = Uri(scheme: 'tel', path: '9874562141');
                          launchUrl(launchUri);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade200,
                            fixedSize: const Size(250, 70),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text('Call Reporter'),
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
                        child: const Text('collected'),
                      ),

                    ]
                )
            )
        )
    );
  }
}
