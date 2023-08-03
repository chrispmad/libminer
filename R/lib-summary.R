#' Enumerate installed R packages
#'
#' Searches for and enumerates R packages installed in various locations on your local machine.
#' It takes no arguments.
#'
#' @param sizes a logical indicating whether or not to calculate sizes
#'
#' @return A data.frame containing the count of packages
#'          in each of your libraries.
#' @export
#'
#' @examples
#' \dontrun{
#' lib_summary()
#' }
lib_summary <- function(sizes = FALSE) {
  # Check installed packages on machine.
  pkgs <- utils::installed.packages()

  # Convert from character matrix to a table.
  pkg_tbl <- table(pkgs[, 'LibPath'])

  # Convert to a dataframe
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = F)

  # Improve column names.
  names(pkg_df) <- c("library","n_packages")

  if (sizes) {
    pkg_df$file_size = map_dbl(
      pkg_df$library,
      ~ sum(fs::file_size(fs::dir_ls(.x, recurse = TRUE)))
    )

    pkg_df$file_size_mb = paste0(round(pkg_df$file_size / 1000000,2), ' MB')
  }

  # return the results
  pkg_df
}
