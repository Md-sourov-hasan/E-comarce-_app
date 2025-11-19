import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:my_app/Grocery_page.dart';
import 'package:my_app/categories_page.dart';
import 'package:my_app/cookup_page.dart';
import 'package:my_app/pharmacy_page.dart';
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
      color: Colors.purple,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        
        // ----------- Drawer Header with Logo -----------
        DrawerHeader(
          child: Row(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png'),
              radius: 40,
              ),
              SizedBox(width: 10),
              Column(
              
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ------ YOUR LOGO HERE ------
                  // Example:
                  // Image.asset("assets/logo.png", height: 60),
                  // তুমি তোমার logo এখানে বসাবে ↓↓↓
                  // TODO: Add your logo image here
                  
                  const SizedBox(height: 10),
              
                  const Text(
                    "My App",
                    style: TextStyle(color: Colors.white, fontSize: 22),
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
          leading: const Icon(Icons.settings,color: Colors.white,),
          title: const Text("Settings",style: TextStyle(color: Colors.white,)),

          // ------ YOUR SETTINGS PAGE HERE ------
          // TODO: Replace with your own page
          // Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsPage()));

          onTap: () {},
        ),

        // Logout
        ListTile(
          leading: const Icon(Icons.logout,color: Colors.white,),
          title: const Text("Logout",style: TextStyle(color: Colors.white,)),
          onTap: () {
            // TODO: Add your logout logic
          },
        ),

      ],
    ),
  )
  );
}

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
