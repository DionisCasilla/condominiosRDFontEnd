import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
              width: 360,
              height: 500,
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Container(
                width: 360,
                height: 496,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Condominios',
                        style: GoogleFonts.lato(fontSize: 32),
                        children: const <TextSpan>[
                          TextSpan(text: ' RD', style: TextStyle(fontWeight: FontWeight.w700)),
                          // TextSpan(text: ' world!'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'No. Documento',

                                //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                suffixIcon: Container(
                                  // color: Colors.grey,
                                  child: Icon(FontAwesomeIcons.idCard),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
