#' @title Read a shape file and unify crs
#' @param pattern regexp pattern
#' @param crs crs file
#' @param path path to file
read_shape = function(pattern, crs, path = ".") {
  shape = list.files(pattern = pattern, path = path,
                     full.names = TRUE, recursive = TRUE)
  st = st_read(shape, quiet = TRUE)
  st_transform(st, crs = crs)
}
