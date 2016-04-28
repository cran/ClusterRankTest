\name{clus.rank.sum}
\alias{clus.rank.sum}
\title{Cluster Rank Test}
\description{This package consists of methods that compute rank based tests for clustered data.}
\usage{
clus.rank.sum(Cluster, X, grp = NULL, Y = NULL, test = c("DS", "DD", "SDS"))
}
\arguments{
  \item{Cluster}{ Cluster ID }
  \item{X}{ Outcome variable }
  \item{grp}{ Binary group indicator variable (0 or 1) if test= "DS" or "DD" }
  \item{Y}{ Matched outcome variable if test="SDS" }
  \item{test}{ "DS" =Datta-Satten rank-sum test, "DD" = Dutta-Datta rank-sum test, "SDS" = Data-Satten signed rank test }
}
\value{
  \item{pvalue }{ P-value for the test }
  \item{Test Statistic }{ Test statistic value for the test}
}
\references{

Datta, S., and Satten, G. A. (2005). Rank-sum tests for clustered data. Journal of the American Statistical Association, 100, 908-915.

Datta, S., and Satten, G. A. (2008). A Signed-rank test for clustered data. Biometrics, 64, 501-507.

Dutta, S., and Datta, S. (2015). A rank-sum test for clustered data when the number of subjects in a group within a cluster is informative. Biometrics, doi: 10.1111/biom.12447.
}
\examples{

Cluster<-c(1,1,2,2,2,2,3,3,3)
X<-c(1,4,2,4,6,7,4,7,8)
grp<-c(0,1,0,0,1,1,1,0,1)
dataset <- list(Cluster,X,grp)

 clus.rank.sum(Cluster, X, grp, test="DS")
 
}
