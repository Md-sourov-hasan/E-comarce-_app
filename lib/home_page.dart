import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategory = 0; // 0 = Grocery, 1 = Pharmacy, 2 = Cookup

  final List<String> categories = ["Grocery", "Pharmacy", "Cookup"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            const Icon(Icons.location_on, color: Colors.purple),
            const SizedBox(width: 5),
            const Text("Dhaka",
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none, color: Colors.black),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Category Tabs (Clickable)
              Row(
                children: List.generate(categories.length, (index) {
                  bool selected = selectedCategory == index;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = index;
                        });
                      },
                      child: categoryTab(categories[index], selected),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 10),

              // 🔹 Show different content based on selected tab
              if (selectedCategory == 0) groceryContent(),
              if (selectedCategory == 1) pharmacyContent(),
              if (selectedCategory == 2) cookupContent(),
            ],
          ),
        ),
      ),

      // 🔹 Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
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

  // ===============================
  // 🔹 CATEGORY TAB UI
  // ===============================
  Widget categoryTab(String title, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.amber : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: Text(title,
          style: TextStyle(
              color: selected ? Colors.black : Colors.grey.shade700,
              fontWeight: FontWeight.w500)),
    );
  }

  // ===============================
  // 🔹 GROCERY CONTENT (Original design)
  // ===============================
  Widget groceryContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top banners
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              promoCard("Cleaner, Healthier",
                  "https://cdn-icons-png.flaticon.com/512/3075/3075977.png"),
              promoCard("Banglameds",
                  "https://cdn-icons-png.flaticon.com/512/2966/2966481.png"),
              promoCard("Special Offer",
                  "https://cdn-icons-png.flaticon.com/512/3075/3075933.png"),
              promoCard("Bank Offer",
                  "https://cdn-icons-png.flaticon.com/512/4298/4298373.png"),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Text("All Categories",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),

        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.3,
          children: [
            gridItem("Winter Collection",
                "https://cdn-icons-png.flaticon.com/512/763/763707.png"),
            gridItem("Flash Sales",
                "https://cdn-icons-png.flaticon.com/512/833/833472.png"),
            gridItem(
                "Food", "https://cdn-icons-png.flaticon.com/512/1046/1046784.png"),
            gridItem("Cleaning Supplies",
                "https://cdn-icons-png.flaticon.com/512/2927/2927344.png"),
            gridItem("Personal Care",
                "https://cdn-icons-png.flaticon.com/512/3081/3081976.png"),
            gridItem("Health & Wellness",
                "https://cdn-icons-png.flaticon.com/512/2966/2966459.png"),
          ],
        ),
      ],
    );
  }

  // ===============================
  // 🔹 PHARMACY CONTENT
  // ===============================
  Widget pharmacyContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("💊 Pharmacy Offers",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        promoCard("Health Essentials",
            "https://cdn-icons-png.flaticon.com/512/2966/2966459.png"),
        promoCard("Discounted Medicines",
            "https://cdn-icons-png.flaticon.com/512/3075/3075933.png"),
      ],
    );
  }

  // ===============================
  // 🔹 COOKUP CONTENT
  // ===============================
  Widget cookupContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("🍳 Cookup Specials",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        promoCard("Homemade Foods",
            "https://cdn-icons-png.flaticon.com/512/1046/1046784.png"),
        promoCard("Lunch Offers",
            "https://cdn-icons-png.flaticon.com/512/2927/2927344.png"),
      ],
    );
  }

  // ===============================
  // 🔹 REUSABLE PROMOCARD
  // ===============================
  Widget promoCard(String title, String imageUrl) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          opacity: 0.85,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(2, 2),
          )
        ],
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Text(title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14)),
      ),
    );
  }

  // ===============================
  // 🔹 REUSABLE GRID ITEM
  // ===============================
  Widget gridItem(String title, String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 60),
          const SizedBox(height: 8),
          Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.black87)),
        ],
      ),
    );
  }
}
