$folder2test = 'C:\__NSCLIENT Kunden'
function check_folder_exists
{
    if (Test-Path $folder2test -PathType Container)
    {
        "Source folder existing"
    }

    if (-not(Test-Path $folder2test -PathType Container))
    {
        "Source folder not existing"
    }

}
check_folder_exists