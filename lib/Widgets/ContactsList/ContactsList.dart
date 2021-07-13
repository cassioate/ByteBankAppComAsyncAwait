import 'package:bytebank/Widgets/ContactForm/ContactForm.dart';
import 'package:bytebank/Widgets/ContactsList/ContactsListFutureBuilder.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatefulWidget {
  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  adicionar() {
    Navigator.of(context)
        .push(
          MaterialPageRoute(
            builder: (context) => ContactForm(),
          ),
        )
        .then((value) => setState(() => {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ContactsListFutureBuilder(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => adicionar(),
        child: Icon(Icons.add),
      ),
    );
  }
}
