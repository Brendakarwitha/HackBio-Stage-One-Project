# ---------------------------------------------------------
# Task 1: GC% Calculation
# ---------------------------------------------------------

calculate_gc <- function(sequence) {
  # 1. Handle case-sensitivity (converts everything to UPPERCASE)
  sequence <- toupper(sequence)
  
  # 2. Break the string into individual letters
  nodes <- strsplit(sequence, "")[[1]]
  
  # 3. Filter to keep only valid DNA bases (A, T, G, C)
  # This ensures we don't count random characters in the percentage
  clean_dna <- nodes[nodes %in% c("A", "T", "G", "C")]
  
  # 4. Count G and C occurrences
  gc_count <- sum(clean_dna %in% c("G", "C"))
  
  # 5. Calculate percentage (Count / Total length * 100)
  gc_percent <- (gc_count / length(clean_dna)) * 100
  
  return(gc_percent)
}

# --- TEST THE FUNCTION ---
# This line makes the result show up in your console
calculate_gc("gcaTTTAT")

# -----------------------------
# Task 2: Protein Molecular Weight Calculator
# -----------------------------

aa_weights <- c(
  A = 89.09, R = 174.20, N = 132.12, D = 133.10,
  C = 121.15, E = 147.13, Q = 146.15, G = 75.07,
  H = 155.16, I = 131.18, L = 131.18, K = 146.19,
  M = 149.21, F = 165.19, P = 115.13, S = 105.09,
  T = 119.12, W = 204.23, Y = 181.19, V = 117.15
)

protein_weight <- function(protein_seq = "Brenda") {
  protein_seq <- toupper(protein_seq)
  protein_vector <- strsplit(protein_seq, "")[[1]]
  
  valid_aas <- protein_vector[protein_vector %in% names(aa_weights)]
  
  # Return 0 if no valid amino acids are present
  if (length(valid_aas) == 0) {
    return(0)
  }
  
  # Sum weights and convert to kDa
  total_weight <- sum(aa_weights[valid_aas]) / 1000
  return(total_weight)
}

# -----------------------------
# Executing with Given Sequences
# -----------------------------

# Example DNA sequence (mentor-approved)
dna_example <- "GCATTTAT"
task1_result <- gc_content(dna_example)

# Example Protein sequence (default name)
task2_result <- protein_weight()

# Displaying the results
print(paste("GC Content:", task1_result, "%"))
print(paste("Protein Weight:", task2_result, "kDa"))



