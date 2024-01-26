package com.solar.code.model;

import jakarta.persistence.*;
@Entity
@Table(name="Producto")
public class Producto {
  //ATRIBUTOS
  @Id
  @Column
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long producto_id;
  @ManyToOne @JoinColumn(name="categoria_id")
  private Categoria categoria;
  @Column
  private double precio;
  @Column
  private String nombre;
  @Column
  private String marca;
  @Column(length = 2000)
  private String descripcion;
  @Column
  private String imagen;
  @Column
  private String ficha_tecnica;
  @Column(unique = true)
  private String sku;
  @Column
  private int stock;
  // CONSTRUCTORES
  public Producto() {
  }

  public Producto(Long producto_id, Categoria categoria, double precio, String nombre, String marca, String descripcion, String imagen, String ficha_tecnica, String sku, int stock) {
    this.producto_id = producto_id;
    this.categoria = categoria;
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

  public Categoria getCategoria() {
    return categoria;
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

  public void setCategoria(Categoria categoria) {
    this.categoria = categoria;
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
