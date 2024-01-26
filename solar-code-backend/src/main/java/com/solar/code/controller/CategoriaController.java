package com.solar.code.controller;

import com.solar.code.model.Categoria;
import com.solar.code.model.Producto;
import com.solar.code.service.CategoriaService;
import com.solar.code.service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path= "api/v1/categoria")
public class CategoriaController {
  @Autowired
  CategoriaService categoriaService;
  @PostMapping("/guardarCategoria")
  public Categoria guardarCategoria(@RequestBody Categoria categoria) {
    return categoriaService.guardarCategoria(categoria);
  }
  @GetMapping("/obtenerCategorias")
  public List<Categoria> obtenerCategorias() {
    return categoriaService.consultarCategorias();
  }
  @GetMapping("/encontrarCategoriaPorId/{categoria_id}")
  public Categoria encontrarCategoriaPoriD(@PathVariable Long categoria_id){
    return categoriaService.encontrarCategoriaPorId(categoria_id);
  }
  @GetMapping("/encontrarCategoriaPorSku/{sku}")
  public Categoria encontrarCategoriaPorSku(@PathVariable String sku){
    return categoriaService.encontrarCategoriaPorSku(sku);
  }
  @PutMapping("/actualizarCategoria")
  public Categoria actualizarCategoria(@RequestBody Categoria categoria){
    return categoriaService.actualizarCategoria(categoria);
  }

  @DeleteMapping("/eliminarCategoria/{categoria_id}")
  public boolean eliminarCategoria(@PathVariable Long categoria_id){
    return categoriaService.eliminarCategoria(categoria_id);
  }
}
