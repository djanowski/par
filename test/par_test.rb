# encoding: UTF-8

require File.join(File.dirname(__FILE__), "helper")

setup do
  "Similique quibusdam consectetur provident sit aut in. Quia dolorem qui nihil expedita quod. Doloremque nobis et labore. Fugit facilis eveniet similique voluptatem dolore rerum laboriosam occaecati. Veniam voluptatem autem in."
end

test "should format the paragraphs to the default 60 characters wide" do |source|
  expected = <<-EOS
Similique quibusdam consectetur provident sit aut in. Quia dolorem
qui nihil expedita quod. Doloremque nobis et labore. Fugit facilis
eveniet similique voluptatem dolore rerum laboriosam occaecati. Veniam
voluptatem autem in.
EOS

  assert Par.new(source) == expected
end

test "should relay the passed parameters to par" do |source|
  expected = <<-EOS
  Similique quibusdam consectetur provident sit aut in. Quia dolorem
  qui nihil expedita quod. Doloremque nobis et labore. Fugit facilis
  eveniet similique voluptatem dolore rerum laboriosam occaecati. Veniam
  voluptatem autem in.
EOS

  assert Par.new("  #{source}", p: 2) == expected
end

puts " ✔ All tests passed"
