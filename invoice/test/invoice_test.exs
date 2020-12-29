defmodule InvoiceTest do
  use ExUnit.Case
  doctest Invoice

  test "deve criar uma lista de faturas" do
    invoices = Invoice.create_invoices(["food", "sport"], "")
    assert invoices == ["food", "sport"]
  end

  test "deve ordenar uma lista de faturas" do
    invoices = Invoice.create_invoices(["sport", "food"], "")
    refute Invoice.sort_invoices(invoices) == ["sport", "food"]
  end

  test "deve verificar se uma fatura existe em uma lista de faturas" do
    invoices = Invoice.create_invoices(["sport", "food"], "")
    assert  Invoice.invoice_exists?(invoices, "sport") == true
  end
end
