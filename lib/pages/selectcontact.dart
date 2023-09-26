import 'package:chatapp/customeui/buttoncard.dart';
import 'package:chatapp/customeui/contactcard.dart';
import 'package:chatapp/model/chatmodel.dart';
import 'package:chatapp/model/contactmodel.dart';
import 'package:chatapp/screens/creategroup.dart';
import 'package:flutter/material.dart';

class SelectContact extends StatefulWidget {
  SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ContactModel> contacts = [
      ContactModel(name: "Swarnim", status: "live a life you'll remember"),
      ContactModel(name: "Agrani", status: "C'est la vie"),
      ContactModel(name: "Aarya", status: "on the way to god knows where!"),
      ContactModel(
          name: "Adeeb", status: "tears, fears and years will teach you.."),
      ContactModel(name: "Sneh", status: "Hustle!!"),
      ContactModel(name: "Nitin", status: "Bussyyyy!!!"),
      ContactModel(name: "Harsh", status: "so far so good!"),
      ContactModel(name: "Abhinav", status: "Happiness"),
      ContactModel(name: "Priya", status: "please leave message"),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Contact',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Text(
                '256 Contacts',
                style: TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 26,
                )),
            PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    child: Text('Invite a Friend'),
                    value: 'Invite a Friend',
                  ),
                  PopupMenuItem<String>(
                    child: Text('Contacts'),
                    value: 'Contacts',
                  ),
                  PopupMenuItem<String>(
                    child: Text('Refresh'),
                    value: 'Refresh',
                  ),
                  PopupMenuItem<String>(
                    child: Text('Help'),
                    value: 'Help',
                  ),
                ];
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: ((context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (build) => CreateGroup()));
                },
                child: ButtonCard(
                  icon: Icons.group,
                  name: "New Group",
                ),
              );
            } else if (index == 1) {
              return ButtonCard(icon: Icons.person_add, name: "New Contacts");
            }
            return ContactCard(
              contact: contacts[index - 2],
            );
          }),
        ));
  }
}
