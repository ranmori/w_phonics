import 'package:flutter/material.dart';

class GroupItem extends StatelessWidget {
  const GroupItem({super.key});

  @override
  Widget build(BuildContext context) {
    var dummyListOfCharacters = ["s", "ou", "j", "ee", "er", "f"];
    return Container(
      height: 400,
      child: Stack(
        children: [
          Positioned(left: 16, right: 16, top: 0, child: _buildHeading()),
          Positioned(
            top: 110,
            left: 24,
            right: 24,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.85,
              height: 350,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: dummyListOfCharacters.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ),
              
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16),),
                    child: Center(child: Text(dummyListOfCharacters[index])),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildHeading() {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/group_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Center(
          child: Text(
            "Group 1",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
