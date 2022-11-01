import 'medico.dart';
import 'paciente.dart';
import 'visita.dart';
import "dart:io";

class Hospital {

    String hospitalName;
    List <Medico> hMedicos = [];
    List <Paciente> hPaciente = [];
    File visitas = new File('D:\\visitas\\visitas.txt');
    //List <Visita> visitas = [];

    Hospital({
        required this.hospitalName,
    });

    void agregarMedico( Medico nmedico){
        hMedicos.add(nmedico);
    }

    void agregarPaciente( Paciente npaciente){
        hPaciente.add(npaciente);
    }

    void menu(){
        String? resp = "Y";
        while ( resp == "Y"){
            registrarVisita();
            stdout.write('Registrar otra visita? (Y/N) ');
            resp = stdin.readLineSync();
        }
    }

    void registrarVisita(){
        String? medico;
        String? paciente;

        String? peso;
        String? temperatura;
        String? presion;
        String? nivel_saturacion;
        
        stdout.writeln('****  Chequeo  ****');

        stdout.write('Codigo de Medico: ');
        medico = stdin.readLineSync();

        stdout.write('Codigo de Paciente: ');
        paciente = stdin.readLineSync();

        for (var i = 0; i < hMedicos.length; i++) {
            if(hMedicos[i].codigo_medico != medico){
                stdout.writeln("Medico no registrado\n");
                return;
            }
        }

        for (var i = 0; i < hPaciente.length; i++) {
            if(hPaciente[i].codigo_paciente != paciente){
                stdout.writeln("Paciente no registrado\n");
                return;
            }
        }

        stdout.write('peso: ');
        peso = stdin.readLineSync();
        
        stdout.write('temperatura: ');
        temperatura = stdin.readLineSync();

        stdout.write('presion: ');
        presion = stdin.readLineSync();

        stdout.write('nivel de saturacion: ');
        nivel_saturacion = stdin.readLineSync();

        try{
            Visita nVisita = new Visita(
                medico: medico!,
                paciente: paciente!,
                peso: peso!,
                temperatura: temperatura!,
                presion: presion!,
                nivel_saturacion: nivel_saturacion! 
            );
            
            var sink = visitas.openWrite();
            sink.write('${nVisita.toString()}, Fecha: ${DateTime.now()}\n');

            stdout.writeln(' - Visita Registrada - ');
        } catch( e ){
            stdout.writeln(' Visita no registrada ');
        }   
    }
}
