# registro_vehiculos.exs

defmodule RegistroVehiculos do
  def main do
  Util.show_message("Registro de Vehículos")
  placa = pedir_placa()
  tipo_vehiculo = pedir_tipo_vehiculo()
  peso_vehiculo = pedir_peso_vehiculo()
  tarifa = calcular_tarifa(tipo_vehiculo, peso_vehiculo)
  end

  def pedir_placa do
    placa = Util.input("Ingrese la placa del vehículo:", :string)
    IO.puts "La placa del vehículo es: #{placa}"
    placa
  end

  def pedir_tipo_vehiculo do
    tipo_vehiculo = Util.input("Ingrese el tipo de vehículo (carro, moto, camion):", :string)
    IO.puts "El tipo de vehículo es: #{tipo_vehiculo}"
    tipo_vehiculo
  end

  def pedir_peso_vehiculo do
    peso_vehiculo = Util.input("Ingrese el peso del vehículo en kg:", :float)
    IO.puts "El peso del vehículo es: #{peso_vehiculo} toneladas"
    peso_vehiculo
  end

  def calcular_tarifa(tipo_vehiculo, peso_vehiculo) do
    tarifa =
      if tipo_vehiculo == "carro" do
        10000
        elif tipo_vehiculo == "moto" do
          5000
        else tipo_vehiculo == "camion"
            20000 + (2000 * peso_vehiculo)

        end
      end
  end

end

RegistroVehiculos.main()
