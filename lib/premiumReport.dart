import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_galleria/Home.dart';

class PremiumReport extends StatefulWidget {
  final int tabIndex;

  const PremiumReport({Key? key, required this.tabIndex}) : super(key: key);

  @override
  State<PremiumReport> createState() => _PremiumReportState();
}

class _PremiumReportState extends State<PremiumReport>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 5, vsync: this, initialIndex: widget.tabIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181824),
      appBar: AppBar(
        backgroundColor: const Color(0xff181824),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Premium Reports",
            style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Browse our Premium Reports",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(61, 63, 109, 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(100, 101, 138, 1),
                  ),
                  hintText: "Search Marriage, career, etc.",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(100, 101, 138, 1),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            TabBar(
              controller: _tabController,
              indicatorColor: const Color(0xff7495E8),
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromRGBO(100, 101, 138, 1),
              isScrollable: true,
              tabs: const [
                Tab(text: "Marriage"),
                Tab(text: "Career"),
                Tab(text: "Family"),
                Tab(text: "Health"),
                Tab(text: "Business"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildReportList(),
                  _buildReportList(),
                  _buildReportList(),
                  _buildReportList(),
                  _buildReportList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportList() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.w),
          child: Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(61, 63, 109, 0.2),
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage('assets/6.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "₹999.00",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 16.r,
                                weight: 2.w,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                "4.95/5",
                                style: GoogleFonts.poppins(
                                    color: Colors.amber,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  "Marriage Timing Prediction",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  "Discover the perfect timing for your marriage through the guidance of Vedic Astrology and an advanced AI-ML model.",
                  style: GoogleFonts.poppins(
                      color: Color.fromRGBO(100, 101, 138, 1), fontSize: 14),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(61, 63, 109, 0.2),
                        side: const BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("View",
                          style: GoogleFonts.poppins(color: Colors.white)),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      height: 35.h,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xff5C5CF4), Color(0xff7495E8)],
                        ),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text("Purchase",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(width: 4),
                            Icon(Icons.shopping_cart,
                                color: Colors.white, size: 16),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
