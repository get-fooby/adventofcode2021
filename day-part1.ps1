$List = @"
numbers here
"@

$previous = $null
[int]$bigCount = 0

($List.Split("`n")) | ForEach-Object 
  {
  if ($_ -gt $previous)
      {$bigcount ++}
      else
      {}
  $previous = $_
  }

$bigcount
