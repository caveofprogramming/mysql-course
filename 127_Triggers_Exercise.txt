

Create a table of animals that includes a text-type column (e.g. varchar or text) called "animal_name".

Create a trigger that prevents you from inserting any animal name containing the word "cat". E.g. "Wildcat", "Housecat", etc.

If someone tries to insert any kind of cat, the trigger should insert "xxx" instead and should log the attempted entry, including the animal name,
in a "violations" table, along with the date and time it occurred.

Animals
primary key
animal name
(anything else)

Violations
primary key
animal name
date and time
