git clone https://github.com/mit-pdos/xv6-riscv.git

Remove-Item ./xv6-riscv/.git -Recurse -Force
Move-Item -Path ./xv6-riscv/* -Destination ./
Remove-Item ./xv6-riscv/ -Recurse -Force

Rename-Item -Path .gdbinit.tmpl-riscv -NewName .gdbinit.tmpl-riscv.bak
Get-Content .gdbinit.tmpl-riscv.bak | %{$_ -replace "127\.0\.0\.1","xv6-debug"} | Set-Content .gdbinit.tml-riscv