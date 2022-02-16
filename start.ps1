# Start the sandbox with student ID.
# If running PowerShell scripts is disabled, allow it: https://superuser.com/a/106362

if ( $Args.Count -ne 1 )
{
    Write-Host "Usage: .\start.ps1 student_ID"
}
else
{
	$id = $($args[0])
	"student_id: {0}" -f $id | Out-File -FilePath preconfig\group_vars\ansible.yml
    vagrant up
}
