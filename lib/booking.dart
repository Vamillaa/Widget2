import 'dart:html';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_widget1/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:info_popup/info_popup.dart';
import 'package:flutter/services.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool validatePhoneNumber(String phoneNumber) {
    RegExp phoneRegExp = RegExp(r'^\d{8}$|^\d{13}$');
    return phoneRegExp.hasMatch(phoneNumber);
  }

  final _bookingKey = GlobalKey<FormState>();
  final ctrlFullName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Booking Form"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(20),
            child: Form(
                key: _bookingKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: ctrlFullName,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Full name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    TextFormField(
                      controller: ctrlEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return !EmailValidator.validate(value.toString())
                            ? "Email tidak valid!"
                            : null;
                      },
                    ),
                    TextFormField(
                      controller: ctrlPhone,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().length < 13
                            ? "Invalid input"
                            : null;
                      },
                    ),
                    TextFormField(
                      controller: ctrlCity,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'City',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_city),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        String name = ctrlFullName.text;
                        String email = ctrlEmail.text;
                        String phone = ctrlPhone.text;
                        String city = ctrlCity.text;

                        if (name.isEmpty ||
                            email.isEmpty ||
                            phone.isEmpty ||
                            city.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Error'),
                                content: Text('Please fill in all fields.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('close'),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Entered Information'),
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Name: $name'),
                                    Text('Email: $email'),
                                    Text('Phone: $phone'),
                                    Text('City: $city'),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return MyHome();
                                      }));
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      icon: Icon(Icons.save),
                      label: Text("Submit"),
                      style: ElevatedButton.styleFrom(
                          elevation: 2,
                          padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                          backgroundColor: Colors.blue[700],
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: 20)),
                    ),
                  ],
                ))));
  }
}
