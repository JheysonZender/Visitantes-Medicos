import "dart:io";
import 'hospital.dart';
import 'medico.dart';
import 'paciente.dart';

void main(List<String> arguments){

    //Hospital
    Hospital hospital = new Hospital( hospitalName: "Hospital Cruz Azul de Arequipa");
    
    //Registro de medico
    Medico medico1 = new Medico(
        //datos persona
        dni: 76666666,
        nombres: "Juan Carlos",
        apellidos: "Torres Salas",
        //datos medico
        codigo_medico: "MC001",
        especialidad: "Medicina General"
    );

    //Registro de paciente
    Paciente paciente1 = new Paciente(
        //datos persona
        dni: 78888888,
        nombres: "Miguel",
        apellidos: "Vilca Vera",
        //datos paciente
        codigo_paciente: "PC001",
        direccion: "Calle Sabandia Mz. F Lote 18"
    );

    //Imprimir datos pmedico y paciente
    //print("Datos Medico:\n${medico1}");
    //print("Datos Paciente:\n${paciente1}");

    //Agregando un medico al hospital
    hospital.agregarMedico(medico1);

    //Agregando un paciente al hospital
    hospital.agregarPaciente(paciente1);

    hospital.menu();

    /*
    stdout.writeln("Ingrese su edad:");
    String! edad = stdin.readLineSync();
    */

    //print("variable ${medico1.dni}\n");
}