defmodule Util do
  def show_message(message) when is_binary(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  def input(message, :string) when is_binary(message) do
    {output, _exit_code} = System.cmd("java", ["-cp", ".", "Mensaje", "input", message, ":string"])
    output |> String.trim()
  end

  def input(message, :integer) when is_binary(message) do
    message
    |> input(:string)
    |> String.to_integer()
  end

  def input(message, :float) when is_binary(message) do
    message
    |> input(:string)
    |> String.to_float()
  end

  def input(message, type) when not is_binary(message) do
    raise ArgumentError, "El mensaje debe ser una cadena de texto"
  end

  def input(_message, type) do
    raise ArgumentError, "Tipo no soportado: #{inspect(type)}. Use :string, :integer, o :float"
  end
end
