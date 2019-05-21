CREATE USER [Mathew]
	FOR LOGIN [Test_Login]
	WITH DEFAULT_SCHEMA = [dbo]
GO
GRANT ALTER
	ON USER::[Mathew]
	TO [public]
GO
GRANT CONTROL
	ON USER::[Mathew]
	TO [public]
GO
GRANT IMPERSONATE
	ON USER::[Mathew]
	TO [public]
GO
GRANT VIEW DEFINITION
	ON USER::[Mathew]
	TO [public]
GO
GRANT ALTER
	ON USER::[Mathew]
	TO [BMF_SS_MOVIES]
GO
GRANT CONTROL
	ON USER::[Mathew]
	TO [BMF_SS_MOVIES]
GO
GRANT IMPERSONATE
	ON USER::[Mathew]
	TO [BMF_SS_MOVIES]
GO
GRANT VIEW DEFINITION
	ON USER::[Mathew]
	TO [BMF_SS_MOVIES]
GO
