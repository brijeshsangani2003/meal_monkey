import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/common_button.dart';
import 'package:meal_monkey/common_widget/common_textfield.dart';

class Payment_Details extends StatefulWidget {
  const Payment_Details({Key? key}) : super(key: key);

  @override
  State<Payment_Details> createState() => _Payment_DetailsState();
}

class _Payment_DetailsState extends State<Payment_Details> {
  bool isswitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  InkResponse(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Payment Details',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Spacer(),
                  InkResponse(
                    onTap: () {},
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Customize your payment method',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 0,
                      blurRadius: 50,
                      offset: Offset(3, 3))
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cash/Card on delivery',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.check,
                          color: Color(0xffFC6011),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/visa.png',
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          '**** **     2187',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 30,
                          shape: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffFC6011),
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'Delete Card',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFC6011),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Text(
                      'Other Methods',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                      //isDismissible: false,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      context: context,
                      builder: (context) => StatefulBuilder(
                            builder: (context, setState) => Container(
                              height: 610,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Add Credit/Debit Card",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.close),
                                        )
                                      ],
                                    ),
                                    Divider(
                                      thickness: 0.5,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    common_textformfield(
                                      hintText: 'Card Number',
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Expiry',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35,
                                        ),
                                        Expanded(
                                          child: common_textformfield(
                                            keyboardType: TextInputType.number,
                                            hintText: 'MM',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Expanded(
                                          child: common_textformfield(
                                            keyboardType: TextInputType.number,
                                            hintText: 'YY',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    common_textformfield(
                                      hintText: 'Security Code',
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    common_textformfield(
                                      hintText: 'First Name',
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    common_textformfield(
                                      hintText: 'Last Name',
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'You can remove this card',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        Spacer(),
                                        Switch.adaptive(
                                          value: isswitched,
                                          onChanged: (value) {
                                            setState(() {
                                              isswitched = value;
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      height: 55,
                                      minWidth: double.infinity,
                                      color: Color(0xffFC6011),
                                      shape: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          borderSide: BorderSide.none),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            (Icons.add),
                                            color: Colors.white,
                                            size: 28,
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          Text(
                                            'Add Card',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
                height: 55,
                color: Color(0xffFC6011),
                shape: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none),
                child: Row(
                  children: [
                    Icon(
                      (Icons.add),
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Add Another Credit/Debit Card',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
