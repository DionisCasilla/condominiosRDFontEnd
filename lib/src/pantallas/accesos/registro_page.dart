import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroPage extends StatefulWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  State<RegistroPage> createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  String tipoDocumento = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kIsWeb
          ? null
          : AppBar(
              centerTitle: true,
              title: RichText(
                text: TextSpan(
                  text: 'Condominios',
                  style: GoogleFonts.lato(fontSize: 32, color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(text: ' RD', style: TextStyle(fontWeight: FontWeight.w700)),
                    // TextSpan(text: ' world!'),
                  ],
                ),
              ),
            ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            // constraints: BoxConstraints(maxWidth: 360),
            alignment: Alignment.center,
            padding: kIsWeb ? EdgeInsets.only(left: 20, right: 20) : EdgeInsets.only(top: 10),
            child: SizedBox(
              width: kIsWeb ? 540 : 354,
              child: Stack(
                children: [
                  Container(
                    // width: 360,
                    height: 600,
                    decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Container(
                      // width: 360,
                      height: 750,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          kIsWeb
                              ? SizedBox(
                                  height: 10,
                                )
                              : SizedBox(),
                          kIsWeb
                              ? RichText(
                                  text: TextSpan(
                                    text: 'Condominios',
                                    style: GoogleFonts.lato(fontSize: 32, color: Colors.black),
                                    children: const <TextSpan>[
                                      TextSpan(text: ' RD', style: TextStyle(fontWeight: FontWeight.w700)),
                                      // TextSpan(text: ' world!'),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                          SizedBox(
                            height: 10,
                          ),
                          kIsWeb ? Divider() : SizedBox(),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Registro de nuevo cliente",
                            style: TextStyle(fontSize: 18),
                          ),
                          Column(
                            children: [
                              BootstrapCol(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: TextFormField(
                                      cursorHeight: 20,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 8, right: 8),
                                          border: OutlineInputBorder(),
                                          hintText: 'Nombre residencial o edificio ',

                                          //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                          suffixIcon: Container(
                                            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                                            child: Icon(FontAwesomeIcons.solidBuilding, color: Colors.black, size: 16),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: TextFormField(
                                      cursorHeight: 20,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 8, right: 8),
                                          border: OutlineInputBorder(),
                                          hintText: 'Password',

                                          //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                          suffixIcon: Container(
                                            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                                            child: Icon(FontAwesomeIcons.solidUser, color: Colors.black, size: 16),
                                          )),
                                    ),
                                  ),
                                ],
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              BootstrapRow(children: [
                                BootstrapCol(
                                  sizes: 'col-12 col-sm-12 col-md-12 col-lg-6',
                                  child: SizedBox(
                                    // width: MediaQuery.of(context).size.width * 0.2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Tipo Documento"),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          height: 40,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                            decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.circular(8)),
                                            child: DropdownButton<String>(
                                              isExpanded: true,
                                              value: tipoDocumento,
                                              icon: const Icon(Icons.arrow_downward, color: Colors.black),
                                              elevation: 16,
                                              style: const TextStyle(color: Colors.black),
                                              underline: DropdownButtonHideUnderline(child: Container()),
                                              borderRadius: BorderRadius.circular(4),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  tipoDocumento = newValue!;
                                                  //  dropdownValue = newValue!;
                                                });
                                              },
                                              items: <String>['One', 'Two', 'Free', 'Four', ""].map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(
                                                    value,
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                BootstrapCol(
                                  sizes: 'col-12 col-sm-12 col-md-6 col-lg-6',
                                  child: SizedBox(
                                    // width: MediaQuery.of(context).size.width * 0.2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Numero Documento"),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          height: 40,
                                          child: TextFormField(
                                            cursorHeight: 20,
                                            decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(left: 8, right: 8),
                                                border: OutlineInputBorder(),
                                                hintText: '',

                                                //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                                suffixIcon: Container(
                                                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                                                  child: Icon(FontAwesomeIcons.solidUser, color: Colors.black, size: 16),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                              SizedBox(
                                height: 10,
                              ),
                              BootstrapCol(
                                  child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: TextFormField(
                                      cursorHeight: 20,
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 8, right: 8),
                                          border: OutlineInputBorder(),
                                          hintText: 'Email',

                                          //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                          suffixIcon: Container(
                                            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                                            child: Icon(FontAwesomeIcons.solidEnvelope, color: Colors.black, size: 16),
                                          )),
                                    ),
                                  ),
                                ],
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              BootstrapRow(children: [
                                BootstrapCol(
                                  sizes: 'col-12 col-sm-12 col-md-6 col-lg-6',
                                  child: SizedBox(
                                    width: 230,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Pais"),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          height: 40,
                                          child: TextFormField(
                                            cursorHeight: 20,
                                            decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(left: 8, right: 8),
                                                border: OutlineInputBorder(),
                                                hintText: 'Password',

                                                //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                                suffixIcon: Container(
                                                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                                                  child: Icon(FontAwesomeIcons.solidUser, color: Colors.black, size: 16),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                BootstrapCol(
                                  sizes: 'col-12 col-sm-12 col-md-6 col-lg-6',
                                  child: SizedBox(
                                    width: 100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Idioma"),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          height: 40,
                                          child: TextFormField(
                                            cursorHeight: 20,
                                            decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(left: 8, right: 8),
                                                border: OutlineInputBorder(),
                                                hintText: 'Idioma',

                                                //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                                suffixIcon: Container(
                                                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                                                  child: Icon(FontAwesomeIcons.solidUser, color: Colors.black, size: 16),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                              SizedBox(
                                height: 10,
                              ),
                              BootstrapContainer(padding: EdgeInsets.only(left: 20), children: [
                                Checkbox(value: true, onChanged: (valor) {}),
                                RichText(
                                  text: TextSpan(
                                    text: 'Estoy deacuerdo con los',
                                    style: GoogleFonts.lato(fontSize: 16),
                                    children: const <TextSpan>[
                                      TextSpan(text: ' terminos y condiciones', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.blue)),
                                      // TextSpan(text: ' world!'),
                                    ],
                                  ),
                                ),
                              ]),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 300,
                                height: 40,
                                child: ElevatedButton(
                                    onPressed: () {
                                      context.go('/registro', extra: []);
                                    },
                                    child: const Text('Registrar')),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                  onPressed: () {
                                    context.go('/', extra: []);
                                  },
                                  child: Text("Ya soy miembro"))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
