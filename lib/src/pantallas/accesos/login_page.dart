import 'package:condominiosrd/src/bloc/loginBloc.dart';
import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // constraints: BoxConstraints(maxWidth: 360),
          alignment: Alignment.center,
          child: SizedBox(
            width: 370,
            child: Stack(
              children: [
                Container(
                  // width: 360,
                  height: 300,
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Container(
                    // width: 360,
                    height: 380,
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
                          height: 5,
                        ),
                        Text(
                          "Iniciar sesion",
                          style: TextStyle(fontSize: 18),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                                child: TextFormField(
                                  cursorHeight: 20,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 8, right: 8),
                                      border: OutlineInputBorder(),
                                      hintText: 'No. Documento',

                                      //prefixIconConstraints: BoxConstraints(maxWidth: 30),
                                      suffixIcon: Container(
                                        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
                                        child: Icon(FontAwesomeIcons.idCard, color: Colors.black54, size: 16),
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
                                        child: Icon(FontAwesomeIcons.lock, color: Colors.black54, size: 16),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // CheckboxListTile(
                              //   contentPadding: EdgeInsets.only(left: 0, right: 200),
                              //   value: false,
                              //   tristate: true,
                              //   onChanged: (a) {},
                              //   title: Text("Recordar"),
                              // ),
                              ElevatedButton(
                                  onPressed: () async {
                                    await Provider.of<LoginBloc>(context, listen: false).loginUser();
                                    if (Provider.of<LoginBloc>(context, listen: false).isLogin) {
                                      GoRouter.of(context).go("/home");
                                    }
                                    //context.go('/home');
                                    // context.go('/registro', extra: []);;
                                  },
                                  child: const Text('Iniciar sesion')),
                              SizedBox(
                                  // height: ,
                                  ),
                              TextButton(
                                  onPressed: () {
                                    // context.go('/registro', extra: []);
                                  },
                                  child: Text("Olvide mi contraseña")),
                              TextButton(
                                  onPressed: () {
                                    context.go('/registro', extra: []);
                                  },
                                  child: Text("Registrar nuevo miembro")),
                              // Consumer<LoginBloc>(
                              //   builder: (context, _LoginBloc, child) {
                              //     if (_LoginBloc.isLogin == false) return SizedBox();

                              //     return Text(_LoginBloc.userInfo!.nombre);
                              //   },
                              // )
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
        ),
      ),
    );
  }
}
