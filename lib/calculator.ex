defmodule Calculator do
  def add(a, b) do
    a + b
  end

  def subtract(a, b) do
    a - b
  end

  def multiply(a, b) do
    a * b
  end

  def divide(a, b) when b != 0 do
    a / b
  end

  def divide(_, 0), do: "Can't divide by zero"
end
