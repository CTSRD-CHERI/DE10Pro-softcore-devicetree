OUTPUT_ARCH( "riscv" )
/* TARGET( "binary" ) */

SECTIONS
{
  . = 0x80000000;
  _start = .;
  .data : { *(.data) }
}
