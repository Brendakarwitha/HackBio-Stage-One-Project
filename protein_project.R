# -----------------------------
# Task 1: GC% Calculation
# -----------------------------

gc_content <- function(seq) {
  seq <- toupper(seq)
  # Keep only valid nucleotides
  seq_vector <- strsplit(seq, "")[[1]]
  valid_nt <- seq_vector[seq_vector %in% c("A", "T", "G", "C")]
  gc_count <- sum(valid_nt %in% c("G", "C"))
  gc_percent <- (gc_count / length(valid_nt)) * 100
  return(gc_percent)
}

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

protein_weight <- function(protein_name = "Brenda") {
  protein_name <- toupper(protein_name)
  protein_vector <- strsplit(protein_name, "")[[1]]
  
  # Keep only valid amino acids
  valid_aas <- protein_vector[protein_vector %in% names(aa_weights)]
  
  # Sum weights and convert to kDa
  total_weight <- sum(aa_weights[valid_aas]) / 1000
  return(total_weight)
}


