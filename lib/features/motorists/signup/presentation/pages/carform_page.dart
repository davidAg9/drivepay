import 'package:drivepay/core/constants/enums.dart';
import 'package:drivepay/core/utilities/dep_injection.dart';
import 'package:drivepay/features/motorists/models/car.dart';
import 'package:drivepay/features/motorists/models/numberplate.dart';
import 'package:drivepay/features/motorists/signup/presentation/blocs/car_form/car_form_bloc.dart';
import 'package:drivepay/features/motorists/signup/presentation/blocs/registration/registration_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  late final List<CarType> carTypesEnum;
  late int carIndex = cartypes.length - 1;
  late int brandIndex = brands.length - 1;

  late Car car;
  @override
  void initState() {
    _formkey = GlobalKey<FormState>();
    _brandNameController = TextEditingController();
    _licensePlateController = TextEditingController();
    brands = CarBrand.values.map((e) => e.name).toList();
    carTypesEnum = CarType.values;
    cartypes = CarType.values.map((e) => e.name).toList();
    carIndex = cartypes.length - 1;
    brandIndex = brands.length - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CarFormBloc>(
      create: (context) => getIt<CarFormBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Search for brand"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () async {
                  final res = await showSearch<Car?>(context: context, delegate: CarSearchPage());
                  if (res != null) {
                    car = res;
                  }
                },
                icon: const Icon(Icons.search_rounded))
          ],
        ),
        body: BlocConsumer<CarFormBloc, CarFormState>(
          listener: (context, state) {
            state.maybeWhen(orElse: () {});
          },
          builder: (context, state) {
            return Padding(
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
                        final car = Car(
                            brandName: _brandNameController.text,
                            modelName: "",
                            carType: carTypesEnum[carIndex],
                            numberplate: NumberPlate(countryOrigin: "GH", plateNumber: _licensePlateController.text));
                        final userid = context.read<RegistrationBloc>().user.uid;
                        if (_formkey.currentState!.validate()) {
                          context.read<CarFormBloc>().add(CarFormEvent.addCar(car: car, toUserId: userid));
                        }
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
            );
          },
        ),
      ),
    );
  }
}
