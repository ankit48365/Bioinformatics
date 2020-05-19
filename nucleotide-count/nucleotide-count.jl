"""
    count_nucleotides(strand)
The frequency of each nucleotide within `strand` as a dictionary.
Invalid strands raise a `DomainError`.
http://rosalind.info/problems/dna/
DNA Nucleotides  - Count of 'A', 'C', 'G', and 'T' individually
================================================
"""
function count_nucleotides(strand::AbstractString)
  dict1 = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
  for char in strand
    if haskey(dict1, char)
      dict1[char] = dict1[char]+1
    else
      throw(DomainError())
    end
  end
  return dict1
end








            #nucleotides(AGCTTTTCATTCTGACTGCAACGGGCAA)
