import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:my_app/Grocery_page.dart';
import 'package:my_app/all_store.dart';
import 'package:my_app/categories_page.dart';
import 'package:my_app/cookup_page.dart';
import 'package:my_app/customer_support.dart';
import 'package:my_app/egg_club.dart';
import 'package:my_app/help.dart';
import 'package:my_app/live_chat.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/offers.dart';
import 'package:my_app/pharmacy_page.dart';
import 'package:my_app/premium_care.dart';
import 'package:my_app/safety_center.dart';
import 'package:my_app/search-page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomIndex = 0;
  int topTabIndex = 0;

  final List<String> tabs = ["Grocery", "Pharmacy", "Cookup"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),

      drawer: _buildDrawer(),   // <-- Drawer যোগ করা হলো ✔️

      body: _getBody(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            bottomIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.grid_outline), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.search_outline), label: "Search"),
        ],
      ),
    );
  }

// ---------------- Drawer Structure ----------------
Widget _buildDrawer() {
  return Drawer(
    child:Container(
      color: Colors.white,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        
        // ----------- Drawer Header with Logo -----------
        DrawerHeader(
          child: Row(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png'),
              radius: 30,
              ),
              SizedBox(width: 0),
              Column(
              
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height:10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                 child: Text("Login",style: TextStyle(color: const Color.fromARGB(255, 136, 98, 143),fontSize: 20,fontWeight: FontWeight.bold),)
                 ),
                ],
              ),
            ],
          ),
        ),

        // --------------- Drawer Pages -----------------
        // HOME PAGE
      

        // ------------- More Pages You Want -------------
        // Example Settings Page
        ListTile(
          leading: const Icon(Icons.egg_sharp,color: Color.fromARGB(255, 202, 202, 106),),
          title: const Text("Egg Club",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EggClub()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.store,color: Colors.blueAccent),
          title: const Text("All Store",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AllStore()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.percent_outlined,color: Colors.blueAccent),
          title: const Text("All Store",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Offers()),
            );
          },
        ),
        Divider(height: 10,),
        ListTile(
          leading: const Icon(Icons.egg,color: Color.fromARGB(255, 241, 239, 79)),
          title: const Text("Premium Care",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PremiumCare()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.help_outline,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Help",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Help()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.phone_outlined,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Customer Service",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CustomerSupport()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.chat_outlined,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Live Chat",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LiveChat()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.safety_check_rounded,color: Color.fromARGB(255, 214, 89, 236)),
          title: const Text("Safety center",style: TextStyle(color: Colors.black,)),
          trailing: const Icon(Icons.arrow_forward_ios,size: 18,color: Colors.black,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SafetyCenter()),
            );
          },
        ),
        Divider(height: 10,),
        ListTile(
          leading: const Icon(Icons.egg,color: Color.fromARGB(240, 241, 234, 214)),
          title: const Text("Chaldal",style: TextStyle(color: Colors.black,fontStyle:FontStyle.italic)),
          // trailing: const Icon(Icons.arrow_forward_ios,size: 16,color: Colors.black,),
          // onTap: () {},
        ),
      ],
    ), 
  )
  );
}




// Widget buildDrawer() {
//   return Drawer(
//     child: Container(
//       color: Colors.white,
//       child: ListView(
//         padding: EdgeInsets.symmetric(vertical: 30),
//         children: [

//           // ---------------- Drawer Header ----------------
//           Container(
//             padding: EdgeInsets.all(20),
//             child: Row(
//               children: [

//                 // User Avatar
//                 CircleAvatar(
//                   radius: 28,
//                   backgroundColor: Colors.purple.shade100,
//                   backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png')
//                 ),

//                 SizedBox(width: 12),

//                 // Login Text + Language Switch
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Login",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.purple,
//                         ),
//                       ),

//                       SizedBox(height: 10),

//                       // Language Switch Button
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.purple.shade100,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             langButton("EN", true),
//                             langButton("বাংলা", false),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Divider(),

//           // ---------------- Menu Items ----------------
//           drawerItem(Icons.emoji_food_beverage, "Egg Club"),
//           drawerItem(Icons.store, "All Stores"),
//           drawerItem(Icons.local_offer, "Offers"),
//           drawerItem(Icons.star, "Premium Care"),
//           drawerItem(Icons.help_outline, "Help"),
//           drawerItem(Icons.support_agent, "Customer Support"),
//           drawerItem(Icons.chat, "Live Chat"),
//           drawerItem(Icons.security, "Safety Center"),

//           SizedBox(height: 30),

//           // ---------------- Footer ----------------
//           Padding(
//             padding: const EdgeInsets.only(left: 20, bottom: 20),
//             child: Row(
//               children: [
//                 Icon(Icons.egg, color: Colors.orange),
//                 SizedBox(width: 6),
//                 Text("Chaldal",
//                     style: TextStyle(
//                         fontSize: 16, color: Colors.black54)),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 20),
//                   child: Text("10.4.9",
//                       style: TextStyle(color: Colors.black45)),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// // Drawer Item Builder
// Widget drawerItem(IconData icon, String title) {
//   return ListTile(
//     leading: Icon(icon, color: Colors.purple),
//     title: Text(title, style: TextStyle(fontSize: 16)),
//     trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
//     onTap: () {},
//   );
// }

// // Language Button
// Widget langButton(String text, bool active) {
//   return Container(
//     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//     decoration: BoxDecoration(
//       color: active ? Colors.white : Colors.transparent,
//       borderRadius: BorderRadius.circular(20),
//     ),
//     child: Text(
//       text,
//       style: TextStyle(
//         color: Colors.purple,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   );
// }








  // ---------- AppBar ----------
  AppBar _buildAppBar() {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: Colors.white,
      elevation: 1,
      iconTheme: const IconThemeData(color: Colors.black), // drawer icon color
      title: Row(
        children: const [
          SizedBox(width: 5),
          Icon(Icons.location_on, color: Colors.purple),
          SizedBox(width: 5),
          Text(
            "Dhaka",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.notifications_none, color: Colors.black),
        ),
      ],
    );
  }

  // ---------- Body ----------
  Widget _getBody() {
    if (bottomIndex == 0) {
      return Column(
        children: [
          Row(
            children: List.generate(
              tabs.length,
              (index) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      topTabIndex = index;
                    });
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: topTabIndex == index
                          ? Colors.amber
                          : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        color: topTabIndex == index
                            ? Colors.black
                            : Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: IndexedStack(
              index: topTabIndex,
              children: const [
                GroceryPage(),
                PharmacyPage(),
                CookupPage(),
              ],
            ),
          ),
        ],
      );
    } else if (bottomIndex == 1) {
      return const CategoriesPage();
    } else {
      return const SearchPage();
    }
  }
}


// ----------------------------- //
// 🏠 Grocery Page
// ----------------------------- //
// class GroceryPage extends StatelessWidget {
//   const GroceryPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Top banners
//           SizedBox(
//             height: 200,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 promoCard("Cleaner, Healthier",
//                     "https://cdn-icons-png.flaticon.com/512/3075/3075977.png"),
//                 promoCard("Banglameds",
//                     "https://cdn-icons-png.flaticon.com/512/2966/2966481.png"),
//                 promoCard("Special Offer",
//                     "https://cdn-icons-png.flaticon.com/512/3075/3075933.png"),
//                 promoCard("Bank Offer",
//                     "https://cdn-icons-png.flaticon.com/512/4298/4298373.png"),
//               ],
//             ),
//           ),
//           const SizedBox(height: 15),

//           const Text(
//             "All Categories",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 10),

//           GridView.count(
//             physics: const NeverScrollableScrollPhysics(),
//             crossAxisCount: 2,
//             shrinkWrap: true,
//             mainAxisSpacing: 10,
//             crossAxisSpacing: 10,
//             childAspectRatio: 1.3,
//             children: [
//               gridItem("Winter Collection",
//                   "https://cdn-icons-png.flaticon.com/512/763/763707.png"),
//               gridItem("Flash Sales",
//                   "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
//               gridItem("Food",
//                   "https://cdn-icons-png.flaticon.com/512/1046/1046784.png"),
//               gridItem("Cleaning Supplies",
//                   "https://cdn-icons-png.flaticon.com/512/2927/2927344.png"),
//               gridItem("Personal Care",
//                   "https://cdn-icons-png.flaticon.com/512/3081/3081976.png"),
//               gridItem("Health & Wellness",
//                   "https://cdn-icons-png.flaticon.com/512/2966/2966459.png"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   static Widget promoCard(String title, String imageUrl) {
//     return Container(
//       width: 180,
//       margin: const EdgeInsets.only(right: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         image: DecorationImage(
//           image: NetworkImage(imageUrl),
//           fit: BoxFit.cover,
//           opacity: 0.85,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4,
//             offset: const Offset(2, 2),
//           )
//         ],
//       ),
//       child: Container(
//         alignment: Alignment.bottomLeft,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           gradient: LinearGradient(
//             colors: [Colors.black.withOpacity(0.5), Colors.transparent],
//             begin: Alignment.bottomCenter,
//             end: Alignment.topCenter,
//           ),
//         ),
//         child: Text(
//           title,
//           style: const TextStyle(
//               color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
//         ),
//       ),
//     );
//   }

//   static Widget gridItem(String title, String imageUrl) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey.shade100,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network(imageUrl, height: 60),
//           const SizedBox(height: 8),
//           Text(title,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w500, color: Colors.black87)),
//         ],
//       ),
//     );
//   }
// }

// ----------------------------- //
// 💊 Pharmacy Page
// ----------------------------- //
// class PharmacyPage extends StatelessWidget {
//   const PharmacyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         "Pharmacy Page (Empty)",
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// ----------------------------- //
// 🍳 Cookup Page
// ----------------------------- //
// class CookupPage extends StatelessWidget {
//   const CookupPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         "Cookup Page (Empty)",
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// ----------------------------- //
// 📦 Categories Page
// ----------------------------- //
// class CategoriesPage extends StatelessWidget {
//   const CategoriesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         "This is Categories Page",
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }

// // ----------------------------- //
// // 🔍 Search Page
// // ----------------------------- //
// class SearchPage extends StatelessWidget {
//   const SearchPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         "This is Search Page",
//         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
