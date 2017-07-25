defmodule HTTP2.HPackTest do
  use ExUnit.Case

  @tag :skip
  test "blah" do
    compressed = <<0, 0, 0, 11, 31, 130, 4, 129, 99, 65, 138, 160, 228, 29, 19, 157, 9, 184, 240,
    30, 7, 135, 122, 186, 208, 127, 102, 162, 129, 176, 218, 224, 83, 250, 252, 8,
    126, 212, 225, 29, 181, 38, 223, 181, 51, 154, 171, 124, 169, 229, 231, 34,
    113, 175, 181, 44, 239, 113, 182, 151, 7, 246, 166, 34, 147, 169, 216, 16, 2,
    0, 4, 1, 83, 9, 172, 44, 167, 242, 195, 109, 46, 15, 83, 176, 73, 124, 165,
    137, 211, 77, 31, 67, 174, 186, 12, 65, 164, 199, 169, 143, 51, 166, 154, 63,
    223, 154, 104, 250, 29, 117, 208, 98, 13, 38, 61, 76, 121, 166, 143, 190, 208,
    1, 119, 254, 190, 88, 249, 251, 237, 0, 23, 123, 81, 139, 45, 75, 112, 221,
    244, 90, 190, 251, 64, 5, 219, 80, 141, 155, 217, 171, 250, 82, 66, 203, 64,
    210, 95, 165, 35, 179, 64, 146, 182, 185, 172, 28, 133, 88, 213, 32, 164, 182,
    194, 173, 97, 123, 90, 84, 37, 31, 129, 15>>
    {:ok, table} = HPack.Table.start_link(1_000)
    HPack.decode(compressed, table)
    |> IO.inspect
  end
end