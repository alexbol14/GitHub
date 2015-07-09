function Pokemon(n,v,a)
{
    this.nombre = n;
    this.vida = v;
    this.ataque = a;
    this.grito = "Pika";
    this.gritar = function()
    {
        alert(this.grito);
    }

    if (this.nombre == "Charmeleon")
    {
        this.imagen = "charmeleon.jpg"
        this.grito = "CHAAAR";
    }
    else if (this.nombre == "Pikachu")
    {
        this.imagen = "pikachu.jpg";
        this.grito = "PIKAPIKA";
    }
}
function inicio()
{
    name = prompt("Ingrese nombre del Pokemon", "Pikachu");
    leben = prompt("Ingrese vida de "+name, 1000);
    angriff = prompt("Ingrese ataque de "+name, 500);
    var poke = new Pokemon(name, leben, angriff);
    //var poke = new Pokemon("Charmeleon", 1000, 500);
    poke.vida = poke.vida - 100;
    
    nombrePokemon.innerText = poke.nombre;
    datosPokemon.innerText = "La pokemon se llama " + poke.nombre +
                                "\ntiene una vida de " + poke.vida +
                                "\nun ataque de " + poke.ataque + 
                                "\ny su grito es " + poke.grito;
    imagenPokemon.src = poke.imagen;                            
}