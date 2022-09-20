//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 9/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var Peliculas : [Pelicula] = []
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Peliculas.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        celda?.lblTitulo.text = Peliculas[indexPath.row].titulo
        celda?.lblAño.text = Peliculas[indexPath.row].año
        celda?.lblDirector.text = Peliculas[indexPath.row].director
        return celda!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Peliculas.append(Pelicula(titulo: "Titanic", año:"1997", director: "James Cameron", genero: "Drama"))
        Peliculas.append(Pelicula(titulo: "Lel", año:"1332", director: "Cameron", genero: "Terror"))
        Peliculas.append(Pelicula(titulo: "Chucky", año:"1889", director: "James", genero: "Misterio"))
        Peliculas.append(Pelicula(titulo: "Chucky", año:"1889", director: "James", genero: "Misterio"))

    }
    

}

