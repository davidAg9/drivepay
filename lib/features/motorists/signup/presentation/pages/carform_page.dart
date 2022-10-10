import 'package:drivepay/core/constants/enums.dart';
import 'package:drivepay/features/motorists/models/car.dart';
import 'package:drivepay/features/motorists/motorist_hompage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:drivepay/core/utilities/form_validator.dart';
import 'package:drivepay/features/motorists/signup/presentation/pages/car_search_page.dart';

class CarFormPage extends StatefulWidget {
  const CarFormPage({super.key});

  @override
  State<CarFormPage> createState() => _CarFormPageState();
}

class _CarFormPageState extends State<CarFormPage> {
  late final GlobalKey<FormState> _formkey;
  late final TextEditingController _brandNameController;
  late final TextEditingController _licensePlateController;
  late final List<String> brands;
  late final List<String> cartypes;
  late int carIndex = cartypes.length - 1;
  late int brandIndex = brands.length - 1;
  @override
  void initState() {
    _formkey = GlobalKey<FormState>();
    _brandNameController = TextEditingController();
    _licensePlateController = TextEditingController();
    brands = CarBrand.values.map((e) => e.name).toList();
    cartypes = CarType.values.map((e) => e.name).toList();
    carIndex = cartypes.length - 1;
    brandIndex = brands.length - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search for brand"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () async {
                await showSearch(context: context, delegate: CarSearchPage());
              },
              icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              Text(
                "Car Form",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: "eg.toyota",
                    labelText: "Car Brand Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  value: brands[brandIndex],
                  items: brands
                      .map(
                        (brand) => DropdownMenuItem<String>(
                          value: brand,
                          child: Text(brand),
                          // onTap: (){},
                        ),
                      )
                      .toList(),
                  onChanged: null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: "eg.suv",
                    labelText: "Car Type",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  value: cartypes[carIndex],
                  items: cartypes
                      .map(
                        (type) => DropdownMenuItem<String>(
                          value: type,
                          child: Text(type),
                          // onTap: (){},
                        ),
                      )
                      .toList(),
                  onChanged: null,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "GT-932342",
                  labelText: "License Plate Number",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                ),
                key: const Key("license-plate"),
                controller: _licensePlateController,
                validator: Validator.licenseplate,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  //TODO:IMPLEMENT REGISTRATION ON PRESSED

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MTHomePage(),
                      ));
                },
                child: const Text(
                  "Complete",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
