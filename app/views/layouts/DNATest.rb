require 'minitest/autorun'
require 'minitest/pride'
require_relative './dna'

class DNATest < MiniTest::Unit::TestCase
  
  def test_dna
  	refute_nil DNA.new(''), msg=nil

  def test_empty_string
    assert_equal 0, DNA.new('').count('A')
  end

  def test_dna_has_A
    skip
    assert_equal 6, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('A')
  end

  def test_dna_has_T
    skip
    assert_equal 6, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('T')
  end

  def test_dna_has_G
    ski
    assert_equal 5, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('G')
  end

  def test_dna_has_C
    skip
    assert_equal 4, DNA.new('ATGCTTCAGAAAGGTCTTACG').count('C')
  end

  def test_non_dna
    skip
    assert_raise( ArgumentError, "invalid " DNA.new('CCCCCU').count('U')
  end

  def test_nucleotide
    skip
    output = {'A' => 6, 'T' => 6, 'C' => 4, 'G' => 5}
    assert_equal expected, DNA.new('ATGCTTCAGAAAGGTCTTACG').nucleotide_counts
  end


end