# Spreadsheet auditor
The angle: actually run the model, don't just read it. Static tools check whether formulas look consistent. LLMs read the grid as text and guess. Neither checks whether the model behaves correctly. Your engine can evaluate the workbook outside Excel, so you can do property-based testing, basically QuickCheck for spreadsheets:

An LLM reads the labels and proposes invariants. For example: "Total Assets should equal Liabilities + Equity," "raising price shouldn't reduce revenue," "cash balance should roll forward."
Your engine perturbs the inputs thousands of times and checks whether each invariant holds.
You report only the violations that were actually verified, with the concrete input that breaks the model.

# Excel Rigour
Excel → real code, with proof of equivalence. Coherent keeps Excel as the source of truth. The opposite job is firms trying to get off spreadsheets. An LLM writes readable Python or Rust from the model, and then your engine differential-tests the two on thousands of generated inputs until they agree exactly. Any divergence becomes a concrete counterexample fed back to the LLM. This is basically a compiler project (your Haskell work) with a verification loop, and "it's provably the same model" is a strong sell. I haven't checked for competitors beyond Coherent.

