import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  static String tag = 'profile-edit';

  @override
  _ProfileEditState createState() => new _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  bool _isEditing = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
                width: width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/logo.png',
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        Container(
                          width: 300,
                          child: _isEditing
                              ? Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40),
                                    Form(
                                      key: _formkey,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 300,
                                            child: TextFormField(
                                              keyboardType: TextInputType.name,
                                              autofocus: false,
                                              textCapitalization:
                                                  TextCapitalization.words,
                                              initialValue: _name,
                                              validator: (value) {
                                                return FormValidator
                                                    .validateName(value);
                                              },
                                              onSaved: (value) {
                                                _name = value?.trim() ?? '';
                                              },
                                              onChanged: (value) {
                                                setState(() {
                                                  _name = value.trim();
                                                });
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Name",
                                                filled: true,
                                                fillColor: Colors.grey.shade200,
                                                hintText: 'Name',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        Colors.yellow.shade700,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                  20.0,
                                                  10.0,
                                                  20.0,
                                                  10.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            width: 300,
                                            child: TextFormField(
                                              autofocus: false,
                                              initialValue: _email,
                                              validator: (value) {
                                                return FormValidator
                                                    .validateEmail(value);
                                              },
                                              onSaved: (value) {
                                                _email = value?.trim() ?? '';
                                              },
                                              onChanged: (value) {
                                                setState(() {
                                                  _email = value.trim();
                                                });
                                              },
                                              decoration: InputDecoration(
                                                labelText: "Email",
                                                filled: true,
                                                fillColor: Colors.grey.shade200,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        Colors.yellow.shade700,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                hintText: 'Email',
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                  20.0,
                                                  10.0,
                                                  20.0,
                                                  10.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            width: 300,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 16.0,
                                              ),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  padding: EdgeInsets.all(
                                                    12,
                                                  ),
                                                  backgroundColor: Colors.green,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _isEditing = false;
                                                  });
                                                  login();
                                                },
                                                child: Text(
                                                  'SAVE',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            padding: EdgeInsets.all(10),
                                            side:
                                                BorderSide(color: Colors.green),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isEditing = true;
                                            });
                                          },
                                          child: Text(
                                            'EDIT',
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40),
                                    Text(
                                      _name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      _email,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  login() async {
    if (_formkey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Valid Details')),
      );
    }
  }
}

class FormValidator {
  static String? validateName(String? name) {
    if (name?.isEmpty ?? true) return "Please enter a name!";
    return null;
  }

  static String? validateEmail(String? email) {
    if (email?.isEmpty ?? true) return 'Please enter a email!';
    return null;
  }
}
