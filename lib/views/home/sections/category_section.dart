import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_app/views/product_list_view.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Map> categories = [
    //   {
    //     'name': 'Fashion',
    //     'icon': Icons.man,
    //   },
    //   {
    //     'name': 'Electronics',
    //     'icon': Icons.computer,
    //   },
    //   {
    //     'name': 'Applications',
    //     'icon': Icons.app_blocking,
    //   },
    //   {
    //     'name': 'Fashion',
    //     'icon': Icons.man,
    //   },
    //   {
    //     'name': 'Electronics',
    //     'icon': Icons.computer,
    //   },
    //   {
    //     'name': 'Applications',
    //     'icon': Icons.app_blocking,
    //   },
    // ];

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                'View more',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection('categories').snapshots(),
             builder: (context,snapshot){

              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if(snapshot.hasError){
                print('Error is ${snapshot.error.toString()}');
              }
              return SizedBox(
            height: 80,
            child: ListView.separated(
              itemCount: snapshot.data!.docs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final category=snapshot.data!.docs[index];
                return InkWell(
                  onTap: () => Get.to(()=>ProductListView(category: category.data())),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color:Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(category['icon'],
                          // color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(category['name'],
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (_, index) => SizedBox(width: 10),
            ),
          );
             }
             ),
        ],
      ),
    );
  }
}
