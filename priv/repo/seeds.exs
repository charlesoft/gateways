alias Gateways.Repo
alias Gateways.Vacation.Place

%Place{
  name: "Sand Castle",
  location: "Portugal",
  max_guests: 2
} |> Repo.insert!()

%Place{
  name: "New York Hotel",
  location: "United States",
  max_guests: 6
} |> Repo.insert!()

%Place{
  name: "London National Park",
  location: "England",
  max_guests: 8
} |> Repo.insert!()
