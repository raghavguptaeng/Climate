import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = "One";
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardBody(
                    cardText: "Bitcoin",
                    price: "105",
                  ),
                ),
                Expanded(
                  child: CardBody(
                    cardText: "Ethereum",
                    price: "102",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardBody(
                    cardText: "Litecoin",
                    price: "108",
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Text(
                            "",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Expanded(
                          child: DropdownButton<String>(
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(color: Colors.deepPurple),
                            underline: Container(
                              height: 2,
                              color: Colors.deepPurpleAccent,
                            ),
                            value: dropdownValue,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['One', 'Two', 'Free', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(25),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF211E34),
                    ),
                  )
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              print(dropdownValue);
            },
            child: Container(
              padding: EdgeInsets.all(20),
              color: Color(0xFF49FF4C),
              child: Center(
                child: Text(
                    "Calculate",
                    style: TextStyle(
                    color: Color(0xFFF10753),
                      fontSize: 35
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardBody extends StatelessWidget {
  final String cardText;
  final String price;
  CardBody({this.price, this.cardText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Text(
              cardText,
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: Text(
              price,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          )
        ],
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF211E34),
      ),
    );
  }
}
