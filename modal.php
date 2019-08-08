
    <div class="modal fade" id="modalformaction" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-full-height modal-right" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Registrate a la EXPOAUTO NICARAGUA</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    
                    <form id="formRegister">
                        <!-- formulario -->
                        <h4>Datos del Vehículo</h4>
                        <div class="form-row">
                                
                            <select class="browser-default custom-select col-md-7" id="tipoV" name="tipo" required>
                                <option selected>Seleccione tipo de vehículo</option>
                                <option value="Sedan">Sedan</option>
                                <option value="SUV">SUV</option>
                                <option value="PickUp">PickUp</option>
                            </select>

                            <div class="col-md-4">
                                <input type="number" class="form-control" name="asientos" min="1" max="10"  placeholder="N° asientos" required>
                            </div>
                        </div>
                            
                        <div class="form-row">
                            <div class="col-md-4">
                                <input type="text" class="form-control" id="marca" name="marca" placeholder="Marca" required>
                            </div>

                            <div class="col-md-4">
                                <input type="text" class="form-control" id="modelo" name="modelo" placeholder="Modelo" required>
                            </div>

                            <div class="col-md-4">
                                <input type="text" class="form-control" id="placa" name="placa" placeholder="Número Placa" required>
                            </div>
                        </div>

                        <h4>Datos del Conductos</h4>
                        <div class="form-row">
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="nombres" name="nombres" placeholder="Nombres" required>
                            </div>
                            
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="apellidos" name="apellidos" placeholder="Apellidos" required>
                            </div>
                            
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="cedula" name="cedula" placeholder="Identificación" required>
                            </div>
                            
                            <div class="col-md-6">
                                <input type="email"class="form-control" id="correo" name="correo" placeholder="ejemplo@email.com" required>
                            </div>
                        </div>

                        <h4>Adicionales</h4>

                        <div class="form-row">
                            <div class="col-md-6">
                                <input type="text" class="form-control" id="acompaniantes" name="acompaniantes" placeholder="Cantidad de acompañantes" required>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">cerrar</button>
                    <button type="button" class="btn btn-primary" id="registrar" >Guardar</button>
                </div>
            </div>
        </div>
    </div>

