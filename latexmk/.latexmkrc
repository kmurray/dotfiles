#Make xpdf update when latexmk is run with -pvc
# fixes issue with only updating when changing pages
$pdf_previewer = "start xpdf -remote %R %O %S";
$pdf_update_method = 4;
$pdf_update_command = "xpdf -remote %R -reload";
