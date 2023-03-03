import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/models/card_details.dart';

class Items extends StatefulWidget {
  final MarketCard item;
  Items({ required this.item});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  late double totalprice=0;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
child: Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.blue.shade50,
    image: DecorationImage(
      image: NetworkImage(
          'https://img.freepik.com/free-photo/panoramic-view-sunset-night_23-2148933764.jpg',

      ),
      fit: BoxFit.cover,
    )
  ),
  width: 150,


  child: Column(
    children: [
      Align(
        alignment: Alignment.topRight,
        child: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
      Image.network(
        widget.item.image,
        alignment: Alignment.center,
        fit: BoxFit.fill,
        height: 150,

      ),
      Text(
        widget.item.name,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'MagicSchoolOne',
          fontSize: 18,
        ),
      ),
      Text(
        '${widget.item.price} ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontFamily: 'MagicSchoolOne',
        ),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 50,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),

            ),
            color: Colors.red.shade900,
          ),
          child: MaterialButton(
            onPressed: (){
              setState(() {
                widget.item.counter++;
                totalprice+= widget.item.price;
                print( totalprice);
                print(widget.item.counter);

              });
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          )

        ),

      ),
  Container(child: Text('Amount is ${widget.item.counter}',style: TextStyle(color: Colors.white,fontSize: 10),)),
      Container(child: Text('total price is ${totalprice}',style: TextStyle(color: Colors.white,fontSize: 15),))


    ],
  ),

),
    );
  }
}
