# Display all properties for all printers installed on the device
$printers = get-printer *  
foreach ($printer in $printers) 
{  
    get-printerproperty -printerName $printer.name  
}
