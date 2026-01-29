# Step-by-Step Approach to Solving the Protein Weight Calculator in R

The objective of this task was to write an R function that calculates the molecular weight of a protein sequence in kiloDaltons (kDa). The function needed to be flexible, accept a default input, handle both valid and invalid characters, and return an accurate molecular weight using the provided amino acid table.

## Step 1: Creating the Amino Acid Weight Reference

The first step was to organize the molecular weights of the 20 standard amino acids. I created a named vector in R where each one-letter amino acid code corresponds to its molecular weight in Daltons. This structure acts as a lookup table, allowing R to efficiently retrieve the correct weight for each amino acid in a protein sequence.

## Step 2: Defining the Function

Next, I defined a custom function called `protein_weight`. The function was given a default input value of my name, “Brenda,” so that it could run even if no argument was provided. This also demonstrated how default parameters work in R.

## Step 3: Standardizing the Input

To ensure consistency, the input string was converted to uppercase using the `toupper()` function. This step allows the function to handle sequences written in lowercase, uppercase, or mixed case without producing errors.

## Step 4: Splitting the Protein Sequence

The input string was then split into individual characters using `strsplit()`. This created a vector where each element represents a single amino acid, making it easier to process the sequence one amino acid at a time.

## Step 5: Handling Invalid Characters

Protein sequences or names may contain characters that do not represent valid amino acids. To make the function robust, I filtered the vector to keep only characters that match the one-letter amino acid codes in the weight table. Any invalid characters were ignored, ensuring the function could still calculate a meaningful molecular weight.

## Step 6: Calculating the Molecular Weight

The valid amino acids were used to index the amino acid weight vector, and their weights were summed using the `sum()` function. Because the provided weights are in Daltons, the total was divided by 1000 to convert the result into kiloDaltons (kDa).

## Step 7: Returning the Result

Finally, the function returns the calculated molecular weight in kDa. This output can be used directly or stored for further analysis.

## Conclusion

By breaking the problem into clear steps, creating a reference table, cleaning and validating input, and applying vectorized calculations, I was able to build a reliable and flexible protein molecular weight calculator in R. This approach highlights the importance of data validation and thoughtful function design when working with biological sequence data.
