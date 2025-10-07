import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map> categories=[
      {
        'name':'Fashion',
        'icon':Icons.man
      },
      {
        'name':'Electronics',
        'icon':Icons.computer,
      },
      {
        'name':'Applications',
        "name":Icons.app_blocking
      },
      {
        'name':'Fashion',
        'icon':Icons.man
      },
      {
        'name':'Electronics',
        'icon':Icons.computer,
      },
      {
        'name':'Applications',
        'name':Icons.app_blocking
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              ),
               Text('categories',
              style: TextStyle(
               color: Colors.black54
              ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 80,
            child: ListView.separated(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,index){
                return Container(
                  color: Colors.redAccent,
                  width: 60,
                );
              },
              separatorBuilder: (_,index){


                return Column(
                  children: [
                    Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 148, 192, 150),
                         shape: BoxShape.circle
                      ),
                      child: Icon(categories[index]["icon"],
                      color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(categories[index]["name"],
                    style: TextStyle(
                      fontSize: 5
                      ),),
                  ],
                );
              },
              ),
          )
        ],
      ),
    );
  }
}