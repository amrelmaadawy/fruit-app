import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/more/views/profile_view.dart';
import 'package:fruit_app/features/more/views/support_view.dart';
import 'package:fruit_app/features/more/views/terms_and_conditions_view.dart';
import 'package:fruit_app/features/more/views/widgets/custom_profile_button.dart';

class MoreView extends StatefulWidget {
  const MoreView({super.key});

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  String? selectLanguage = 'English';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Fruite Market',
            style: TextStyle(
              fontSize: 5.5.sp,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: kBorderColor, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: CircleAvatar(
            radius: 10.sp,
            backgroundColor: Colors.white,

            child: Icon(Icons.person_outline, size: 11.sp, color: kBorderColor),
          ),
        ),
        SizedBox(height: 2.h),
        Text('Welcome , Fruite Market', style: TextStyle(fontSize: 5.sp)),
        SizedBox(height: 2.h),
        CustomElevatedButton(onPressed: () {}, text: 'Login'),
        SizedBox(height: 2.h),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomProfileButton(
                icon: Icons.person_outline,
                text: 'Profile',
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileView()),
                  );
                },
              ),
              CustomProfileButton(
                icon: Icons.menu_outlined,
                text: 'My Orders',
                ontap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => OrdersView()),
                  // );
                },
              ),
              CustomProfileButton(
                icon: Icons.favorite_outline,
                text: 'Favorites',
                ontap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FavoriteView()),
                  // );
                },
              ),
              CustomProfileButton(
                icon: Icons.language,
                text: 'Language',
                ontap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Select Language'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RadioGroup<String?>(
                              onChanged: (value) {
                                setState(() {
                                  selectLanguage = value;
                                });
                              },
                              groupValue: selectLanguage,
                              child: Column(
                                children: [
                                  RadioMenuButton<String>(
                                    value: 'English',
                                    groupValue: selectLanguage,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectLanguage = value;
                                      });
                                    },
                                    child: Text(
                                      'English',
                                      style: TextStyle(fontSize: 3.sp),
                                    ),
                                  ),
                                  RadioMenuButton<String>(
                                    value: 'Arabic',
                                    groupValue: selectLanguage,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectLanguage = value;
                                      });
                                    },
                                    child: Text(
                                      'العربيه',
                                      style: TextStyle(fontSize: 3.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          CustomElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            text: 'Apply',
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Center(
                              child: Text(
                                'Close',
                                style: TextStyle(
                                  fontSize: 4.sp,
                                  color: kBorderColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              CustomProfileButton(
                icon: Icons.headphones_outlined,
                text: 'Support',
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SupportView()),
                  );
                },
              ),
              CustomProfileButton(
                icon: Icons.policy_outlined,
                text: 'Terms & Conditions',
                ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsAndConditionsView(),
                  ),
                ),
              ),
              CustomProfileButton(icon: Icons.info_outline, text: 'about Us'),
            ],
          ),
        ),
      ],
    );
  }
}
