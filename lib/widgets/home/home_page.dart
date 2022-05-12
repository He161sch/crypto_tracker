import 'package:flutter/material.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context, WidgetRef ref) {
    conroller = ref.read..
    model = ref.watch



    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Stonks",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    Text(model.month,
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 50,
                      child: TextField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              hintText: "Search",
                              prefix: const Icon(Icons.search),
                              fillColor: Colors.grey[800],
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none)))),
                    )
                  ]),
            ))
      ]),
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  
}
