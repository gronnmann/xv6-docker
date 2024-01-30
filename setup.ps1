git clone https://github.com/mit-pdos/xv6-riscv.git

Remove-Item ./xv6-riscv/.git
Move-Item -Path ./xv6-riscv/*.* -Destination ./
Remove-Item ./xv6-riscv/ -Recurse

get-content .gdbinit.tmpl-riscv | %{$_ -replace "127\.0\.0\.1","xv6-debug"}