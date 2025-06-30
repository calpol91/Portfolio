# Get domain credentials (use: domain\username or username@domain.com)
$cred = Get-Credential

# Specify the domain controller (DNS name or IP)
$dc = "10.0.0.1" 

# Run an AD command using -Server and -Credential
#Get-ADUser -Identity callum.ward -Server $dc -Credential $cred

# unused and untested - laptop not on domain and no permissions/access to DC 