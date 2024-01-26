package com.solar.code.dto;

import com.solar.code.model.Producto;


public class ProductoDTO {
  private Long producto_id;
  private Long categoria_id;
  private double precio;
  private String nombre;
  private String marca;
  private String descripcion;
  private String imagen;
  private String ficha_tecnica;
  private String sku;
  private int stock;
  // ACCIONES

  public Producto obtenerProducto(ProductoDTO  productoDTO){
    Producto producto = new Producto();
    producto.setProducto_id(productoDTO.getProducto_id());
    producto.setPrecio(productoDTO.getPrecio());
    producto.setNombre(productoDTO.getNombre());
    producto.setMarca(productoDTO.getMarca());
    producto.setDescripcion(productoDTO.getDescripcion());
    producto.setImagen(productoDTO.getImagen());
    producto.setFicha_tecnica(productoDTO.getFicha_tecnica());
    producto.setSku(productoDTO.getSku());
    producto.setStock(productoDTO.getStock());
    return producto;
  }

  // CONSTRUCTORES
  public ProductoDTO(Long producto_id, Long categoria_id, double precio, String nombre, String marca, String descripcion, String imagen, String ficha_tecnica, String sku, int stock) {
    this.producto_id = producto_id;
    this.categoria_id = categoria_id;
    this.precio = precio;
    this.nombre = nombre;
    this.marca = marca;
    this.descripcion = descripcion;
    this.imagen = imagen;
    this.ficha_tecnica = ficha_tecnica;
    this.sku = sku;
    this.stock = stock;
  }

  // GETTERS

  public Long getProducto_id() {
    return producto_id;
  }

  public Long getCategoria_id() {
    return categoria_id;
  }

  public double getPrecio() {
    return precio;
  }

  public String getNombre() {
    return nombre;
  }

  public String getMarca() {
    return marca;
  }

  public String getDescripcion() {
    return descripcion;
  }

  public String getImagen() {
    return imagen;
  }
  public String getFicha_tecnica() {
    return ficha_tecnica;
  }

  public String getSku() {
    return sku;
  }

  public int getStock() {
    return stock;
  }

  // SETTERS

  public void setProducto_id(Long producto_id) {
    this.producto_id = producto_id;
  }

  public void setCategoria_id(Long categoria_id) {
    this.categoria_id = categoria_id;
  }

  public void setPrecio(double precio) {
    this.precio = precio;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public void setMarca(String marca) {
    this.marca = marca;
  }

  public void setDescripcion(String descripcion) {
    this.descripcion = descripcion;
  }

  public void setImagen(String imagen) {
    this.imagen = imagen;
  }
  public void setFicha_tecnica(String ficha_tecnica) {
    this.ficha_tecnica = ficha_tecnica;
  }

  public void setSku(String sku) {
    this.sku = sku;
  }

  public void setStock(int stock) {
    this.stock = stock;
  }

}
