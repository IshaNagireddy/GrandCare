import 'package:GrandCare/main.dart';
import 'package:GrandCare/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Requests_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<Requests_Page> {
  final _formKey = GlobalKey<FormState>();
  String? _town;
  String? _addressType;
  String? _gender;
  String? _maritalStatus;
  String? _race;
  String? _ethnicity;
  String? _service;
  DateTime? _selectedDate;
  final _dateController = TextEditingController();
  List<String> _interest = [];
  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  String? validatePhoneNumber(String? value) {
    String pattern = r'^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$';
    RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                const Text(
                  'PERSONAL INFORMATION',
                  style: TextStyle(
                    fontSize: 12, // Adjust the font size as needed
                    fontWeight: FontWeight.bold, // Make the title bold
                  ),
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'First Name*'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Last Name*'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _town,
                  decoration: InputDecoration(labelText: 'Town of Residence*'),
                  items: <String>[
                    'Ashburnham',
                    'Ashby',
                    'Auburn',
                    'Ayer',
                    'Barre',
                    'Bellingham',
                    'Berlin',
                    'Blackstone',
                    'Bolton',
                    'Boylston',
                    'Brookfield',
                    'Charlton',
                    'Clinton',
                    'Douglas',
                    'Dudley',
                    'East Brookfield',
                    'Fitchburg',
                    'Franklin',
                    'Gardner',
                    'Grafton',
                    'Groton',
                    'Hardwick',
                    'Holden',
                    'Hopedale',
                    'Hubbardston',
                    'Lancaster',
                    'Leicester',
                    'Leominster',
                    'Lunenburg',
                    'Medway',
                    'Mendon',
                    'Milford',
                    'Millbury',
                    'Millville',
                    'New Braintree',
                    'North Brookfield',
                    'Northbridge',
                    'Oakham',
                    'Oxford',
                    'Paxton',
                    'Pepperell',
                    'Princeton',
                    'Rutland',
                    'Shirley',
                    'Shrewsbury',
                    'Southbridge',
                    'Spencer',
                    'Sterling',
                    'Sturbridge',
                    'Sutton',
                    'Templeton',
                    'Townsend',
                    'Upton',
                    'Uxbridge',
                    'Warren',
                    'Webster',
                    'West Boylston',
                    'West Brookfield',
                    'Westminster',
                    'Winchendon',
                    'Worcester'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _town = newValue;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                ),
                GestureDetector(
                  // Wrap the TextFormField with a GestureDetector
                  onTap: () async {
                    final DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate ?? DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null && pickedDate != _selectedDate) {
                      setState(() {
                        _selectedDate = pickedDate;
                        _dateController.text =
                            DateFormat('yyyy-MM-dd').format(_selectedDate!);
                      });
                    }
                  },
                  child: AbsorbPointer(
                    // Use AbsorbPointer to prevent the keyboard from appearing
                    child: TextFormField(
                      controller: _dateController,
                      readOnly: true, // Make the field uneditable
                      decoration: InputDecoration(
                        labelText: 'Date of Birth*',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () async {
                            final DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: _selectedDate ?? DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                            );
                            if (pickedDate != null &&
                                pickedDate != _selectedDate) {
                              setState(() {
                                _selectedDate = pickedDate;
                                _dateController.text = DateFormat('yyyy-MM-dd')
                                    .format(_selectedDate!);
                              });
                            }
                          },
                        ),
                      ),
                      validator: (String? value) {
                        if (_selectedDate == null) {
                          return 'Please select your date of birth';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone Number*',
                  ),
                  validator: validatePhoneNumber,
                  inputFormatters: [PhoneNumberFormatter()],
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email Address*'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    }
                    // Regular expression for email validation
                    String pattern =
                        r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
                    RegExp regExp = RegExp(pattern);
                    if (!regExp.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _addressType,
                  decoration: InputDecoration(labelText: 'Address Type*'),
                  items: <String>['Home', 'Mailing', 'Unknown', "Work"]
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _addressType = newValue;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Address Line 1*'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Address Line 2'),
                ),
                DropdownButtonFormField<String>(
                  value: _gender,
                  decoration: InputDecoration(labelText: 'Gender'),
                  items: <String>[
                    'Female',
                    'Male',
                    'Non-Binary',
                    'Other',
                    'Trans Man',
                    'Trans Woman',
                    'Undisclosed'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _gender = newValue;
                    });
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _maritalStatus,
                  decoration: InputDecoration(labelText: 'Marital Status'),
                  items: <String>[
                    'Divorced',
                    'Domestic Partner',
                    'Married/Civil Union',
                    'Separated',
                    'Single/Never Married',
                    'Undisclosed',
                    'Widowed'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _maritalStatus = newValue;
                    });
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _race,
                  decoration: InputDecoration(labelText: 'Race'),
                  items: <String>[
                    'American Indian Alaska Native',
                    'Asian',
                    'Black/African-American',
                    'Native Hawaiian or Pacific Islander',
                    'Other Race',
                    'Undisclosed',
                    'White'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _race = newValue;
                    });
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _ethnicity,
                  decoration: InputDecoration(labelText: 'Ethnicity'),
                  items: <String>[
                    'Hispanic or Latino',
                    'Not Hispanic or Latino',
                    "Undisclosed"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _ethnicity = newValue;
                    });
                  },
                ),
                Container(
                  height: 50,
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                const Text(
                  'SUPPLEMENTAL QUESTIONS',
                  style: TextStyle(
                    fontSize: 12, // Adjust the font size as needed
                    fontWeight: FontWeight.bold, // Make the title bold
                  ),
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                TextFormField(
                  keyboardType:
                      TextInputType.number, // Display numeric keyboard
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly, // Allow only digits
                  ],
                  decoration:
                      InputDecoration(labelText: 'Gross Monthly Income'),
                ),
                TextFormField(
                  keyboardType:
                      TextInputType.number, // Display numeric keyboard
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly, // Allow only digits
                  ],
                  decoration:
                      InputDecoration(labelText: 'Gross Monthly Expenses'),
                ),
                Container(
                  height: 50,
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                const Text(
                  'PROGRAM INTERESTS',
                  style: TextStyle(
                    fontSize: 12, // Adjust the font size as needed
                    fontWeight: FontWeight.bold, // Make the title bold
                  ),
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                MultiSelectDialogField(
                  buttonText: Text(
                    "Select",
                    textAlign: TextAlign.center,
                  ),
                  items: [
                    MultiSelectItem("childcare", "Childcare"),
                    MultiSelectItem("financial aid", "Financial Aid"),
                    MultiSelectItem("food assistance", "Food Assistance"),
                    MultiSelectItem(
                        "general care management", "General Care Management"),
                    MultiSelectItem("hair salon/barber services",
                        "Hair Salon/Barber Services"),
                    MultiSelectItem("housing", "Housing"),
                    MultiSelectItem("service animal", "Service Animal"),
                    MultiSelectItem("legal services", "Legal Services"),
                  ],
                  title: Text(
                    'Are You Interested in a Specific Program?',
                  ),
                  onConfirm: (values) {
                    setState(() {
                      _interest = values;
                    });
                  },
                ),
                Container(
                  height: 50,
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                const Text(
                  'SERVICES',
                  style: TextStyle(
                    fontSize: 12, // Adjust the font size as needed
                    fontWeight: FontWeight.bold, // Make the title bold
                  ),
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                DropdownButtonFormField<String>(
                  value: _service,
                  decoration: InputDecoration(labelText: 'Choose a Service*'),
                  items: <String>[
                    "Benefits Navigation ",
                    "Clothing & Household Goods",
                    "Education",
                    "Employ",
                    "Food Assistance",
                    "Housing & Shelter",
                    "Income Support",
                    "Individual & Family Support",
                    "Money Management",
                    "Social Enrichment",
                    "Spiritual Enrichment",
                    "Sports & Recreation",
                    "Transportation",
                    "Utilities",
                    "Wellness"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _service = newValue;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Reason for request*',
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: null,
                  maxLines: null,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please describe your request for this service';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Electronic Signature*',
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please provide your consent';
                    }
                    return null;
                  },
                ),
                Container(
                  height: 50,
                ),
                Container(
                  width:
                      100, // Set the width to make the divider shorter horizontally
                  child: Divider(
                    color: Colors.grey,
                    height: 20.0, // Adjust the height as needed
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Comments (Optional)',
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    hintText: 'Enter any additional comments here...',
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: null,
                  maxLines: null,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process data.

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text.replaceAll(RegExp(r'\D'), '');
    StringBuffer newTextBuffer = StringBuffer();
    int selectionIndex = newValue.selection.end;

    if (newText.length > 0) {
      newTextBuffer.write('(');
    }
    if (newText.length > 3) {
      newTextBuffer.write(newText.substring(0, 3) + ') ');
    } else {
      newTextBuffer.write(newText.substring(0, newText.length));
    }
    if (newText.length > 6) {
      newTextBuffer.write(newText.substring(3, 6) + '-');
    } else if (newText.length > 3) {
      newTextBuffer.write(newText.substring(3, newText.length));
    }
    if (newText.length > 10) {
      newTextBuffer.write(newText.substring(6, 10));
    } else if (newText.length > 6) {
      newTextBuffer.write(newText.substring(6, newText.length));
    }

    return TextEditingValue(
      text: newTextBuffer.toString(),
    );
  }
}
