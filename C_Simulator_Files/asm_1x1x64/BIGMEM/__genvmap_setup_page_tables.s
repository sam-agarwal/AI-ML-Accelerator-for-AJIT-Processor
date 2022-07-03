.section .text.pagetablesetup
.global page_table_setup
page_table_setup:
   set PAGE_TABLE_BASE, %g1
   !PTD: context=0, index=0, level=0, child_p_addr=0x900, p_addr=0xc00
   ! *(PAGE_TABLE_BASE + 0xc00) = ptd(PAGE_TABLE_BASE + 0x800)
   ! make PTD from 0x900
   set 0x800, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xc00, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=64, level=1, child_p_addr=0x0, p_addr=0x900
   ! *(PAGE_TABLE_BASE + 0x900) = ptd(PAGE_TABLE_BASE + 0x0)
   ! make PTD from 0x0
   set 0x0, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x900, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=0, level=2,  ppnr=0x40000000, p_addr=0x0, cacheable=0x1, acc=0x2
   ! *(PAGE_TABLE_BASE + 0x0) = 0x400008a (pte)
   set 0x400008a, %g2
   set 0x0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=1, level=2,  ppnr=0x40040000, p_addr=0x4, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x4) = 0x400408e (pte)
   set 0x400408e, %g2
   set 0x4, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=65, level=1, child_p_addr=0x104, p_addr=0x904
   ! *(PAGE_TABLE_BASE + 0x904) = ptd(PAGE_TABLE_BASE + 0x100)
   ! make PTD from 0x104
   set 0x100, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x904, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=1, level=2,  ppnr=0x41040000, p_addr=0x104, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x104) = 0x410408e (pte)
   set 0x410408e, %g2
   set 0x104, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=66, level=1, child_p_addr=0x204, p_addr=0x908
   ! *(PAGE_TABLE_BASE + 0x908) = ptd(PAGE_TABLE_BASE + 0x200)
   ! make PTD from 0x204
   set 0x200, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x908, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=1, level=2,  ppnr=0x42040000, p_addr=0x204, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x204) = 0x420408e (pte)
   set 0x420408e, %g2
   set 0x204, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=67, level=1, child_p_addr=0x304, p_addr=0x90c
   ! *(PAGE_TABLE_BASE + 0x90c) = ptd(PAGE_TABLE_BASE + 0x300)
   ! make PTD from 0x304
   set 0x300, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x90c, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=1, level=2,  ppnr=0x43040000, p_addr=0x304, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x304) = 0x430408e (pte)
   set 0x430408e, %g2
   set 0x304, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=68, level=1, child_p_addr=0x404, p_addr=0x910
   ! *(PAGE_TABLE_BASE + 0x910) = ptd(PAGE_TABLE_BASE + 0x400)
   ! make PTD from 0x404
   set 0x400, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x910, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=1, level=2,  ppnr=0x44040000, p_addr=0x404, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x404) = 0x440408e (pte)
   set 0x440408e, %g2
   set 0x404, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=255, level=1, child_p_addr=0x7fc, p_addr=0xbfc
   ! *(PAGE_TABLE_BASE + 0xbfc) = ptd(PAGE_TABLE_BASE + 0x700)
   ! make PTD from 0x7fc
   set 0x700, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0xbfc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTD: context=0, index=63, level=2, child_p_addr=0x5e0, p_addr=0x7fc
   ! *(PAGE_TABLE_BASE + 0x7fc) = ptd(PAGE_TABLE_BASE + 0x500)
   ! make PTD from 0x5e0
   set 0x500, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x7fc, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=56, level=3,  ppnr=0xffff8000, p_addr=0x5e0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x5e0) = 0xffff88e (pte)
   set 0xffff88e, %g2
   set 0x5e0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=56, level=3,  ppnr=0xffff9000, p_addr=0x5e0, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x5e0) = 0xffff98e (pte)
   set 0xffff98e, %g2
   set 0x5e0, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTD: context=0, index=60, level=2, child_p_addr=0x604, p_addr=0x7f0
   ! *(PAGE_TABLE_BASE + 0x7f0) = ptd(PAGE_TABLE_BASE + 0x600)
   ! make PTD from 0x604
   set 0x600, %g4
   add %g1, %g4, %g4
   srl %g4, 0x4, %g4
   or  %g4, 0x1, %g4
   ! g4 contains PTD 
   set 0x7f0, %g5
   add %g5, %g1, %g3
   st %g4, [%g3]
   ! g4 stored into [g3] 
   !PTE: context=0, index=1, level=3,  ppnr=0x400ca000, p_addr=0x604, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x604) = 0x400ca8e (pte)
   set 0x400ca8e, %g2
   set 0x604, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=2, level=3,  ppnr=0x400cb000, p_addr=0x608, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x608) = 0x400cb8e (pte)
   set 0x400cb8e, %g2
   set 0x608, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=3, level=3,  ppnr=0x400cc000, p_addr=0x60c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x60c) = 0x400cc8e (pte)
   set 0x400cc8e, %g2
   set 0x60c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=4, level=3,  ppnr=0x400cd000, p_addr=0x610, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x610) = 0x400cd8e (pte)
   set 0x400cd8e, %g2
   set 0x610, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=5, level=3,  ppnr=0x400ce000, p_addr=0x614, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x614) = 0x400ce8e (pte)
   set 0x400ce8e, %g2
   set 0x614, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=6, level=3,  ppnr=0x400cf000, p_addr=0x618, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x618) = 0x400cf8e (pte)
   set 0x400cf8e, %g2
   set 0x618, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=7, level=3,  ppnr=0x400d0000, p_addr=0x61c, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x61c) = 0x400d08e (pte)
   set 0x400d08e, %g2
   set 0x61c, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=8, level=3,  ppnr=0x400d1000, p_addr=0x620, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x620) = 0x400d18e (pte)
   set 0x400d18e, %g2
   set 0x620, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   !PTE: context=0, index=9, level=3,  ppnr=0x400d2000, p_addr=0x624, cacheable=0x1, acc=0x3
   ! *(PAGE_TABLE_BASE + 0x624) = 0x400d28e (pte)
   set 0x400d28e, %g2
   set 0x624, %g5
   add %g5, %g1, %g3
   st %g2, [%g3]
   retl;
   nop;
! done: page_table_setup
! start: set context-table-pointer = PAGE_TABLE_BASE + 0xc00
.global set_context_table_pointer
set_context_table_pointer:
   set PAGE_TABLE_BASE, %g1
   set 0xc00, %g5
   add %g5, %g1, %g2
   srl  %g2, 0x4, %g2
   or  %g2, 0x1, %g2
   set 0x100, %g3
   sta %g2, [%g3] 0x4
   retl;
   nop;
! done: set  context-table-pointer
.align 1024
PAGE_TABLE_BASE: .skip 4096
