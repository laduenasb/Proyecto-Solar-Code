package com.solar.code.controller;

import com.solar.code.dto.ProductoDTO;
import com.solar.code.model.Producto;
import com.solar.code.service.CategoriaService;
import com.solar.code.service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path= "api/v1/producto")
public class ProductoController {
  @Autowired
  private ProductoService productoService;
  @Autowired
  private CategoriaService categoriaService;
  @PostMapping("/guardarProducto")
  public Producto guardarProducto(@RequestBody ProductoDTO productoDTO) {
    Producto producto=new Producto();
    producto=productoDTO.obtenerProducto(productoDTO);
    producto.setCategoria(categoriaService.encontrarCategoriaPorId(productoDTO.getCategoria_id()));
    return productoService.guardarProducto(producto);
  }
  @GetMapping("/obtenerProductos")
  public List<Producto> obtenerProducto() {
    return productoService.consultarProductos();
  }
  @GetMapping("/encontrarProductoPorId/{producto_id}")
  public Producto encontrarProductoPoriD(@PathVariable Long producto_id){
    return productoService.encontrarProductoPorID(producto_id);
  }
  @GetMapping("/encontrarProductoPorSku/{sku}")
  public Producto encontrarProductoPorSku(@PathVariable String sku){
    return productoService.encontrarProductoPorSku(sku);
  }
  @GetMapping("/encontrarProductosPorCategoria/{nombre_categoria}")
  public List<Producto> encontrarProductosPorCategoria(@PathVariable String nombre_categoria){
    return productoService.encontrarProductosPorCategoria(nombre_categoria);
  }
  @PutMapping("/actualizarProducto")
  public Producto actualizarProducto(@RequestBody ProductoDTO productoDTO){
    Producto producto=new Producto();
    producto=productoDTO.obtenerProducto(productoDTO);
    producto.setCategoria(categoriaService.encontrarCategoriaPorId(productoDTO.getCategoria_id()));
    return productoService.actualizarProducto(producto);
  }
  @DeleteMapping("/eliminarProducto/{producto_id}")
  public boolean eliminarProducto(@PathVariable Long producto_id){
    return productoService.eliminarProducto(producto_id);
  }
}
