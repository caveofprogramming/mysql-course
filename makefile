# This just tests the .sql files
# Warning: it will drop and create a database called
# online_shop

# Only actually tested on Mac. Might perhaps be got to work
# on Windows if GNU make is installed.

# Use at your own risk!

# Usage: make tests

# Add password (-pPASSWORD) if you need it,
# or change user name (-u USERNAME)
command = mysql -u root
shell = bash -c

dependencies = \
Exporting_Data \
Solutions1 \
Solutions2 \
Solutions3 \
Left_and_Right_Outer_Joins \
Joins_Between_Pairs_of_Tables \
Many_to_Many \
Joining_Tables_to_Themselves \
Restrict \
Adding_Columns \
Adding_Foreign_keys \
Indexing_Multiple_Columns \
Views \
With_Check_Option \
Demonstrating_Isolation_Levels_and_Row_Locking \
Date_Functions \
Control_Flow_Functions \
Hello_World \
Out_Parameters \
Labelled_Loops \
Generating_Random_Data \
Fetching_Cursor_Data_With_Loops \
Case_Expression \
Solutions4 \
Introducing_Triggers \
Triggers_and_Validation \
Triggers_and_Transactions \
Solution5 \
Defining_Functions \
Art_Shop

default:
	echo "run 'make test'"
	echo "Use at your own risk."
	echo "Creates and drops databases: CAVE_TEST,  CAVE_ONLINE_SHOP, CAVE_ART_SHOP"
	echo "Also creates and drops procedures, functions, etc."
	echo "Do not run as root user on important database!"

test: $(dependencies)
	echo "Hello";

Exporting_Data: clean
	$(shell) "$(command) < *$(@).sql"

Some_Test_Data: clean
	$(shell) "$(command) < *$(@).sql"

Solutions1: Some_Test_Data
	$(shell) "$(command) < *$(@).sql"

Solutions2: Some_Test_Data
	$(shell) "$(command) < *$(@).sql"

Health_Database: clean
		$(shell) "$(command) < *$(@).sql"

Solutions3: Health_Database
		$(shell) "$(command) < *$(@).sql"

Foreign_Keys: clean
	$(shell) "$(command) < *$(@).sql"

Joins_and_Cartesian_Products: Foreign_Keys
	$(shell) "$(command) < *$(@).sql"

Inner_Joins: Joins_and_Cartesian_Products
	$(shell) "$(command) < *$(@).sql"

Left_and_Right_Outer_Joins: Inner_Joins
	$(shell) "$(command) < *$(@).sql"

Joins_Between_Pairs_of_Tables: Health_Database
	$(shell) "$(command) < *$(@).sql"

Many_to_Many: Foreign_Keys
	$(shell) "$(command) < *$(@).sql"

Joining_Tables_to_Themselves: clean
	$(shell) "$(command) < *$(@).sql"

Restrict: clean
	$(shell) "$(command) < *$(@).sql"

Online_Shop: clean
	$(shell) "$(command) < *$(@).sql"

Adding_Columns: clean
	$(shell) "$(command) < *$(@).sql"

Adding_Foreign_keys: clean
	$(shell) "$(command) < *$(@).sql"

Adding_Indexes: clean
	$(shell) "$(command) < *$(@).sql"

Indexing_Multiple_Columns: Adding_Indexes
	$(shell) "$(command) < *$(@).sql"

Views: clean
	$(shell) "$(command) < *$(@).sql"

View_Algorithms: Online_Shop
	$(shell) "$(command) < *$(@).sql"

With_Check_Option: clean
	$(shell) "$(command) < *$(@).sql"

Using_Variables: View_Algorithms
	$(shell) "$(command) < *$(@).sql"

Setting_Variables_With_Selects: Using_Variables
	$(shell) "$(command) < *$(@).sql"

Select_Update_Example: Setting_Variables_With_Selects
	$(shell) "$(command) < *$(@).sql"

Fixing_Select_Update_With_Table_Locks: Select_Update_Example
	$(shell) "$(command) < *$(@).sql"

A_Simple_Transaction: clean
	$(shell) "$(command) < *$(@).sql"

Demonstrating_Isolation_Levels_and_Row_Locking: A_Simple_Transaction
	$(shell) "$(command) < *$(@).sql"

Select_for_Update: clean
	$(shell) "$(command) < *$(@).sql"

Lock_in_Share_Mode: clean
	$(shell) "$(command) < *$(@).sql"

String_functions: Lock_in_Share_Mode
	$(shell) "$(command) < *$(@).sql"

Date_Functions: clean
	$(shell) "$(command) < *$(@).sql"

Control_Flow_Functions: clean
	$(shell) "$(command) < *$(@).sql"

Casting: String_functions
	$(shell) "$(command) < *$(@).sql"

Hello_World: clean
	$(shell) "$(command) < *$(@).sql"

Setting_the_Definer: Fixing_Select_Update_With_Table_Locks
	$(shell) "$(command) < *$(@).sql"

Procedure_Permission_Example: Setting_the_Definer
	$(shell) "$(command) < *$(@).sql"

Procedure_Permissions: Procedure_Permission_Example
	$(shell) "$(command) < *$(@).sql"

Passing_Parameters: Casting
	$(shell) "$(command) < *$(@).sql"

Out_Parameters: Passing_Parameters
	$(shell) "$(command) < *$(@).sql"

If: Select_for_Update
	$(shell) "$(command) < *$(@).sql"

Local_Variables: If
	$(shell) "$(command) < *$(@).sql"

Account_Withdrawal: Local_Variables
	$(shell) "$(command) < *$(@).sql"

Transactional_Withdrawal: Account_Withdrawal
	$(shell) "$(command) < *$(@).sql"

Error_Handlers: Transactional_Withdrawal
	$(shell) "$(command) < *$(@).sql"

While_Loops: Error_Handlers
	$(shell) "$(command) < *$(@).sql"

Labelled_Loops: While_Loops
	$(shell) "$(command) < *$(@).sql"

Generating_Random_Data: clean
	$(shell) "$(command) < *$(@).sql"

A_Data_Generating_Procedure: clean
	$(shell) "$(command) < *$(@).sql"

Cursors: A_Data_Generating_Procedure
	$(shell) "$(command) < *$(@).sql"

Fetching_Cursor_Data_With_Loops: Cursors
	$(shell) "$(command) < *$(@).sql"

Case_Expression: clean
	$(shell) "$(command) < *$(@).sql"

Solutions4: clean
	$(shell) "$(command) < *$(@).sql"

Introducing_Triggers: clean
	$(shell) "$(command) < *$(@).sql"

Triggers_and_Validation: clean
	$(shell) "$(command) < *$(@).sql"

Triggers_and_Transactions: clean
	$(shell) "$(command) < *$(@).sql"

Solution5: clean
	$(shell) "$(command) < *$(@).sql"

Defining_Functions: Procedure_Permissions
	$(shell) "$(command) < *$(@).sql"

Art_Shop: clean
	$(shell) "$(command) < *$(@).sql"


clean:
	$(shell) "$(command) < clean.sql"

# $(command) <
