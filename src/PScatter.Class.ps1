class PScatter {
    [void] Import ($Path) {
        if (-Not (Test-Path $Path)) {
            $exception = ([System.IO.FileNotFoundException]::new("Path $Path could not be found"))
            Write-Error -Exception $exception -Category InvalidArgument -TargetObject $Path
            return
        }

        $moduleFiles = Get-ChildItem -Path $Path | Where-Object {$_.Extension -eq ".psm1"}
        if ($moduleFiles.Count -le 0) {
            $exception = ([System.ArgumentOutOfRangeException]::new("Path", "$Path doesn't contain a valid .psm1 file"))
            Write-Error -Exception $exception -Category InvalidArgument -TargetObject $Path
            return
        }

        $moduleFiles | ForEach-Object { Import-Module $_.FullName -Global -Force}
    }
}

$PScatter = New-Object -TypeName PScatter