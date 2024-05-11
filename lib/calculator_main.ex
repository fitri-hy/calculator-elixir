defmodule Start do
  def run do
    IO.puts("Welcome to the Calculator!")
    
    loop()
  end
  
  defp loop do
    num1 = get_integer_input("Please enter the first number:")
    num2 = get_integer_input("Please enter the second number:")
    operation = get_operation()

    case operation do
      1 -> IO.puts("Result: #{Calculator.add(num1, num2)}")
      2 -> IO.puts("Result: #{Calculator.subtract(num1, num2)}")
      3 -> IO.puts("Result: #{Calculator.multiply(num1, num2)}")
      4 -> IO.puts("Result: #{Calculator.divide(num1, num2)}")
      _ -> IO.puts("Invalid operation")
    end
    
    continue = get_continue_input()
    
    case continue do
      true -> loop()
      false -> :ok
    end
  end

  defp get_integer_input(prompt) do
    case Integer.parse(IO.gets(prompt)) do
      {num, _} -> num
      :error -> 
        IO.puts("Invalid input. Please enter a valid integer.")
        get_integer_input(prompt)
    end
  end

  defp get_operation() do
    IO.puts("Select operation:")
    IO.puts("[1]. Add (+)")
    IO.puts("[2]. Subtract (-)")
    IO.puts("[3]. Multiply (*)")
    IO.puts("[4]. Divide (/)")

    case get_integer_input("") do
      1 -> 1
      2 -> 2
      3 -> 3
      4 -> 4
      _ -> 
        IO.puts("Invalid operation. Please select a valid operation.")
        get_operation()
    end
  end
  
  defp get_continue_input() do
    IO.puts("Do you want to perform another calculation? (yes/no)")
    case String.downcase(IO.gets("")) do
      "yes\n" -> true
      "no\n" -> false
      _ ->
        IO.puts("Invalid input. Please enter 'yes' or 'no'.")
        get_continue_input()
    end
  end
end
