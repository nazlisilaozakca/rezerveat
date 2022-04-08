import 'package:flutter/material.dart';
import 'package:login_and_signup/components/text_field_container.dart';
import 'package:login_and_signup/constants.dart';

class SelectGenderMenu extends StatefulWidget {
  const SelectGenderMenu({Key? key}) : super(key: key);

  @override
  State<SelectGenderMenu> createState() => _SelectGenderMenuState();
}

class _SelectGenderMenuState extends State<SelectGenderMenu> {
  String dropdownValue = 'Erkek';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(Icons.account_circle),
          SizedBox(
            width: size.width * 0.04,
          ),
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(
              Icons.account_circle,
            ),
            iconEnabledColor: kPrimaryColor,
            elevation: 16,
            style: const TextStyle(
              color: Colors.black,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['Erkek', 'Kadın', 'Diğer']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
