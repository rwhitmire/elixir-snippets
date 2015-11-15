defmodule Chop do
  def guess(actual, first .. last) do
    current_guess = div((last - first), 2) + first
    IO.puts "Is it #{current_guess}"
    guess(actual, first .. last, current_guess)
  end

  def guess(actual, first .. _, current_guess) when current_guess > actual do
    guess(actual, first .. current_guess - 1)
  end

  def guess(actual, _ .. last, current_guess) when current_guess < actual do
    guess(actual, current_guess + 1 .. last)
  end

  def guess(actual, _, current_guess) when current_guess == actual do
    current_guess
  end
end

Chop.guess(273, 1..1000)
