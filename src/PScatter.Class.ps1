class PScatter {
    [void] Import ($Path){
        Import-Module $Path -Global -Force
    }
}

$PScatter = New-Object -TypeName PScatter