package com.solar.code.model;

import jakarta.persistence.*;

@Entity
@Table(name="Categoria")
public class Categoria {
  // ATRIBUTOS
  @Id  @Column  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long categoria_id;
  @Column
  private String nombre;
  @Column
  private String descripcion;
  @Column(unique = true)
  private String sku;
  // CONSTRUCTORES
  public Categoria() {
  }

  public Categoria(Long categoria_id, String nombre, String descripcion, String sku) {
    this.categoria_id = categoria_id;
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.sku = sku;
  }

  // GETTERS
  public Long getCategoria_id() {
    return categoria_id;
  }

  public String getNombre() {
    return nombre;
  }

  public String getDescripcion() {
    return descripcion;
  }

  public String getSku() {
    return sku;
  }

  // SETTERS
  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public void setDescripcion(String descripcion) {
    this.descripcion = descripcion;
  }

  public void setSku(String sku) {
    this.sku = sku;
  }
}
