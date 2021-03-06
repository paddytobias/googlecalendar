% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gc_ls.R
\name{gc_ls}
\alias{gc_ls}
\title{List calendars a user can view and modify}
\usage{
gc_ls(pattern = NULL, ..., verbose = TRUE)
}
\arguments{
\item{pattern}{Character string containing a regular expression (or
exact character string for \code{fixed = TRUE}) to be matched to
the calendar title field, \code{summary}. If non-\code{NULL}, only
matching calendars will be returned.}

\item{\dots}{Optional arguments to be passed to
\code{\link[base]{grep}}.}

\item{verbose}{Logical indicating whether to print informative
messages.}
}
\value{
A \code{googlecalendar_ls} object (a custom class wrapping a
  \code{\link[dplyr]{tbl_df}}) with one row for each event returned
  by the service.
}
\description{
Lists the collection of calendars in the user's calendar list. This
method filters information made available in the Google Calendar API
CalendarList resource.
}
\details{
Note that \code{calendar_ls} objects only represent resource
properties that are naturally atomic. To fetch all properties for a
calendar, use \code{gc_calendar}. For more information on the
structure of a \code{calendar_ls} object, see the Google Calendar API

Calendar lists may only give a partial view of the calendars
available to the user. Calendars represented in a list are a subset
of available calendars where \emph{Show in List} has been selected in
\href{https://calendar.google.com/calendar/render#settings-calendars_9}{Calendar Settings}.
}
\examples{
\dontrun{
gc_ls()

gc_ls("ts$")
gc_ls("commitments", ignore.case = TRUE)
gc_ls("Commitments", fixed = TRUE)
}

}
