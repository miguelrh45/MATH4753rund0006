#'@Title My Function
#'
#' @param iter iterations
#' @param N population
#' @param r largest prob
#' @param n sample size
#'
#' @return A barplot
#' @export
#'
#' @examples myfunction(100,5,20,8)
myfunction=function(iter=100,N=20,r=8,n=5){
  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)
  succ=c()
  for( i in 1:iter){
    sam.mat[,i]=sample(rep(c(1,0),c(r,N-r)),n,replace=FALSE)
    succ[i]=sum(sam.mat[,i])
  }
  succ.tab=table(factor(succ,levels=0:n))
  barplot(succ.tab/(iter), col=rainbow(n+1), main="My Function", xlab="Number of successes")
  succ.tab/iter
}
