<%@page contentType="text/html" pageEncoding="UTF-8"%>         
<%@include file="comunes/cabecera.jsp" %>
<header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Aprende:</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5 cambiarlenguajes"><i style="font-size: 30px;" class="fab fa-amazon"></i> Fundamentos de Programación</p>

            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Buscar uno de los 50 cursos" aria-label="Recipient's username" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">BUSCAR</button>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </header>

    <section id="services">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Categorias</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-5x fa-database text-primary mb-3 sr-icon-1"></i>
              <h3 class="mb-3">Base Datos</h3>
              <p class="text-muted mb-0">Relacional y no Relacional.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fas fa-5x fa-code text-primary mb-3 sr-icon-2"></i>
              <h3 class="mb-3">Back End</h3>
              <p class="text-muted mb-0">Lengujes de progrmacón</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
              <i class="fab fa-5x fa-html5 text-primary mb-3 sr-icon-3"></i>
              <h3 class="mb-3">Frond End</h3>
              <p class="text-muted mb-0">Css and Javascript.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-white">Tenemos más de 100 cursos!</h2>
            <hr class="light my-4">
            <p class="text-faded mb-4">Al suscribirte, puedes acceder a todo los cursos de nuestra plataforma.</p>
            <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Suscribirse</a>
          </div>
        </div>
      </div>
    </section>
<%@include file="comunes/piepagina.jsp" %>