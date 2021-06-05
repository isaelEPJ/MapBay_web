import 'package:flutter/material.dart';
import 'package:mapbay/pages/model/category.dart';
import 'package:mapbay/utils/appRoutes.dart';

const CategoryDashboard = const [
  Category(
    id: '1',
    name: 'Cadastros',
    icon: Icons.add_to_photos_rounded,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Register,
  ),
  Category(
    id: '2',
    name: 'Escanear',
    icon: Icons.qr_code_scanner_outlined,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Crew,
  ),
  Category(
    id: '7',
    name: 'Financeiro',
    icon: Icons.attach_money_outlined,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Client,
  ),
  Category(
    id: '8',
    name: 'Relatorios',
    icon: Icons.receipt_long_outlined,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Crew,
  ),
  Category(
    id: '3',
    name: 'Embarque',
    icon: Icons.publish_rounded,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Boarding,
  ),
  Category(
    id: '4',
    name: 'Desembarque',
    icon: Icons.play_for_work_sharp,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Unload,
  ),
  Category(
    id: '1',
    name: 'Armazenar',
    icon: Icons.precision_manufacturing_outlined,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Storage,
  ),
  Category(
    id: '2',
    name: 'Operaçao',
    icon: Icons.playlist_add_check_outlined,
    color: Color(0xFFc0d6df),
    route: AppRoutes.Operation,
  ),
  Category(
    id: '11',
    name: 'Ajuda',
    icon: Icons.help,
    route: AppRoutes.Help,
  ),
];
