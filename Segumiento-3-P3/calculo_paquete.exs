# calculo paquete.exs

defmodule CalculoPaquete do
  def main do
    Util.show_message("Calculo de Paquete")
    nombre = pedir_nombre()
    peso = pedir_peso()
    tipo_envio = pedir_tipo_envio()
    calcular_costo_envio(nombre, peso, tipo_envio)
  end

  def pedir_nombre do
    nombre = Util.input("Ingrese su nombre: ", :string)
    IO.puts "Su nombre es: #{nombre}"
    nombre
  end

  def pedir_peso do
    peso = Util.input("Ingrese el peso del paquete en kg: ", :float)
    IO.puts "El peso del paquete es: #{peso} kg"
    peso
  end

  def pedir_tipo_envio do
    tipo_envio = Util.input("Ingrese el tipo de envío (Economico, express, internacional): ", :string)
    IO.puts "El tipo de envío es: #{tipo_envio}"
    tipo_envio
  end

  def calcular_costo_envio(nombre, peso, tipo_envio) do

  end
end

CalculoPaquete.main()
