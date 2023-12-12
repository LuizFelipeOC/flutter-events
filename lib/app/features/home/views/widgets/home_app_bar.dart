import 'package:flutter/material.dart';

class HomeAppBar extends PreferredSize {
  final Function()? onTap;
  HomeAppBar({
    super.key,
    this.onTap,
  }) : super(
          preferredSize: const Size.fromHeight(250),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: 50,
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Olá!\n',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      children: [
                        TextSpan(
                          text: 'Aprenda as últimas novidades do Flutter e se divirta muito!',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
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
        );
}
