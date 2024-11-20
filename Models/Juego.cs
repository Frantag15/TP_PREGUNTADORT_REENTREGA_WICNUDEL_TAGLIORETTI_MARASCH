using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using Dapper;

public static class Juego{
    public static string username {get; set;}
    public static int PuntajeActual {get; set;}
    public static int cantPreguntasCorrectas {get; set;}
    public static string categoriaElegida {get; set;}
    public static string NombreCategoria {get; set;}
    public static List<Pregunta> Preg {get; set;}
    public static List<Respuesta> Resp {get; set;}

    public static void InicializarJuego(){
        username = null;
        PuntajeActual = 0;
        cantPreguntasCorrectas = 0;
    }

    public static List<Categoria> ObtenerCategorias(){
        return BD.ObtenerCategorias();
    }

    public static List<Dificultad> ObtenerDificultades(){
        return BD.ObtenerDificultades();
    }

    public static void CargarPartidas(string username, int Dificultad, int Categoria){
        username = username;
        Pregunta = BD.ObtenerPreguntas(Dificultad, Categoria);
        Respuesta = BD.ObtenerRespuestas(Pregunta);
    }

    public static Pregunta CrearPreguntas(int idCategoria, int idDificultad, string Enunciado, string Respuesta1, string Respuesta2, string Respuesta3, string Respuesta4, int Opcion1, int Opcion2, int Opcion3, int Opcion4, int Correcta)
    {
        return BD.CrearPreguntas(idCategoria, idDificultad, Enunciado, Respuesta1, Respuesta2, Respuesta3, Respuesta4, Opcion1, Opcion2, Opcion3, Opcion4, Correcta);
    }

    public static Pregunta ObtenerProximaPregunta()
    {
        Random rnd = new Random();
        int SeleccionarPregRand = rnd.Next(0, Pregunta.Count());

        return Pregunta[SeleccionarPregRand];
    }

    public static Pregunta EncontrarPregunta(int idPregunta)
    {
        Preguntas pregunta = Pregunta.FirstOrDefault(p => p.IdPregunta == idPregunta);
        return pregunta;
    }

    public static List<Respuesta> ObtenerProximasRespuestas(int idPregunta)
    {
        List<Respuesta> ProxRespuestas = new List<Respuestaa>();

        foreach(Respuestas resp in Respuesta){
            if(r.IdPregunta == idPregunta){
                ProxRespuestas.Add(resp);
            }
        }

        ProxRespuestas = ProxRespuestas.OrderBy(x=> Random.Shared.Next()).ToList();
        return PosiblesRespuestas;
    }

    public static bool VerificarRespuestas(int idPregunta, int idRespuesta)
    {
        Respuesta respuestaCorrecta = Respuesta.FirstOrDefault(r => r.IdPregunta == idPregunta && r.Correcta);
        Pregunta pregunta = Pregunta.FirstOrDefault(p => p.IdPregunta == idPregunta);

        Pregunta.Remove(pregunta);

        if (respuestaCorrecta.IdRespuesta == idRespuesta) 
        {
            if(pregunta.IdDificultad == 1)
            {
                PuntajeActual++;
            }
            else if(pregunta.IdDificultad == 2)
            {
                PuntajeActual += 3;
            }
            else
            {
                PuntajeActual += 5;
            }
            cantPreguntasCorrectas++;
            return true;
        } else 
        {
            return false;
        }
    }
}