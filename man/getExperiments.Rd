% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wsCalls.R
\name{getExperiments}
\alias{getExperiments}
\title{retrieves the experiments from the web service}
\usage{
getExperiments(token, projectName = "", season = "", sortOrder = "DESC",
  page = NULL, pageSize = NULL, verbose = FALSE)
}
\arguments{
\item{token}{a token}

\item{projectName}{project name}

\item{season}{character, a year when the experiment was conducted}

\item{sortOrder}{ordering "ASC" or "DESC"}

\item{page}{displayed page (pagination Plant Breeding API)}

\item{pageSize}{number of elements by page (pagination Plant Breeding API)}

\item{verbose}{logical FALSE by default, if TRUE display information about the progress}
}
\value{
WSResponse object
}
\description{
Retrieves the available experiments and/or linked to a project
}
\details{
You have to execute the getToken() function first to have access to the web
service
}
\examples{
\donttest{
initializeClientConnection(apiID="ws_public")
 aToken = getToken("guestphis@supagro.inra.fr","guestphis")$data
 getExperiments(aToken,page=3,pageSize=100,startDate="2012-02-21",endDate="2012-03-21")
 getExperiments(aToken,projectName = "PHIS_Publi")
 getExperiments(aToken,sortOrder = "ASC")
 getExperiments(aToken,season = 2012 )
}
}
\seealso{
http://docs.brapi.apiary.io/#introduction/url-structure
}
