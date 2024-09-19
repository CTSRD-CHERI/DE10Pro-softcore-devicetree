OUTPUT_ARCH( "riscv" )
/* TARGET( "binary" ) */

SECTIONS
{
  . = 0xc0000000;
  _start = .;
  .data : { *(.data) }
}
