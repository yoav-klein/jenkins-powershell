<#
param([string]$Name,
       [bool]$Upload)

echo $Name
echo $Upload
#>

param([string]$Name,
      [switch]$IsCool
      )
      
if($IsCool) {
   echo "Yoav is cool"
} else {
  echo "Yoav isn't cool"
}
