import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final IconData? icon;
  final double height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,

      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).elevatedButtonTheme.style?.backgroundColor?.resolve({}) ?? Theme.of(context).primaryColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        child: isLoading
            ? const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  if (icon != null) ...[
                    Icon(icon, color: Theme.of(context).elevatedButtonTheme.style?.textStyle?.resolve({})?.color ?? Colors.white),
                    const SizedBox(width: 8),
                  ],

                  Text(
                    text,
                    style: TextStyle(
                      color: Theme.of(context).elevatedButtonTheme.style?.textStyle?.resolve({})?.color ?? Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
