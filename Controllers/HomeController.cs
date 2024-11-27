using Microsoft.AspNetCore.Mvc;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Creditos()
    {
        return View();
    }

    public IActionResult Fin()
    {
        return View();
    }

    public IActionResult ConfigurarJuego()
    {
        ViewBag.Dificultades = Juego.ObtenerDificultades();
        ViewBag.Categorias = Juego.ObtenerCategorias();
        return View();
    }

    public IActionResult Jugar()
    {
        ViewBag.Puntaje = Juego.PuntajeActual;

        if (Juego.Preg.Count > 0)
        {
            ViewBag.PreguntaActual = Juego.ObtenerProximaPregunta();
            ViewBag.RespuestaPregunta = Juego.ObtenerProximasRespuestas(ViewBag.PreguntaActual.IdPregunta);
            ViewBag.NombreUsuario = Juego.username;
            return View();
        }
        else
        {
            return RedirectToAction("Fin");
        }
    }

    public IActionResult VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        ViewBag.Correcto = Juego.VerificarRespuestas(idPregunta, idRespuesta);
        ViewBag.PreguntaActual = Juego.EncontrarPregunta(idPregunta);
        ViewBag.Puntaje = Juego.PuntajeActual;
        ViewBag.RespuestaCorrecta = GuardarDatos.PregunasOrden;
        return View("Respuesta");
    }

    public IActionResult CrearPregunta()
    {
        ViewBag.Dificultades = Juego.ObtenerDificultades();
        ViewBag.Categorias = Juego.ObtenerCategorias();
        return View();
    }

    public IActionResult Comenzar(string Username, int Dificultad, int Categoria)
    {
        Juego.CargarPartidas(Username, Dificultad, Categoria);

        if (Juego.Preg.Count == 0)
        {
            return RedirectToAction("ConfigurarJuego");
        }
        else
        {
            return RedirectToAction("Jugar");
        }
    }
}
