% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gc_event.R
\name{gc_event}
\alias{gc_event}
\alias{gc_event_query}
\alias{gc_event_id}
\title{Retrieve a calendar event}
\usage{
gc_event_query(x, ..., verbose = TRUE)

gc_event_id(x, id, verbose = TRUE)
}
\arguments{
\item{x}{\code{googlecalendar} object representing the calendar for
where the event resides.}

\item{\dots}{Additional parameters to be passed as part of the HTTP
request. More information on these optional values is available
below.}

\item{verbose}{Logical indicating whether to print informative
messages.}

\item{id}{Event ID as a character string.}
}
\value{
Event metadata as an \code{event} object (a custom class
  wrapping a named list).
}
\description{
Retrieves metadata for a Google Calendar event in the form of an
\code{event} object. This method filters information made available
through the Google Calendar API Events resource.
}
\details{
For \code{gc_event_query}, an arbitrary number of optional query
parameters may be supplied via \dots. A list of available parameters
can be found in
\href{https://developers.google.com/google-apps/calendar/v3/reference/events/list#request}{Events: List}.

Notable parameters include:

\itemize{
  \item{\code{q} -- Free text search terms to find in any field.}
  \item{\code{singleEvents} -- Logical indicating whether to expand
    recurring events into instances and only return single one-off
    events.}
  \item{\code{timeMax} -- Exclusive upper bound of the start time
    filter (formatted as an RFC3339 timestamp).}
  \item{\code{timeMin} -- Inclusive lower bound of the end time
    filter (formatted as an RFC3339 timestamp).}
}

For more information on the structure of an \code{event} object, see
the Google Calendar API
\href{https://developers.google.com/google-apps/calendar/v3/reference/events}{Events Resource Overview}.
}
\examples{
\dontrun{
gc_summary("Commitments") \%>\%
  gc_event_id("lohlv4duqhqu8bh6kfok9ookmk")

gc_summary("Commitments") \%>\%
  gc_event_query(cal, q = "Lunch with Will")
}

}
