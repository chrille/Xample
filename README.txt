// this is a roo project create by this script
persistence setup --database HYPERSONIC_IN_MEMORY --provider HIBERNATE
entity --class ~.domain.Person
field string username
field string password
field boolean admin
controller scaffold --class ~.web.PersonController
test mock
test integration
security setup
