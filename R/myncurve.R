#' myncurve
#'
#' @param mu mean
#' @param sigma standard deviation
#' @param x limit of x=a of mu +/- 3sigma
#'
#' @return graph of distribution with labeling
#' @export
#'
#' @examples \dontrun{(mu=5,sigma=3,6)}
myncurve = function(mu,sigma,x){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))

  # Create x boundaries for -∞ to  x=a
  xcurve = seq(mu-3*sigma,x,length=1000)

  # Create y boundaries for -∞ to  x=a
  ycurve= dnorm(xcurve,mean=mu,sd=sigma)

  # Create polygon to shade the area
  polygon(c(mu-3*sigma,xcurve,x), c(0,ycurve,0),col = "Green")

  # Compute probability
  prob= pnorm(x,mean=mu,sd=sigma)
  prob=round(prob,4)

  # Paste probability
  text(x,dnorm(x,mu,sigma),paste0("Area=",prob))
}
