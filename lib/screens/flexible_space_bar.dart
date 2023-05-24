import 'package:flutter/material.dart';

class FlexSpaceBar extends StatefulWidget {
  const FlexSpaceBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FlexSpaceBarState createState() => _FlexSpaceBarState();
}

class _FlexSpaceBarState extends State<FlexSpaceBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.cyan,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Data Page"),
            )),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
          addDetails("one", "details of one"),
        ]))
      ],
    )));
  }
}

Widget addDetails(
  String name,
  String details,
) {
  return ListTile(
    title: Text(name),
    subtitle: Text(details),
    leading: CircleAvatar(child: Text(name[0])),
  );
}
