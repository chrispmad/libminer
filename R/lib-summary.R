lib_summary <- function() {
  # Check installed packages on machine.
  pkgs <- utils::installed.packages()

  # Convert from character matrix to a table.
  pkg_tbl <- table(pkgs[, 'LibPath'])

  # Convert to a dataframe
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = F)

  # Improve column names.
  names(pkg_df) <- c("library","n_packages")

  # return the results
  pkg_df
}
