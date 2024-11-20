let buttonClicked = false;
const categorias = ["Futbol Sudamericano", "Futbol Europeo", "Decada 2000", "Todas las categorias"];
const colores = ["#FF6F61", "#6B5B95", "#88B04B", "#F7CAC9", "#92A8D1"];
const numSecciones = categorias.length;
const anguloPorSeccion = 2 * Math.PI / numSecciones;
const canvas = document.getElementById("canvas");
const ctx = canvas.getContext("2d");
const Username = document.getElementById("Username");
const ruleta = document.getElementById("ruleta");
const botonNombre = document.getElementById("botonUsuario");
const nombre = document.getElementById("nombreUsuario");
const Jugar = document.getElementById("button");
const categoriasTocada = document.getElementById("categoriaElegida");

let Categoria = document.getElementById("categorias");

ruleta.style.visibility="hidden";
Jugar.style.visibility="hidden";

let anguloInicial = 0;

function dibujarRuleta() {
    for (let i = 0; i < numSecciones; i++) {
        const anguloFinal = anguloInicial + anguloPorSeccion;
        ctx.beginPath();
        ctx.moveTo(canvas.width / 2, canvas.height / 2);
        ctx.arc(canvas.width / 2, canvas.height / 2, canvas.width / 2, anguloInicial, anguloFinal);
        ctx.fillStyle = colores[i];
        ctx.fill();
        ctx.strokeStyle = "#FFFFFF";
        ctx.lineWidth = 2;
        ctx.stroke();
        ctx.save();

        ctx.translate(canvas.width / 2, canvas.height / 2);
        ctx.rotate(anguloInicial + anguloPorSeccion / 2);
        ctx.textAlign = "right";
        ctx.fillStyle = "#FFFFFF";
        ctx.font = "bold 18px Arial";
        ctx.fillText(categorias[i], canvas.width / 2 - 20, 10);
        ctx.restore();

        anguloInicial = anguloFinal;
    }
}

function ingresarUsuario()
{
    if(nombre.value != ""){
        event.preventDefault();
        Username.style.visibility ="hidden";
        ruleta.style.visibility="visible";
    }
    else{
    }
}

function girarRuleta() 
{
    if (buttonClicked) return;
    buttonClicked = true;

    const rotacion = Math.floor(Math.random() * 3600) + 360;
    const duracion = 5;
    canvas.style.transition = `transform ${duracion}s ease-out`;
    canvas.style.transform = `rotate(${rotacion}deg)`;

    setTimeout(() => {
        const anguloFinal = rotacion % 360;
        const indiceGanador = Math.floor(numSecciones - (anguloFinal / 360) * numSecciones) % numSecciones;
        
        Jugar.style.visibility="visible";

        categoriasTocada.value = categorias[indiceGanador];

        if(categorias[indiceGanador] === "Futbol Europeo")
        {
            Categoria.value = 1;
        }
        else if(categorias[indiceGanador] === "Futbol Sudamericano")
        {
            Categoria.value = 2;
        }
        else if(categorias[indiceGanador] === "Decada 2000")
        {
            Categoria.value = 3;
        }
        else
        {
            Categoria.value = 4;
        }

        console.log(Categoria.value);

        document.getElementById("girarBtn").disabled = true;
        canvas.style.transition = "none";
    }, duracion * 1000);
}

dibujarRuleta();