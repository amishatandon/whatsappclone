import 'package:chatapp/model/groupmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvatarCard extends StatelessWidget {
  const AvatarCard({Key? key, required this.names}) : super(key: key);
  final GroupModel names;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 3,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 23,
                child: SvgPicture.asset(
                  "assets/persons.svg",
                  color: Colors.white,
                  height: 30,
                  width: 30,
                ),
                backgroundColor: Colors.blueGrey[200],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 10,
                  child: Icon(
                    Icons.clear,
                    color: Colors.white,
                    size: 13,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            names.name,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
