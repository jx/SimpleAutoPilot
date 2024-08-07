# Get the serial number
$serial = (Get-CimInstance -Class Win32_BIOS).SerialNumber

# Get the hash (if available)
$hash = (Get-CimInstance -Namespace root/cimv2/mdm/dmmap -Class MDM_DevDetail_Ext01).DeviceHardwareData

# Getting the PKID is generally problematic for anyone other than OEMs, so let's skip it here -- this is the original comment from the MS script, left here for explanation only.
$product = ""

# Build CSV
$csv = "Device Serial Number,Windows Product ID,Hardware Hash`r`n"+$serial+","+$product+","+$hash

# Set output
$out = ".\autopilot-"+$serial+".csv"

# Write output
$csv | Out-File $out
echo "Finished, output file is" $out