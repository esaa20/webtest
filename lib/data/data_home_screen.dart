
import 'package:flutter/material.dart';

List<Map<String, String>> DataHomeScreen = [
  {
    'name': 'الحلول الامنية',
    'image': 'images/h1.png',
  },
  {
    'name': 'االحلول المكتبية',
    'image': 'images/h2.png',
  },
  {
    'name': 'الحلول الصوتية',
    'image': 'images/h3.png',
  },
  {
    'name': 'الحلول المالية المصرفية',
    'image': 'images/h4.png',
  },
  {
    'name': 'الحلول البرمجية',
    'image': 'images/h5.png',
  },
];

List<Catoreys> df = [
  Catoreys(
      cagg: [
    'اجهزة دخول السيارات',
    'اجهزة كشف المتفجرات',
    'كاميرات المراقبة الحرارية و كشف ارقام السيارات',
    'الطائرات المسيرة',
    'اجهزة الاتصالات السلكية واللاسلكية',
    'اجهزة اصدار الباجات',
    'اجهزة بصمة الاصبع',
    'الاقفال الاكترونية الذكية',
    'انظمة تحديد المقع',
  ],
    img: [
      'images/c1.png',
      'images/c2.png',
      'images/c3.png',
      'images/c4.png',
      'images/c5.png',
      'images/c6.png',
      'images/c7.png',
      'images/c8.png',
      'images/c9.png',

    ]
  ),
  Catoreys(
      cagg: [
    'الحاسبات و السيرفرات',
    'سكنرات الارشفة الاكترونية',
    'انظمة التخزين و الارشفة الامنية',
    'الطابعات و اجهزة الاستنساخ',
    'السبورات الاكترونية',
    'اجهزة العرض',
    'شاشات عرض ذكية و تفاعلية',
  ],
    img: [
      'images/c10.png',
      'images/c34.png',
      'images/c12.png',
      'images/c13.png',
      'images/c14.png',
      'images/c15.png',
      'images/c16.png',
    ]
  ),
  Catoreys(
      cagg: [
    'منظومة المؤتمرات الفديوية',
    'منصات المؤتمرات',
    'منظومات الصوت و الترجمة الفورية',
  ],
    img: [
      'images/c17.png',
      'images/c18.png',
      'images/c19.png',
    ]
  ),
  Catoreys(
      cagg: [
    'ماكنات الاوراق المالية',
    'رازمات النقود',
    'قارئ شيكات',
    'الاستعلامات الالكترونية',
    'الفرع الرقمي الذكي',
  ],
    img: [
      'images/c20.png',
      'images/c21.png',
      'images/c22.png',
      'images/c23.png',
      'images/c24.png',
    ]
  ),
  Catoreys(
      cagg: [
    'الارشفة الالكترونية',
    'نظام ادارة الموارد البشرية',
    'نظام المالي',
    'نظام POS',
    'نظام ادارة المؤسسات',
    'نظام ادارة المستشفيات',
  ],
    img: [
      'images/c25.png',
      'images/c26.png',
      'images/c27.png',
      'images/c28.png',
      'images/c29.png',
      'images/c30.png',
    ]
  ),
];

class Catoreys {
  final List<String> cagg;
  final List<String> img;

  Catoreys({
    required this.cagg,
    required this.img
  });
}



