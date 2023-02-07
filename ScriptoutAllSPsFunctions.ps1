# Replace <ServerName> and <DatabaseName> with the appropriate values for your environment
$server = "HP-5CG833024H"
$database = "Test"

# Establish a connection to the SQL Server instance
$conn = New-Object System.Data.SqlClient.SqlConnection("Server=$server;Database=$database;Integrated Security=True")
$conn.Open()

# Get a list of all stored procedures and functions in the database
$cmd = $conn.CreateCommand()
$cmd.CommandText = "SELECT name, type_desc FROM sys.objects WHERE type_desc IN ('SQL_STORED_PROCEDURE', 'SQL_SCALAR_FUNCTION', 'SQL_TABLE_VALUED_FUNCTION')"
$reader = $cmd.ExecuteReader()

# Script each stored procedure and function
while ($reader.Read()) {
  $name = $reader.GetString(0)
  $type = $reader.GetString(1)

  # Script the object
  $scripter = New-Object Microsoft.SqlServer.Management.Smo.Scripter($server)
  $scripter.Options.ScriptDrops = $false
  $scripter.Options.IncludeHeaders = $true
  $scripter.Options.ToFileOnly = $true
  $scripter.Options.FileName = "$name.sql"
  $scripter.Options.AppendToFile = $false

  if ($type -eq "SQL_STORED_PROCEDURE") {
    $obj = New-Object Microsoft.SqlServer.Management.Smo.StoredProcedure($server, $database, $name)
    $scripter.Script($obj)
  } else {
    $obj = New-Object Microsoft.SqlServer.Management.Smo.UserDefinedFunction($server, $database, $name)
    $scripter.Script($obj)
  }
}

$reader.Close()
$conn.Close()
