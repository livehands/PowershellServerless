# Input bindings are passed in via param block.
param($Documents, $TriggerMetadata)

if ($Documents.Count -gt 0) {
    Write-Host "Document Id: $($Documents[0].id)"

    ForEach($Document in $Documents) {
        #$outputSbMsg = $document

        Push-OutputBinding -name outputSbMsg -value $Document
    }
}
