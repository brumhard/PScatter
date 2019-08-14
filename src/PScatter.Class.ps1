class PScatter {
    [void] Import ($Path) {
        if (-Not (Test-Path $Path)) {
            $exception = ([System.IO.FileNotFoundException]::new("Path $Path could not be found"))
            Write-Error -Exception $exception -Category InvalidArgument -TargetObject $Path
            return
        }
        if (-Not ($Path -match "\S+\.psm1")) {
            $exception = ([System.ArgumentOutOfRangeException]::new("Path", "$Path is not a valid .psm1 file"))
            Write-Error -Exception $exception -Category InvalidArgument -TargetObject $Path
            return
        }
        Import-Module $Path -Global -Force
    }
}

$PScatter = New-Object -TypeName PScatter