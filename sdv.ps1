function hint_location(){
    Write-Host "======================================"
    Write-Host 'for save in C:\Users\alprof\Pictures\ enter 1'
    Write-Host 'for save in D:\Tutorials\ enter 2'
  }
function downvideo(){
        write-host "Enter url video"
        $url = read-host
        yt-dlp -F $url
        write-host "Enter id formatting"
        $id_format = read-host
        #write-host "Enter location save"
        #$lct = read-host
        hint_location
        $ssln = Read-Host
        if ($ssln -eq 1 ){

        [string]$sslocation = "C:\Users\alprof\Pictures\"
        }ElseIf($ssln -eq 2){
          [string]$sslocation = "D:\Tutorials\"
          }else{
 
            write-host "cannot find path $ssln"
            exit
          }
        yt-dlp -f $id_format $url -o $sslocation'%(title)s.%(ext)s'
        }
function downplaylist(){
        Write-Host 'Enter start number :'
        $nstart = Read-Host
        Write-Host 'Enter end number :'
        $nend = Read-Host
        Write-Host 'Enter url playlist :'
        $urlpl = Read-Host
        #yt-dlp -F --playlist-start $nstart --playlist-end $nend  $urlpl
        write-host 'Enter format videos :'
        $fv = read-host
        #Write-Host 'Enter save location :'
        #$slocation = Read-Host
        hint_location
        $ssln = read-host 
      if ($ssln -eq 1 ){

        [string]$sslocation = "/home/alprof/OSCP"
        }ElseIf($ssln -eq 2){
          [string]$sslocation = "D:\Tutorials\"
          }else{
 
            write-host "cannot find path $ssln"
            exit
          }
        yt-dlp -f $fv --playlist-start $nstart --playlist-end $nend $urlpl -o $sslocation\'%(title)s.%(ext)s'
        }
function downfromfile(){
        Write-Host 'Enter file url :'
        $urlf = Read-Host
        yt-dlp -F -a $urlf
        write-host 'Enter format video :'
        $fv = read-host
        #Write-Host 'Enter save location :'
        #$slocte =Read-Host
        hint_location  
        $ssln = read-host 
        if ($ssln -eq 1 ){

        [string]$sslocation = "C:\Users\alprof\Pictures\"
        }ElseIf($ssln -eq 2){
          [string]$sslocation = "D:\Tutorials\"
          }else{
 
            write-host "cannot find path $ssln"
            exit
          }
       yt-dlp -f $fv -a $urlf -o $sslocation\'%(title)s.%(ext)s'
        }

Write-Host "download single videos enter 1 "
Write-Host "download playlist enter 2 "
Write-Host "download videos from file enter 3 "
Write-Host "======================================"
Write-Host "Enter Number method download :"
$nmethod = Read-Host

if ($nmethod -eq 1 ){
    
      downvideo

    }ElseIf($nmethod -eq 2) {
        
        downplaylist

         }elseif($nmethod -eq 3){
         downfromfile
         }
         else{
         'out of the range'
         }
