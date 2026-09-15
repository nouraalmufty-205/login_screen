import 'package:flutter/material.dart';

void showCheckoutSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (context) => Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Checkout",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const Divider(color: Color(0xffE2E2E2)),
          _CheckoutRow(label: "Delivery", value: "Select Method"),
          const Divider(color: Color(0xffE2E2E2)),
          _CheckoutRow(
            label: "Payment",
            valueWidget: Image.asset("assets/card.png", height: 20),
          ),
          const Divider(color: Color(0xffE2E2E2)),
          _CheckoutRow(label: "Promo Code", value: "Pick discount"),
          const Divider(color: Color(0xffE2E2E2)),
          _CheckoutRow(
            label: "Total Cost",
            value: "\$13.97",
            valueStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Divider(color: Color(0xffE2E2E2)),
          const SizedBox(height: 16),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14),
              children: [
                TextSpan(text: "By placing an order you agree to our\n"),
                TextSpan(
                  text: "Terms",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(text: " And "),
                TextSpan(
                  text: "Conditions",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff53B175),
                minimumSize: const Size.fromHeight(54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                // place order logic here
              },
              child: const Text(
                "Place Order",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class _CheckoutRow extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;
  final TextStyle? valueStyle;

  const _CheckoutRow({
    required this.label,
    this.value,
    this.valueWidget,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: Color(0xff7C7C7C), fontSize: 16),
          ),
          Row(
            children: [
              valueWidget ??
                  Text(
                    value ?? "",
                    style:
                        valueStyle ??
                        const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                  ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
