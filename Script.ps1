

<#
First Case
-----------

A cmdlet that throws an exception
This script will execute and finish in SUCCESS.

Copy-Item invalid_path invalid_dir
#>

#------------------------------


<#
Second case
-------------
A cmdlet that throws an exception
this time with ErrorAction Stop

This will finish with FAILURE

Copy-Item -ErrorAction Stop invalid_path invalid_dir
#>


<#
Third case
-------------
Using exit 1

This will also FAIL the job

try {
    Copy-Item -ErrorAction Stop invalid_path invalid_dir
} catch {
    Write-Output "Error occured..."
    exit 1
}

#>

<#
Fourth case
------------
Setting LastExitCode to 1

#>

$LastExitCode=1