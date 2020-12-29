defmodule Invoice do
  @moduledoc """
    Funções de invoices
  """

  @doc """
    Ao receber `invoice` retorna um array de invoices
      ## Exemplos
      iex> Invoice.create_invoices(["agua", "luz", "comida"])
      ["agua", "luz", "comida"]    
  """

  def create_invoices(invoices, _pay) do
    for invoice <- invoices do
      invoice
    end
  end

  @doc """
    Ao receber uma lista de `invoices`, deve ordenálas
      ## Exemplos
      iex> Invoice.sort_invoices(Invoice.create_invoices(["agua", "luz", "comida"]))
      ["agua", "comida", "luz"] 
  """
  def sort_invoices(invoices ) do
    Enum.sort(invoices)
  end

  @doc """
    Ao receber `invoices` e um elemento `invoice` retorna se existe esse invoice nos invoices
      ## Exemplo
      iex> Invoice.invoice_exists?(Invoice.create_invoices(["agua", "luz", "comida"]), "luz")
      true
  """

  def invoice_exists?(invoices, invoice) do
    Enum.member?(invoices, invoice)
  end
end 
