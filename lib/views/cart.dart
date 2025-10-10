import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('My cart'),
        scrolledUnderElevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        itemBuilder: (_,index){
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 3,
                )
              ]
            ),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: NetworkImage('https://fabrilife.com/products/6465ff10c753e-square.jpg'),
                    fit: BoxFit.cover,
                    )
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('white t shirt for man',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      ),
                      Text('\$50'),
                      SizedBox(height: 3,),
                       Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Icon(Icons.remove,color: Colors.white,size: 15,),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('5'),
                          SizedBox(width: 10,),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Icon(Icons.remove,color: Colors.white,size: 15,),
                            ),
                          ),
                        ],
                       )
                    ],
                  ),
                )
              ],
            ),
          );
        },
         separatorBuilder: (_,index){
          return SizedBox(
            height: 10,
          );
         },
          itemCount: 5,
          ),
    bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text('Total\$1200',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              ),
              ElevatedButton(
                onPressed:(){},
                 child: Text('cheaked out')
                )
             ],
          ),
        ),
      ),
    );
  }
}