import 'package:amazon_clone_tutorial/common/widgets/loader.dart';
import 'package:amazon_clone_tutorial/constants/global_variables.dart';
import 'package:amazon_clone_tutorial/features/account/widgets/single_product.dart';
import 'package:amazon_clone_tutorial/models/order.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://images.unsplash.com/photo-1533859583213-c4e11b597ee0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVkZHl8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1533859583213-c4e11b597ee0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVkZHl8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1533859583213-c4e11b597ee0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVkZHl8ZW58MHx8MHx8fDA%3D',
  ];
  // List<Order>? orders;
  // final AccountServices accountServices = AccountServices();

  @override
  void initState() {
    super.initState();
    fetchOrders();
  }

  void fetchOrders() async {
    // orders = await accountServices.fetchMyOrders(context: context);
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // return orders == null
    //     ? const Loader()
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
            // scrollDirection: Axis.horizontal,
            // itemCount: orders!.length,
            // itemBuilder: (context, index) {
            //   return GestureDetector(
            //     onTap: () {
            //       Navigator.pushNamed(
            //         context,
            //         OrderDetailScreen.routeName,
            //         arguments: orders![index],
            //       );
            //     },
            //  child: SingleProduct(

            //image: orders![index].products[0].images[0],
          ),
          //  );
          //  },
          // ),
        ),
      ],
    );
  }
}
