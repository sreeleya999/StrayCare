import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:straycare/usermodule/reports/utils.dart';

import '../../connect.dart';

class Wild extends StatefulWidget {
  Wild({Key? key,required this.id}) : super(key: key);
  var id;

  @override
  State<Wild> createState() => _WildState();
}

class _WildState extends State<Wild> {
  var description=TextEditingController();

  Future<void> sendData()async {
    var data = {
      "description": description.text,
      "report_type":'Stray Animal',
      "reg_id":widget.id,
      "location":_locationMessage,


    };
    print(data);
    var response = await post(Uri.parse('${Con.url}report.php'), body: data);
    print(response.body);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body)["result"];
      if (res == 'success') {
        const snackBar = SnackBar(content: Text("successfully registered"),
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

                      const CircleAvatar(

                        radius: 74,

                      ),
                      Positioned(child: IconButton(onPressed:selectImage,
                        icon: Icon(Icons.add_a_photo_rounded,),
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
                        style: TextStyle(fontSize: 20),
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
                        onPressed:(){},
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
