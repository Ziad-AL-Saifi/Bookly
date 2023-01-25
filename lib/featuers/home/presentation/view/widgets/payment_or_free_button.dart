import 'package:flutter/material.dart';

class PaymentOrFreeButton extends StatelessWidget {
  const PaymentOrFreeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 48,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)))),
            onPressed: () {},
            child: const Center(
                child: Text(
              r'99.88 $',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Container(
          width: 150,
          height: 48,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                )),
            onPressed: () {},
            child: const Center(
                child: Text(
              'Free preview',
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ],
    );
  }
}
