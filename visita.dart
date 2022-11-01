class Visita{

    String medico;
    String paciente;

    String peso;
    String temperatura;
    String presion;
    String nivel_saturacion;

    Visita({
        required this.medico,
        required this.paciente,
        required this.peso,
        required this.temperatura,
        required this.presion,
        required this.nivel_saturacion
    });

    @override
    String toString(){
        return '''Medico: ${medico}, Paciente: ${paciente}, Peso: ${peso}, Temperatura: ${temperatura}, Presion: ${presion}, Nivel de Saturacion: ${nivel_saturacion} \n''';
    }
}