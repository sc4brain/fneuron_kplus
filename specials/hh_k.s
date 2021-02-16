	.ident	"$Options: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) --preinclude //opt/FJSVtclang/GM-1.2.0-15/bin/../lib/c99.pre -D__FUJITSU -Dunix -Dsparc -D__sparc__ -D__unix -D__sparc -D_OPENMP=200805 -D__fcc_version__=0x600 -D__fcc_version=600 -D__HPC_ACE__ -D__ELF__ -D__unix__ -D__linux__ -D__linux -Asystem(unix) -Dlinux -D__LIBC_6B -D__LP64__ -D_LP64 -DHAVE_CONFIG_H -I. -I.. -I/home/hp120263/k00634/neuron_kplus/exec/include/nrn -I/home/hp120263/k00634/neuron_kplus/exec/sparc64/lib --K=omp -DKPLUS_USE_OMP -DKPLUS_USE_FAPP_RANGE -I/opt/FJSVtclang/GM-1.2.0-15/include/mpi/fujitsu --K=noocl -D_REENTRANT -D__MT__ --lp --zmode=64 --c99 -I//opt/FJSVtclang/GM-1.2.0-15/bin/../include -I/opt/FJSVXosDevkit/sparc64fx/target/usr/include --K=opt -D__sparcv9 -D__sparc_v9__ -D__arch64__ hh_k.c -- -ncmdname=fccpx -nspopt=\"-Kident_mpi -mt -DHAVE_CONFIG_H -I. -I.. -I/home/hp120263/k00634/neuron_kplus/exec/include/nrn -I/home/hp120263/k00634/neuron_kplus/exec/sparc64/lib -S -Kfast,openmp,optmsg=2 -Nrt_tune,src,sta -DKPLUS_USE_OMP -DKPLUS_USE_FAPP_RANGE -c -I/opt/FJSVtclang/GM-1.2.0-15/include/mpi/fujitsu\" -Kthreadsafe -O3 -x- -Kdalign,ns,mfunc,lib,eval,rdconv,prefetch_conditional,fp_contract,fp_relaxed,ilfunc,fast_matmul,openmp,threadsafe,optmsg=2 -Nrt_tune,src,sta -KLP -zsta=amdx1l2 -zsrc=hh_k.c hh_k.s $"
	.file	"hh_k.c"
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _hoc_setdata $"
	.section	".text"
	.align	64
_hoc_setdata:
.L20:
.LSSN1:

/*     78 */	save	%sp,-192,%sp


.L21:
.LSSN2:

/*     80 */	sethi	%h44(.LB0),%l0

/*     80 */	or	%l0,%m44(.LB0),%l0

/*     80 */	sllx	%l0,12,%l0

/*     80 */	or	%l0,%l44(.LB0),%l0


/*     80 */	call	hoc_getdata_range
/*     80 */	ldsw	[%l0+128],%o0
.LSSN3:

/*     82 */	sxar2
/*     82 */	sethi	%h44(.LR0),%xg0
/*     82 */	or	%xg0,%m44(.LR0),%xg0
.LSSN4:

/*     80 */	stx	%o0,[%l0+112]
.LSSN5:

/*     82 */	sxar2
/*     82 */	sllx	%xg0,12,%xg0
/*     82 */	or	%xg0,%l44(.LR0),%xg0
/*     82 */	sxar1
/*     82 */	ldd	[%xg0+120],%f0
/*     82 */	std	%f0,[%sp+2175]
/*     82 */	call	ret
/*     82 */	ldx	[%sp+2175],%o0


.L22:
.LSSN6:

/*     83 */	ret
	restore



.LSSN7:
	.size	_hoc_setdata,.-_hoc_setdata
	.type	_hoc_setdata,#function
	.section	".rodata"
	.local	jpj..loop__hoc_setdata
	.align	8
jpj..loop__hoc_setdata:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _check_table_thread $"
	.section	".text"
	.align	64
_check_table_thread:
.L23:
.LSSN8:

/*     95 */	save	%sp,-192,%sp
/*     95 */	mov	%i3,%o3
/*     95 */	mov	%i2,%o2
/*     95 */	mov	%i1,%o1
/*     95 */	mov	%i0,%o0

.L24:
.LSSN9:

/*     96 */	call	_check_rates
	nop


.L25:
.LSSN10:

/*     97 */	ret
	restore



.LSSN11:
	.size	_check_table_thread,.-_check_table_thread
	.type	_check_table_thread,#function
	.section	".rodata"
	.local	jpj..loop__check_table_thread
	.align	8
jpj..loop__check_table_thread:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c nrn_alloc $"
	.section	".text"
	.align	64
nrn_alloc:
.L26:
.LSSN12:

/*    183 */	save	%sp,-192,%sp


.L27:
.LSSN13:

/*    188 */	sethi	%h44(.LB0),%l0

/*    188 */	mov	19,%o1

/*    188 */	or	%l0,%m44(.LB0),%l0

/*    188 */	mov	%i0,%o2

/*    188 */	sllx	%l0,12,%l0

/*    188 */	or	%l0,%l44(.LB0),%l0


/*    188 */	call	nrn_prop_data_alloc
/*    188 */	ldsw	[%l0+128],%o0
.LSSN14:

.LSSN15:

/*    195 */	sxar2
/*    195 */	sethi	%h44(.LR0),%xg0
/*    195 */	mov	19,%xg1
.LSSN16:

/*    190 */	sxar1
/*    190 */	or	%xg0,%m44(.LR0),%xg0
.LSSN17:

/*    196 */	mov	7,%o1
.LSSN18:

/*    190 */	sxar1
/*    190 */	sllx	%xg0,12,%xg0
.LSSN19:

/*    196 */	mov	%i0,%o2
.LSSN20:

/*    190 */	sxar2
/*    190 */	or	%xg0,%l44(.LR0),%xg0
/*    190 */	ldd	[%xg0+88],%f32
.LSSN21:

.LSSN22:

/*    192 */	sxar2
/*    192 */	ldd	[%xg0+80],%f34
/*    192 */	ldd	[%xg0+72],%f36
.LSSN23:

/*    193 */	sxar1
/*    193 */	ldd	[%xg0+64],%f38
.LSSN24:

/*    190 */	std	%f32,[%o0]
.LSSN25:

/*    191 */	std	%f34,[%o0+8]
.LSSN26:

/*    192 */	std	%f36,[%o0+16]
.LSSN27:

/*    193 */	std	%f38,[%o0+24]
.LSSN28:

/*    194 */	stx	%o0,[%i0+16]
.LSSN29:

/*    195 */	sxar1
/*    195 */	stw	%xg1,[%i0+12]
.LSSN30:

/*    196 */	call	nrn_prop_datum_alloc
/*    196 */	ldsw	[%l0+128],%o0
/*    196 */	mov	%o0,%l1
.LSSN31:

/*    197 */	stx	%l1,[%i0+24]
.LSSN32:

/*    199 */	call	need_memb
/*    199 */	ldx	[%l0+104],%o0
/*    199 */	mov	%o0,%l2
.LSSN33:

/*    200 */	mov	%g0,%l3
/*    200 */	mov	1,%l4
/*    200 */	mov	%l2,%o0
/*    200 */	mov	%l3,%o1
/*    200 */	call	nrn_promote
/*    200 */	mov	%l4,%o2
.LSSN34:

/*    201 */	sxar2
/*    201 */	ldx	[%l2+16],%xg2
/*    201 */	stx	%xg2,[%l1]
.LSSN35:

/*    202 */	sxar2
/*    202 */	ldx	[%l2+16],%xg1
/*    202 */	add	%xg1,24,%xg1
.LSSN36:

/*    203 */	sxar2
/*    203 */	stx	%xg1,[%l1+8]
/*    203 */	ldx	[%l2+16],%xg2
/*    203 */	sxar2
/*    203 */	add	%xg2,32,%xg2
/*    203 */	stx	%xg2,[%l1+16]
.LSSN37:

/*    204 */	call	need_memb
/*    204 */	ldx	[%l0+96],%o0
/*    204 */	mov	%o0,%l5
.LSSN38:

/*    205 */	mov	%l3,%o1
/*    205 */	mov	%l5,%o0
/*    205 */	call	nrn_promote
/*    205 */	mov	%l4,%o2
.LSSN39:

/*    206 */	sxar2
/*    206 */	ldx	[%l5+16],%xg3
/*    206 */	stx	%xg3,[%l1+24]
.LSSN40:

/*    207 */	sxar2
/*    207 */	ldx	[%l5+16],%xg3
/*    207 */	add	%xg3,24,%xg3
.LSSN41:

/*    208 */	sxar2
/*    208 */	stx	%xg3,[%l1+32]
/*    208 */	ldx	[%l5+16],%xg4
/*    208 */	sxar2
/*    208 */	add	%xg4,32,%xg4
/*    208 */	stx	%xg4,[%l1+40]
/*    208 */	ret
	restore

.LSSN42:


.L28:


.LSSN43:
	.size	nrn_alloc,.-nrn_alloc
	.type	nrn_alloc,#function
	.section	".rodata"
	.local	jpj..loop_nrn_alloc
	.align	8
jpj..loop_nrn_alloc:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _hh_k_reg $"
	.section	".text"
	.global	_hh_k_reg
	.align	64
_hh_k_reg:
.L29:
.LSSN44:

/*    220 */	save	%sp,-208,%sp


.L30:
.LSSN45:

/*    222 */	call	_initlists
	nop
.LSSN46:

/*    223 */	sethi	%h44(.LR0),%l0
/*    223 */	or	%l0,%m44(.LR0),%l0
/*    223 */	sllx	%l0,12,%l0
/*    223 */	or	%l0,%l44(.LR0),%l0
/*    223 */	add	%l0,584,%o0
/*    223 */	ldd	[%l0+128],%f2
/*    ??? */	std	%f2,[%fp+2039]
/*    223 */	std	%f2,[%sp+2183]
/*    223 */	call	ion_reg
/*    223 */	ldx	[%sp+2183],%o1
.LSSN47:

/*    224 */	add	%l0,576,%o0
/*    ??? */	ldd	[%fp+2039],%f2
/*    224 */	std	%f2,[%sp+2183]
/*    224 */	call	ion_reg
/*    224 */	ldx	[%sp+2183],%o1
.LSSN48:

/*    225 */	call	hoc_lookup
/*    225 */	add	%l0,568,%o0
/*    225 */	sxar1
/*    225 */	mov	%o0,%xg1
/*    225 */	sethi	%h44(.LB0),%l1
/*    225 */	or	%l1,%m44(.LB0),%l1
.LSSN49:

.LSSN50:

/*    225 */	sllx	%l1,12,%l1
/*    225 */	or	%l1,%l44(.LB0),%l1
/*    225 */	sxar1
/*    225 */	stx	%xg1,[%l1+104]
.LSSN51:

/*    226 */	call	hoc_lookup
/*    226 */	add	%l0,560,%o0
/*    226 */	stx	%o0,[%l1+96]
.LSSN52:

/*    227 */	sethi	%h44(.LS0),%l2
/*    227 */	mov	2,%l4
/*    227 */	or	%l2,%m44(.LS0),%l2
/*    227 */	sethi	%h44(nrn_alloc),%o1
/*    227 */	sllx	%l2,12,%l2
/*    227 */	sethi	%h44(nrn_cur),%o2
/*    227 */	or	%l2,%l44(.LS0),%l2
/*    227 */	sethi	%h44(nrn_jacob),%o3
/*    227 */	sethi	%h44(nrn_state),%o4
/*    227 */	sethi	%h44(nrn_init),%o5
/*    227 */	or	%o1,%m44(nrn_alloc),%o1
/*    227 */	or	%o2,%m44(nrn_cur),%o2
/*    227 */	or	%o3,%m44(nrn_jacob),%o3
/*    227 */	or	%o4,%m44(nrn_state),%o4
/*    227 */	sxar1
/*    227 */	ldsw	[%l2+36],%xg0
/*    227 */	add	%l2,64,%l3
/*    227 */	or	%o5,%m44(nrn_init),%o5
/*    227 */	sllx	%o1,12,%o1
/*    227 */	sllx	%o2,12,%o2
/*    227 */	sllx	%o3,12,%o3
/*    227 */	sllx	%o4,12,%o4
/*    227 */	or	%o1,%l44(nrn_alloc),%o1
/*    227 */	sllx	%o5,12,%o5
/*    227 */	sxar1
/*    227 */	stx	%xg0,[%sp+2223]
/*    227 */	or	%o2,%l44(nrn_cur),%o2
/*    227 */	or	%o3,%l44(nrn_jacob),%o3
/*    227 */	or	%o4,%l44(nrn_state),%o4
/*    227 */	or	%o5,%l44(nrn_init),%o5
/*    227 */	mov	%l3,%o0
/*    227 */	call	register_mech
/*    227 */	stx	%l4,[%sp+2231]
.LSSN53:

/*    228 */	mov	1,%l5
/*    228 */	mov	8,%l6
/*    228 */	mov	%l5,%o0
/*    228 */	call	hoc_Ecalloc
/*    228 */	mov	%l6,%o1
/*    228 */	call	hoc_malchk
/*    228 */	stx	%o0,[%l1+120]
.LSSN54:

.LSSN55:

/*    477 */	sxar2
/*    477 */	ldsw	[%l2+32],%xg1
/*    477 */	cmp	%xg1,%g0
/*    477 */	bne,pt	%icc, .L235
/*    477 */	ldx	[%l1+120],%l7


.L236:
.LSSN56:


/*    479 */	sxar2
/*    479 */	sethi	%h44(.LB0+30729792),%xg0
/*    479 */	or	%xg0,%m44(.LB0+30729792),%xg0


/*    479 */	sxar2
/*    479 */	sllx	%xg0,12,%xg0
/*    479 */	or	%xg0,%l44(.LB0+30729792),%xg0

/*    479 */	sxar1
/*    479 */	stx	%xg0,[%l7]
.LSSN57:

/*    480 */	ba	.L237
	nop


.L235:
.LSSN58:

/*    477 */	mov	6,%o0


/*    477 */	call	hoc_Ecalloc
/*    477 */	mov	%l6,%o1
/*    477 */	call	hoc_malchk
/*    477 */	stx	%o0,[%l7]
.LSSN59:


.L237:
.LSSN60:

/*    230 */	stw	%g0,[%l2+32]
.LSSN61:


/*    231 */	call	nrn_get_mechtype
/*    231 */	ldx	[%l3+8],%o0
/*    231 */	stw	%o0,[%l1+128]
.LSSN62:

/*    232 */	sethi	%h44(_thread_mem_init),%o2
/*    232 */	sra	%o0,%g0,%o0
/*    232 */	or	%o2,%m44(_thread_mem_init),%o2
/*    232 */	mov	%l5,%o1
/*    232 */	sllx	%o2,12,%o2
/*    232 */	call	_nrn_thread_reg
/*    232 */	or	%o2,%l44(_thread_mem_init),%o2
.LSSN63:

/*    233 */	sethi	%h44(_thread_cleanup),%o2
/*    233 */	ldsw	[%l1+128],%o0
/*    233 */	mov	%g0,%o1
/*    233 */	or	%o2,%m44(_thread_cleanup),%o2
/*    233 */	sllx	%o2,12,%o2
/*    233 */	call	_nrn_thread_reg
/*    233 */	or	%o2,%l44(_thread_cleanup),%o2
.LSSN64:

/*    234 */	sethi	%h44(_update_ion_pointer),%o2
/*    234 */	ldsw	[%l1+128],%o0
/*    234 */	mov	%l4,%o1
/*    234 */	or	%o2,%m44(_update_ion_pointer),%o2
/*    234 */	sllx	%o2,12,%o2
/*    234 */	call	_nrn_thread_reg
/*    234 */	or	%o2,%l44(_update_ion_pointer),%o2
.LSSN65:

/*    235 */	sethi	%h44(_check_table_thread),%o1
/*    235 */	ldsw	[%l1+128],%o0
/*    235 */	or	%o1,%m44(_check_table_thread),%o1
/*    235 */	sllx	%o1,12,%o1
/*    235 */	call	_nrn_thread_table_reg
/*    235 */	or	%o1,%l44(_check_table_thread),%o1
.LSSN66:

/*    236 */	ldsw	[%l1+128],%o0
/*    236 */	call	hoc_register_dparam_size
/*    236 */	mov	7,%o1
.LSSN67:

/*    237 */	sethi	%h44(_ode_count),%o1
/*    237 */	sethi	%h44(_ode_map),%o2
/*    237 */	ldsw	[%l1+128],%o0
/*    237 */	sethi	%h44(_ode_spec),%o3
/*    237 */	sethi	%h44(_ode_matsol),%o4
/*    237 */	or	%o1,%m44(_ode_count),%o1
/*    237 */	or	%o2,%m44(_ode_map),%o2
/*    237 */	or	%o3,%m44(_ode_spec),%o3
/*    237 */	or	%o4,%m44(_ode_matsol),%o4
/*    237 */	sllx	%o1,12,%o1
/*    237 */	sllx	%o2,12,%o2
/*    237 */	sllx	%o3,12,%o3
/*    237 */	sllx	%o4,12,%o4
/*    237 */	or	%o1,%l44(_ode_count),%o1
/*    237 */	or	%o2,%l44(_ode_map),%o2
/*    237 */	or	%o3,%l44(_ode_spec),%o3
/*    237 */	call	hoc_register_cvode
/*    237 */	or	%o4,%l44(_ode_matsol),%o4
.LSSN68:

/*    238 */	add	%l2,48,%o1
/*    238 */	add	%l1,88,%o2
/*    238 */	call	hoc_register_tolerance
/*    238 */	ldsw	[%l1+128],%o0
.LSSN69:

/*    239 */	add	%l2,224,%o0
/*    239 */	add	%l2,192,%o1
/*    239 */	call	hoc_register_var
/*    239 */	add	%l2,608,%o2
.LSSN70:

/*    240 */	call	ivoc_help
/*    240 */	add	%l0,480,%o0
.LSSN71:

/*    241 */	add	%l2,528,%o1
/*    241 */	call	hoc_register_limits
/*    241 */	ldsw	[%l1+128],%o0
.LSSN72:

/*    242 */	add	%l2,352,%o1
/*    242 */	call	hoc_register_units
/*    242 */	ldsw	[%l1+128],%o0


.L31:
.LSSN73:

/*    243 */	ret
	restore



.LSSN74:
	.size	_hh_k_reg,.-_hh_k_reg
	.type	_hh_k_reg,#function
	.section	".rodata"
	.global	jpj..loop__hh_k_reg
	.align	8
jpj..loop__hh_k_reg:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _check_rates $"
	.section	".text"
	.align	64
_check_rates:
.L508:
.LSSN75:

/*    303 */	save	%sp,-224,%sp


.L509:
.LSSN76:


/*    307 */	sxar2
/*    307 */	sethi	%h44(usetable_hh_k),%xg0
/*    307 */	fzero	%f122


/*    307 */	sxar2
/*    307 */	or	%xg0,%m44(usetable_hh_k),%xg0
/*    307 */	sllx	%xg0,12,%xg0


/*    307 */	sxar2
/*    307 */	or	%xg0,%l44(usetable_hh_k),%xg0
/*    307 */	ldd	[%xg0],%f124

/*    307 */	sxar1
/*    307 */	fcmpd	%fcc0,%f124,%f122

/*    307 */	fbe	.L517
	nop


.L510:
.LSSN77:

/*    308 */	sethi	%h44(.LB0),%l0

/*    308 */	sethi	%h44(celsius),%l2

/*    308 */	or	%l0,%m44(.LB0),%l0

/*    308 */	or	%l2,%m44(celsius),%l2

/*    308 */	sllx	%l0,12,%l0

/*    308 */	sllx	%l2,12,%l2

/*    308 */	or	%l0,%l44(.LB0),%l0

/*    308 */	or	%l2,%l44(celsius),%l2


/*    308 */	sxar2
/*    308 */	sethi	%h44(.LS0),%xg1
/*    308 */	ldd	[%l0+16],%f118


/*    308 */	sxar2
/*    308 */	ldd	[%l2],%f120
/*    308 */	or	%xg1,%m44(.LS0),%xg1


/*    308 */	sxar2
/*    308 */	sllx	%xg1,12,%xg1
/*    308 */	or	%xg1,%l44(.LS0),%xg1


/*    308 */	sxar2
/*    308 */	ldsw	[%xg1+28],%xg9
/*    308 */	fcmpd	%fcc1,%f118,%f120

/*    308 */	fbe,pt	%fcc1, .L745
	nop


.L744:

/*    308 */	sxar1
/*    308 */	mov	1,%xg9

.L745:

.LSSN78:

/*    309 */	sxar2
/*    309 */	stw	%xg9,[%xg1+28]
/*    309 */	cmp	%xg9,%g0

/*    309 */	be	.L517
	nop


.L511:
.LSSN79:

/*    310 */	sethi	%h44(.LR0),%l3

/*    310 */	or	%l3,%m44(.LR0),%l3
.LSSN80:

/*    309 */	sxar1
/*    309 */	stw	%g0,[%xg1+28]
.LSSN81:

/*    310 */	sllx	%l3,12,%l3

/*    310 */	or	%l3,%l44(.LR0),%l3

/*    310 */	ldd	[%l3+152],%f8
.LSSN82:

/*    312 */	sxar1
/*    312 */	ldd	[%l3+120],%f116
.LSSN83:

/*    310 */	std	%f8,[%l0+24]
.LSSN84:

/*    312 */	sxar1
/*    312 */	std	%f116,[%l0+32]

.L512:
.LSSN85:


.L513:

/*    313 */	mov	99,%l6

/*    313 */	sethi	%h44(.LB0+30720144),%l1

/*    ??? */	std	%f8,[%fp+2039]

/*    313 */	or	%l1,%m44(.LB0+30720144),%l1

/*    313 */	mov	%g0,%l4

/*    313 */	sllx	%l1,12,%l1

/*    313 */	or	%l1,%l44(.LB0+30720144),%l1

/*    313 */	mov	%l1,%l5

.L514:
.LSSN86:

/* #00001 */	ldd	[%fp+2039],%f8

/*    314 */	mov	%i0,%o0

/*    314 */	mov	%i1,%o1

/*    314 */	mov	%i2,%o2

/*    314 */	mov	%i3,%o3

/*    314 */	std	%f8,[%sp+2207]


/*    314 */	call	_f_rates
/*    314 */	ldx	[%sp+2207],%o4
.LSSN87:

/*    315 */	sxar1
/*    315 */	ldx	[%i2],%xg23
.LSSN88:

/*    329 */	ldd	[%l3+120],%f58
.LSSN89:

/*    314 */	mov	%i0,%o0
/*    314 */	mov	%i1,%o1
.LSSN90:

/*    315 */	sxar1
/*    315 */	ldx	[%l0+80],%xg24
.LSSN91:

/*    314 */	mov	%i2,%o2
/*    314 */	mov	%i3,%o3
.LSSN92:

/* #00001 */	std	%f58,[%fp+2031]
.LSSN93:

/*    315 */	sxar1
/*    315 */	ldd	[%xg23+24],%f60
.LSSN94:

/* #00001 */	ldd	[%fp+2039],%f62
/*    329 */	faddd	%f58,%f62,%f8
/* #00001 */	std	%f8,[%fp+2023]
.LSSN95:

.LSSN96:

/*    316 */	sxar2
/*    316 */	std	%f60,[%xg24+%l4]
/*    316 */	ldx	[%i2],%xg25
/*    316 */	sxar2
/*    316 */	ldx	[%l0+72],%xg26
/*    316 */	ldd	[%xg25+16],%f64
.LSSN97:

/*    317 */	sxar2
/*    317 */	std	%f64,[%xg26+%l4]
/*    317 */	ldx	[%i2],%xg27
/*    317 */	sxar2
/*    317 */	ldx	[%l0+64],%xg28
/*    317 */	ldd	[%xg27+8],%f66
.LSSN98:

/*    318 */	sxar2
/*    318 */	std	%f66,[%xg28+%l4]
/*    318 */	ldx	[%i2],%xg29
/*    318 */	sxar2
/*    318 */	ldx	[%l0+56],%xg30
/*    318 */	ldd	[%xg29],%f68
.LSSN99:

/*    319 */	sxar2
/*    319 */	std	%f68,[%xg30+%l4]
/*    319 */	ldx	[%i2],%xg31
/*    319 */	ldx	[%l0+48],%g1
/*    319 */	sxar2
/*    319 */	ldd	[%xg31+40],%f70
/*    319 */	std	%f70,[%g1+%l4]
.LSSN100:

/*    320 */	ldx	[%i2],%g2
/*    320 */	ldx	[%l0+40],%g3
/*    320 */	sxar2
/*    320 */	ldd	[%g2+32],%f72
/*    320 */	std	%f72,[%g3+%l4]
.LSSN101:

/*    322 */	ldx	[%i2],%g4
/*    322 */	sxar2
/*    322 */	ldd	[%g4+24],%f74
/*    322 */	std	%f74,[%l5]
.LSSN102:

/*    323 */	sxar2
/*    323 */	ldd	[%g4+16],%f76
/*    323 */	std	%f76,[%l5+8]
.LSSN103:

/*    324 */	sxar2
/*    324 */	ldd	[%g4+8],%f78
/*    324 */	std	%f78,[%l5+16]
.LSSN104:

/*    325 */	sxar2
/*    325 */	ldd	[%g4],%f80
/*    325 */	std	%f80,[%l5+24]
.LSSN105:

/*    326 */	sxar2
/*    326 */	ldd	[%g4+40],%f82
/*    326 */	std	%f82,[%l5+32]
.LSSN106:

/*    327 */	sxar2
/*    327 */	ldd	[%g4+32],%f84
/*    327 */	std	%f84,[%l5+40]
.LSSN107:

/*    314 */	std	%f8,[%sp+2207]
/*    314 */	call	_f_rates
/*    314 */	ldx	[%sp+2207],%o4
.LSSN108:

/*    329 */	sxar2
/* #00001 */	ldd	[%fp+2023],%f86
/* #00001 */	ldd	[%fp+2031],%f88
/*    329 */	subcc	%l6,1,%l6
.LSSN109:

/*    315 */	sxar1
/*    315 */	ldx	[%l0+80],%xg3
/*    315 */	ldx	[%i2],%g5
.LSSN110:

.LSSN111:

/*    315 */	sxar2
/*    315 */	faddd	%f86,%f88,%f90
/*    315 */	add	%xg3,8,%xg3
.LSSN112:

.LSSN113:

/*    315 */	sxar2
/* #00001 */	std	%f90,[%fp+2039]
/*    315 */	ldd	[%g5+24],%f92
.LSSN114:

/*    316 */	sxar2
/*    316 */	std	%f92,[%xg3+%l4]
/*    316 */	ldx	[%l0+72],%xg4
/*    316 */	ldx	[%i2],%o0
/*    316 */	sxar2
/*    316 */	add	%xg4,8,%xg4
/*    316 */	ldd	[%o0+16],%f94
.LSSN115:

/*    317 */	sxar2
/*    317 */	std	%f94,[%xg4+%l4]
/*    317 */	ldx	[%l0+64],%xg5
/*    317 */	ldx	[%i2],%o1
/*    317 */	sxar2
/*    317 */	add	%xg5,8,%xg5
/*    317 */	ldd	[%o1+8],%f96
.LSSN116:

/*    318 */	sxar2
/*    318 */	std	%f96,[%xg5+%l4]
/*    318 */	ldx	[%l0+56],%xg6
/*    318 */	ldx	[%i2],%o2
/*    318 */	sxar2
/*    318 */	add	%xg6,8,%xg6
/*    318 */	ldd	[%o2],%f98
.LSSN117:

/*    319 */	sxar2
/*    319 */	std	%f98,[%xg6+%l4]
/*    319 */	ldx	[%l0+48],%xg7
/*    319 */	ldx	[%i2],%o3
/*    319 */	sxar2
/*    319 */	add	%xg7,8,%xg7
/*    319 */	ldd	[%o3+40],%f100
.LSSN118:

/*    320 */	sxar2
/*    320 */	std	%f100,[%xg7+%l4]
/*    320 */	ldx	[%l0+40],%xg8
/*    320 */	ldx	[%i2],%o4
/*    320 */	sxar2
/*    320 */	add	%xg8,8,%xg8
/*    320 */	ldd	[%o4+32],%f102
/*    320 */	sxar1
/*    320 */	std	%f102,[%xg8+%l4]
.LSSN119:

/*    329 */	add	%l4,16,%l4
.LSSN120:

/*    322 */	ldx	[%i2],%o5
/*    322 */	sxar2
/*    322 */	ldd	[%o5+24],%f104
/*    322 */	std	%f104,[%l5+48]
.LSSN121:

/*    323 */	sxar2
/*    323 */	ldd	[%o5+16],%f106
/*    323 */	std	%f106,[%l5+56]
.LSSN122:

/*    324 */	sxar2
/*    324 */	ldd	[%o5+8],%f108
/*    324 */	std	%f108,[%l5+64]
.LSSN123:

/*    325 */	sxar2
/*    325 */	ldd	[%o5],%f110
/*    325 */	std	%f110,[%l5+72]
.LSSN124:

/*    326 */	sxar2
/*    326 */	ldd	[%o5+40],%f112
/*    326 */	std	%f112,[%l5+80]
.LSSN125:

/*    327 */	sxar2
/*    327 */	ldd	[%o5+32],%f114
/*    327 */	std	%f114,[%l5+88]
.LSSN126:

/*    329 */	bpos,pt	%icc, .L514
/*    329 */	add	%l5,96,%l5


.L519:
.LSSN127:

/*    ??? */	ldd	[%fp+2039],%f8

/*    314 */	mov	%i0,%o0

/*    314 */	mov	%i1,%o1

/*    314 */	mov	%i2,%o2

/*    314 */	mov	%i3,%o3

/*    314 */	std	%f8,[%sp+2207]


/*    314 */	call	_f_rates
/*    314 */	ldx	[%sp+2207],%o4
.LSSN128:

/*    315 */	sxar2
/*    315 */	ldx	[%i2],%xg10
/*    315 */	ldx	[%l0+80],%xg11
.LSSN129:

/*    322 */	sxar2
/*    322 */	sethi	%hi(13632),%xg2
/*    322 */	or	%xg2,320,%xg2
.LSSN130:

/*    315 */	sxar2
/*    315 */	add	%xg2,%l1,%xg2
/*    315 */	ldd	[%xg10+24],%f32
.LSSN131:

/*    316 */	sxar2
/*    316 */	std	%f32,[%xg11+1600]
/*    316 */	ldx	[%i2],%xg12
/*    316 */	sxar2
/*    316 */	ldx	[%l0+72],%xg13
/*    316 */	ldd	[%xg12+16],%f34
.LSSN132:

/*    317 */	sxar2
/*    317 */	std	%f34,[%xg13+1600]
/*    317 */	ldx	[%i2],%xg14
/*    317 */	sxar2
/*    317 */	ldx	[%l0+64],%xg15
/*    317 */	ldd	[%xg14+8],%f36
.LSSN133:

/*    318 */	sxar2
/*    318 */	std	%f36,[%xg15+1600]
/*    318 */	ldx	[%i2],%xg16
/*    318 */	sxar2
/*    318 */	ldx	[%l0+56],%xg17
/*    318 */	ldd	[%xg16],%f38
.LSSN134:

/*    319 */	sxar2
/*    319 */	std	%f38,[%xg17+1600]
/*    319 */	ldx	[%i2],%xg18
/*    319 */	sxar2
/*    319 */	ldx	[%l0+48],%xg19
/*    319 */	ldd	[%xg18+40],%f40
.LSSN135:

/*    320 */	sxar2
/*    320 */	std	%f40,[%xg19+1600]
/*    320 */	ldx	[%i2],%xg20
/*    320 */	sxar2
/*    320 */	ldx	[%l0+40],%xg21
/*    320 */	ldd	[%xg20+32],%f42
.LSSN136:

/*    322 */	sxar2
/*    322 */	std	%f42,[%xg21+1600]
/*    322 */	ldx	[%i2],%xg22
.LSSN137:

/*    330 */	ldd	[%l2],%f44
.LSSN138:

/*    322 */	sxar2
/*    322 */	ldd	[%xg22+24],%f46
/*    322 */	std	%f46,[%xg2+-4032]
.LSSN139:

/*    323 */	sxar2
/*    323 */	ldd	[%xg22+16],%f48
/*    323 */	std	%f48,[%xg2+-4024]
.LSSN140:

/*    324 */	sxar2
/*    324 */	ldd	[%xg22+8],%f50
/*    324 */	std	%f50,[%xg2+-4016]
.LSSN141:

/*    325 */	sxar2
/*    325 */	ldd	[%xg22],%f52
/*    325 */	std	%f52,[%xg2+-4008]
.LSSN142:

/*    326 */	sxar2
/*    326 */	ldd	[%xg22+40],%f54
/*    326 */	std	%f54,[%xg2+-4000]
.LSSN143:

/*    327 */	sxar1
/*    327 */	ldd	[%xg22+32],%f56
.LSSN144:

/*    330 */	std	%f44,[%l0+16]
.LSSN145:

/*    327 */	sxar1
/*    327 */	std	%f56,[%xg2+-3992]

.L517:
.LSSN146:

/*    332 */	ret
	restore



.LSSN147:
	.size	_check_rates,.-_check_rates
	.type	_check_rates,#function
	.section	".rodata"
	.local	jpj..loop__check_rates
	.align	8
jpj..loop__check_rates:
	.byte	1
	.byte	3
	.half	24
	.word	16
	.xword	0
	.word	1
	.byte	16
	.byte	0,0,0
	.word	313
	.word	329
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _n_rates $"
	.section	".text"
	.align	64
_n_rates:
.L57:
.LSSN148:

/*    342 */	save	%sp,-208,%sp
/*    342 */	mov	%i3,%o3
/*    342 */	mov	%i2,%o2
/*    342 */	mov	%i1,%o1
/*    342 */	mov	%i0,%o0

.L58:
.LSSN149:

/*    344 */	sethi	%h44(usetable_hh_k),%g1

/*    344 */	sxar1
/*    344 */	fzero	%f64

/*    344 */	or	%g1,%m44(usetable_hh_k),%g1

/*    344 */	sllx	%g1,12,%g1

/*    344 */	or	%g1,%l44(usetable_hh_k),%g1


/*    344 */	sxar2
/*    344 */	ldd	[%g1],%f90
/*    344 */	fcmpd	%fcc0,%f90,%f64

/*    344 */	fbe,pt	%fcc0, .L59
	nop


.L60:
.LSSN150:

/*    347 */	sethi	%h44(.LB0),%g2

/*    347 */	or	%g2,%m44(.LB0),%g2

/*    347 */	sllx	%g2,12,%g2

/*    347 */	or	%g2,%l44(.LB0),%g2

/*    347 */	ldd	[%g2+24],%f32

/*    347 */	ldd	[%g2+32],%f34

/*    347 */	fsubd	%f8,%f32,%f8

/*    347 */	fmuld	%f34,%f8,%f34
.LSSN151:

.LSSN152:

/*    349 */	sxar2
/*    349 */	fdtoi	%f34,%f36
/*    349 */	fcmped	%fcc1,%f34,%f64
.LSSN153:

/*    348 */	sxar1
/*    348 */	st	%f36,[%fp+2043]

.LSSN154:

/*    349 */	fble,pt	%fcc1, .L62
/*    349 */	ldsw	[%fp+2043],%g3


.L63:
.LSSN155:


/*    357 */	cmp	%g3,200

/*    357 */	bge	.L64
/*    357 */	ldx	[%o2],%o5


.L65:
.LSSN156:

/*    365 */	stw	%g3,[%fp+2043]
.LSSN157:

/*    366 */	sra	%g3,%g0,%g3

/*    366 */	sllx	%g3,3,%g3
.LSSN158:

/*    365 */	sxar1
/*    365 */	ld	[%fp+2043],%f38
.LSSN159:

/*    366 */	ldx	[%g2+80],%g4
.LSSN160:

/*    365 */	sxar1
/*    365 */	fitod	%f38,%f38
.LSSN161:

/*    366 */	add	%g4,%g3,%g4

/*    366 */	ldd	[%g4+8],%f42

/*    366 */	ldd	[%g4],%f40

/*    366 */	fsubd	%f42,%f40,%f42
.LSSN162:

/*    365 */	fsubd	%f34,%f38,%f34
.LSSN163:

/*    366 */	fmaddd	%f34,%f42,%f40,%f42

/*    366 */	std	%f42,[%o5+24]
.LSSN164:

/*    367 */	ldx	[%o2],%o7

/*    367 */	ldx	[%g2+72],%g5

/*    367 */	add	%g5,%g3,%g5

/*    367 */	ldd	[%g5+8],%f46

/*    367 */	ldd	[%g5],%f44

/*    367 */	fsubd	%f46,%f44,%f46

/*    367 */	fmaddd	%f34,%f46,%f44,%f46

/*    367 */	std	%f46,[%o7+16]
.LSSN165:

/*    368 */	sxar1
/*    368 */	ldx	[%o2],%xg0

/*    368 */	ldx	[%g2+64],%o0

/*    368 */	add	%o0,%g3,%o0

/*    368 */	ldd	[%o0+8],%f50

/*    368 */	ldd	[%o0],%f48

/*    368 */	fsubd	%f50,%f48,%f50

/*    368 */	fmaddd	%f34,%f50,%f48,%f50

.LSSN166:

/*    369 */	sxar2
/*    369 */	std	%f50,[%xg0+8]
/*    369 */	ldx	[%o2],%xg1

/*    369 */	ldx	[%g2+56],%o1

/*    369 */	add	%o1,%g3,%o1

/*    369 */	ldd	[%o1+8],%f54

/*    369 */	ldd	[%o1],%f52

/*    369 */	fsubd	%f54,%f52,%f54

/*    369 */	fmaddd	%f34,%f54,%f52,%f54

.LSSN167:

/*    370 */	sxar2
/*    370 */	std	%f54,[%xg1]
/*    370 */	ldx	[%o2],%xg2

/*    370 */	ldx	[%g2+48],%o3

/*    370 */	add	%o3,%g3,%o3

/*    370 */	ldd	[%o3+8],%f58

/*    370 */	ldd	[%o3],%f56

/*    370 */	fsubd	%f58,%f56,%f58

/*    370 */	fmaddd	%f34,%f58,%f56,%f58

.LSSN168:

/*    371 */	sxar2
/*    371 */	std	%f58,[%xg2+40]
/*    371 */	ldx	[%o2],%xg3

/*    371 */	ldx	[%g2+40],%o4

/*    371 */	add	%o4,%g3,%o4

/*    371 */	ldd	[%o4+8],%f62

/*    371 */	ldd	[%o4],%f60

/*    371 */	fsubd	%f62,%f60,%f62

/*    371 */	fmaddd	%f34,%f62,%f60,%f34

/*    371 */	sxar1
/*    371 */	std	%f34,[%xg3+32]

/*    371 */	ret
	restore

.LSSN169:


.L64:
.LSSN170:


/*    358 */	sxar2
/*    358 */	ldx	[%g2+80],%xg4
/*    358 */	ldd	[%xg4+1600],%f66

.LSSN171:

/*    359 */	sxar2
/*    359 */	std	%f66,[%o5+24]
/*    359 */	ldx	[%o2],%xg5


/*    359 */	sxar2
/*    359 */	ldx	[%g2+72],%xg6
/*    359 */	ldd	[%xg6+1600],%f68

.LSSN172:

/*    360 */	sxar2
/*    360 */	std	%f68,[%xg5+16]
/*    360 */	ldx	[%o2],%xg7


/*    360 */	sxar2
/*    360 */	ldx	[%g2+64],%xg8
/*    360 */	ldd	[%xg8+1600],%f70

.LSSN173:

/*    361 */	sxar2
/*    361 */	std	%f70,[%xg7+8]
/*    361 */	ldx	[%o2],%xg9


/*    361 */	sxar2
/*    361 */	ldx	[%g2+56],%xg10
/*    361 */	ldd	[%xg10+1600],%f72

.LSSN174:

/*    362 */	sxar2
/*    362 */	std	%f72,[%xg9]
/*    362 */	ldx	[%o2],%xg11


/*    362 */	sxar2
/*    362 */	ldx	[%g2+48],%xg12
/*    362 */	ldd	[%xg12+1600],%f74

.LSSN175:

/*    363 */	sxar2
/*    363 */	std	%f74,[%xg11+40]
/*    363 */	ldx	[%o2],%xg13


/*    363 */	sxar2
/*    363 */	ldx	[%g2+40],%xg14
/*    363 */	ldd	[%xg14+1600],%f76

/*    363 */	sxar1
/*    363 */	std	%f76,[%xg13+32]
.LSSN176:

/*    364 */	ret
	restore



.L62:
.LSSN177:


/*    350 */	sxar2
/*    350 */	ldx	[%o2],%xg15
/*    350 */	ldx	[%g2+80],%xg16


/*    350 */	sxar2
/*    350 */	ldd	[%xg16],%f78
/*    350 */	std	%f78,[%xg15+24]
.LSSN178:


/*    351 */	sxar2
/*    351 */	ldx	[%o2],%xg17
/*    351 */	ldx	[%g2+72],%xg18


/*    351 */	sxar2
/*    351 */	ldd	[%xg18],%f80
/*    351 */	std	%f80,[%xg17+16]
.LSSN179:


/*    352 */	sxar2
/*    352 */	ldx	[%o2],%xg19
/*    352 */	ldx	[%g2+64],%xg20


/*    352 */	sxar2
/*    352 */	ldd	[%xg20],%f82
/*    352 */	std	%f82,[%xg19+8]
.LSSN180:


/*    353 */	sxar2
/*    353 */	ldx	[%o2],%xg21
/*    353 */	ldx	[%g2+56],%xg22


/*    353 */	sxar2
/*    353 */	ldd	[%xg22],%f84
/*    353 */	std	%f84,[%xg21]
.LSSN181:


/*    354 */	sxar2
/*    354 */	ldx	[%o2],%xg23
/*    354 */	ldx	[%g2+48],%xg24


/*    354 */	sxar2
/*    354 */	ldd	[%xg24],%f86
/*    354 */	std	%f86,[%xg23+40]
.LSSN182:


/*    355 */	sxar2
/*    355 */	ldx	[%o2],%xg25
/*    355 */	ldx	[%g2+40],%xg26


/*    355 */	sxar2
/*    355 */	ldd	[%xg26],%f88
/*    355 */	std	%f88,[%xg25+32]
.LSSN183:

/*    356 */	ret
	restore



.L59:
.LSSN184:

/*    345 */	std	%f8,[%sp+2207]


/*    345 */	call	_f_rates
/*    345 */	ldx	[%sp+2207],%o4
.LSSN185:


.L61:
.LSSN186:

/*    372 */	ret
	restore



.LSSN187:
	.size	_n_rates,.-_n_rates
	.type	_n_rates,#function
	.section	".rodata"
	.local	jpj..loop__n_rates
	.align	8
jpj..loop__n_rates:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _f_rates $"
	.section	".text"
	.align	64
_f_rates:
.L66:
.LSSN188:

/*    375 */	save	%sp,-288,%sp
/*    ??? */	std	%f8,[%fp+1999]

.L67:
.LSSN189:

/*    379 */	sethi	%h44(celsius),%g1

/*    379 */	sethi	%h44(.LR0),%l0

/*    379 */	or	%g1,%m44(celsius),%g1

/*    379 */	or	%l0,%m44(.LR0),%l0

/*    379 */	sllx	%g1,12,%g1

/*    379 */	sllx	%l0,12,%l0

/*    379 */	or	%g1,%l44(celsius),%g1

/*    379 */	or	%l0,%l44(.LR0),%l0

/*    379 */	ldd	[%g1],%f2

/*    379 */	ldd	[%l0+56],%f32

/*    379 */	sxar1
/*    379 */	ldd	[%l0+32],%f178


/*    379 */	fsubd	%f2,%f32,%f2


/*    379 */	sxar2
/*    ??? */	std	%f178,[%fp+2007]
/*    379 */	fmuld	%f2,%f178,%f2

/*    379 */	call	pow
/*    379 */	ldd	[%l0+168],%f0
/*    ??? */	std	%f0,[%fp+2031]
.LSSN190:

.LSSN191:

/*    416 */	sxar2
/*    416 */	ldd	[%l0+288],%f180
/*    416 */	ldd	[%l0+16],%f182
.LSSN192:

/*    380 */	sxar2
/*    ??? */	std	%f182,[%fp+1991]
/*    ??? */	ldd	[%fp+1999],%f184
/*    380 */	sxar2
/*    380 */	fsubd	%f180,%f184,%f186
/*    ??? */	std	%f186,[%fp+1983]
.LSSN193:

/*    416 */	sxar2
/*    ??? */	ldd	[%fp+2007],%f188
/*    416 */	fmuld	%f186,%f188,%f0
/*    416 */	fabsd	%f0,%f34
/*    416 */	sxar1
/*    416 */	fcmped	%fcc0,%f34,%f182
/*    416 */	fbl	.L242
	nop


.L243:
.LSSN194:

/*    420 */	std	%f0,[%sp+2175]


/*    420 */	call	hoc_Exp
/*    420 */	ldx	[%sp+2175],%o0
/*    420 */	ldd	[%l0+120],%f42
/*    420 */	sxar1
/*    ??? */	ldd	[%fp+1983],%f176
/*    420 */	fsubd	%f0,%f42,%f0
/*    420 */	frcpad	%f0,%f44
/*    420 */	fnmsubd	%f44,%f0,%f42,%f0
/*    420 */	sxar1
/*    420 */	fmuld	%f44,%f176,%f44
/*    420 */	fmaddd	%f0,%f0,%f0,%f46
/*    420 */	fmuld	%f0,%f0,%f40
/*    420 */	fmaddd	%f46,%f44,%f44,%f46
/*    420 */	fmaddd	%f40,%f40,%f0,%f40
/*    420 */	fmaddd	%f40,%f46,%f44,%f40
.LSSN195:

/*    421 */	ba	.L244
	nop


.L242:
.LSSN196:

/*    417 */	ldd	[%l0+272],%f38

/*    417 */	ldd	[%l0+120],%f36

/*    417 */	ldd	[%l0+176],%f40

/*    417 */	fnmsubd	%f38,%f0,%f36,%f38

/*    417 */	fmuld	%f40,%f38,%f40

.L244:
.LSSN197:

/*    380 */	sxar1
/*    ??? */	ldd	[%fp+2007],%f136
.LSSN198:

/*    381 */	ldd	[%l0+200],%f48

/*    381 */	ldd	[%l0],%f0
.LSSN199:


/*    380 */	sxar2
/*    380 */	fmuld	%f40,%f136,%f138
/*    ??? */	std	%f138,[%fp+1967]
.LSSN200:


/*    381 */	sxar2
/*    ??? */	ldd	[%fp+1999],%f140
/*    381 */	faddd	%f48,%f140,%f48


/*    381 */	sxar2
/*    381 */	fnegd	%f48,%f142
/*    ??? */	std	%f142,[%fp+2039]

/*    381 */	sxar1
/*    381 */	fmuld	%f0,%f142,%f0

/*    381 */	std	%f0,[%sp+2175]


/*    381 */	call	hoc_Exp
/*    381 */	ldx	[%sp+2175],%o0
.LSSN201:

/*    382 */	ldd	[%l0+192],%f50
.LSSN202:

/*    383 */	sxar2
/*    383 */	ldd	[%l0+120],%f144
/*    383 */	ldx	[%i2],%xg2
.LSSN203:

/*    385 */	ldd	[%l0+40],%f52
.LSSN204:

.LSSN205:

/*    382 */	sxar2
/*    ??? */	std	%f144,[%fp+2023]
/*    ??? */	ldd	[%fp+1967],%f146
.LSSN206:

.LSSN207:

/*    385 */	sxar2
/*    ??? */	ldd	[%fp+2031],%f150
/*    ??? */	ldd	[%fp+2039],%f148
.LSSN208:

.LSSN209:

/*    385 */	sxar2
/*    385 */	fmaddd	%f50,%f0,%f146,%f50
/*    385 */	fmuld	%f52,%f148,%f0
.LSSN210:

/*    383 */	sxar1
/*    383 */	fmuld	%f50,%f150,%f54
.LSSN211:

/*    384 */	frcpad	%f50,%f56
.LSSN212:

/*    383 */	frcpad	%f54,%f58
.LSSN213:

/*    384 */	sxar2
/*    384 */	fnmsubd	%f56,%f50,%f144,%f50
/*    384 */	fmuld	%f146,%f56,%f56
.LSSN214:

/*    383 */	sxar2
/*    383 */	fnmsubd	%f58,%f54,%f144,%f54
/*    383 */	fmuld	%f58,%f144,%f58
.LSSN215:

/*    384 */	fmaddd	%f50,%f50,%f50,%f60
/*    384 */	fmuld	%f50,%f50,%f62
.LSSN216:

/*    383 */	sxar2
/*    383 */	fmaddd	%f54,%f54,%f54,%f64
/*    383 */	fmuld	%f54,%f54,%f66
.LSSN217:

/*    384 */	fmaddd	%f60,%f56,%f56,%f60
/*    384 */	fmaddd	%f62,%f62,%f50,%f62
.LSSN218:

/*    383 */	sxar2
/*    383 */	fmaddd	%f64,%f58,%f58,%f64
/*    383 */	fmaddd	%f66,%f66,%f54,%f66
.LSSN219:

/*    384 */	fmaddd	%f62,%f60,%f56,%f62
.LSSN220:

/*    383 */	sxar2
/*    383 */	fmaddd	%f66,%f64,%f58,%f66
/*    383 */	std	%f66,[%xg2+16]
.LSSN221:

/*    384 */	sxar2
/*    384 */	ldx	[%i2],%xg3
/*    384 */	std	%f62,[%xg3+24]
.LSSN222:

/*    385 */	std	%f0,[%sp+2175]
/*    385 */	call	hoc_Exp
/*    385 */	ldx	[%sp+2175],%o0
.LSSN223:

/*    386 */	sxar2
/*    386 */	ldd	[%l0+24],%f152
/*    386 */	ldd	[%l0+304],%f68
.LSSN224:

/*    385 */	sxar2
/*    385 */	fmuld	%f0,%f152,%f154
/*    ??? */	std	%f154,[%fp+1959]
.LSSN225:

/*    386 */	sxar2
/*    ??? */	ldd	[%fp+1999],%f156
/*    ??? */	ldd	[%fp+2007],%f158
/*    386 */	sxar2
/*    386 */	fsubd	%f68,%f156,%f0
/*    386 */	fmuld	%f0,%f158,%f0
/*    386 */	std	%f0,[%sp+2175]
/*    386 */	call	hoc_Exp
/*    386 */	ldx	[%sp+2175],%o0
.LSSN226:

.LSSN227:

/*    390 */	sxar2
/*    ??? */	ldd	[%fp+2023],%f160
/*    390 */	ldd	[%l0+296],%f162
.LSSN228:

.LSSN229:

/*    390 */	sxar2
/*    390 */	ldx	[%i2],%xg4
/*    ??? */	ldd	[%fp+1999],%f164
.LSSN230:

.LSSN231:

/*    390 */	sxar2
/*    390 */	faddd	%f0,%f160,%f70
/*    390 */	fsubd	%f162,%f164,%f166
.LSSN232:

.LSSN233:

/*    390 */	sxar2
/*    390 */	frcpad	%f70,%f72
/*    ??? */	std	%f166,[%fp+2015]
.LSSN234:

/*    387 */	sxar2
/*    387 */	fnmsubd	%f72,%f70,%f160,%f70
/*    387 */	fmuld	%f72,%f160,%f72
.LSSN235:

/*    388 */	sxar2
/*    ??? */	ldd	[%fp+1959],%f172
/*    ??? */	ldd	[%fp+2031],%f174
.LSSN236:

/*    416 */	sxar2
/*    ??? */	ldd	[%fp+2007],%f168
/*    ??? */	ldd	[%fp+1991],%f170
.LSSN237:

/*    387 */	sxar2
/*    387 */	fmaddd	%f70,%f70,%f70,%f76
/*    387 */	fmuld	%f70,%f70,%f78
.LSSN238:

.LSSN239:

/*    387 */	sxar2
/*    387 */	fmuld	%f166,%f168,%f0
/*    387 */	fmaddd	%f76,%f72,%f72,%f76
.LSSN240:

/*    416 */	sxar2
/*    416 */	fmaddd	%f78,%f78,%f70,%f78
/*    416 */	fabsd	%f0,%f74
.LSSN241:

.LSSN242:

/*    416 */	sxar2
/*    416 */	fmaddd	%f78,%f76,%f72,%f78
/*    416 */	fcmped	%fcc1,%f74,%f170
.LSSN243:

.LSSN244:

/*    388 */	sxar2
/*    388 */	faddd	%f172,%f78,%f78
/*    388 */	fmuld	%f78,%f174,%f80
.LSSN245:

.LSSN246:

/*    388 */	sxar2
/*    388 */	frcpad	%f78,%f82
/*    388 */	frcpad	%f80,%f84
.LSSN247:

/*    389 */	sxar2
/*    389 */	fnmsubd	%f82,%f78,%f160,%f78
/*    389 */	fmuld	%f172,%f82,%f82
.LSSN248:

/*    388 */	sxar2
/*    388 */	fnmsubd	%f84,%f80,%f160,%f80
/*    388 */	fmuld	%f84,%f160,%f84
.LSSN249:

/*    389 */	sxar2
/*    389 */	fmaddd	%f78,%f78,%f78,%f86
/*    389 */	fmuld	%f78,%f78,%f88
.LSSN250:

/*    388 */	sxar2
/*    388 */	fmaddd	%f80,%f80,%f80,%f90
/*    388 */	fmuld	%f80,%f80,%f92
.LSSN251:

/*    389 */	sxar2
/*    389 */	fmaddd	%f86,%f82,%f82,%f86
/*    389 */	fmaddd	%f88,%f88,%f78,%f88
.LSSN252:

/*    388 */	sxar2
/*    388 */	fmaddd	%f90,%f84,%f84,%f90
/*    388 */	fmaddd	%f92,%f92,%f80,%f92
.LSSN253:

.LSSN254:

/*    388 */	sxar2
/*    388 */	fmaddd	%f88,%f86,%f82,%f88
/*    388 */	fmaddd	%f92,%f90,%f84,%f92
.LSSN255:

/*    389 */	sxar2
/*    389 */	std	%f92,[%xg4]
/*    389 */	ldx	[%i2],%xg5
/*    389 */	sxar1
/*    389 */	std	%f88,[%xg5+8]
.LSSN256:

/*    416 */	fbl,pn	%fcc1, .L250
	nop


.L249:
.LSSN257:

/*    420 */	std	%f0,[%sp+2175]


/*    420 */	call	hoc_Exp
/*    420 */	ldx	[%sp+2175],%o0
/*    420 */	sxar2
/*    ??? */	ldd	[%fp+2023],%f130
/*    ??? */	ldd	[%fp+2015],%f132
/*    420 */	sxar2
/*    420 */	fsubd	%f0,%f130,%f0
/*    420 */	frcpad	%f0,%f98
/*    420 */	sxar2
/*    420 */	fnmsubd	%f98,%f0,%f130,%f0
/*    420 */	fmuld	%f98,%f132,%f98
/*    420 */	sxar2
/*    420 */	fmaddd	%f0,%f0,%f0,%f100
/*    420 */	fmuld	%f0,%f0,%f96
/*    420 */	sxar2
/*    420 */	fmaddd	%f100,%f98,%f98,%f100
/*    420 */	fmaddd	%f96,%f96,%f0,%f96
/*    420 */	sxar1
/*    420 */	fmaddd	%f96,%f100,%f98,%f96
.LSSN258:

/*    421 */	ba	.L248
	nop


.L250:
.LSSN259:


/*    417 */	sxar2
/*    417 */	ldd	[%l0+272],%f94
/*    ??? */	ldd	[%fp+2023],%f134


/*    417 */	sxar2
/*    417 */	ldd	[%l0+176],%f96
/*    417 */	fnmsubd	%f94,%f0,%f134,%f94

/*    417 */	sxar1
/*    417 */	fmuld	%f96,%f94,%f96

.L248:
.LSSN260:

/*    390 */	sxar1
/*    390 */	ldd	[%l0+96],%f118
.LSSN261:

/*    391 */	ldd	[%l0+48],%f0
.LSSN262:


/*    390 */	sxar2
/*    390 */	fmuld	%f118,%f96,%f120
/*    ??? */	std	%f120,[%fp+1975]
.LSSN263:


/*    391 */	sxar2
/*    ??? */	ldd	[%fp+2039],%f122
/*    391 */	fmuld	%f0,%f122,%f0

/*    391 */	std	%f0,[%sp+2175]


/*    391 */	call	hoc_Exp
/*    391 */	ldx	[%sp+2175],%o0
.LSSN264:

/*    392 */	sxar2
/*    392 */	ldd	[%l0+240],%f102
/*    ??? */	ldd	[%fp+1975],%f124
.LSSN265:

.LSSN266:

/*    394 */	sxar2
/*    ??? */	ldd	[%fp+2031],%f126
/*    ??? */	ldd	[%fp+2023],%f128
.LSSN267:

.LSSN268:

/*    392 */	sxar2
/*    392 */	ldx	[%i2],%xg0
/*    392 */	fmaddd	%f102,%f0,%f124,%f102
.LSSN269:

.LSSN270:

/*    394 */	sxar2
/*    394 */	fmuld	%f102,%f126,%f104
/*    394 */	frcpad	%f102,%f106
.LSSN271:

.LSSN272:

/*    394 */	sxar2
/*    394 */	frcpad	%f104,%f108
/*    394 */	fnmsubd	%f106,%f102,%f128,%f102
.LSSN273:

/*    393 */	sxar2
/*    393 */	fmuld	%f124,%f106,%f106
/*    393 */	fnmsubd	%f108,%f104,%f128,%f104
.LSSN274:

/*    394 */	sxar2
/*    394 */	fmuld	%f108,%f128,%f108
/*    394 */	fmaddd	%f102,%f102,%f102,%f110
.LSSN275:

/*    393 */	sxar2
/*    393 */	fmuld	%f102,%f102,%f112
/*    393 */	fmaddd	%f104,%f104,%f104,%f114
.LSSN276:

/*    394 */	sxar2
/*    394 */	fmuld	%f104,%f104,%f116
/*    394 */	fmaddd	%f110,%f106,%f106,%f110
.LSSN277:

/*    393 */	sxar2
/*    393 */	fmaddd	%f112,%f112,%f102,%f112
/*    393 */	fmaddd	%f114,%f108,%f108,%f114
.LSSN278:

/*    394 */	sxar2
/*    394 */	fmaddd	%f116,%f116,%f104,%f116
/*    394 */	fmaddd	%f112,%f110,%f106,%f112
.LSSN279:

/*    393 */	sxar2
/*    393 */	fmaddd	%f116,%f114,%f108,%f116
/*    393 */	std	%f116,[%xg0+32]
.LSSN280:

/*    394 */	sxar2
/*    394 */	ldx	[%i2],%xg1
/*    394 */	std	%f112,[%xg1+40]
.LSSN281:

/*    395 */	ret
	restore	%g0,%g0,%o0



.L68:


.LSSN282:
	.size	_f_rates,.-_f_rates
	.type	_f_rates,#function
	.section	".rodata"
	.local	jpj..loop__f_rates
	.align	8
jpj..loop__f_rates:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _hoc_rates $"
	.section	".text"
	.align	64
_hoc_rates:
.L69:
.LSSN283:

/*    397 */	save	%sp,-192,%sp


.L70:
.LSSN284:

/*    400 */	sethi	%h44(.LB0),%g1

/*    400 */	or	%g1,%m44(.LB0),%g1

/*    400 */	sllx	%g1,12,%g1

/*    400 */	or	%g1,%l44(.LB0),%g1


/*    400 */	sxar2
/*    400 */	ldx	[%g1+112],%xg0
/*    400 */	cmp	%xg0,%g0

/*    400 */	bne,pt	%xcc, .L71
	nop


.L72:

/*    400 */	mov	%g0,%l0

/*    400 */	mov	%g0,%l1

/*    400 */	ba	.L73
	nop


.L71:


/*    400 */	sxar2
/*    400 */	ldx	[%xg0+16],%l0
/*    400 */	ldx	[%xg0+24],%l1

.L73:
.LSSN285:

/*    401 */	ldx	[%g1+120],%l2
.LSSN286:

/*    402 */	sethi	%h44(nrn_threads),%g2
.LSSN287:

/*    405 */	mov	%l0,%o0
.LSSN288:

/*    402 */	or	%g2,%m44(nrn_threads),%g2
.LSSN289:

/*    405 */	mov	%l1,%o1
.LSSN290:

/*    402 */	sllx	%g2,12,%g2

/*    402 */	or	%g2,%l44(nrn_threads),%g2

/*    402 */	ldx	[%g2],%l3
.LSSN291:

/*    405 */	mov	%l2,%o2


/*    405 */	call	_check_rates
/*    405 */	mov	%l3,%o3
.LSSN292:

/*    408 */	call	getarg
/*    408 */	mov	1,%o0
/*    408 */	ldd	[%o0],%f8
.LSSN293:

/*    338 */	mov	%l0,%o0
/*    338 */	mov	%l1,%o1
/*    338 */	mov	%l2,%o2
/*    338 */	mov	%l3,%o3
/*    338 */	std	%f8,[%sp+2207]
/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN294:

/*    409 */	sethi	%h44(.LR0),%g3
/*    409 */	or	%g3,%m44(.LR0),%g3
/*    409 */	sllx	%g3,12,%g3
/*    409 */	or	%g3,%l44(.LR0),%g3
/*    409 */	ldd	[%g3+120],%f0
/*    409 */	std	%f0,[%sp+2175]
/*    409 */	call	ret
/*    409 */	ldx	[%sp+2175],%o0


.L74:
.LSSN295:

/*    410 */	ret
	restore



.LSSN296:
	.size	_hoc_rates,.-_hoc_rates
	.type	_hoc_rates,#function
	.section	".rodata"
	.local	jpj..loop__hoc_rates
	.align	8
jpj..loop__hoc_rates:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c vtrap_hh_k $"
	.section	".text"
	.global	vtrap_hh_k
	.align	64
vtrap_hh_k:
.L75:
.LSSN297:

/*    412 */	save	%sp,-208,%sp
/*    ??? */	std	%f8,[%fp+2031]

.L76:
.LSSN298:

/*    416 */	frcpad	%f10,%f32

/*    416 */	sethi	%h44(.LR0),%g1

/*    416 */	or	%g1,%m44(.LR0),%g1

/*    416 */	sllx	%g1,12,%g1

/*    416 */	or	%g1,%l44(.LR0),%g1

/*    416 */	ldd	[%g1+120],%f54

/*    416 */	ldd	[%g1+16],%f56

/*    ??? */	std	%f54,[%fp+2039]

/*    416 */	fnmsubd	%f32,%f10,%f54,%f34

/*    ??? */	ldd	[%fp+2031],%f58

/*    416 */	fmaddd	%f34,%f34,%f34,%f36

/*    416 */	fmuld	%f34,%f34,%f0

/*    416 */	fmuld	%f32,%f58,%f32

/*    416 */	fmaddd	%f0,%f0,%f34,%f0

/*    416 */	fmaddd	%f36,%f32,%f32,%f36

/*    416 */	fmaddd	%f0,%f36,%f32,%f0

/*    416 */	fabsd	%f0,%f38

/*    416 */	fcmped	%fcc0,%f38,%f56

/*    416 */	fbl	.L77
	nop


.L78:
.LSSN299:

/*    420 */	std	%f0,[%sp+2175]


/*    420 */	call	hoc_Exp
/*    420 */	ldx	[%sp+2175],%o0
/*    ??? */	ldd	[%fp+2039],%f48
/*    ??? */	ldd	[%fp+2031],%f50
/*    420 */	fsubd	%f0,%f48,%f42
/*    420 */	frcpad	%f42,%f44
/*    420 */	fnmsubd	%f44,%f42,%f48,%f42
/*    420 */	fmuld	%f44,%f50,%f44
/*    420 */	fmaddd	%f42,%f42,%f42,%f46
/*    420 */	fmuld	%f42,%f42,%f0
/*    420 */	fmaddd	%f46,%f44,%f44,%f46
/*    420 */	fmaddd	%f0,%f0,%f42,%f0
/*    420 */	fmaddd	%f0,%f46,%f44,%f0
.LSSN300:

/*    421 */	ret
	restore

.LSSN301:


.L77:
.LSSN302:

/*    417 */	ldd	[%g1+272],%f40

/*    ??? */	ldd	[%fp+2039],%f52

/*    417 */	fnmsubd	%f40,%f0,%f52,%f0

/*    417 */	fmuld	%f0,%f10,%f0
.LSSN303:

/*    418 */	ret
	restore

.LSSN304:


.L80:


.LSSN305:
	.size	vtrap_hh_k,.-vtrap_hh_k
	.type	vtrap_hh_k,#function
	.section	".rodata"
	.global	jpj..loop_vtrap_hh_k
	.align	8
jpj..loop_vtrap_hh_k:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _hoc_vtrap $"
	.section	".text"
	.align	64
_hoc_vtrap:
.L81:
.LSSN306:

/*    426 */	save	%sp,-208,%sp


.L85:
.LSSN307:


/*    432 */	call	getarg
/*    432 */	mov	1,%o0
/*    432 */	ldd	[%o0],%f56
/*    432 */	mov	2,%o0
/*    432 */	call	getarg
/*    ??? */	std	%f56,[%fp+2031]
/*    432 */	ldd	[%o0],%f32
.LSSN308:

/*    416 */	sethi	%h44(.LR0),%g1
/*    416 */	or	%g1,%m44(.LR0),%g1
/*    416 */	sllx	%g1,12,%g1
/*    416 */	or	%g1,%l44(.LR0),%g1
/*    416 */	ldd	[%g1+120],%f58
/*    416 */	ldd	[%g1+16],%f60
/*    416 */	frcpad	%f32,%f34
/*    ??? */	std	%f58,[%fp+2039]
/*    416 */	fnmsubd	%f34,%f32,%f58,%f36
/*    ??? */	ldd	[%fp+2031],%f62
/*    416 */	fmaddd	%f36,%f36,%f36,%f38
/*    416 */	fmuld	%f36,%f36,%f0
/*    416 */	fmuld	%f34,%f62,%f34
/*    416 */	fmaddd	%f0,%f0,%f36,%f0
/*    416 */	fmaddd	%f38,%f34,%f34,%f38
/*    416 */	fmaddd	%f0,%f38,%f34,%f0
/*    416 */	fabsd	%f0,%f40
/*    416 */	fcmped	%fcc0,%f40,%f60
/*    416 */	fbl	.L264
	nop


.L265:
.LSSN309:

/*    420 */	std	%f0,[%sp+2175]


/*    420 */	call	hoc_Exp
/*    420 */	ldx	[%sp+2175],%o0
/*    ??? */	ldd	[%fp+2039],%f50
/*    ??? */	ldd	[%fp+2031],%f52
/*    420 */	fsubd	%f0,%f50,%f44
/*    420 */	frcpad	%f44,%f46
/*    420 */	fnmsubd	%f46,%f44,%f50,%f44
/*    420 */	fmuld	%f46,%f52,%f46
/*    420 */	fmaddd	%f44,%f44,%f44,%f48
/*    420 */	fmuld	%f44,%f44,%f0
/*    420 */	fmaddd	%f48,%f46,%f46,%f48
/*    420 */	fmaddd	%f0,%f0,%f44,%f0
/*    420 */	fmaddd	%f0,%f48,%f46,%f0
.LSSN310:

/*    421 */	ba	.L266
	nop


.L264:
.LSSN311:

/*    417 */	ldd	[%g1+272],%f42

/*    ??? */	ldd	[%fp+2039],%f54

/*    417 */	fnmsubd	%f42,%f0,%f54,%f0

/*    417 */	fmuld	%f0,%f32,%f0

.L266:
.LSSN312:

/*    433 */	std	%f0,[%sp+2175]


/*    433 */	call	ret
/*    433 */	ldx	[%sp+2175],%o0


.L86:
.LSSN313:

/*    434 */	ret
	restore



.LSSN314:
	.size	_hoc_vtrap,.-_hoc_vtrap
	.type	_hoc_vtrap,#function
	.section	".rodata"
	.local	jpj..loop__hoc_vtrap
	.align	8
jpj..loop__hoc_vtrap:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _ode_count $"
	.section	".text"
	.align	64
_ode_count:
.L87:
.LSSN315:

/*    436 */

.L88:

/*    436 */	retl
	add	%g0,3,%o0



.L89:


.LSSN316:
	.size	_ode_count,.-_ode_count
	.type	_ode_count,#function
	.section	".rodata"
	.local	jpj..loop__ode_count
	.align	8
jpj..loop__ode_count:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _ode_spec $"
	.section	".text"
	.align	64
_ode_spec:
.L520:
.LSSN317:

/*    438 */	save	%sp,-208,%sp


.L521:
.LSSN318:

/*    441 */	ldsw	[%i1+48],%l0
.LSSN319:

/*    442 */	ldx	[%i1+40],%l4

.L522:
.LSSN320:

/*    443 */	cmp	%l0,%g0

/*    443 */	ble	.L527
	nop


.L523:


/*    443 */	subcc	%l0,2,%l0

/*    443 */	bneg	.L529
/*    443 */	mov	%g0,%l3


.L532:

/*    443 */	sethi	%h44(.LR0),%l1

/*    443 */	or	%l1,%m44(.LR0),%l1

/*    443 */	sllx	%l1,12,%l1

/*    443 */	or	%l1,%l44(.LR0),%l1

.L524:
.LSSN321:

.LSSN322:

/*    446 */	sxar2
/*    446 */	ldx	[%i1+16],%xg10
/*    446 */	ldx	[%i1],%xg11
.LSSN323:

/*    338 */	mov	%l4,%o2

/*    338 */	mov	%i0,%o3
.LSSN324:


/*    444 */	sxar2
/*    444 */	ldx	[%i1+24],%xg12
/*    444 */	ldx	[%xg10+%l3],%l2
.LSSN325:


/*    446 */	sxar2
/*    446 */	ldx	[%xg11+%l3],%xg13
/*    446 */	ldx	[%xg12+%l3],%o1

/*    446 */	sxar1
/*    446 */	ldx	[%xg13],%xg14
.LSSN326:

/*    338 */	mov	%l2,%o0
.LSSN327:

/*    446 */	sxar1
/*    446 */	ldd	[%xg14],%f8

/*    446 */	std	%f8,[%l2+136]
.LSSN328:


/*    447 */	sxar2
/*    447 */	ldx	[%o1],%xg15
/*    447 */	ldd	[%xg15],%f146

.LSSN329:

/*    448 */	sxar2
/*    448 */	std	%f146,[%l2+104]
/*    448 */	ldx	[%o1+24],%xg16


/*    448 */	sxar2
/*    448 */	ldd	[%xg16],%f148
/*    448 */	std	%f148,[%l2+112]
.LSSN330:

/*    338 */	std	%f8,[%sp+2207]


/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN331:

/*    281 */	ldd	[%l2+56],%f32
/*    281 */	sxar1
/*    281 */	ldd	[%l1+120],%f150
.LSSN332:

/*    338 */	mov	%l4,%o2
/*    338 */	mov	%i0,%o3
.LSSN333:

/*    281 */	sxar2
/*    281 */	ldx	[%l4],%xg17
/* #00002 */	std	%f150,[%fp+2039]
/*    281 */	sxar2
/*    281 */	ldd	[%xg17+24],%f34
/*    281 */	ldd	[%xg17+16],%f38
/*    281 */	fsubd	%f34,%f32,%f34
/*    281 */	frcpad	%f38,%f36
/*    281 */	sxar1
/*    281 */	fnmsubd	%f36,%f38,%f150,%f38
/*    281 */	fmuld	%f34,%f36,%f34
/*    281 */	fmaddd	%f38,%f38,%f38,%f40
/*    281 */	fmuld	%f38,%f38,%f42
/*    281 */	fmaddd	%f40,%f34,%f34,%f40
/*    281 */	fmaddd	%f42,%f42,%f38,%f42
/*    281 */	fmaddd	%f42,%f40,%f34,%f42
/*    281 */	std	%f42,[%l2+80]
.LSSN334:

/*    282 */	sxar1
/*    282 */	ldx	[%l4],%xg18
/*    282 */	ldd	[%l2+64],%f44
/*    282 */	sxar2
/*    282 */	ldd	[%xg18+8],%f46
/*    282 */	ldd	[%xg18],%f50
/*    282 */	fsubd	%f46,%f44,%f46
/*    282 */	frcpad	%f50,%f48
/*    282 */	sxar1
/*    282 */	fnmsubd	%f48,%f50,%f150,%f50
/*    282 */	fmuld	%f46,%f48,%f46
/*    282 */	fmaddd	%f50,%f50,%f50,%f52
/*    282 */	fmuld	%f50,%f50,%f54
/*    282 */	fmaddd	%f52,%f46,%f46,%f52
/*    282 */	fmaddd	%f54,%f54,%f50,%f54
/*    282 */	fmaddd	%f54,%f52,%f46,%f54
/*    282 */	std	%f54,[%l2+88]
.LSSN335:

/*    283 */	sxar1
/*    283 */	ldx	[%l4],%xg19
/*    283 */	ldd	[%l2+72],%f56
/*    283 */	sxar2
/*    283 */	ldd	[%xg19+40],%f58
/*    283 */	ldd	[%xg19+32],%f62
/*    283 */	fsubd	%f58,%f56,%f58
/*    283 */	frcpad	%f62,%f60
/*    283 */	sxar1
/*    283 */	fnmsubd	%f60,%f62,%f150,%f62
/*    283 */	fmuld	%f58,%f60,%f58
/*    283 */	sxar2
/*    283 */	fmaddd	%f62,%f62,%f62,%f64
/*    283 */	fmuld	%f62,%f62,%f66
/*    283 */	sxar2
/*    283 */	fmaddd	%f64,%f58,%f58,%f64
/*    283 */	fmaddd	%f66,%f66,%f62,%f66
/*    283 */	sxar2
/*    283 */	fmaddd	%f66,%f64,%f58,%f66
/*    283 */	std	%f66,[%l2+96]
.LSSN336:

.LSSN337:

/*    445 */	sxar2
/*    445 */	ldx	[%i1+16],%xg0
/*    445 */	ldx	[%i1],%xg1
.LSSN338:

/*    444 */	sxar2
/*    444 */	ldx	[%i1+24],%xg2
/*    444 */	add	%xg0,8,%xg0
.LSSN339:

.LSSN340:

/*    444 */	sxar2
/*    444 */	add	%xg1,8,%xg1
/*    444 */	ldx	[%xg0+%l3],%l5
.LSSN341:

/*    446 */	sxar2
/*    446 */	add	%xg2,8,%xg2
/*    446 */	ldx	[%xg1+%l3],%xg20
/*    446 */	sxar2
/*    446 */	ldx	[%xg2+%l3],%o1
/*    446 */	ldx	[%xg20],%xg21
.LSSN342:

/*    338 */	mov	%l5,%o0
.LSSN343:

/*    446 */	sxar1
/*    446 */	ldd	[%xg21],%f8
/*    446 */	std	%f8,[%l5+136]
.LSSN344:

/*    447 */	sxar2
/*    447 */	ldx	[%o1],%xg22
/*    447 */	ldd	[%xg22],%f152
.LSSN345:

/*    448 */	sxar2
/*    448 */	std	%f152,[%l5+104]
/*    448 */	ldx	[%o1+24],%xg23
/*    448 */	sxar2
/*    448 */	ldd	[%xg23],%f154
/*    448 */	std	%f154,[%l5+112]
.LSSN346:

/*    338 */	std	%f8,[%sp+2207]
/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN347:

/*    281 */	sxar2
/*    281 */	ldx	[%l4],%xg24
/*    281 */	ldd	[%l5+56],%f68
.LSSN348:

/*    450 */	subcc	%l0,2,%l0
.LSSN349:

/*    281 */	sxar2
/* #00002 */	ldd	[%fp+2039],%f156
/*    281 */	ldd	[%xg24+24],%f70
/*    281 */	sxar2
/*    281 */	ldd	[%xg24+16],%f74
/*    281 */	fsubd	%f70,%f68,%f70
/*    281 */	sxar2
/*    281 */	frcpad	%f74,%f72
/*    281 */	fnmsubd	%f72,%f74,%f156,%f74
/*    281 */	sxar2
/*    281 */	fmuld	%f70,%f72,%f70
/*    281 */	fmaddd	%f74,%f74,%f74,%f76
/*    281 */	sxar2
/*    281 */	fmuld	%f74,%f74,%f78
/*    281 */	fmaddd	%f76,%f70,%f70,%f76
/*    281 */	sxar2
/*    281 */	fmaddd	%f78,%f78,%f74,%f78
/*    281 */	fmaddd	%f78,%f76,%f70,%f78
.LSSN350:

/*    282 */	sxar2
/*    282 */	std	%f78,[%l5+80]
/*    282 */	ldx	[%l4],%xg25
/*    282 */	sxar2
/*    282 */	ldd	[%l5+64],%f80
/*    282 */	ldd	[%xg25+8],%f82
/*    282 */	sxar2
/*    282 */	ldd	[%xg25],%f86
/*    282 */	fsubd	%f82,%f80,%f82
/*    282 */	sxar2
/*    282 */	frcpad	%f86,%f84
/*    282 */	fnmsubd	%f84,%f86,%f156,%f86
/*    282 */	sxar2
/*    282 */	fmuld	%f82,%f84,%f82
/*    282 */	fmaddd	%f86,%f86,%f86,%f88
/*    282 */	sxar2
/*    282 */	fmuld	%f86,%f86,%f90
/*    282 */	fmaddd	%f88,%f82,%f82,%f88
/*    282 */	sxar2
/*    282 */	fmaddd	%f90,%f90,%f86,%f90
/*    282 */	fmaddd	%f90,%f88,%f82,%f90
.LSSN351:

/*    283 */	sxar2
/*    283 */	std	%f90,[%l5+88]
/*    283 */	ldx	[%l4],%xg26
/*    283 */	sxar2
/*    283 */	ldd	[%l5+72],%f92
/*    283 */	ldd	[%xg26+40],%f94
/*    283 */	sxar2
/*    283 */	ldd	[%xg26+32],%f98
/*    283 */	fsubd	%f94,%f92,%f94
/*    283 */	sxar2
/*    283 */	frcpad	%f98,%f96
/*    283 */	fnmsubd	%f96,%f98,%f156,%f98
/*    283 */	sxar2
/*    283 */	fmuld	%f94,%f96,%f94
/*    283 */	fmaddd	%f98,%f98,%f98,%f100
/*    283 */	sxar2
/*    283 */	fmuld	%f98,%f98,%f102
/*    283 */	fmaddd	%f100,%f94,%f94,%f100
/*    283 */	sxar2
/*    283 */	fmaddd	%f102,%f102,%f98,%f102
/*    283 */	fmaddd	%f102,%f100,%f94,%f102
/*    283 */	sxar1
/*    283 */	std	%f102,[%l5+96]
.LSSN352:

/*    450 */	bpos,pt	%icc, .L524
/*    450 */	add	%l3,16,%l3


.L533:


.L529:
.LSSN353:

/*    443 */	addcc	%l0,1,%l0

/*    443 */	bneg	.L527
	nop


.L530:

/*    443 */	sethi	%h44(.LR0),%l2

/*    443 */	or	%l2,%m44(.LR0),%l2

/*    443 */	sllx	%l2,12,%l2

/*    443 */	or	%l2,%l44(.LR0),%l2

.L535:
.LSSN354:

.LSSN355:

/*    446 */	sxar2
/*    446 */	ldx	[%i1+16],%xg0
/*    446 */	ldx	[%i1],%xg1
.LSSN356:

/*    338 */	mov	%l4,%o2

/*    338 */	mov	%i0,%o3
.LSSN357:


/*    444 */	sxar2
/*    444 */	ldx	[%i1+24],%xg2
/*    444 */	ldx	[%xg0+%l3],%l6
.LSSN358:


/*    446 */	sxar2
/*    446 */	ldx	[%xg1+%l3],%xg3
/*    446 */	ldx	[%xg2+%l3],%o1

/*    446 */	sxar1
/*    446 */	ldx	[%xg3],%xg4
.LSSN359:

/*    338 */	mov	%l6,%o0
.LSSN360:

/*    446 */	sxar1
/*    446 */	ldd	[%xg4],%f8

/*    446 */	std	%f8,[%l6+136]
.LSSN361:


/*    447 */	sxar2
/*    447 */	ldx	[%o1],%xg5
/*    447 */	ldd	[%xg5],%f142

.LSSN362:

/*    448 */	sxar2
/*    448 */	std	%f142,[%l6+104]
/*    448 */	ldx	[%o1+24],%xg6


/*    448 */	sxar2
/*    448 */	ldd	[%xg6],%f144
/*    448 */	std	%f144,[%l6+112]
.LSSN363:

/*    338 */	std	%f8,[%sp+2207]


/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN364:

/*    281 */	sxar2
/*    281 */	ldx	[%l4],%xg7
/*    281 */	ldd	[%l6+56],%f104
.LSSN365:

/*    450 */	subcc	%l0,1,%l0
.LSSN366:

/*    281 */	sxar2
/*    281 */	ldd	[%l2+120],%f112
/*    281 */	ldd	[%xg7+24],%f106
/*    281 */	sxar2
/*    281 */	ldd	[%xg7+16],%f110
/*    281 */	fsubd	%f106,%f104,%f106
/*    281 */	sxar2
/*    281 */	frcpad	%f110,%f108
/*    281 */	fnmsubd	%f108,%f110,%f112,%f110
/*    281 */	sxar2
/*    281 */	fmuld	%f106,%f108,%f106
/*    281 */	fmaddd	%f110,%f110,%f110,%f114
/*    281 */	sxar2
/*    281 */	fmuld	%f110,%f110,%f116
/*    281 */	fmaddd	%f114,%f106,%f106,%f114
/*    281 */	sxar2
/*    281 */	fmaddd	%f116,%f116,%f110,%f116
/*    281 */	fmaddd	%f116,%f114,%f106,%f116
.LSSN367:

/*    282 */	sxar2
/*    282 */	std	%f116,[%l6+80]
/*    282 */	ldx	[%l4],%xg8
/*    282 */	sxar2
/*    282 */	ldd	[%l6+64],%f118
/*    282 */	ldd	[%xg8+8],%f120
/*    282 */	sxar2
/*    282 */	ldd	[%xg8],%f124
/*    282 */	fsubd	%f120,%f118,%f120
/*    282 */	sxar2
/*    282 */	frcpad	%f124,%f122
/*    282 */	fnmsubd	%f122,%f124,%f112,%f124
/*    282 */	sxar2
/*    282 */	fmuld	%f120,%f122,%f120
/*    282 */	fmaddd	%f124,%f124,%f124,%f126
/*    282 */	sxar2
/*    282 */	fmuld	%f124,%f124,%f128
/*    282 */	fmaddd	%f126,%f120,%f120,%f126
/*    282 */	sxar2
/*    282 */	fmaddd	%f128,%f128,%f124,%f128
/*    282 */	fmaddd	%f128,%f126,%f120,%f128
.LSSN368:

/*    283 */	sxar2
/*    283 */	std	%f128,[%l6+88]
/*    283 */	ldx	[%l4],%xg9
/*    283 */	sxar2
/*    283 */	ldd	[%l6+72],%f130
/*    283 */	ldd	[%xg9+40],%f132
/*    283 */	sxar2
/*    283 */	ldd	[%xg9+32],%f136
/*    283 */	fsubd	%f132,%f130,%f132
/*    283 */	sxar2
/*    283 */	frcpad	%f136,%f134
/*    283 */	fnmsubd	%f134,%f136,%f112,%f136
/*    283 */	sxar2
/*    283 */	fmuld	%f132,%f134,%f132
/*    283 */	fmaddd	%f136,%f136,%f136,%f138
/*    283 */	sxar2
/*    283 */	fmuld	%f136,%f136,%f140
/*    283 */	fmaddd	%f138,%f132,%f132,%f138
/*    283 */	sxar2
/*    283 */	fmaddd	%f140,%f140,%f136,%f140
/*    283 */	fmaddd	%f140,%f138,%f132,%f140
/*    283 */	sxar1
/*    283 */	std	%f140,[%l6+96]
.LSSN369:

/*    450 */	bpos,pt	%icc, .L535
/*    450 */	add	%l3,8,%l3


.L531:


.L527:

/*    450 */	ret
	restore



.LSSN370:
	.size	_ode_spec,.-_ode_spec
	.type	_ode_spec,#function
	.section	".rodata"
	.local	jpj..loop__ode_spec
	.align	8
jpj..loop__ode_spec:
	.byte	1
	.byte	3
	.half	24
	.word	16
	.xword	0
	.word	1
	.byte	16
	.byte	0,0,0
	.word	443
	.word	449
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _ode_map $"
	.section	".text"
	.align	64
_ode_map:
.L536:
.LSSN371:

/*    452 */	save	%sp,-192,%sp


.L537:
.LSSN372:

/*    455 */	stw	%i0,[%i4+48]

.L538:
.LSSN373:

/*    457 */	sethi	%h44(.LB0+30729856),%l0
.LSSN374:

/*    458 */	sethi	%h44(.LB0),%l1
.LSSN375:

/*    457 */	or	%l0,%m44(.LB0+30729856),%l0
.LSSN376:

/*    458 */	or	%l1,%m44(.LB0),%l1
.LSSN377:

/*    457 */	sllx	%l0,12,%l0
.LSSN378:

/*    458 */	sllx	%l1,12,%l1
.LSSN379:

/*    457 */	or	%l0,%l44(.LB0+30729856),%l0
.LSSN380:

/*    458 */	or	%l1,%l44(.LB0),%l1
.LSSN381:

/*    457 */	sxar1
/*    457 */	ldsw	[%l0],%xg0
.LSSN382:

/*    458 */	mov	%g0,%o2

/*    458 */	mov	%i5,%o1
.LSSN383:


/*    457 */	sxar2
/*    457 */	sllx	%xg0,3,%xg0
/*    457 */	add	%xg0,%i3,%xg0


/*    457 */	sxar2
/*    457 */	stx	%xg0,[%i1]
/*    457 */	ldsw	[%l0+-16],%xg1


/*    457 */	sxar2
/*    457 */	sllx	%xg1,3,%xg1
/*    457 */	add	%xg1,%i3,%xg1

/*    457 */	sxar1
/*    457 */	stx	%xg1,[%i2]
.LSSN384:


/*    458 */	call	_cvode_abstol
/*    458 */	ldx	[%l1+88],%o0
.LSSN385:

/*    457 */	sxar1
/*    457 */	ldsw	[%l0+4],%xg2
.LSSN386:

/*    458 */	mov	1,%o2
/*    458 */	mov	%i5,%o1
.LSSN387:

/*    457 */	sxar2
/*    457 */	sllx	%xg2,3,%xg2
/*    457 */	add	%xg2,%i3,%xg2
/*    457 */	sxar2
/*    457 */	stx	%xg2,[%i1+8]
/*    457 */	ldsw	[%l0+-12],%xg3
/*    457 */	sxar2
/*    457 */	sllx	%xg3,3,%xg3
/*    457 */	add	%xg3,%i3,%xg3
/*    457 */	sxar1
/*    457 */	stx	%xg3,[%i2+8]
.LSSN388:

/*    458 */	call	_cvode_abstol
/*    458 */	ldx	[%l1+88],%o0
.LSSN389:

/*    457 */	sxar1
/*    457 */	ldsw	[%l0+8],%xg4
.LSSN390:

/*    458 */	mov	2,%o2
/*    458 */	mov	%i5,%o1
.LSSN391:

/*    457 */	sxar2
/*    457 */	sllx	%xg4,3,%xg4
/*    457 */	add	%xg4,%i3,%xg4
/*    457 */	sxar2
/*    457 */	stx	%xg4,[%i1+16]
/*    457 */	ldsw	[%l0+-8],%xg5
/*    457 */	sxar2
/*    457 */	sllx	%xg5,3,%xg5
/*    457 */	add	%xg5,%i3,%xg5
/*    457 */	sxar1
/*    457 */	stx	%xg5,[%i2+16]
.LSSN392:

/*    458 */	call	_cvode_abstol
/*    458 */	ldx	[%l1+88],%o0
.LSSN393:


.L543:
.LSSN394:

/*    460 */	ret
	restore



.LSSN395:
	.size	_ode_map,.-_ode_map
	.type	_ode_map,#function
	.section	".rodata"
	.local	jpj..loop__ode_map
	.align	8
jpj..loop__ode_map:
	.byte	1
	.byte	3
	.half	24
	.word	16
	.xword	0
	.word	1
	.byte	16
	.byte	0,0,0
	.word	456
	.word	459
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _ode_matsol $"
	.section	".text"
	.align	64
_ode_matsol:
.L546:
.LSSN396:

/*    462 */	save	%sp,-192,%sp


.L547:
.LSSN397:

/*    465 */	ldsw	[%i1+48],%l1
.LSSN398:

/*    466 */	ldx	[%i1+40],%l2

.L548:
.LSSN399:

/*    467 */	cmp	%l1,%g0

/*    467 */	ble	.L553
	nop


.L549:

/*    467 */	mov	%g0,%l3

/*    467 */	sethi	%h44(.LR0),%l0

/*    467 */	or	%l0,%m44(.LR0),%l0

/*    467 */	sllx	%l0,12,%l0

/*    467 */	or	%l0,%l44(.LR0),%l0

.L550:
.LSSN400:

.LSSN401:

/*    470 */	sxar2
/*    470 */	ldx	[%i1+16],%xg0
/*    470 */	ldx	[%i1],%xg1
.LSSN402:

/*    338 */	mov	%l2,%o2

/*    338 */	mov	%i0,%o3
.LSSN403:


/*    468 */	sxar2
/*    468 */	ldx	[%i1+24],%xg2
/*    468 */	ldx	[%xg0+%l3],%l4
.LSSN404:


/*    470 */	sxar2
/*    470 */	ldx	[%xg1+%l3],%xg3
/*    470 */	ldx	[%xg2+%l3],%o1

/*    470 */	sxar1
/*    470 */	ldx	[%xg3],%xg4
.LSSN405:

/*    338 */	mov	%l4,%o0
.LSSN406:

/*    470 */	sxar1
/*    470 */	ldd	[%xg4],%f8

/*    470 */	std	%f8,[%l4+136]
.LSSN407:


/*    471 */	sxar2
/*    471 */	ldx	[%o1],%xg5
/*    471 */	ldd	[%xg5],%f90

.LSSN408:

/*    472 */	sxar2
/*    472 */	std	%f90,[%l4+104]
/*    472 */	ldx	[%o1+24],%xg6


/*    472 */	sxar2
/*    472 */	ldd	[%xg6],%f92
/*    472 */	std	%f92,[%l4+112]
.LSSN409:

/*    338 */	std	%f8,[%sp+2207]


/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN410:

/*    289 */	ldd	[%i0+8],%f32
/*    289 */	sxar1
/*    289 */	ldx	[%l2],%xg7
.LSSN411:

/*    474 */	subcc	%l1,1,%l1
.LSSN412:

/*    289 */	ldd	[%l0+136],%f34
/*    289 */	ldd	[%l0+120],%f40
/*    289 */	ldd	[%l4+80],%f48
/*    289 */	sxar1
/*    289 */	ldd	[%xg7+16],%f38
/*    289 */	fmuld	%f34,%f32,%f32
/*    289 */	frcpad	%f38,%f36
/*    289 */	fnmsubd	%f36,%f38,%f40,%f38
/*    289 */	fmuld	%f32,%f36,%f32
/*    289 */	fmaddd	%f38,%f38,%f38,%f42
/*    289 */	fmuld	%f38,%f38,%f44
/*    289 */	fmaddd	%f42,%f32,%f32,%f42
/*    289 */	fmaddd	%f44,%f44,%f38,%f44
/*    289 */	fmaddd	%f44,%f42,%f32,%f44
/*    289 */	fsubd	%f40,%f44,%f44
/*    289 */	frcpad	%f44,%f46
/*    289 */	fnmsubd	%f46,%f44,%f40,%f44
/*    289 */	fmuld	%f48,%f46,%f48
/*    289 */	fmaddd	%f44,%f44,%f44,%f50
/*    289 */	fmuld	%f44,%f44,%f52
/*    289 */	fmaddd	%f50,%f48,%f48,%f50
/*    289 */	fmaddd	%f52,%f52,%f44,%f52
/*    289 */	fmaddd	%f52,%f50,%f48,%f52
/*    289 */	std	%f52,[%l4+80]
.LSSN413:

/*    290 */	ldd	[%i0+8],%f54
/*    290 */	sxar2
/*    290 */	ldx	[%l2],%xg8
/*    290 */	ldd	[%l4+88],%f66
/*    290 */	fmuld	%f34,%f54,%f54
/*    290 */	sxar1
/*    290 */	ldd	[%xg8],%f58
/*    290 */	frcpad	%f58,%f56
/*    290 */	fnmsubd	%f56,%f58,%f40,%f58
/*    290 */	fmuld	%f54,%f56,%f54
/*    290 */	fmaddd	%f58,%f58,%f58,%f60
/*    290 */	fmuld	%f58,%f58,%f62
/*    290 */	fmaddd	%f60,%f54,%f54,%f60
/*    290 */	fmaddd	%f62,%f62,%f58,%f62
/*    290 */	fmaddd	%f62,%f60,%f54,%f62
/*    290 */	fsubd	%f40,%f62,%f62
/*    290 */	sxar2
/*    290 */	frcpad	%f62,%f64
/*    290 */	fnmsubd	%f64,%f62,%f40,%f62
/*    290 */	sxar2
/*    290 */	fmuld	%f66,%f64,%f66
/*    290 */	fmaddd	%f62,%f62,%f62,%f68
/*    290 */	sxar2
/*    290 */	fmuld	%f62,%f62,%f70
/*    290 */	fmaddd	%f68,%f66,%f66,%f68
/*    290 */	sxar2
/*    290 */	fmaddd	%f70,%f70,%f62,%f70
/*    290 */	fmaddd	%f70,%f68,%f66,%f70
.LSSN414:

/*    291 */	sxar2
/*    291 */	std	%f70,[%l4+88]
/*    291 */	ldd	[%i0+8],%f72
/*    291 */	sxar2
/*    291 */	ldx	[%l2],%xg9
/*    291 */	ldd	[%l4+96],%f84
/*    291 */	sxar2
/*    291 */	fmuld	%f34,%f72,%f34
/*    291 */	ldd	[%xg9+32],%f76
/*    291 */	sxar2
/*    291 */	frcpad	%f76,%f74
/*    291 */	fnmsubd	%f74,%f76,%f40,%f76
/*    291 */	sxar2
/*    291 */	fmuld	%f34,%f74,%f34
/*    291 */	fmaddd	%f76,%f76,%f76,%f78
/*    291 */	sxar2
/*    291 */	fmuld	%f76,%f76,%f80
/*    291 */	fmaddd	%f78,%f34,%f34,%f78
/*    291 */	sxar2
/*    291 */	fmaddd	%f80,%f80,%f76,%f80
/*    291 */	fmaddd	%f80,%f78,%f34,%f80
/*    291 */	sxar2
/*    291 */	fsubd	%f40,%f80,%f80
/*    291 */	frcpad	%f80,%f82
/*    291 */	sxar2
/*    291 */	fnmsubd	%f82,%f80,%f40,%f80
/*    291 */	fmuld	%f84,%f82,%f84
/*    291 */	sxar2
/*    291 */	fmaddd	%f80,%f80,%f80,%f86
/*    291 */	fmuld	%f80,%f80,%f88
/*    291 */	sxar2
/*    291 */	fmaddd	%f86,%f84,%f84,%f86
/*    291 */	fmaddd	%f88,%f88,%f80,%f88
/*    291 */	sxar2
/*    291 */	fmaddd	%f88,%f86,%f84,%f88
/*    291 */	std	%f88,[%l4+96]
.LSSN415:

/*    474 */	bne,pt	%icc, .L550
/*    474 */	add	%l3,8,%l3


.L551:


.L553:

/*    474 */	ret
	restore



.LSSN416:
	.size	_ode_matsol,.-_ode_matsol
	.type	_ode_matsol,#function
	.section	".rodata"
	.local	jpj..loop__ode_matsol
	.align	8
jpj..loop__ode_matsol:
	.byte	1
	.byte	3
	.half	24
	.word	16
	.xword	0
	.word	1
	.byte	16
	.byte	0,0,0
	.word	467
	.word	473
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _thread_mem_init $"
	.section	".text"
	.align	64
_thread_mem_init:
.L120:
.LSSN417:

/*    476 */	save	%sp,-192,%sp


.L121:
.LSSN418:

/*    477 */	sethi	%h44(.LS0),%g1

/*    477 */	or	%g1,%m44(.LS0),%g1

/*    477 */	sllx	%g1,12,%g1

/*    477 */	or	%g1,%l44(.LS0),%g1

/*    477 */	ldsw	[%g1+32],%g4

/*    477 */	cmp	%g4,%g0

/*    477 */	bne,pt	%icc, .L122
	nop


.L123:
.LSSN419:

/*    479 */	sethi	%h44(.LB0+30729792),%g2

/*    479 */	mov	1,%g3

/*    479 */	or	%g2,%m44(.LB0+30729792),%g2

/*    479 */	sllx	%g2,12,%g2

/*    479 */	or	%g2,%l44(.LB0+30729792),%g2

/*    479 */	stx	%g2,[%i0]

/*    479 */	stw	%g3,[%g1+32]
.LSSN420:

/*    480 */	ret
	restore

.LSSN421:


.L122:
.LSSN422:

/*    477 */	mov	6,%o0


/*    477 */	call	hoc_Ecalloc
/*    477 */	mov	8,%o1
/*    477 */	call	hoc_malchk
/*    477 */	stx	%o0,[%i0]
.LSSN423:


.L125:
.LSSN424:

/*    481 */	ret
	restore



.LSSN425:
	.size	_thread_mem_init,.-_thread_mem_init
	.type	_thread_mem_init,#function
	.section	".rodata"
	.local	jpj..loop__thread_mem_init
	.align	8
jpj..loop__thread_mem_init:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _thread_cleanup $"
	.section	".text"
	.align	64
_thread_cleanup:
.L126:
.LSSN426:

/*    483 */	save	%sp,-192,%sp


.L127:
.LSSN427:

/*    484 */	ldx	[%i0],%o0

/*    484 */	sethi	%h44(.LB0+30729792),%g1

/*    484 */	or	%g1,%m44(.LB0+30729792),%g1

/*    484 */	sllx	%g1,12,%g1

/*    484 */	or	%g1,%l44(.LB0+30729792),%g1

/*    484 */	cmp	%o0,%g1

/*    484 */	be,pt	%xcc, .L128
	nop


.L129:
.LSSN428:

/*    487 */	call	free
	nop
.LSSN429:

/*    488 */	ret
	restore

.LSSN430:


.L128:
.LSSN431:

/*    485 */	sethi	%h44(.LS0),%g2

/*    485 */	or	%g2,%m44(.LS0),%g2

/*    485 */	sllx	%g2,12,%g2

/*    485 */	or	%g2,%l44(.LS0),%g2

/*    485 */	stw	%g0,[%g2+32]
.LSSN432:

/*    486 */	ret
	restore

.LSSN433:


.L131:


.LSSN434:
	.size	_thread_cleanup,.-_thread_cleanup
	.type	_thread_cleanup,#function
	.section	".rodata"
	.local	jpj..loop__thread_cleanup
	.align	8
jpj..loop__thread_cleanup:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _update_ion_pointer $"
	.section	".text"
	.align	64
_update_ion_pointer:
.L132:
.LSSN435:

/*    491 */	save	%sp,-192,%sp


.L133:
.LSSN436:

/*    492 */	sethi	%h44(.LB0),%l0

/*    492 */	mov	%g0,%l1

/*    492 */	or	%l0,%m44(.LB0),%l0

/*    492 */	mov	%i0,%o1

/*    492 */	sllx	%l0,12,%l0

/*    492 */	mov	%l1,%o2

/*    492 */	or	%l0,%l44(.LB0),%l0

/*    492 */	mov	%l1,%o3


/*    492 */	call	nrn_update_ion_pointer
/*    492 */	ldx	[%l0+104],%o0
.LSSN437:

/*    493 */	ldx	[%l0+104],%o0
/*    493 */	mov	1,%o2
/*    493 */	mov	3,%l2
/*    493 */	mov	%i0,%o1
/*    493 */	call	nrn_update_ion_pointer
/*    493 */	mov	%l2,%o3
.LSSN438:

/*    494 */	ldx	[%l0+104],%o0
/*    494 */	mov	2,%o2
/*    494 */	mov	4,%l3
/*    494 */	mov	%i0,%o1
/*    494 */	call	nrn_update_ion_pointer
/*    494 */	mov	%l3,%o3
.LSSN439:

/*    495 */	ldx	[%l0+96],%o0
/*    495 */	mov	%i0,%o1
/*    495 */	mov	%l2,%o2
/*    495 */	call	nrn_update_ion_pointer
/*    495 */	mov	%l1,%o3
.LSSN440:

/*    496 */	ldx	[%l0+96],%o0
/*    496 */	mov	%i0,%o1
/*    496 */	mov	%l3,%o2
/*    496 */	call	nrn_update_ion_pointer
/*    496 */	mov	%l2,%o3
.LSSN441:

/*    497 */	ldx	[%l0+96],%o0
/*    497 */	mov	5,%o2
/*    497 */	mov	%i0,%o1
/*    497 */	call	nrn_update_ion_pointer
/*    497 */	mov	%l3,%o3


.L134:
.LSSN442:

/*    498 */	ret
	restore



.LSSN443:
	.size	_update_ion_pointer,.-_update_ion_pointer
	.type	_update_ion_pointer,#function
	.section	".rodata"
	.local	jpj..loop__update_ion_pointer
	.align	8
jpj..loop__update_ion_pointer:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c nrn_init $"
	.section	".text"
	.align	64
nrn_init:
.L554:
.LSSN444:

/*    515 */	save	%sp,-192,%sp


.L555:
.LSSN445:

/*    519 */	ldx	[%i1+8],%l1
.LSSN446:

/*    521 */	ldsw	[%i1+48],%l3
.LSSN447:

/*    522 */	ldx	[%i1+40],%l0

.L556:
.LSSN448:

/*    523 */	cmp	%l3,%g0

/*    523 */	ble	.L564
	nop


.L557:

/*    523 */	mov	%g0,%l6

/*    523 */	sub	%l3,2,%l3

/*    523 */	cmp	%l3,%g0


/*    523 */	bl	.L566
/*    523 */	mov	%g0,%l2


.L569:

/*    523 */	sethi	%h44(use_cachevec),%l7

/*    523 */	sethi	%h44(.LS0),%l5

/*    523 */	or	%l7,%m44(use_cachevec),%l7

/*    523 */	or	%l5,%m44(.LS0),%l5

/*    523 */	sllx	%l7,12,%l7

/*    523 */	sllx	%l5,12,%l5

/*    523 */	mov	%g0,%l2

/*    523 */	or	%l7,%l44(use_cachevec),%l7

/*    523 */	or	%l5,%l44(.LS0),%l5

.L558:
.LSSN449:

/*    524 */	sxar1
/*    524 */	ldx	[%i1+16],%xg31

/*    524 */	ldx	[%i1+24],%g1
.LSSN450:

/*    530 */	ldsw	[%l7],%g2
.LSSN451:

/*    524 */	sxar1
/*    524 */	ldx	[%xg31+%l2],%i2

.LSSN452:

/*    530 */	cmp	%g2,%g0

/*    530 */	be	.L560
/*    530 */	ldx	[%g1+%l2],%o1


.L559:
.LSSN453:


/*    531 */	sxar2
/*    531 */	sllx	%l6,2,%xg1
/*    531 */	ldx	[%i0+80],%xg27


/*    531 */	sxar2
/*    531 */	ldsw	[%l1+%xg1],%xg2
/*    531 */	sllx	%xg2,3,%xg2

/*    531 */	sxar1
/*    531 */	ldd	[%xg27+%xg2],%f8
.LSSN454:

/*    532 */	ba	.L561
	nop


.L560:
.LSSN455:


/*    535 */	sxar2
/*    535 */	sllx	%l6,3,%xg0
/*    535 */	ldx	[%i1],%xg28

.LSSN456:

/*    536 */	sxar2
/*    536 */	ldx	[%xg28+%xg0],%xg29
/*    536 */	ldx	[%xg29],%xg30

/*    536 */	sxar1
/*    536 */	ldd	[%xg30],%f8

.L561:
.LSSN457:

/*    538 */	std	%f8,[%i2+136]
.LSSN458:

/*    338 */	mov	%i2,%o0

/*    338 */	mov	%l0,%o2

/*    338 */	mov	%i0,%o3
.LSSN459:


/*    539 */	sxar2
/*    539 */	ldx	[%o1],%xg21
/*    539 */	ldd	[%xg21],%f64

.LSSN460:

/*    540 */	sxar2
/*    540 */	std	%f64,[%i2+104]
/*    540 */	ldx	[%o1+24],%xg22


/*    540 */	sxar2
/*    540 */	ldd	[%xg22],%f66
/*    540 */	std	%f66,[%i2+112]
.LSSN461:


/*    502 */	sxar2
/*    502 */	ldd	[%l5+16],%f68
/*    502 */	std	%f68,[%i2+64]
.LSSN462:


/*    503 */	sxar2
/*    503 */	ldd	[%l5+8],%f70
/*    503 */	std	%f70,[%i2+56]
.LSSN463:


/*    504 */	sxar2
/*    504 */	ldd	[%l5],%f72
/*    504 */	std	%f72,[%i2+72]
.LSSN464:

/*    338 */	std	%f8,[%sp+2207]


/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN465:

.LSSN466:

.LSSN467:

/*    507 */	sxar2
/*    507 */	ldx	[%l0],%xg23
/*    507 */	ldd	[%xg23+24],%f74
.LSSN468:

/*    508 */	sxar2
/*    508 */	std	%f74,[%i2+56]
/*    508 */	ldx	[%l0],%xg24
/*    508 */	sxar2
/*    508 */	ldd	[%xg24+8],%f76
/*    508 */	std	%f76,[%i2+64]
.LSSN469:

/*    509 */	sxar2
/*    509 */	ldx	[%l0],%xg25
/*    509 */	ldd	[%xg25+40],%f78
.LSSN470:

/*    524 */	sxar2
/*    524 */	std	%f78,[%i2+72]
/*    524 */	ldx	[%i1+16],%xg3
.LSSN471:

/*    530 */	sxar2
/*    530 */	ldx	[%i1+24],%xg4
/*    530 */	ldsw	[%l7],%xg26
.LSSN472:

/*    524 */	sxar2
/*    524 */	add	%xg3,8,%xg3
/*    524 */	add	%xg4,8,%xg4
/*    524 */	sxar2
/*    524 */	ldx	[%xg3+%l2],%l4
/*    524 */	ldx	[%xg4+%l2],%o1
.LSSN473:

/*    530 */	sxar1
/*    530 */	cmp	%xg26,%g0
/*    530 */	be	.L573
/*    530 */	add	%l6,1,%l6


.L572:
.LSSN474:


/*    531 */	sxar2
/*    531 */	sllx	%l6,2,%xg6
/*    531 */	ldx	[%i0+80],%xg17


/*    531 */	sxar2
/*    531 */	ldsw	[%l1+%xg6],%xg7
/*    531 */	sllx	%xg7,3,%xg7

/*    531 */	sxar1
/*    531 */	ldd	[%xg17+%xg7],%f8
.LSSN475:

/*    532 */	ba	.L574
	nop


.L573:
.LSSN476:


/*    535 */	sxar2
/*    535 */	sllx	%l6,3,%xg5
/*    535 */	ldx	[%i1],%xg18

.LSSN477:

/*    536 */	sxar2
/*    536 */	ldx	[%xg18+%xg5],%xg19
/*    536 */	ldx	[%xg19],%xg20

/*    536 */	sxar1
/*    536 */	ldd	[%xg20],%f8

.L574:
.LSSN478:

/*    538 */	std	%f8,[%l4+136]
.LSSN479:

/*    338 */	mov	%l4,%o0

/*    338 */	mov	%l0,%o2

/*    338 */	mov	%i0,%o3
.LSSN480:


/*    539 */	sxar2
/*    539 */	ldx	[%o1],%xg12
/*    539 */	ldd	[%xg12],%f48

/*    539 */	std	%f48,[%l4+104]
.LSSN481:


/*    540 */	sxar2
/*    540 */	ldx	[%o1+24],%xg13
/*    540 */	ldd	[%xg13],%f50

/*    540 */	std	%f50,[%l4+112]
.LSSN482:

/*    502 */	ldd	[%l5+16],%f52

/*    502 */	std	%f52,[%l4+64]
.LSSN483:

/*    503 */	ldd	[%l5+8],%f54

/*    503 */	std	%f54,[%l4+56]
.LSSN484:

/*    504 */	ldd	[%l5],%f56

/*    504 */	std	%f56,[%l4+72]
.LSSN485:

/*    338 */	std	%f8,[%sp+2207]


/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN486:

/*    507 */	sxar1
/*    507 */	ldx	[%l0],%xg14
.LSSN487:

/*    542 */	add	%l6,1,%l6
/*    542 */	add	%l2,16,%l2
/*    542 */	subcc	%l3,2,%l3
.LSSN488:

/*    507 */	sxar1
/*    507 */	ldd	[%xg14+24],%f58
/*    507 */	std	%f58,[%l4+56]
.LSSN489:

/*    508 */	sxar2
/*    508 */	ldx	[%l0],%xg15
/*    508 */	ldd	[%xg15+8],%f60
/*    508 */	std	%f60,[%l4+64]
.LSSN490:

/*    509 */	sxar2
/*    509 */	ldx	[%l0],%xg16
/*    509 */	ldd	[%xg16+40],%f62
.LSSN491:

/*    542 */	bpos,pt	%icc, .L558
/*    542 */	std	%f62,[%l4+72]


.L570:


.L566:
.LSSN492:

/*    523 */	addcc	%l3,1,%l3

/*    523 */	bneg	.L564
	nop


.L567:

/*    523 */	sethi	%h44(use_cachevec),%i3

/*    523 */	sethi	%h44(.LS0),%i4

/*    523 */	or	%i3,%m44(use_cachevec),%i3

/*    523 */	or	%i4,%m44(.LS0),%i4

/*    523 */	sllx	%l6,2,%i2

/*    523 */	sllx	%i3,12,%i3

/*    523 */	sllx	%l6,3,%l6

/*    523 */	sllx	%i4,12,%i4

/*    523 */	add	%i2,%l1,%i2

/*    523 */	or	%i3,%l44(use_cachevec),%i3

/*    523 */	or	%i4,%l44(.LS0),%i4

.L575:
.LSSN493:


/*    524 */	sxar2
/*    524 */	ldx	[%i1+16],%xg9
/*    524 */	ldx	[%i1+24],%xg10
.LSSN494:

.LSSN495:

/*    524 */	sxar2
/*    524 */	ldsw	[%i3],%xg11
/*    524 */	ldx	[%xg9+%l2],%l1

.LSSN496:

/*    530 */	sxar2
/*    530 */	ldx	[%xg10+%l2],%o1
/*    530 */	cmp	%xg11,%g0

/*    530 */	be	.L577
	nop


.L576:
.LSSN497:


/*    531 */	sxar2
/*    531 */	ldsw,d	[%i2],%xg8
/*    531 */	ldx	[%i0+80],%xg5

/*    531 */	prefetch	[%i2+1280],21

/*    531 */	prefetch	[%i2+256],0


/*    531 */	sxar2
/*    531 */	sllx	%xg8,3,%xg8
/*    531 */	ldd	[%xg5+%xg8],%f8
.LSSN498:

/*    532 */	ba	.L578
	nop


.L577:
.LSSN499:


/*    535 */	sxar2
/*    535 */	ldx	[%i1],%xg6
/*    535 */	ldx	[%xg6+%l6],%xg7
.LSSN500:


/*    536 */	sxar2
/*    536 */	ldx	[%xg7],%xg8
/*    536 */	ldd	[%xg8],%f8

.L578:
.LSSN501:

/*    538 */	std	%f8,[%l1+136]
.LSSN502:

/*    338 */	mov	%l1,%o0

/*    338 */	mov	%l0,%o2

/*    338 */	mov	%i0,%o3
.LSSN503:


/*    539 */	sxar2
/*    539 */	ldx	[%o1],%xg0
/*    539 */	ldd	[%xg0],%f32

/*    539 */	std	%f32,[%l1+104]
.LSSN504:


/*    540 */	sxar2
/*    540 */	ldx	[%o1+24],%xg1
/*    540 */	ldd	[%xg1],%f34

/*    540 */	std	%f34,[%l1+112]
.LSSN505:

/*    502 */	ldd	[%i4+16],%f36

/*    502 */	std	%f36,[%l1+64]
.LSSN506:

/*    503 */	ldd	[%i4+8],%f38

/*    503 */	std	%f38,[%l1+56]
.LSSN507:

/*    504 */	ldd	[%i4],%f40

/*    504 */	std	%f40,[%l1+72]
.LSSN508:

/*    338 */	std	%f8,[%sp+2207]


/*    338 */	call	_n_rates
/*    338 */	ldx	[%sp+2207],%o4
.LSSN509:

/*    507 */	sxar1
/*    507 */	ldx	[%l0],%xg2
.LSSN510:

/*    542 */	add	%l6,8,%l6
/*    542 */	add	%i2,4,%i2
/*    542 */	add	%l2,8,%l2
/*    542 */	subcc	%l3,1,%l3
.LSSN511:

/*    507 */	sxar1
/*    507 */	ldd	[%xg2+24],%f42
/*    507 */	std	%f42,[%l1+56]
.LSSN512:

/*    508 */	sxar2
/*    508 */	ldx	[%l0],%xg3
/*    508 */	ldd	[%xg3+8],%f44
/*    508 */	std	%f44,[%l1+64]
.LSSN513:

/*    509 */	sxar2
/*    509 */	ldx	[%l0],%xg4
/*    509 */	ldd	[%xg4+40],%f46
.LSSN514:

/*    542 */	bpos,pt	%icc, .L575
/*    542 */	std	%f46,[%l1+72]


.L568:


.L564:

/*    542 */	ret
	restore



.LSSN515:
	.size	nrn_init,.-nrn_init
	.type	nrn_init,#function
	.section	".rodata"
	.local	jpj..loop_nrn_init
	.align	8
jpj..loop_nrn_init:
	.byte	1
	.byte	3
	.half	24
	.word	16
	.xword	0
	.word	1
	.byte	16
	.byte	0,0,0
	.word	523
	.word	541
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _nrn_current $"
	.section	".text"
	.align	64
_nrn_current:
.L151:
.LSSN516:

/*    544 */

.L152:

/*    544 */	std	%f8,[%o0+136]
.LSSN517:

/*    545 */	ldd	[%o0+56],%f0

/*    545 */	ldd	[%o0],%f34

/*    545 */	ldd	[%o0+64],%f36

/*    545 */	fmuld	%f0,%f0,%f32

/*    545 */	fmuld	%f0,%f34,%f0

/*    545 */	fmuld	%f36,%f32,%f36

/*    545 */	fmuld	%f0,%f36,%f0

/*    545 */	std	%f0,[%o0+32]
.LSSN518:

/*    546 */	ldd	[%o0+104],%f32

/*    546 */	fsubd	%f8,%f32,%f32

/*    546 */	fmuld	%f0,%f32,%f34

/*    546 */	std	%f34,[%o0+120]
.LSSN519:

/*    547 */	ldd	[%o0+72],%f34

/*    547 */	ldd	[%o0+8],%f36

/*    547 */	fmuld	%f34,%f34,%f34

/*    547 */	fmuld	%f36,%f34,%f36

/*    547 */	fmuld	%f34,%f36,%f34

/*    547 */	std	%f34,[%o0+40]
.LSSN520:

/*    548 */	ldd	[%o0+112],%f36

/*    548 */	fsubd	%f8,%f36,%f36

/*    548 */	fmuld	%f34,%f36,%f38

/*    548 */	std	%f38,[%o0+128]
.LSSN521:

/*    549 */	ldd	[%o0+24],%f38

/*    549 */	ldd	[%o0+16],%f40

/*    549 */	fsubd	%f8,%f38,%f8

/*    549 */	fmuld	%f40,%f8,%f40
.LSSN522:

/*    553 */	fmaddd	%f34,%f36,%f40,%f34
.LSSN523:

/*    549 */	std	%f40,[%o0+48]
.LSSN524:

/*    553 */	fmaddd	%f0,%f32,%f34,%f0
.LSSN525:

/*    555 */	retl
	nop

.LSSN526:


.L153:


.LSSN527:
	.size	_nrn_current,.-_nrn_current
	.type	_nrn_current,#function
	.section	".rodata"
	.local	jpj..loop__nrn_current
	.align	8
jpj..loop__nrn_current:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c nrn_cur $"
	.section	".text"
	.align	64
nrn_cur:
.L579:
.LSSN528:

/*    558 */	save	%sp,-224,%sp


.L580:
.LSSN529:

/*    562 */	ldx	[%i1+8],%l3
.LSSN530:

/*    564 */	ldsw	[%i1+48],%l6
.LSSN531:

/*    565 */	ldx	[%i1+40],%l7

.L581:
.LSSN532:

/*    566 */	cmp	%l6,%g0

/*    566 */	ble	.L592
	nop


.L582:

/*    566 */	sethi	%h44(use_cachevec),%l1

/*    566 */	sethi	%h44(.LR0),%i2

/*    566 */	or	%l1,%m44(use_cachevec),%l1

/*    566 */	or	%i2,%m44(.LR0),%i2

/*    566 */	sllx	%l1,12,%l1

/*    566 */	sllx	%i2,12,%i2

/*    566 */	mov	%g0,%l5

/*    566 */	mov	%g0,%l2

/*    566 */	mov	%l3,%l4

/*    566 */	or	%l1,%l44(use_cachevec),%l1

/*    566 */	or	%i2,%l44(.LR0),%i2

.L583:
.LSSN533:


/*    567 */	sxar2
/*    567 */	ldx	[%i1+16],%xg14
/*    567 */	ldx	[%i1+24],%xg15
.LSSN534:

.LSSN535:

/*    567 */	sxar2
/*    567 */	ldsw	[%l1],%xg16
/*    567 */	ldx	[%xg14+%l5],%i4

.LSSN536:

/*    569 */	sxar2
/*    569 */	ldx	[%xg15+%l5],%i3
/*    569 */	cmp	%xg16,%g0

/*    569 */	be	.L585
	nop


.L584:
.LSSN537:


/*    570 */	sxar2
/*    570 */	ldsw,d	[%l3],%xg0
/*    570 */	ldx	[%i0+80],%xg11

/*    570 */	prefetch	[%l3+1280],21

/*    570 */	prefetch	[%l3+256],0


/*    570 */	sxar2
/*    570 */	sllx	%xg0,3,%xg0
/*    570 */	ldd	[%xg11+%xg0],%f70

/*    570 */	sxar1
/* #00003 */	std	%f70,[%fp+2039]
.LSSN538:

/*    571 */	ba	.L586
	nop


.L585:
.LSSN539:


/*    574 */	sxar2
/*    574 */	ldx	[%i1],%xg12
/*    574 */	ldx	[%xg12+%l2],%l0
.LSSN540:


/*    575 */	sxar2
/*    575 */	ldx	[%l0],%xg13
/*    575 */	ldd	[%xg13],%f72

/*    575 */	sxar1
/* #00003 */	std	%f72,[%fp+2039]

.L586:
.LSSN541:

/*    577 */	sxar1
/*    577 */	ldx	[%i3],%xg4
.LSSN542:

/* #00003 */	ldd	[%fp+2039],%f58

/*    579 */	mov	%i4,%o0

/*    579 */	mov	%i3,%o1

/*    579 */	ldd	[%i2+8],%f8

/*    579 */	mov	%l7,%o2

/*    579 */	mov	%i0,%o3
.LSSN543:

/*    577 */	sxar1
/*    577 */	ldd	[%xg4],%f56
.LSSN544:

/*    579 */	faddd	%f8,%f58,%f8
.LSSN545:

/*    577 */	std	%f56,[%i4+104]
.LSSN546:


/*    578 */	sxar2
/*    578 */	ldx	[%i3+24],%xg5
/*    578 */	ldd	[%xg5],%f60

.LSSN547:

/*    579 */	call	_nrn_current
/*    579 */	std	%f60,[%i4+112]
/*    579 */	std	%f0,[%i4+144]
.LSSN548:

/*    584 */	mov	%i4,%o0
/*    584 */	mov	%i3,%o1
/*    584 */	mov	%l7,%o2
/*    584 */	mov	%i0,%o3
.LSSN549:

/*    583 */	ldd	[%i4+128],%f62
/* #00003 */	std	%f62,[%fp+2031]
.LSSN550:

/*    584 */	sxar2
/*    584 */	ldd	[%i4+120],%f64
/* #00003 */	std	%f64,[%fp+2023]
/*    584 */	call	_nrn_current
/* #00003 */	ldd	[%fp+2039],%f8
.LSSN551:

/*    585 */	ldd	[%i4+120],%f32
/*    585 */	sxar2
/* #00003 */	ldd	[%fp+2023],%f66
/*    585 */	ldx	[%i3+16],%xg6
/*    585 */	ldd	[%i2+280],%f36
/*    585 */	sxar2
/*    585 */	fsubd	%f66,%f32,%f32
/*    585 */	ldd	[%xg6],%f34
/*    585 */	fmaddd	%f36,%f32,%f34,%f32
/*    585 */	sxar1
/*    585 */	std	%f32,[%xg6]
.LSSN552:

/*    586 */	ldd	[%i4+128],%f38
/*    586 */	sxar2
/* #00003 */	ldd	[%fp+2031],%f68
/*    586 */	ldx	[%i3+40],%xg7
/*    586 */	sxar2
/*    586 */	fsubd	%f68,%f38,%f38
/*    586 */	ldd	[%xg7],%f40
/*    586 */	fmaddd	%f36,%f38,%f40,%f38
/*    586 */	sxar1
/*    586 */	std	%f38,[%xg7]
.LSSN553:

/*    588 */	ldd	[%i4+144],%f42
/*    588 */	fsubd	%f42,%f0,%f42
/*    588 */	fmuld	%f36,%f42,%f36
/*    588 */	std	%f36,[%i4+144]
.LSSN554:

/*    589 */	sxar1
/*    589 */	ldx	[%i3+8],%xg8
/*    589 */	ldd	[%i4+120],%f44
/*    589 */	sxar1
/*    589 */	ldd	[%xg8],%f46
/*    589 */	faddd	%f46,%f44,%f46
.LSSN555:

/*    590 */	sxar2
/*    590 */	std	%f46,[%xg8]
/*    590 */	ldx	[%i3+32],%xg9
/*    590 */	ldd	[%i4+128],%f48
/*    590 */	sxar1
/*    590 */	ldd	[%xg9],%f50
/*    590 */	faddd	%f50,%f48,%f50
.LSSN556:

/*    592 */	sxar2
/*    592 */	std	%f50,[%xg9]
/*    592 */	ldsw	[%l1],%xg10
/*    592 */	sxar1
/*    592 */	cmp	%xg10,%g0
/*    592 */	be	.L588
	nop


.L587:
.LSSN557:


/*    593 */	sxar2
/*    593 */	ldsw,d	[%l4],%xg1
/*    593 */	ldx	[%i0+48],%xg2

/*    593 */	prefetch	[%l4+1280],21

/*    593 */	prefetch	[%l4+256],0


/*    593 */	sxar2
/*    593 */	sllx	%xg1,3,%xg1
/*    593 */	ldd	[%xg2+%xg1],%f54

/*    593 */	fsubd	%f54,%f0,%f54

/*    593 */	sxar1
/*    593 */	std	%f54,[%xg2+%xg1]
.LSSN558:

/*    594 */	ba	.L589
	nop


.L588:
.LSSN559:


/*    597 */	sxar2
/*    597 */	ldx	[%l0+40],%xg3
/*    597 */	ldd	[%xg3],%f52

/*    597 */	fsubd	%f52,%f0,%f52

/*    597 */	sxar1
/*    597 */	std	%f52,[%xg3]

.L589:
.LSSN560:

/*    600 */	add	%l2,8,%l2

/*    600 */	add	%l3,4,%l3

/*    600 */	add	%l4,4,%l4


/*    600 */	subcc	%l6,1,%l6

/*    600 */	bne,pt	%icc, .L583
/*    600 */	add	%l5,8,%l5


.L590:


.L592:

/*    600 */	ret
	restore



.LSSN561:
	.size	nrn_cur,.-nrn_cur
	.type	nrn_cur,#function
	.section	".rodata"
	.local	jpj..loop_nrn_cur
	.align	8
jpj..loop_nrn_cur:
	.byte	1
	.byte	3
	.half	24
	.word	16
	.xword	0
	.word	1
	.byte	16
	.byte	0,0,0
	.word	566
	.word	598
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c nrn_jacob $"
	.section	".text"
	.align	64
nrn_jacob:
.L593:
.LSSN562:

/*    602 */

.L594:
.LSSN563:

/*    606 */	ldx	[%o1+8],%g3
.LSSN564:

/*    608 */	ldsw	[%o1+48],%g1

.L595:
.LSSN565:

/*    610 */	cmp	%g1,%g0

/*    610 */	ble	.L603
	nop


.L596:

/*    610 */	mov	%g0,%o4

/*    610 */	sub	%g1,4,%g1

/*    610 */	cmp	%g1,%g0

/*    610 */	mov	%g0,%g4


/*    610 */	bl	.L605
/*    610 */	mov	%g0,%o3


.L608:

/*    610 */	sethi	%h44(use_cachevec),%g2

/*    610 */	mov	%g0,%g4

/*    610 */	or	%g2,%m44(use_cachevec),%g2

/*    610 */	mov	%g0,%o3

/*    610 */	sllx	%g2,12,%g2

/*    610 */	mov	%g3,%o2

/*    610 */	or	%g2,%l44(use_cachevec),%g2

.L597:
.LSSN566:

/*    611 */	ldx	[%o1+16],%g5
.LSSN567:

/*    613 */	ldsw	[%g2],%o5
.LSSN568:

/*    611 */	ldx	[%g5+%o4],%g5
.LSSN569:

/*    613 */	cmp	%o5,%g0


/*    613 */	be	.L599
/*    613 */	ldd	[%g5+144],%f32


.L598:
.LSSN570:

/*    614 */	sxar1
/*    614 */	ldsw,d	[%o2],%g5

/*    614 */	ldx	[%o0+56],%o5

/*    614 */	prefetch	[%o2+1280],21

/*    614 */	prefetch	[%o2+256],0

/*    614 */	sllx	%g5,3,%g5

/*    614 */	ldd	[%o5+%g5],%f34

/*    614 */	faddd	%f34,%f32,%f34

/*    614 */	std	%f34,[%o5+%g5]
.LSSN571:

/*    615 */	ba	.L610
	nop


.L599:
.LSSN572:

/*    618 */	ldx	[%o1],%g5

/*    618 */	ldx	[%g5+%o3],%g5
.LSSN573:

/*    619 */	ldx	[%g5+32],%g5

/*    619 */	ldd	[%g5],%f34

/*    619 */	faddd	%f34,%f32,%f34

/*    619 */	std	%f34,[%g5]

.L610:
.LSSN574:

/*    611 */	ldx	[%o1+16],%g5
.LSSN575:

/*    613 */	ldsw	[%g2],%o5
.LSSN576:

/*    611 */	add	%g5,8,%g5
.LSSN577:

/*    613 */	cmp	%o5,%g0
.LSSN578:

/*    611 */	ldx	[%g5+%o4],%g5
.LSSN579:


/*    613 */	be	.L612
/*    613 */	ldd	[%g5+144],%f32


.L611:
.LSSN580:

/*    614 */	sxar1
/*    614 */	ldsw,d	[%o2+4],%g5

/*    614 */	ldx	[%o0+56],%o5

/*    614 */	prefetch	[%o2+1284],21

/*    614 */	prefetch	[%o2+260],0

/*    614 */	sllx	%g5,3,%g5

/*    614 */	ldd	[%o5+%g5],%f34

/*    614 */	faddd	%f34,%f32,%f34

/*    614 */	std	%f34,[%o5+%g5]
.LSSN581:

/*    615 */	ba	.L614
	nop


.L612:
.LSSN582:

/*    618 */	ldx	[%o1],%g5

/*    618 */	add	%g5,8,%g5

/*    618 */	ldx	[%g5+%o3],%g5
.LSSN583:

/*    619 */	ldx	[%g5+32],%g5

/*    619 */	ldd	[%g5],%f34

/*    619 */	faddd	%f34,%f32,%f34

/*    619 */	std	%f34,[%g5]

.L614:
.LSSN584:

/*    611 */	ldx	[%o1+16],%g5
.LSSN585:

/*    613 */	ldsw	[%g2],%o5
.LSSN586:

/*    611 */	add	%g5,16,%g5
.LSSN587:

/*    613 */	cmp	%o5,%g0
.LSSN588:

/*    611 */	ldx	[%g5+%o4],%g5
.LSSN589:


/*    613 */	be	.L616
/*    613 */	ldd	[%g5+144],%f32


.L615:
.LSSN590:

/*    614 */	sxar1
/*    614 */	ldsw,d	[%o2+8],%g5

/*    614 */	ldx	[%o0+56],%o5

/*    614 */	prefetch	[%o2+1288],21

/*    614 */	prefetch	[%o2+264],0

/*    614 */	sllx	%g5,3,%g5

/*    614 */	ldd	[%o5+%g5],%f34

/*    614 */	faddd	%f34,%f32,%f34

/*    614 */	std	%f34,[%o5+%g5]
.LSSN591:

/*    615 */	ba	.L618
	nop


.L616:
.LSSN592:

/*    618 */	ldx	[%o1],%g5

/*    618 */	add	%g5,16,%g5

/*    618 */	ldx	[%g5+%o3],%g5
.LSSN593:

/*    619 */	ldx	[%g5+32],%g5

/*    619 */	ldd	[%g5],%f34

/*    619 */	faddd	%f34,%f32,%f34

/*    619 */	std	%f34,[%g5]

.L618:
.LSSN594:

/*    611 */	ldx	[%o1+16],%g5
.LSSN595:

/*    613 */	ldsw	[%g2],%o5
.LSSN596:

/*    611 */	add	%g5,24,%g5
.LSSN597:

/*    613 */	cmp	%o5,%g0
.LSSN598:

/*    611 */	ldx	[%g5+%o4],%g5
.LSSN599:


/*    613 */	be	.L620
/*    613 */	ldd	[%g5+144],%f32


.L619:
.LSSN600:

/*    614 */	sxar1
/*    614 */	ldsw,d	[%o2+12],%g5

/*    614 */	ldx	[%o0+56],%o5

/*    614 */	prefetch	[%o2+1292],21

/*    614 */	prefetch	[%o2+268],0

/*    614 */	sllx	%g5,3,%g5

/*    614 */	ldd	[%o5+%g5],%f34

/*    614 */	faddd	%f34,%f32,%f34

/*    614 */	std	%f34,[%o5+%g5]
.LSSN601:

/*    615 */	ba	.L621
	nop


.L620:
.LSSN602:

/*    618 */	ldx	[%o1],%g5

/*    618 */	add	%g5,24,%g5

/*    618 */	ldx	[%g5+%o3],%g5
.LSSN603:

/*    619 */	ldx	[%g5+32],%g5

/*    619 */	ldd	[%g5],%f34

/*    619 */	faddd	%f34,%f32,%f34

/*    619 */	std	%f34,[%g5]

.L621:
.LSSN604:

/*    622 */	add	%o4,32,%o4

/*    622 */	add	%g4,16,%g4

/*    622 */	add	%o2,16,%o2


/*    622 */	subcc	%g1,4,%g1

/*    622 */	bpos,pt	%icc, .L597
/*    622 */	add	%o3,32,%o3


.L609:


.L605:
.LSSN605:

/*    610 */	addcc	%g1,3,%g1

/*    610 */	bneg	.L603
	nop


.L606:

/*    610 */	add	%g3,%g4,%g3

/*    610 */	sethi	%h44(use_cachevec),%g2

/*    610 */	or	%g2,%m44(use_cachevec),%g2

/*    610 */	sllx	%g2,12,%g2

/*    610 */	or	%g2,%l44(use_cachevec),%g2

.L622:
.LSSN606:

/*    611 */	ldx	[%o1+16],%g4
.LSSN607:

/*    613 */	ldsw	[%g2],%g5
.LSSN608:

/*    611 */	ldx	[%g4+%o4],%g4
.LSSN609:

/*    613 */	cmp	%g5,%g0


/*    613 */	be	.L624
/*    613 */	ldd	[%g4+144],%f32


.L623:
.LSSN610:

/*    614 */	sxar1
/*    614 */	ldsw,d	[%g3],%g4

/*    614 */	ldx	[%o0+56],%g5

/*    614 */	prefetch	[%g3+1280],21

/*    614 */	prefetch	[%g3+256],0

/*    614 */	sllx	%g4,3,%g4

/*    614 */	ldd	[%g5+%g4],%f34

/*    614 */	faddd	%f34,%f32,%f34

/*    614 */	std	%f34,[%g5+%g4]
.LSSN611:

/*    615 */	ba	.L625
	nop


.L624:
.LSSN612:

/*    618 */	ldx	[%o1],%g4

/*    618 */	ldx	[%g4+%o3],%g4
.LSSN613:

/*    619 */	ldx	[%g4+32],%g4

/*    619 */	ldd	[%g4],%f34

/*    619 */	faddd	%f34,%f32,%f34

/*    619 */	std	%f34,[%g4]

.L625:
.LSSN614:

/*    622 */	add	%o3,8,%o3

/*    622 */	add	%g3,4,%g3


/*    622 */	subcc	%g1,1,%g1

/*    622 */	bpos,pt	%icc, .L622
/*    622 */	add	%o4,8,%o4


.L607:


.L603:

/*    622 */	retl
	nop



.LSSN615:
	.size	nrn_jacob,.-nrn_jacob
	.type	nrn_jacob,#function
	.section	".rodata"
	.local	jpj..loop_nrn_jacob
	.align	8
jpj..loop_nrn_jacob:
	.byte	1
	.byte	3
	.half	24
	.word	16
	.xword	0
	.word	1
	.byte	16
	.byte	0,0,0
	.word	610
	.word	620
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c nrn_state $"
	.section	".text"
	.align	64
nrn_state:
.L629:
.LSSN616:

/*    632 */	sethi	%hi(239616),%g1
	xor	%g1,-640,%g1
	save	%sp,%g1,%sp
/*    632 */	sethi	%h44(.LR0),%o0
/*    632 */	or	%o0,%m44(.LR0),%o0
/*    632 */	sllx	%o0,12,%o0
/*    632 */	or	%o0,%l44(.LR0),%o0
/*    632 */	sxar1
/*    632 */	ldd	[%o0+120],%f318

.L630:
.LSSN617:

.LSSN618:

/*    659 */	sxar2
/*    659 */	ldd	[%i0+8],%f440
/*    659 */	ldsw	[%i0+40],%xg10

.LSSN619:

/*    668 */	sxar2
/*    668 */	sethi	%hi(20000),%xg1
/*    668 */	sethi	%h44(use_cachevec),%xg0

.LSSN620:

/*    659 */	sxar2
/*    659 */	or	%xg0,%m44(use_cachevec),%xg0
/*    659 */	or	%xg1,%lo(20000),%xg1
.LSSN621:

.LSSN622:

/*    661 */	sxar2
/*    661 */	sllx	%xg0,12,%xg0
/*    661 */	sethi	%h44(.LB0),%xg2
.LSSN623:

.LSSN624:

/*    661 */	sxar2
/*    661 */	or	%xg0,%l44(use_cachevec),%xg0
/*    661 */	or	%xg2,%m44(.LB0),%xg2
.LSSN625:

.LSSN626:

/*    659 */	sxar2
/*    659 */	ldsw	[%xg0],%xg24
/*    659 */	sethi	%h44(.LB0+20480144),%xg6

.LSSN627:

/*    661 */	sxar2
/*    661 */	mulx	%xg1,%xg10,%xg9
/*    661 */	sllx	%xg2,12,%xg2
.LSSN628:

.LSSN629:

/*    659 */	sxar2
/*    659 */	sethi	%h44(.LB0+10240144),%xg7
/*    659 */	or	%xg6,%m44(.LB0+20480144),%xg6
.LSSN630:

.LSSN631:

/*    661 */	sxar2
/*    661 */	or	%xg7,%m44(.LB0+10240144),%xg7
/*    661 */	or	%xg2,%l44(.LB0),%xg2
.LSSN632:


/*    659 */	sxar2
/*    659 */	sllx	%xg6,12,%xg6
/*    659 */	or	%xg6,%l44(.LB0+20480144),%xg6
.LSSN633:


/*    660 */	sxar2
/*    660 */	sllx	%xg7,12,%xg7
/*    660 */	or	%xg7,%l44(.LB0+10240144),%xg7
.LSSN634:

.LSSN635:

/*    668 */	sxar2
/*    668 */	add	%xg2,144,%xg8
/*    668 */	cmp	%xg24,%g0
.LSSN636:


/*    659 */	sxar2
/*    659 */	sra	%xg9,%g0,%xg9
/*    659 */	sllx	%xg9,3,%xg9

.LSSN637:

/*    660 */	sxar2
/*    660 */	add	%xg9,%xg6,%g2
/*    660 */	add	%xg9,%xg7,%xg0
.LSSN638:

/*    661 */	sxar1
/*    661 */	add	%xg9,%xg8,%g1
.LSSN639:

/*    668 */	bne,pt	%icc, .L632
	nop


.L631:
.LSSN640:


/*    669 */	call	printf
/*    669 */	add	%o0,432,%o0
.LSSN641:

/*    670 */	call	exit
/*    670 */	mov	-1,%o0
.LSSN642:


.L632:
.LSSN643:


/*    672 */	sxar2
/*    672 */	sethi	%h44(usetable_hh_k),%xg11
/*    672 */	fzero	%f308


/*    672 */	sxar2
/*    672 */	or	%xg11,%m44(usetable_hh_k),%xg11
/*    672 */	sllx	%xg11,12,%xg11


/*    672 */	sxar2
/*    672 */	or	%xg11,%l44(usetable_hh_k),%xg11
/*    672 */	ldd	[%xg11],%f310

/*    672 */	sxar1
/*    672 */	fcmpd	%fcc0,%f310,%f308

/*    672 */	fbe	.L694
	nop


.L633:
.LSSN644:

/*    677 */	sxar1
/*    677 */	ldx	[%i1+8],%xg29
.LSSN645:

/*    678 */	ldsw	[%i1+48],%o1
.LSSN646:

/*    681 */	sxar1
/*    681 */	cmp	%o1,%xg1

/*    681 */	bg	.L693
	nop


.L634:
.LSSN647:

.LSSN648:

/*    687 */	sxar2
/*    687 */	ldd	[%xg2+32],%f212
/*    687 */	ldd	[%xg2+24],%f208
.LSSN649:


/*    689 */	sxar2
/*    689 */	sra	%xg10,%g0,%xg10
/*    689 */	sethi	%h44(.LS0),%xg1


/*    689 */	sxar2
/*    689 */	or	%xg1,%m44(.LS0),%xg1
/*    689 */	sllx	%xg10,2,%xg10


/*    689 */	sxar2
/*    689 */	sllx	%xg1,12,%xg1
/*    689 */	or	%xg1,%l44(.LS0),%xg1

.LSSN650:

/*    686 */	sxar2
/*    686 */	add	%xg1,672,%xg12
/*    686 */	std	%f212,[%xg2+8]
.LSSN651:

.LSSN652:

/*    689 */	sxar2
/*    689 */	std	%f208,[%xg2]
/*    689 */	ldsw	[%xg12+%xg10],%xg23

/*    689 */	sxar1
/*    689 */	cmp	%xg23,%g0

/*    689 */	bne,pt	%icc, .L642
	nop


.L636:
.LSSN653:

/*    690 */	cmp	%o1,%g0

/*    690 */	ble	.L640
	nop


.L637:


/*    690 */	sxar2
/*    690 */	mov	%g0,%xg30
/*    690 */	mov	%g0,%xg2

/*    690 */	sxar1
/*    690 */	subcc	%o1,4,%xg13

/*    690 */	bneg	.L697
	nop


.L700:


/*    690 */	sxar2
/*    690 */	sethi	%hi(20000),%xg14
/*    690 */	or	%xg14,%lo(20000),%xg14

.L638:
.LSSN654:

/*    693 */	ldsw	[%i0+40],%g5

.LSSN655:

/*    696 */	sxar2
/*    696 */	ldx	[%i1+16],%xg18
/*    696 */	add	%xg30,1,%xg31


/*    696 */	sxar2
/*    696 */	subcc	%xg13,4,%xg13
/*    696 */	add	%xg31,1,%g3

/*    696 */	add	%g3,1,%g4
.LSSN656:


/*    693 */	sxar2
/*    693 */	mulx	%g5,%xg14,%g5
/*    693 */	ldx	[%xg18+%xg2],%xg19


/*    693 */	sxar2
/*    693 */	ldd	[%xg19+56],%f284
/*    693 */	add	%g5,%xg30,%g5

/*    693 */	sra	%g5,%g0,%g5

/*    693 */	sllx	%g5,3,%g5

/*    693 */	sxar1
/*    693 */	std	%f284,[%xg6+%g5]
.LSSN657:

/*    694 */	ldsw	[%i0+40],%o0


/*    694 */	sxar2
/*    694 */	ldd	[%xg19+64],%f286
/*    694 */	mulx	%o0,%xg14,%o0

/*    694 */	sxar1
/*    694 */	add	%o0,%xg30,%o0

/*    694 */	sra	%o0,%g0,%o0

/*    694 */	sllx	%o0,3,%o0

/*    694 */	sxar1
/*    694 */	std	%f286,[%xg7+%o0]
.LSSN658:

/*    695 */	ldsw	[%i0+40],%o2


/*    695 */	sxar2
/*    695 */	ldd	[%xg19+72],%f288
/*    695 */	mulx	%o2,%xg14,%o2

.LSSN659:

/*    696 */	sxar2
/*    696 */	add	%o2,%xg30,%o2
/*    696 */	add	%g4,1,%xg30
.LSSN660:

/*    695 */	sra	%o2,%g0,%o2

/*    695 */	sllx	%o2,3,%o2

/*    695 */	sxar1
/*    695 */	std	%f288,[%xg8+%o2]
.LSSN661:

/*    692 */	ldx	[%i1+16],%o3
.LSSN662:

/*    693 */	ldsw	[%i0+40],%o4
.LSSN663:

/*    692 */	add	%o3,8,%o3
.LSSN664:


/*    693 */	sxar2
/*    693 */	mulx	%o4,%xg14,%o4
/*    693 */	ldx	[%o3+%xg2],%xg20


/*    693 */	sxar2
/*    693 */	ldd	[%xg20+56],%f290
/*    693 */	add	%o4,%xg31,%o4

/*    693 */	sra	%o4,%g0,%o4

/*    693 */	sllx	%o4,3,%o4

/*    693 */	sxar1
/*    693 */	std	%f290,[%xg6+%o4]
.LSSN665:

/*    694 */	ldsw	[%i0+40],%o5


/*    694 */	sxar2
/*    694 */	ldd	[%xg20+64],%f292
/*    694 */	mulx	%o5,%xg14,%o5

/*    694 */	sxar1
/*    694 */	add	%o5,%xg31,%o5

/*    694 */	sra	%o5,%g0,%o5

/*    694 */	sllx	%o5,3,%o5

/*    694 */	sxar1
/*    694 */	std	%f292,[%xg7+%o5]
.LSSN666:

/*    695 */	ldsw	[%i0+40],%o7


/*    695 */	sxar2
/*    695 */	ldd	[%xg20+72],%f294
/*    695 */	mulx	%o7,%xg14,%o7

/*    695 */	sxar1
/*    695 */	add	%o7,%xg31,%o7

/*    695 */	sra	%o7,%g0,%o7

/*    695 */	sllx	%o7,3,%o7

.LSSN667:

/*    692 */	sxar2
/*    692 */	std	%f294,[%xg8+%o7]
/*    692 */	ldx	[%i1+16],%xg3
.LSSN668:

.LSSN669:

/*    692 */	sxar2
/*    692 */	ldsw	[%i0+40],%xg4
/*    692 */	add	%xg3,16,%xg3
.LSSN670:


/*    693 */	sxar2
/*    693 */	mulx	%xg4,%xg14,%xg4
/*    693 */	ldx	[%xg3+%xg2],%xg21


/*    693 */	sxar2
/*    693 */	ldd	[%xg21+56],%f296
/*    693 */	add	%xg4,%g3,%xg4


/*    693 */	sxar2
/*    693 */	sra	%xg4,%g0,%xg4
/*    693 */	sllx	%xg4,3,%xg4

.LSSN671:

/*    694 */	sxar2
/*    694 */	std	%f296,[%xg6+%xg4]
/*    694 */	ldsw	[%i0+40],%xg5


/*    694 */	sxar2
/*    694 */	ldd	[%xg21+64],%f298
/*    694 */	mulx	%xg5,%xg14,%xg5


/*    694 */	sxar2
/*    694 */	add	%xg5,%g3,%xg5
/*    694 */	sra	%xg5,%g0,%xg5


/*    694 */	sxar2
/*    694 */	sllx	%xg5,3,%xg5
/*    694 */	std	%f298,[%xg7+%xg5]
.LSSN672:


/*    695 */	sxar2
/*    695 */	ldsw	[%i0+40],%xg10
/*    695 */	ldd	[%xg21+72],%f300


/*    695 */	sxar2
/*    695 */	mulx	%xg10,%xg14,%xg10
/*    695 */	add	%xg10,%g3,%xg10


/*    695 */	sxar2
/*    695 */	sra	%xg10,%g0,%xg10
/*    695 */	sllx	%xg10,3,%xg10

.LSSN673:

/*    692 */	sxar2
/*    692 */	std	%f300,[%xg8+%xg10]
/*    692 */	ldx	[%i1+16],%xg11
.LSSN674:

.LSSN675:

/*    692 */	sxar2
/*    692 */	ldsw	[%i0+40],%xg15
/*    692 */	add	%xg11,24,%xg11
.LSSN676:


/*    693 */	sxar2
/*    693 */	mulx	%xg15,%xg14,%xg15
/*    693 */	ldx	[%xg11+%xg2],%xg22
.LSSN677:

.LSSN678:

/*    693 */	sxar2
/*    693 */	add	%xg2,32,%xg2
/*    693 */	ldd	[%xg22+56],%f302


/*    693 */	sxar2
/*    693 */	add	%xg15,%g4,%xg15
/*    693 */	sra	%xg15,%g0,%xg15


/*    693 */	sxar2
/*    693 */	sllx	%xg15,3,%xg15
/*    693 */	std	%f302,[%xg6+%xg15]
.LSSN679:


/*    694 */	sxar2
/*    694 */	ldsw	[%i0+40],%xg16
/*    694 */	ldd	[%xg22+64],%f304


/*    694 */	sxar2
/*    694 */	mulx	%xg16,%xg14,%xg16
/*    694 */	add	%xg16,%g4,%xg16


/*    694 */	sxar2
/*    694 */	sra	%xg16,%g0,%xg16
/*    694 */	sllx	%xg16,3,%xg16

.LSSN680:

/*    695 */	sxar2
/*    695 */	std	%f304,[%xg7+%xg16]
/*    695 */	ldsw	[%i0+40],%xg17


/*    695 */	sxar2
/*    695 */	ldd	[%xg22+72],%f306
/*    695 */	mulx	%xg17,%xg14,%xg17


/*    695 */	sxar2
/*    695 */	add	%xg17,%g4,%xg17
/*    695 */	sra	%xg17,%g0,%xg17


/*    695 */	sxar2
/*    695 */	sllx	%xg17,3,%xg17
/*    695 */	std	%f306,[%xg8+%xg17]
.LSSN681:

/*    696 */	bpos,pt	%icc, .L638
	nop


.L701:


.L697:
.LSSN682:

/*    690 */	sxar1
/*    690 */	addcc	%xg13,3,%xg13

/*    690 */	bneg	.L640
	nop


.L698:


/*    690 */	sxar2
/*    690 */	sethi	%hi(20000),%xg15
/*    690 */	or	%xg15,%lo(20000),%xg15

.L705:
.LSSN683:


/*    693 */	sxar2
/*    693 */	ldsw	[%i0+40],%xg18
/*    693 */	ldx	[%i1+16],%xg16
.LSSN684:

.LSSN685:

/*    693 */	sxar2
/*    693 */	subcc	%xg13,1,%xg13
/*    693 */	mulx	%xg18,%xg15,%xg18

.LSSN686:

/*    696 */	sxar2
/*    696 */	ldx	[%xg16+%xg2],%xg17
/*    696 */	add	%xg2,8,%xg2
.LSSN687:


/*    693 */	sxar2
/*    693 */	ldd	[%xg17+56],%f278
/*    693 */	add	%xg18,%xg30,%xg18


/*    693 */	sxar2
/*    693 */	sra	%xg18,%g0,%xg18
/*    693 */	sllx	%xg18,3,%xg18

.LSSN688:

/*    694 */	sxar2
/*    694 */	std	%f278,[%xg6+%xg18]
/*    694 */	ldsw	[%i0+40],%xg19


/*    694 */	sxar2
/*    694 */	ldd	[%xg17+64],%f280
/*    694 */	mulx	%xg19,%xg15,%xg19


/*    694 */	sxar2
/*    694 */	add	%xg19,%xg30,%xg19
/*    694 */	sra	%xg19,%g0,%xg19


/*    694 */	sxar2
/*    694 */	sllx	%xg19,3,%xg19
/*    694 */	std	%f280,[%xg7+%xg19]
.LSSN689:


/*    695 */	sxar2
/*    695 */	ldsw	[%i0+40],%xg20
/*    695 */	ldd	[%xg17+72],%f282


/*    695 */	sxar2
/*    695 */	mulx	%xg20,%xg15,%xg20
/*    695 */	add	%xg20,%xg30,%xg20
.LSSN690:

.LSSN691:

/*    695 */	sxar2
/*    695 */	add	%xg30,1,%xg30
/*    695 */	sra	%xg20,%g0,%xg20


/*    695 */	sxar2
/*    695 */	sllx	%xg20,3,%xg20
/*    695 */	std	%f282,[%xg8+%xg20]
.LSSN692:

/*    696 */	bpos,pt	%icc, .L705
	nop


.L699:


.L640:
.LSSN693:


/*    697 */	sxar2
/*    697 */	ldsw	[%i0+40],%xg16
/*    697 */	mov	1,%xg15


/*    697 */	sxar2
/*    697 */	sllx	%xg16,2,%xg16
/*    697 */	stw	%xg15,[%xg12+%xg16]

.L642:
.LSSN694:

/*    701 */	cmp	%o1,%g0

/*    701 */	ble	.L650
	nop


.L643:


/*    701 */	sxar2
/*    701 */	ldx	[%i0+80],%xg31
/*    701 */	mov	%g0,%xg23


/*    701 */	sxar2
/*    701 */	sub	%o1,4,%xg17
/*    701 */	cmp	%xg17,%g0

/*    701 */	sxar1
/*    701 */	mov	%g0,%xg25

/*    701 */	bl	.L707
	nop


.L710:


/*    701 */	sxar2
/*    701 */	sethi	%hi(233920),%xg18
/*    701 */	sethi	%hi(153920),%xg19


/*    701 */	sxar2
/*    701 */	fzero	%f198
/*    701 */	xor	%xg18,-449,%xg18


/*    701 */	sxar2
/*    701 */	xor	%xg19,-321,%xg19
/*    701 */	sethi	%hi(237956),%xg20


/*    701 */	sxar2
/*    701 */	sethi	%hi(237960),%xg21
/*    701 */	add	%xg18,%fp,%xg18


/*    701 */	sxar2
/*    701 */	add	%xg19,%fp,%xg19
/*    701 */	mov	%g0,%xg25


/*    701 */	sxar2
/*    701 */	mov	%xg29,%xg28
/*    701 */	xor	%xg20,-389,%xg20


/*    701 */	sxar2
/*    701 */	xor	%xg21,-393,%xg21
/*    701 */	mov	199,%xg30

.L644:
.LSSN695:


/*    713 */	sxar2
/*    713 */	ldsw	[%xg28],%xg22
/*    713 */	sllx	%xg22,3,%xg22
.LSSN696:


/*    715 */	sxar2
/*    715 */	ldd	[%xg31+%xg22],%f210
/*    715 */	fsubd	%f210,%f208,%f210

.LSSN697:

/*    716 */	sxar2
/*    716 */	fmuld	%f210,%f212,%f210
/*    716 */	fdtoi	%f210,%f214


/*    716 */	sxar2
/*    716 */	st	%f214,[%fp+%xg20]
/*    716 */	ldsw	[%fp+%xg20],%xg14

.LSSN698:

/*    717 */	sxar2
/*    717 */	st	%f214,[%xg18+-4032]
/*    717 */	stw	%xg14,[%fp+%xg21]
.LSSN699:

.LSSN700:

/*    717 */	sxar2
/*    717 */	cmp	%xg14,200
/*    717 */	ld	[%fp+%xg21],%f216


/*    717 */	sxar2
/*    717 */	fitod	%f216,%f216
/*    717 */	fsubd	%f210,%f216,%f216

/*    717 */	sxar1
/*    717 */	std	%f216,[%xg19+-4032]
.LSSN701:

/*    719 */	bl	.L646
	nop


.L645:
.LSSN702:


/*    720 */	sxar2
/*    720 */	std,d	%f318,[%xg19+-4032]
/*    720 */	prefetch	[%xg19+-2752],23


/*    720 */	sxar2
/*    720 */	prefetch	[%xg19+-3776],2
/*    720 */	stw,d	%xg30,[%xg18+-4032]


/*    720 */	sxar2
/*    720 */	prefetch	[%xg18+-2752],23
/*    720 */	prefetch	[%xg18+-3776],2
.LSSN703:

/*    721 */	ba	.L712
	nop


.L646:

/*    721 */	sxar1
/*    721 */	fcmped	%fcc1,%f210,%f198

/*    721 */	fbuge,pt	%fcc1, .L712
	nop


.L647:
.LSSN704:


/*    722 */	sxar2
/*    722 */	std,d	%f198,[%xg19+-4032]
/*    722 */	prefetch	[%xg19+-2752],23


/*    722 */	sxar2
/*    722 */	prefetch	[%xg19+-3776],2
/*    722 */	stw,d	%g0,[%xg18+-4032]


/*    722 */	sxar2
/*    722 */	prefetch	[%xg18+-2752],23
/*    722 */	prefetch	[%xg18+-3776],2

.L712:
.LSSN705:


/*    713 */	sxar2
/*    713 */	ldsw	[%xg28+4],%xg24
/*    713 */	sllx	%xg24,3,%xg24
.LSSN706:


/*    715 */	sxar2
/*    715 */	ldd	[%xg31+%xg24],%f218
/*    715 */	fsubd	%f218,%f208,%f218

.LSSN707:

/*    716 */	sxar2
/*    716 */	fmuld	%f218,%f212,%f218
/*    716 */	fdtoi	%f218,%f220


/*    716 */	sxar2
/*    716 */	st	%f220,[%fp+%xg20]
/*    716 */	ldsw	[%fp+%xg20],%xg13

.LSSN708:

/*    717 */	sxar2
/*    717 */	st	%f220,[%xg18+-4028]
/*    717 */	stw	%xg13,[%fp+%xg21]
.LSSN709:

.LSSN710:

/*    717 */	sxar2
/*    717 */	cmp	%xg13,200
/*    717 */	ld	[%fp+%xg21],%f222


/*    717 */	sxar2
/*    717 */	fitod	%f222,%f222
/*    717 */	fsubd	%f218,%f222,%f222

/*    717 */	sxar1
/*    717 */	std	%f222,[%xg19+-4024]
.LSSN711:

/*    719 */	bl	.L714
	nop


.L713:
.LSSN712:


/*    720 */	sxar2
/*    720 */	std,d	%f318,[%xg19+-4024]
/*    720 */	prefetch	[%xg19+-2744],23


/*    720 */	sxar2
/*    720 */	prefetch	[%xg19+-3768],2
/*    720 */	stw,d	%xg30,[%xg18+-4028]


/*    720 */	sxar2
/*    720 */	prefetch	[%xg18+-2748],23
/*    720 */	prefetch	[%xg18+-3772],2
.LSSN713:

/*    721 */	ba	.L717
	nop


.L714:

/*    721 */	sxar1
/*    721 */	fcmped	%fcc2,%f218,%f198

/*    721 */	fbuge,pt	%fcc2, .L717
	nop


.L715:
.LSSN714:


/*    722 */	sxar2
/*    722 */	std,d	%f198,[%xg19+-4024]
/*    722 */	prefetch	[%xg19+-2744],23


/*    722 */	sxar2
/*    722 */	prefetch	[%xg19+-3768],2
/*    722 */	stw,d	%g0,[%xg18+-4028]


/*    722 */	sxar2
/*    722 */	prefetch	[%xg18+-2748],23
/*    722 */	prefetch	[%xg18+-3772],2

.L717:
.LSSN715:


/*    713 */	sxar2
/*    713 */	ldsw	[%xg28+8],%xg26
/*    713 */	sllx	%xg26,3,%xg26
.LSSN716:


/*    715 */	sxar2
/*    715 */	ldd	[%xg31+%xg26],%f224
/*    715 */	fsubd	%f224,%f208,%f224

.LSSN717:

/*    716 */	sxar2
/*    716 */	fmuld	%f224,%f212,%f224
/*    716 */	fdtoi	%f224,%f226


/*    716 */	sxar2
/*    716 */	st	%f226,[%fp+%xg20]
/*    716 */	ldsw	[%fp+%xg20],%xg12

.LSSN718:

/*    717 */	sxar2
/*    717 */	st	%f226,[%xg18+-4024]
/*    717 */	stw	%xg12,[%fp+%xg21]
.LSSN719:

.LSSN720:

/*    717 */	sxar2
/*    717 */	cmp	%xg12,200
/*    717 */	ld	[%fp+%xg21],%f228


/*    717 */	sxar2
/*    717 */	fitod	%f228,%f228
/*    717 */	fsubd	%f224,%f228,%f228

/*    717 */	sxar1
/*    717 */	std	%f228,[%xg19+-4016]
.LSSN721:

/*    719 */	bl	.L719
	nop


.L718:
.LSSN722:


/*    720 */	sxar2
/*    720 */	std,d	%f318,[%xg19+-4016]
/*    720 */	prefetch	[%xg19+-2736],23


/*    720 */	sxar2
/*    720 */	prefetch	[%xg19+-3760],2
/*    720 */	stw,d	%xg30,[%xg18+-4024]


/*    720 */	sxar2
/*    720 */	prefetch	[%xg18+-2744],23
/*    720 */	prefetch	[%xg18+-3768],2
.LSSN723:

/*    721 */	ba	.L722
	nop


.L719:

/*    721 */	sxar1
/*    721 */	fcmped	%fcc3,%f224,%f198

/*    721 */	fbuge,pt	%fcc3, .L722
	nop


.L720:
.LSSN724:


/*    722 */	sxar2
/*    722 */	std,d	%f198,[%xg19+-4016]
/*    722 */	prefetch	[%xg19+-2736],23


/*    722 */	sxar2
/*    722 */	prefetch	[%xg19+-3760],2
/*    722 */	stw,d	%g0,[%xg18+-4024]


/*    722 */	sxar2
/*    722 */	prefetch	[%xg18+-2744],23
/*    722 */	prefetch	[%xg18+-3768],2

.L722:
.LSSN725:


/*    713 */	sxar2
/*    713 */	ldsw	[%xg28+12],%xg27
/*    713 */	sllx	%xg27,3,%xg27
.LSSN726:


/*    715 */	sxar2
/*    715 */	ldd	[%xg31+%xg27],%f230
/*    715 */	fsubd	%f230,%f208,%f230

.LSSN727:

/*    716 */	sxar2
/*    716 */	fmuld	%f230,%f212,%f230
/*    716 */	fdtoi	%f230,%f232


/*    716 */	sxar2
/*    716 */	st	%f232,[%fp+%xg20]
/*    716 */	ldsw	[%fp+%xg20],%xg11

.LSSN728:

/*    717 */	sxar2
/*    717 */	st	%f232,[%xg18+-4020]
/*    717 */	stw	%xg11,[%fp+%xg21]
.LSSN729:

.LSSN730:

/*    717 */	sxar2
/*    717 */	cmp	%xg11,200
/*    717 */	ld	[%fp+%xg21],%f234


/*    717 */	sxar2
/*    717 */	fitod	%f234,%f234
/*    717 */	fsubd	%f230,%f234,%f234

/*    717 */	sxar1
/*    717 */	std	%f234,[%xg19+-4008]
.LSSN731:

/*    719 */	bl	.L724
	nop


.L723:
.LSSN732:


/*    720 */	sxar2
/*    720 */	std,d	%f318,[%xg19+-4008]
/*    720 */	prefetch	[%xg19+-2728],23


/*    720 */	sxar2
/*    720 */	prefetch	[%xg19+-3752],2
/*    720 */	stw,d	%xg30,[%xg18+-4020]


/*    720 */	sxar2
/*    720 */	prefetch	[%xg18+-2740],23
/*    720 */	prefetch	[%xg18+-3764],2
.LSSN733:

/*    721 */	ba	.L726
	nop


.L724:

/*    721 */	sxar1
/*    721 */	fcmped	%fcc0,%f230,%f198

/*    721 */	fbuge,pt	%fcc0, .L726
	nop


.L725:
.LSSN734:


/*    722 */	sxar2
/*    722 */	std,d	%f198,[%xg19+-4008]
/*    722 */	prefetch	[%xg19+-2728],23


/*    722 */	sxar2
/*    722 */	prefetch	[%xg19+-3752],2
/*    722 */	stw,d	%g0,[%xg18+-4020]


/*    722 */	sxar2
/*    722 */	prefetch	[%xg18+-2740],23
/*    722 */	prefetch	[%xg18+-3764],2

.L726:
.LSSN735:


/*    724 */	sxar2
/*    724 */	add	%xg23,16,%xg23
/*    724 */	add	%xg18,16,%xg18


/*    724 */	sxar2
/*    724 */	add	%xg28,16,%xg28
/*    724 */	add	%xg25,32,%xg25


/*    724 */	sxar2
/*    724 */	add	%xg19,32,%xg19
/*    724 */	subcc	%xg17,4,%xg17

/*    724 */	bpos,pt	%icc, .L644
	nop


.L711:


.L707:
.LSSN736:

/*    701 */	sxar1
/*    701 */	addcc	%xg17,3,%xg17

/*    701 */	bneg	.L650
	nop


.L708:


/*    701 */	sxar2
/*    701 */	sethi	%hi(233920),%xg24
/*    701 */	fzero	%f234


/*    701 */	sxar2
/*    701 */	sethi	%hi(153920),%xg26
/*    701 */	add	%xg23,%fp,%xg22


/*    701 */	sxar2
/*    701 */	xor	%xg24,-449,%xg24
/*    701 */	add	%xg25,%fp,%xg25


/*    701 */	sxar2
/*    701 */	xor	%xg26,-321,%xg26
/*    701 */	sethi	%hi(237956),%xg27


/*    701 */	sxar2
/*    701 */	sethi	%hi(237960),%xg28
/*    701 */	add	%xg22,%xg24,%xg22


/*    701 */	sxar2
/*    701 */	add	%xg25,%xg26,%xg25
/*    701 */	xor	%xg27,-389,%xg27

/*    701 */	sxar1
/*    701 */	xor	%xg28,-393,%xg28

/*    701 */	mov	199,%o2

.L727:
.LSSN737:


/*    713 */	sxar2
/*    713 */	ldsw	[%xg29+%xg23],%xg30
/*    713 */	sllx	%xg30,3,%xg30
.LSSN738:


/*    715 */	sxar2
/*    715 */	ldd	[%xg31+%xg30],%f236
/*    715 */	fsubd	%f236,%f208,%f236

.LSSN739:

/*    716 */	sxar2
/*    716 */	fmuld	%f236,%f212,%f236
/*    716 */	fdtoi	%f236,%f238


/*    716 */	sxar2
/*    716 */	st	%f238,[%fp+%xg27]
/*    716 */	ldsw	[%fp+%xg27],%xg10

.LSSN740:

/*    717 */	sxar2
/*    717 */	st	%f238,[%xg22+-4032]
/*    717 */	stw	%xg10,[%fp+%xg28]
.LSSN741:

.LSSN742:

/*    717 */	sxar2
/*    717 */	cmp	%xg10,200
/*    717 */	ld	[%fp+%xg28],%f240


/*    717 */	sxar2
/*    717 */	fitod	%f240,%f240
/*    717 */	fsubd	%f236,%f240,%f240

/*    717 */	sxar1
/*    717 */	std	%f240,[%xg25+-4032]
.LSSN743:

/*    719 */	bl	.L729
	nop


.L728:
.LSSN744:


/*    720 */	sxar2
/*    720 */	std,d	%f318,[%xg25+-4032]
/*    720 */	prefetch	[%xg25+-2752],23


/*    720 */	sxar2
/*    720 */	prefetch	[%xg25+-3776],2
/*    720 */	stw,d	%o2,[%xg22+-4032]


/*    720 */	sxar2
/*    720 */	prefetch	[%xg22+-2752],23
/*    720 */	prefetch	[%xg22+-3776],2
.LSSN745:

/*    721 */	ba	.L731
	nop


.L729:

/*    721 */	sxar1
/*    721 */	fcmped	%fcc1,%f236,%f234

/*    721 */	fbuge,pt	%fcc1, .L731
	nop


.L730:
.LSSN746:


/*    722 */	sxar2
/*    722 */	std,d	%f234,[%xg25+-4032]
/*    722 */	prefetch	[%xg25+-2752],23


/*    722 */	sxar2
/*    722 */	prefetch	[%xg25+-3776],2
/*    722 */	stw,d	%g0,[%xg22+-4032]


/*    722 */	sxar2
/*    722 */	prefetch	[%xg22+-2752],23
/*    722 */	prefetch	[%xg22+-3776],2

.L731:
.LSSN747:


/*    724 */	sxar2
/*    724 */	add	%xg25,8,%xg25
/*    724 */	add	%xg23,4,%xg23


/*    724 */	sxar2
/*    724 */	add	%xg22,4,%xg22
/*    724 */	subcc	%xg17,1,%xg17

/*    724 */	bpos,pt	%icc, .L727
	nop


.L709:


.L650:
.LSSN748:

/*    726 */	sxar1
/*    726 */	andcc	%g1,7,%xg29

/*    726 */	bne,pt	%xcc, .L677
	nop


.L651:

/*    726 */	cmp	%o1,%g0

/*    726 */	ble	.L688
	nop


.L652:


/*    726 */	sxar2
/*    726 */	fnegd	%f440,%f440
/*    726 */	mov	%g0,%xg3


/*    726 */	sxar2
/*    726 */	and	%g1,15,%xg31
/*    726 */	cmp	%xg31,%g0


/*    726 */	sxar2
/*    726 */	mov	%o1,%xg5
/*    726 */	mov	%g0,%xg4

/*    726 */	be,pt	%xcc, .L654
	nop


.L653:
.LSSN749:

/*    728 */	sethi	%hi(233920),%g3
.LSSN750:

/*    735 */	sethi	%h44(.LB0+30720144),%g4
.LSSN751:


/*    757 */	sxar2
/*    757 */	ldd	[%xg1+984],%f236
/*    757 */	fzero	%f246
.LSSN752:

/*    728 */	xor	%g3,-449,%g3
.LSSN753:

/*    735 */	or	%g4,%m44(.LB0+30720144),%g4
.LSSN754:

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+976],%f240
.LSSN755:

/*    735 */	sllx	%g4,12,%g4
.LSSN756:

/*    728 */	add	%g3,%fp,%g3
.LSSN757:

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+936],%f252
.LSSN758:

/*    735 */	or	%g4,%l44(.LB0+30720144),%g4
.LSSN759:

/*    729 */	sethi	%hi(153920),%g5
.LSSN760:

/*    728 */	ldsw	[%g3+-4032],%o5
.LSSN761:

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+968],%f248
.LSSN762:

/*    729 */	xor	%g5,-321,%g5
.LSSN763:

/*    757 */	sethi	%hi(237968),%o0

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+960],%f270
.LSSN764:

/*    729 */	add	%g5,%fp,%g5
.LSSN765:

/*    757 */	xor	%o0,-401,%o0


/*    757 */	sxar2
/*    757 */	ldd	[%xg1+944],%f274
/*    757 */	ldd	[%g5+-4032],%f192

/*    757 */	sxar1
/*    757 */	sethi	%hi(524288),%xg2

/*    757 */	sethi	%h44(__fj_dlogexp2_const_),%o2

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+952],%f278

/*    757 */	or	%o2,%m44(__fj_dlogexp2_const_),%o2

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+1016],%f284
.LSSN766:

/*    735 */	srl	%o5,%g0,%o5
.LSSN767:

/*    757 */	sllx	%o2,12,%o2

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+1008],%f280
.LSSN768:

/*    735 */	add	%o5,%o5,%o7
.LSSN769:

/*    757 */	or	%o2,%l44(__fj_dlogexp2_const_),%o2

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+1000],%f292
.LSSN770:

/*    735 */	add	%o7,%o5,%o7
.LSSN771:

/*    755 */	sethi	%hi(237976),%o3
.LSSN772:

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+1032],%f262
.LSSN773:

/*    735 */	sllx	%o7,4,%o7
.LSSN774:

/*    755 */	xor	%o3,-409,%o3
.LSSN775:

/*    757 */	sxar1
/*    757 */	ldd	[%xg1+1040],%f258
.LSSN776:

/*    735 */	add	%g4,%o7,%g4
.LSSN777:

/*    756 */	sethi	%hi(237984),%o4
.LSSN778:

.LSSN779:

/*    757 */	sxar2
/*    757 */	mov	8,%xg4
/*    757 */	ldd	[%g4+88],%f182

/*    757 */	sxar1
/*    757 */	ldd	[%g4+40],%f180
.LSSN780:

/*    756 */	xor	%o4,-417,%o4
.LSSN781:

.LSSN782:

/*    755 */	sxar2
/*    755 */	mov	4,%xg3
/*    755 */	ldd	[%g4+56],%f186

.LSSN783:

/*    758 */	sxar2
/*    758 */	ldd	[%g4+8],%f184
/*    758 */	sub	%o1,1,%xg5
.LSSN784:


/*    757 */	sxar2
/*    757 */	ldd	[%xg1+992],%f294
/*    757 */	ldd	[%xg1+1048],%f272

.LSSN785:

/*    741 */	sxar2
/*    741 */	ldd	[%xg1+1056],%f276
/*    741 */	ldd	[%g4+72],%f190

.LSSN786:

/*    757 */	sxar2
/*    757 */	ldd	[%g4+24],%f188
/*    757 */	fsubd	%f182,%f180,%f182

.LSSN787:

/*    755 */	sxar2
/*    755 */	ldd	[%xg1+1024],%f298
/*    755 */	fsubd	%f186,%f184,%f186
.LSSN788:


/*    757 */	sxar2
/*    757 */	ldd	[%g4+32],%f198
/*    757 */	ldd	[%xg8+%xg9],%f194

.LSSN789:

/*    755 */	sxar2
/*    755 */	ldd	[%g4+80],%f200
/*    755 */	ldd	[%g4],%f206
.LSSN790:

.LSSN791:

/*    755 */	sxar2
/*    755 */	fsubd	%f190,%f188,%f190
/*    755 */	ldd	[%xg6+%xg9],%f202

.LSSN792:

/*    740 */	sxar2
/*    740 */	ldd	[%g4+48],%f208
/*    740 */	ldd	[%g4+64],%f212

.LSSN793:

/*    757 */	sxar2
/*    757 */	ldd	[%g4+16],%f210
/*    757 */	fmaddd	%f192,%f182,%f180,%f182

.LSSN794:

/*    756 */	sxar2
/*    756 */	fsubd	%f198,%f194,%f196
/*    756 */	ldd	[%xg7+%xg9],%f220
.LSSN795:

.LSSN796:

/*    755 */	sxar2
/*    755 */	fsubd	%f200,%f198,%f200
/*    755 */	fmaddd	%f192,%f186,%f184,%f186


/*    755 */	sxar2
/*    755 */	fsubd	%f206,%f202,%f204
/*    755 */	fsubd	%f208,%f206,%f208
.LSSN797:

.LSSN798:

/*    741 */	sxar2
/*    741 */	fsubd	%f212,%f210,%f212
/*    741 */	fmaddd	%f192,%f190,%f188,%f190
.LSSN799:


/*    757 */	sxar2
/*    757 */	frcpad	%f182,%f214
/*    757 */	fmaddd	%f192,%f200,%f196,%f200
.LSSN800:


/*    755 */	sxar2
/*    755 */	frcpad	%f186,%f216
/*    755 */	fmaddd	%f192,%f208,%f204,%f208
.LSSN801:

.LSSN802:

/*    756 */	sxar2
/*    756 */	fmaddd	%f192,%f212,%f210,%f192
/*    756 */	frcpad	%f190,%f218
.LSSN803:


/*    757 */	sxar2
/*    757 */	fnmsubd	%f214,%f182,%f318,%f182
/*    757 */	fmuld	%f214,%f440,%f214
.LSSN804:


/*    755 */	sxar2
/*    755 */	fnmsubd	%f216,%f186,%f318,%f186
/*    755 */	fmuld	%f216,%f440,%f216
.LSSN805:


/*    756 */	sxar2
/*    756 */	fnmsubd	%f218,%f190,%f318,%f190
/*    756 */	fmuld	%f218,%f440,%f218

.LSSN806:

/*    757 */	sxar2
/*    757 */	fsubd	%f192,%f220,%f192
/*    757 */	fmaddd	%f182,%f182,%f182,%f222

.LSSN807:

/*    755 */	sxar2
/*    755 */	fmuld	%f182,%f182,%f224
/*    755 */	fmaddd	%f186,%f186,%f186,%f226

.LSSN808:

/*    756 */	sxar2
/*    756 */	fmuld	%f186,%f186,%f228
/*    756 */	fmaddd	%f190,%f190,%f190,%f230

.LSSN809:

/*    757 */	sxar2
/*    757 */	fmuld	%f190,%f190,%f232
/*    757 */	fmaddd	%f222,%f214,%f214,%f222

.LSSN810:

/*    755 */	sxar2
/*    755 */	fmaddd	%f224,%f224,%f182,%f224
/*    755 */	fmaddd	%f226,%f216,%f216,%f226

.LSSN811:

/*    756 */	sxar2
/*    756 */	fmaddd	%f228,%f228,%f186,%f228
/*    756 */	fmaddd	%f230,%f218,%f218,%f230

.LSSN812:

/*    757 */	sxar2
/*    757 */	fmaddd	%f232,%f232,%f190,%f232
/*    757 */	fmaddd	%f224,%f222,%f214,%f224
.LSSN813:

.LSSN814:

/*    756 */	sxar2
/*    756 */	fmaddd	%f228,%f226,%f216,%f228
/*    756 */	fmaddd	%f232,%f230,%f218,%f232
.LSSN815:


/*    757 */	sxar2
/*    757 */	fcmpleed	%f224,%f236,%f234
/*    757 */	fcmpgeed	%f224,%f240,%f238
.LSSN816:


/*    755 */	sxar2
/*    755 */	fcmpleed	%f228,%f236,%f242
/*    755 */	fcmpgeed	%f228,%f240,%f244
.LSSN817:


/*    756 */	sxar2
/*    756 */	fcmpleed	%f232,%f236,%f236
/*    756 */	fcmpgeed	%f232,%f240,%f240
.LSSN818:

.LSSN819:

/*    755 */	sxar2
/*    755 */	fselmovd	%f246,%f224,%f234,%f224
/*    755 */	fselmovd	%f246,%f228,%f242,%f228
.LSSN820:

.LSSN821:

/*    757 */	sxar2
/*    757 */	fselmovd	%f246,%f232,%f236,%f232
/*    757 */	fmaddd	%f252,%f224,%f248,%f250
.LSSN822:

.LSSN823:

/*    756 */	sxar2
/*    756 */	fmaddd	%f252,%f228,%f248,%f254
/*    756 */	fmaddd	%f252,%f232,%f248,%f252
.LSSN824:

.LSSN825:

/*    755 */	sxar2
/*    755 */	fdtox	%f250,%f250
/*    755 */	fdtox	%f254,%f254
.LSSN826:

.LSSN827:

/*    757 */	sxar2
/*    757 */	fdtox	%f252,%f252
/*    757 */	fxtod	%f250,%f256


/*    757 */	sxar2
/*    757 */	fpmaddx	%f250,%f262,%f258,%f260
/*    757 */	std	%f250,[%fp+%o0]
.LSSN828:


/*    755 */	sxar2
/*    755 */	fxtod	%f254,%f264
/*    755 */	fpmaddx	%f254,%f262,%f258,%f266
.LSSN829:


/*    756 */	sxar2
/*    756 */	fxtod	%f252,%f268
/*    756 */	fpmaddx	%f252,%f262,%f258,%f262
.LSSN830:


/*    757 */	sxar2
/*    757 */	fsubd	%f256,%f270,%f256
/*    757 */	fpmaddxhi	%f260,%f272,%f246,%f260

.LSSN831:

/*    755 */	sxar2
/*    755 */	ldx	[%fp+%o0],%xg10
/*    755 */	fsubd	%f264,%f270,%f264


/*    755 */	sxar2
/*    755 */	fpmaddxhi	%f266,%f272,%f246,%f266
/*    755 */	std	%f254,[%fp+%o3]
.LSSN832:


/*    756 */	sxar2
/*    756 */	fsubd	%f268,%f270,%f268
/*    756 */	fpmaddxhi	%f262,%f272,%f246,%f262
.LSSN833:


/*    757 */	sxar2
/*    757 */	sub	%xg10,%xg2,%xg10
/*    757 */	and	%xg10,255,%xg10


/*    757 */	sxar2
/*    757 */	fmaddd	%f274,%f256,%f224,%f224
/*    757 */	fpmaddx	%f260,%f276,%f318,%f260

.LSSN834:

/*    755 */	sxar2
/*    755 */	sllx	%xg10,4,%xg10
/*    755 */	fmaddd	%f274,%f264,%f228,%f228

.LSSN835:

/*    757 */	sxar2
/*    757 */	fpmaddx	%f266,%f276,%f318,%f266
/*    757 */	ldd	[%o2+%xg10],%f288


/*    757 */	sxar2
/*    757 */	add	%xg10,8,%xg10
/*    757 */	ldd	[%o2+%xg10],%f296
.LSSN836:


/*    756 */	sxar2
/*    756 */	fmaddd	%f274,%f268,%f232,%f274
/*    756 */	fpmaddx	%f262,%f276,%f318,%f262
.LSSN837:

.LSSN838:

/*    755 */	sxar2
/*    755 */	fmaddd	%f278,%f256,%f224,%f256
/*    755 */	fmaddd	%f278,%f264,%f228,%f264
.LSSN839:

.LSSN840:

/*    757 */	sxar2
/*    757 */	fmaddd	%f278,%f268,%f274,%f278
/*    757 */	fmaddd	%f284,%f256,%f280,%f282

.LSSN841:

/*    755 */	sxar2
/*    755 */	fmuld	%f288,%f256,%f286
/*    755 */	fmaddd	%f284,%f264,%f280,%f290
.LSSN842:

.LSSN843:

/*    757 */	sxar2
/*    757 */	fmaddd	%f284,%f278,%f280,%f284
/*    757 */	fmaddd	%f256,%f282,%f292,%f282
.LSSN844:

.LSSN845:

/*    756 */	sxar2
/*    756 */	fmaddd	%f264,%f290,%f292,%f290
/*    756 */	fmaddd	%f278,%f284,%f292,%f284
.LSSN846:

.LSSN847:

/*    755 */	sxar2
/*    755 */	fmaddd	%f256,%f282,%f294,%f256
/*    755 */	fmaddd	%f264,%f290,%f294,%f290
.LSSN848:

.LSSN849:

/*    757 */	sxar2
/*    757 */	fmaddd	%f278,%f284,%f294,%f284
/*    757 */	fmaddd	%f286,%f256,%f296,%f286


/*    757 */	sxar2
/*    757 */	faddd	%f288,%f286,%f288
/*    757 */	fmuld	%f260,%f288,%f260


/*    757 */	sxar2
/*    757 */	fselmovd	%f246,%f260,%f234,%f260
/*    757 */	fselmovd	%f298,%f260,%f238,%f260


/*    757 */	sxar2
/*    757 */	fsubd	%f318,%f260,%f260
/*    757 */	fmaddd	%f260,%f200,%f194,%f260

.LSSN850:

/*    755 */	sxar2
/*    755 */	std	%f260,[%xg8+%xg9]
/*    755 */	ldx	[%fp+%o3],%xg11
.LSSN851:

.LSSN852:

/*    755 */	sxar2
/*    755 */	std	%f252,[%fp+%o4]
/*    755 */	sub	%xg11,%xg2,%xg11


/*    755 */	sxar2
/*    755 */	and	%xg11,255,%xg11
/*    755 */	sllx	%xg11,4,%xg11


/*    755 */	sxar2
/*    755 */	ldd	[%o2+%xg11],%f300
/*    755 */	add	%xg11,8,%xg11


/*    755 */	sxar2
/*    755 */	ldd	[%o2+%xg11],%f302
/*    755 */	fmuld	%f300,%f264,%f264


/*    755 */	sxar2
/*    755 */	fmaddd	%f264,%f290,%f302,%f264
/*    755 */	faddd	%f300,%f264,%f300


/*    755 */	sxar2
/*    755 */	fmuld	%f266,%f300,%f266
/*    755 */	fselmovd	%f246,%f266,%f242,%f266


/*    755 */	sxar2
/*    755 */	fselmovd	%f298,%f266,%f244,%f266
/*    755 */	fsubd	%f318,%f266,%f266


/*    755 */	sxar2
/*    755 */	fmaddd	%f266,%f208,%f202,%f266
/*    755 */	std	%f266,[%xg6+%xg9]
.LSSN853:


/*    756 */	sxar2
/*    756 */	ldx	[%fp+%o4],%xg12
/*    756 */	sub	%xg12,%xg2,%xg12


/*    756 */	sxar2
/*    756 */	and	%xg12,255,%xg12
/*    756 */	sllx	%xg12,4,%xg12


/*    756 */	sxar2
/*    756 */	ldd	[%o2+%xg12],%f304
/*    756 */	add	%xg12,8,%xg12


/*    756 */	sxar2
/*    756 */	ldd	[%o2+%xg12],%f306
/*    756 */	fmuld	%f304,%f278,%f278


/*    756 */	sxar2
/*    756 */	fmaddd	%f278,%f284,%f306,%f278
/*    756 */	faddd	%f304,%f278,%f304


/*    756 */	sxar2
/*    756 */	fmuld	%f262,%f304,%f262
/*    756 */	fselmovd	%f246,%f262,%f236,%f246


/*    756 */	sxar2
/*    756 */	fselmovd	%f298,%f246,%f240,%f298
/*    756 */	fsubd	%f318,%f298,%f298


/*    756 */	sxar2
/*    756 */	fmaddd	%f298,%f192,%f220,%f298
/*    756 */	std	%f298,[%xg7+%xg9]

.L654:
.LSSN854:


/*    726 */	sxar2
/*    726 */	add	%xg4,%g2,%xg20
/*    726 */	andcc	%xg20,15,%xg13

/*    726 */	bne,pt	%xcc, .L665
	nop


.L655:

/*    726 */	sxar1
/*    726 */	cmp	%xg5,%g0

/*    726 */	be	.L688
	nop


.L656:


/*    726 */	sxar2
/*    726 */	sra	%xg5,31,%xg25
/*    726 */	andn	%xg5,%xg25,%xg5


/*    726 */	sxar2
/*    726 */	srl	%xg5,31,%xg18
/*    726 */	add	%xg5,%xg18,%xg18


/*    726 */	sxar2
/*    726 */	sra	%xg18,1,%xg18
/*    726 */	add	%xg18,%xg18,%xg6


/*    726 */	sxar2
/*    726 */	sra	%xg18,%g0,%xg2
/*    726 */	sub	%xg5,%xg6,%xg5

/*    726 */	sxar1
/*    726 */	cmp	%xg18,%g0

/*    726 */	be	.L661
	nop


.L657:



/*    726 */	sxar2
/*    726 */	fmovd	%f440,%f184
/*    726 */	fmovd	%f318,%f62

.LSSN855:


/*    758 */	sxar2
/*    758 */	sethi	%h44(.LB0+30720144),%xg24
/*    758 */	ldd	[%xg1+984],%f92


/*    758 */	sxar2
/*    758 */	or	%xg24,%m44(.LB0+30720144),%xg24
/*    758 */	sethi	%hi(157952),%xg31


/*    758 */	sxar2
/*    758 */	fzero,s	%f108
/*    758 */	ldd	[%xg1+984],%f348



/*    758 */	sxar2
/*    758 */	sllx	%xg24,12,%xg24
/*    758 */	ldd	[%xg1+936],%f136



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+968],%f138
/*    758 */	sethi	%h44(__fj_dlogexp2_const_),%xg19


/*    758 */	sxar2
/*    758 */	xor	%xg31,-257,%xg31
/*    758 */	sethi	%hi(233920),%xg6


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+968],%f394
/*    758 */	ldd	[%xg1+960],%f134




/*    758 */	sxar2
/*    758 */	or	%xg24,%l44(.LB0+30720144),%xg24
/*    758 */	ldd	[%xg1+1032],%f128



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1032],%f384
/*    758 */	or	%xg19,%m44(__fj_dlogexp2_const_),%xg19


/*    758 */	sxar2
/*    758 */	add	%xg3,%fp,%l0
/*    758 */	xor	%xg6,-449,%xg6


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1040],%f130
/*    758 */	ldd	[%xg1+1040],%f386



/*    758 */	sxar2
/*    758 */	add	%xg31,%xg4,%xg31
/*    758 */	ldd	[%xg1+1048],%f140



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1048],%f396
/*    758 */	sethi	%hi(237968),%xg23


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+944],%f142
/*    758 */	ldd	[%xg1+952],%f146




/*    758 */	sxar2
/*    758 */	sethi	%hi(237976),%xg25
/*    758 */	sllx	%xg19,12,%xg19


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1016],%f150
/*    758 */	ldd	[%xg1+1008],%f152


/*    758 */	sxar1
/*    758 */	sethi	%hi(237984),%xg28

/*    758 */	sethi	%hi(237992),%g4


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1008],%f408
/*    758 */	ldd	[%xg1+1000],%f124


/*    758 */	sxar1
/*    758 */	sethi	%hi(238000),%xg29

/*    758 */	sethi	%hi(238008),%g3


/*    758 */	sxar2
/*    758 */	add	%xg24,64,%o5
/*    758 */	add	%xg24,16,%xg21


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1000],%f380
/*    758 */	ldd	[%xg1+992],%f132



/*    758 */	sxar2
/*    758 */	add	%xg24,24,%xg26
/*    758 */	add	%xg24,72,%g5


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+992],%f388
/*    758 */	ldd	[%xg1+1056],%f126



/*    758 */	sxar2
/*    758 */	add	%xg24,48,%o0
/*    758 */	add	%xg24,8,%xg20


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1056],%f382
/*    758 */	ldd	[%xg1+976],%f144



/*    758 */	sxar2
/*    758 */	add	%xg24,56,%o7
/*    758 */	add	%xg24,80,%o3


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+976],%f400
/*    758 */	ldd	[%xg1+1024],%f148



/*    758 */	sxar2
/*    758 */	add	%xg24,32,%o2
/*    758 */	add	%xg24,40,%o4



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1024],%f404
/*    758 */	add	%xg24,88,%xg22


/*    758 */	sxar2
/*    758 */	add	%l0,%xg6,%l0
/*    758 */	add	%xg31,%fp,%xg31


/*    758 */	sxar2
/*    758 */	add	%xg4,%xg0,%xg15
/*    758 */	mov	%xg4,%xg17


/*    758 */	sxar2
/*    758 */	xor	%xg23,-401,%xg23
/*    758 */	xor	%xg25,-409,%xg25


/*    758 */	sxar2
/*    758 */	sethi	%hi(524288),%xg27
/*    758 */	or	%xg19,%l44(__fj_dlogexp2_const_),%xg19

/*    758 */	sxar1
/*    758 */	xor	%xg28,-417,%xg28

/*    758 */	xor	%g4,-425,%g4


.LSSN856:

/*    726 */	sxar2
/*    726 */	xor	%xg29,-433,%xg29
/*    726 */	cmp	%xg18,10

/*    726 */	bl	.L840
/*    726 */	xor	%g3,-441,%g3


.L836:


.L843:


/*    726 */	sxar2
/*    726 */	ldsw	[%l0+-4032],%xg11
/*    726 */	ldsw	[%l0+-4028],%xg30


/*    726 */	sxar2
/*    726 */	add	%l0,8,%xg7
/*    726 */	add	%xg31,32,%xg10


/*    726 */	sxar2
/*    726 */	add	%xg31,16,%xg8
/*    726 */	ldd,s	[%xg31],%f246


/*    726 */	sxar2
/*    726 */	ldsw	[%l0+-4024],%xg6
/*    726 */	add	%l0,16,%xg9


/*    726 */	sxar2
/*    726 */	ldsw	[%l0+-4020],%xg7
/*    726 */	add	%l0,24,%xg12


/*    726 */	sxar2
/*    726 */	add	%xg31,48,%xg16
/*    726 */	ldsw	[%l0+-4016],%xg10

/*    726 */	sxar1
/*    726 */	ldd,s	[%xg31+16],%f34

/*    726 */	ldsw	[%l0+-4012],%l3


/*    726 */	sxar2
/*    726 */	srl	%xg11,%g0,%xg11
/*    726 */	srl	%xg30,%g0,%xg30


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg31+32],%f56
/*    726 */	add	%xg11,%xg11,%xg13


/*    726 */	sxar2
/*    726 */	add	%xg30,%xg30,%xg14
/*    726 */	ldd,s	[%xg31+48],%f120

/*    726 */	ldsw	[%l0+-4008],%l1


/*    726 */	sxar2
/*    726 */	add	%xg13,%xg11,%xg13
/*    726 */	add	%xg14,%xg30,%xg14

/*    726 */	ldsw	[%l0+-4004],%l2


/*    726 */	sxar2
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sllx	%xg14,4,%xg14


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg26],%f234
/*    726 */	ldd	[%xg14+%xg26],%f490


/*    726 */	sxar2
/*    726 */	srl	%xg6,%g0,%xg6
/*    726 */	srl	%xg7,%g0,%xg7



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%g5],%f236
/*    726 */	ldd	[%xg14+%g5],%f492


/*    726 */	sxar2
/*    726 */	add	%xg6,%xg6,%xg8
/*    726 */	add	%xg7,%xg7,%xg9



/*    726 */	sxar2
/*    726 */	add	%xg8,%xg6,%xg8
/*    726 */	add	%xg9,%xg7,%xg9


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg20],%f238
/*    726 */	ldd	[%xg14+%xg20],%f494



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o7],%f240
/*    726 */	ldd	[%xg14+%o7],%f496

/*    726 */	sxar1
/*    726 */	srl	%xg10,%g0,%xg10

/*    726 */	srl	%l3,%g0,%l3



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o4],%f242
/*    726 */	ldd	[%xg14+%o4],%f498


/*    726 */	sxar2
/*    726 */	add	%xg10,%xg10,%xg6
/*    726 */	add	%l3,%l3,%xg7



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg22],%f244
/*    726 */	fsubd,s	%f236,%f234,%f236


/*    726 */	sxar2
/*    726 */	add	%xg6,%xg10,%xg6
/*    726 */	add	%xg7,%l3,%xg7


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg22],%f500
/*    726 */	sllx	%xg6,4,%xg6



/*    726 */	sxar2
/*    726 */	sllx	%xg7,4,%xg7
/*    726 */	ldd	[%xg13+%o5],%f158


/*    726 */	sxar2
/*    726 */	sllx	%xg8,4,%xg8
/*    726 */	sllx	%xg9,4,%xg9


/*    726 */	sxar2
/*    726 */	fsubd,s	%f240,%f238,%f240
/*    726 */	ldd	[%xg6+%xg26],%f44

/*    726 */	srl	%l1,%g0,%l1

/*    726 */	srl	%l2,%g0,%l2


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg26],%f300
/*    726 */	ldd	[%xg6+%g5],%f46



/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o4],%f248
/*    726 */	add	%l1,%l1,%xg10


/*    726 */	sxar2
/*    726 */	add	%l2,%l2,%xg11
/*    726 */	ldd	[%xg7+%g5],%f302



/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o4],%f504
/*    726 */	fsubd,s	%f244,%f242,%f244


/*    726 */	sxar2
/*    726 */	add	%xg10,%l1,%xg10
/*    726 */	add	%xg11,%l2,%xg11



/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg22],%f250
/*    726 */	sllx	%xg10,4,%xg10


/*    726 */	sxar2
/*    726 */	sllx	%xg11,4,%xg11
/*    726 */	fmaddd,s	%f246,%f236,%f234,%f236


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg22],%f506
/*    726 */	ldd	[%xg8+%xg26],%f252




/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg26],%f508
/*    726 */	fmaddd,s	%f246,%f240,%f238,%f240


/*    726 */	sxar2
/*    726 */	fsubd,s	%f46,%f44,%f46
/*    726 */	ldd	[%xg8+%g5],%f254



/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%g5],%f510
/*    726 */	ldd	[%xg8+%xg20],%f36



/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg20],%f292
/*    726 */	fsubd,s	%f250,%f248,%f250


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o7],%f38
/*    726 */	fmaddd,s	%f246,%f244,%f242,%f244


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o7],%f294
/*    726 */	frcpad,s	%f236,%f32



/*    726 */	sxar2
/*    726 */	fsubd,s	%f254,%f252,%f254
/*    726 */	ldd	[%xg6+%o4],%f50


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o4],%f306
/*    726 */	frcpad,s	%f240,%f40



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f46,%f44,%f46
/*    726 */	ldd	[%xg6+%xg22],%f52



/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg22],%f308
/*    726 */	fsubd,s	%f38,%f36,%f38


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg26],%f98
/*    726 */	fmaddd,s	%f34,%f250,%f248,%f250


/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%xg26],%f354
/*    726 */	frcpad,s	%f244,%f42



/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%g5],%f96
/*    726 */	fnmsubd,s	%f32,%f236,%f62,%f236


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f32,%f32
/*    726 */	fmaddd,s	%f34,%f254,%f252,%f254


/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%g5],%f352
/*    726 */	fsubd,s	%f52,%f50,%f52



/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o5],%f414
/*    726 */	fnmsubd,s	%f40,%f240,%f62,%f240



/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f40,%f40
/*    726 */	ldd	[%xg13+%xg21],%f156


/*    726 */	sxar2
/*    726 */	frcpad,s	%f46,%f78
/*    726 */	fmaddd,s	%f34,%f38,%f36,%f38



/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg21],%f412
/*    726 */	fnmsubd,s	%f42,%f244,%f62,%f244


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f42,%f42
/*    726 */	fmaddd,s	%f236,%f236,%f236,%f58


/*    726 */	sxar2
/*    726 */	fmuld,s	%f236,%f236,%f60
/*    726 */	frcpad,s	%f250,%f48


/*    726 */	sxar2
/*    726 */	frcpad,s	%f254,%f54
/*    726 */	fmaddd,s	%f240,%f240,%f240,%f64


/*    726 */	sxar2
/*    726 */	fmuld,s	%f240,%f240,%f66
/*    726 */	fnmsubd,s	%f78,%f46,%f62,%f46


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f78,%f78
/*    726 */	frcpad,s	%f38,%f68


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f52,%f50,%f52
/*    726 */	fmaddd,s	%f244,%f244,%f244,%f70


/*    726 */	sxar2
/*    726 */	fmuld,s	%f244,%f244,%f72
/*    726 */	fmaddd,s	%f58,%f32,%f32,%f58


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f60,%f60,%f236,%f60
/*    726 */	fnmsubd,s	%f48,%f250,%f62,%f250


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f48,%f48
/*    726 */	fmaddd,s	%f64,%f40,%f40,%f64


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f66,%f66,%f240,%f66
/*    726 */	fmaddd,s	%f46,%f46,%f46,%f100


/*    726 */	sxar2
/*    726 */	fmuld,s	%f46,%f46,%f102
/*    726 */	fnmsubd,s	%f54,%f254,%f62,%f254


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f54,%f54
/*    726 */	fmaddd,s	%f70,%f42,%f42,%f70


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f72,%f244,%f72
/*    726 */	fnmsubd,s	%f68,%f38,%f62,%f38


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f60,%f58,%f32,%f60
/*    726 */	fmaddd,s	%f250,%f250,%f250,%f74


/*    726 */	sxar2
/*    726 */	fmuld,s	%f250,%f250,%f76
/*    726 */	frcpad,s	%f52,%f84


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f66,%f64,%f40,%f66
/*    726 */	fmaddd,s	%f100,%f78,%f78,%f100


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f102,%f102,%f46,%f102
/*    726 */	fmaddd,s	%f254,%f254,%f254,%f80


/*    726 */	sxar2
/*    726 */	fmuld,s	%f254,%f254,%f82
/*    726 */	fmuld,s	%f184,%f68,%f68


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f70,%f42,%f72
/*    726 */	fmaddd,s	%f38,%f38,%f38,%f86


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f60,%f92,%f90
/*    726 */	fmaddd,s	%f74,%f48,%f48,%f74


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f76,%f76,%f250,%f76
/*    726 */	fmuld,s	%f38,%f38,%f88


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f66,%f92,%f94
/*    726 */	fnmsubd,s	%f84,%f52,%f62,%f52


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f102,%f100,%f78,%f102
/*    726 */	fmaddd,s	%f80,%f54,%f54,%f80


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f82,%f82,%f254,%f82
/*    726 */	fsubd,s	%f96,%f98,%f96


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f72,%f92,%f104
/*    726 */	fmaddd,s	%f86,%f68,%f68,%f86


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f60,%f90,%f106
/*    726 */	fmaddd,s	%f76,%f74,%f48,%f76


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f84,%f84
/*    726 */	fmaddd,s	%f88,%f88,%f38,%f88


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f66,%f94,%f114
/*    726 */	fmaddd,s	%f52,%f52,%f52,%f112


/*    726 */	sxar2
/*    726 */	fmuld,s	%f52,%f52,%f116
/*    726 */	fmaddd,s	%f82,%f80,%f54,%f82


/*    726 */	sxar2
/*    726 */	fsubd,s	%f158,%f156,%f158
/*    726 */	fselmovd,s	%f108,%f72,%f104,%f118


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f120,%f96,%f98,%f96
/*    726 */	fmaddd,sc	%f136,%f106,%f138,%f154


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f76,%f92,%f110
/*    726 */	fmaddd,s	%f88,%f86,%f68,%f88


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f114,%f138,%f162
/*    726 */	fmaddd,s	%f112,%f84,%f84,%f112


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f116,%f116,%f52,%f116
/*    726 */	fcmpleed,s	%f82,%f92,%f122


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f118,%f138,%f164
/*    726 */	frcpad,s	%f96,%f166


/*    726 */	sxar2
/*    726 */	fdtox,s	%f154,%f154
/*    726 */	fselmovd,s	%f108,%f76,%f110,%f160


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f88,%f92,%f170
/*    726 */	fdtox,s	%f162,%f162


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f82,%f122,%f168
/*    726 */	fdtox,s	%f164,%f164



/*    726 */	sxar2
/*    726 */	fxtod,s	%f154,%f176
/*    726 */	fpmaddx,s	%f154,%f128,%f130,%f178


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f160,%f138,%f172
/*    726 */	std	%f154,[%xg23+%fp]


/*    726 */	sxar2
/*    726 */	fxtod,s	%f162,%f180
/*    726 */	std	%f410,[%xg25+%fp]


/*    726 */	sxar2
/*    726 */	fmovd,s	%f162,%f78
/*    726 */	fmaddd,sc	%f136,%f168,%f138,%f174


/*    726 */	sxar2
/*    726 */	fxtod,s	%f164,%f182
/*    726 */	fmovd,s	%f164,%f80


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f176,%f176
/*    726 */	fpmaddxhi,s	%f178,%f140,%f108,%f178



/*    726 */	sxar2
/*    726 */	fdtox,s	%f172,%f172
/*    726 */	ldx	[%xg23+%fp],%xg30


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f180,%f180
/*    726 */	ldx	[%xg25+%fp],%xg31


/*    726 */	sxar2
/*    726 */	std	%f78,[%xg28+%fp]
/*    726 */	fdtox,s	%f174,%f174



/*    726 */	sxar2
/*    726 */	std	%f334,[%g4+%fp]
/*    726 */	fnmsubd,sc	%f134,%f62,%f182,%f182


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f176,%f106,%f106
/*    726 */	sub	%xg30,%xg27,%xg30


/*    726 */	sxar2
/*    726 */	sub	%xg31,%xg27,%xg31
/*    726 */	fxtod,s	%f172,%f186


/*    726 */	sxar2
/*    726 */	and	%xg30,255,%xg30
/*    726 */	and	%xg31,255,%xg31


/*    726 */	sxar2
/*    726 */	sllx	%xg30,4,%xg30
/*    726 */	fmaddd,sc	%f142,%f180,%f114,%f114


/*    726 */	sxar2
/*    726 */	sllx	%xg31,4,%xg31
/*    726 */	ldd	[%xg30+%xg19],%f194


/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%xg19],%f450
/*    726 */	add	%xg30,8,%xg30



/*    726 */	sxar2
/*    726 */	add	%xg31,8,%xg31
/*    726 */	std	%f80,[%xg29+%fp]


/*    726 */	sxar2
/*    726 */	fxtod,s	%f174,%f188
/*    726 */	fmaddd,sc	%f142,%f182,%f118,%f118


/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%xg19],%f200
/*    726 */	fmaddd,sc	%f146,%f176,%f106,%f176



/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%xg19],%f456
/*    726 */	fnmsubd,sc	%f134,%f62,%f186,%f186


/*    726 */	sxar2
/*    726 */	std	%f336,[%g3+%fp]
/*    726 */	fmaddd,sc	%f146,%f180,%f114,%f180


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f182,%f118,%f182
/*    726 */	fmaddd,sc	%f150,%f176,%f152,%f190


/*    726 */	sxar2
/*    726 */	fmuld,s	%f194,%f176,%f192
/*    726 */	ldx	[%xg28+%fp],%l4


/*    726 */	sxar2
/*    726 */	ldx	[%g4+%fp],%xg31
/*    726 */	ldx	[%xg29+%fp],%l1


/*    726 */	sxar2
/*    726 */	ldx	[%g3+%fp],%xg30
/*    726 */	fmaddd,sc	%f150,%f180,%f152,%f196


/*    726 */	sxar2
/*    726 */	sub	%l4,%xg27,%l4
/*    726 */	sub	%xg31,%xg27,%xg31

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f150,%f182,%f152,%f198

/*    726 */	and	%l4,255,%l4


/*    726 */	sxar2
/*    726 */	and	%xg31,255,%xg31
/*    726 */	fmaddd,s	%f176,%f190,%f124,%f190

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	sub	%l1,%xg27,%l1
/*    726 */	sllx	%xg31,4,%xg31

/*    726 */	sxar1
/*    726 */	sub	%xg30,%xg27,%xg30

/*    726 */	mov	%l1,%l0


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f176,%f190,%f132,%f176
/*    726 */	fmaddd,s	%f192,%f176,%f200,%f192

.L659:


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f180,%f196,%f124,%f196
/*    726 */	fmaddd,s	%f116,%f112,%f84,%f116

/*    726 */	and	%l0,255,%l0


/*    726 */	sxar2
/*    726 */	and	%xg30,255,%xg30
/*    726 */	ldd	[%l4+%xg19],%f46

/*    726 */	sxar1
/*    726 */	ldd	[%xg31+%xg19],%f302

/*    726 */	sllx	%l0,4,%l0


/*    726 */	sxar2
/*    726 */	sllx	%xg30,4,%xg30
/*    726 */	ldd	[%l0+%xg19],%f48


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f182,%f198,%f124,%f198
/*    726 */	ldd	[%xg30+%xg19],%f304


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg20],%f58
/*    726 */	ldd	[%xg7+%xg20],%f314


/*    726 */	sxar2
/*    726 */	faddd,s	%f194,%f192,%f194
/*    726 */	fnmsubd,s	%f166,%f96,%f62,%f96


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%o7],%f64
/*    726 */	fpmaddx,s	%f178,%f126,%f62,%f178


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o7],%f320
/*    726 */	fselmovd,s	%f108,%f88,%f170,%f42

/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f162,%f128,%f130,%f162

/*    726 */	add	%l4,8,%l4



/*    726 */	sxar2
/*    726 */	add	%xg31,8,%xg31
/*    726 */	ldd	[%l4+%xg19],%f74


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f180,%f196,%f132,%f196
/*    726 */	ldd	[%xg31+%xg19],%f330



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f116,%f92,%f44
/*    726 */	fmuld,s	%f46,%f180,%f180

/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f164,%f128,%f130,%f164

/*    726 */	add	%l0,8,%l0


/*    726 */	sxar2
/*    726 */	add	%xg30,8,%xg30
/*    726 */	ldd	[%l0+%xg19],%f78


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f182,%f198,%f132,%f198
/*    726 */	ldd	[%xg30+%xg19],%f334


/*    726 */	sxar2
/*    726 */	fmuld,s	%f48,%f182,%f182
/*    726 */	fmaddd,s	%f96,%f96,%f96,%f50




/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f188,%f188
/*    726 */	fmuld,s	%f96,%f96,%f52


/*    726 */	sxar2
/*    726 */	fmuld,s	%f178,%f194,%f178
/*    726 */	fcmpleed,s	%f102,%f92,%f54



/*    726 */	sxar2
/*    726 */	fsubd,s	%f64,%f58,%f64
/*    726 */	fmaddd,sc	%f136,%f42,%f138,%f68



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f116,%f44,%f70
/*    726 */	ldd	[%xg8+%o5],%f86


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o5],%f342
/*    726 */	fpmaddxhi,s	%f162,%f140,%f108,%f162


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f180,%f196,%f74,%f180
/*    726 */	ldd	[%xg8+%xg21],%f84


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg21],%f340
/*    726 */	fpmaddxhi,s	%f164,%f140,%f108,%f164


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f182,%f198,%f78,%f182
/*    726 */	ldd	[%xg10+%o4],%f98


/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%o4],%f354
/*    726 */	fmaddd,sc	%f142,%f188,%f168,%f168


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f166,%f166
/*    726 */	ldd	[%xg10+%xg22],%f100


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f178,%f90,%f178
/*    726 */	ldd	[%xg11+%xg22],%f356


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f60,%f144,%f60
/*    726 */	fmaddd,s	%f56,%f64,%f58,%f64


/*    726 */	sxar2
/*    726 */	fdtox,s	%f68,%f68
/*    726 */	fmaddd,sc	%f136,%f70,%f138,%f80


/*    726 */	sxar2
/*    726 */	faddd,s	%f46,%f180,%f46
/*    726 */	fpmaddx,s	%f162,%f126,%f62,%f162


/*    726 */	sxar2
/*    726 */	ldsw	[%xg12+-4024],%xg31
/*    726 */	ldsw	[%xg12+-4020],%xg30


/*    726 */	sxar2
/*    726 */	faddd,s	%f48,%f182,%f48
/*    726 */	fpmaddx,s	%f164,%f126,%f62,%f164






/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o3],%f176
/*    726 */	ldd	[%xg14+%o3],%f432


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f166,%f166,%f50
/*    726 */	fmaddd,sc	%f146,%f188,%f168,%f188



/*    726 */	sxar2
/*    726 */	fmovd,s	%f174,%f226
/*    726 */	ldd	[%xg13+%o2],%f154


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o2],%f410
/*    726 */	fsubd,s	%f86,%f84,%f86


/*    726 */	sxar2
/*    726 */	fsubd,s	%f100,%f98,%f100
/*    726 */	std	%f226,[%xg23+%fp]


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f178,%f60,%f178
/*    726 */	frcpad,s	%f64,%f106


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg24],%f182
/*    726 */	ldd	[%xg14+%xg24],%f438


/*    726 */	sxar2
/*    726 */	fxtod,s	%f68,%f112
/*    726 */	fdtox,s	%f80,%f80


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o0],%f190
/*    726 */	fmaddd,s	%f52,%f52,%f96,%f52


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o0],%f446
/*    726 */	fmuld,s	%f162,%f46,%f162


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f102,%f54,%f114
/*    726 */	srl	%xg31,%g0,%xg31




/*    726 */	sxar2
/*    726 */	fmuld,s	%f164,%f48,%f164
/*    726 */	fmaddd,s	%f246,%f158,%f156,%f158


/*    726 */	sxar2
/*    726 */	srl	%xg30,%g0,%xg30
/*    726 */	fmaddd,sc	%f150,%f188,%f152,%f118


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg15],%f192
/*    726 */	std	%f482,[%xg25+%fp]


/*    726 */	sxar2
/*    726 */	add	%xg31,%xg31,%l1
/*    726 */	fsubd,s	%f176,%f154,%f176


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f120,%f100,%f98,%f100
/*    726 */	ldx	[%xg23+%fp],%xg14


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f178,%f178
/*    726 */	add	%xg30,%xg30,%xg13


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f106,%f64,%f62,%f64
/*    726 */	add	%l1,%xg31,%l1


/*    726 */	sxar2
/*    726 */	add	%xg13,%xg30,%xg31
/*    726 */	fnmsubd,sc	%f134,%f62,%f112,%f112




/*    726 */	sxar2
/*    726 */	fxtod,s	%f80,%f180
/*    726 */	sllx	%l1,4,%xg30


/*    726 */	sxar2
/*    726 */	sllx	%xg31,4,%xg31
/*    726 */	fselmovd,s	%f108,%f162,%f94,%f162


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f66,%f144,%f66
/*    726 */	ldd	[%xg30+%xg26],%f202


/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%xg26],%f458
/*    726 */	fsubd,s	%f190,%f182,%f190


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f164,%f104,%f164
/*    726 */	ldd	[%xg30+%g5],%f204


/*    726 */	sxar2
/*    726 */	sub	%xg14,%xg27,%xg13
/*    726 */	fcmpgeed,s	%f72,%f144,%f72


/*    726 */	sxar2
/*    726 */	fsubd,s	%f158,%f192,%f158
/*    726 */	frcpad,s	%f100,%f194


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f106,%f106
/*    726 */	ldx	[%xg25+%fp],%xg14


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f64,%f64,%f64,%f196
/*    726 */	ldd	[%xg31+%g5],%f460


/*    726 */	sxar2
/*    726 */	fmuld,s	%f64,%f64,%f198
/*    726 */	and	%xg13,255,%xg13


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f180,%f180
/*    726 */	sllx	%xg13,4,%xg13


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f112,%f42,%f42
/*    726 */	ldd	[%xg13+%xg19],%f214


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+16],%f216
/*    726 */	fmaddd,sc	%f142,%f186,%f160,%f160


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f162,%f66,%f162
/*    726 */	fmaddd,sc	%f136,%f114,%f138,%f200


/*    726 */	sxar2
/*    726 */	sub	%xg14,%xg27,%l0
/*    726 */	fmaddd,s	%f246,%f190,%f182,%f190


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+%g2],%f206
/*    726 */	fselmovd,s	%f148,%f164,%f72,%f164



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f246,%f176,%f154,%f246
/*    726 */	fmaddd,s	%f188,%f118,%f124,%f118

/*    726 */	and	%l0,255,%l0


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f194,%f100,%f62,%f100
/*    726 */	ldd,s	[%xg17+%g1],%f208


/*    726 */	sxar2
/*    726 */	std	%f68,[%xg28+%fp]
/*    726 */	fmaddd,s	%f178,%f158,%f192,%f178




/*    726 */	sxar2
/*    726 */	fmaddd,s	%f196,%f106,%f106,%f196
/*    726 */	std	%f324,[%g4+%fp]

/*    726 */	sllx	%l0,4,%l0


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f198,%f198,%f64,%f198
/*    726 */	fmaddd,sc	%f146,%f112,%f42,%f112



/*    726 */	sxar2
/*    726 */	fmovd,s	%f172,%f228
/*    726 */	fsubd,s	%f62,%f162,%f162


/*    726 */	sxar2
/*    726 */	fsubd,s	%f204,%f202,%f204
/*    726 */	ldd	[%l0+%xg19],%f470


/*    726 */	sxar2
/*    726 */	std	%f228,[%xg29+%fp]
/*    726 */	fsubd,s	%f190,%f206,%f190


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f194,%f194
/*    726 */	std	%f484,[%g3+%fp]


/*    726 */	sxar2
/*    726 */	add	%xg13,8,%xg13
/*    726 */	fsubd,s	%f62,%f164,%f164


/*    726 */	sxar2
/*    726 */	fsubd,s	%f246,%f208,%f246
/*    726 */	ldd	[%xg13+%xg19],%f224


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f100,%f100,%f100,%f210
/*    726 */	fmuld,s	%f100,%f100,%f212


/*    726 */	sxar2
/*    726 */	fdtox,s	%f200,%f200
/*    726 */	fpmaddx,s	%f174,%f128,%f130,%f174



/*    726 */	sxar2
/*    726 */	ldx	[%xg28+%fp],%l2
/*    726 */	ldx	[%g4+%fp],%xg14

/*    726 */	add	%l0,8,%l0


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f186,%f160,%f186
/*    726 */	fmaddd,s	%f188,%f118,%f132,%f118


/*    726 */	sxar2
/*    726 */	fmuld,s	%f214,%f188,%f188
/*    726 */	fmaddd,s	%f216,%f204,%f202,%f204


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg19],%f480
/*    726 */	fmaddd,s	%f198,%f196,%f106,%f198


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f190,%f206,%f162
/*    726 */	ldx	[%xg29+%fp],%l1


/*    726 */	sxar2
/*    726 */	sub	%l2,%xg27,%l2
/*    726 */	fmaddd,sc	%f150,%f112,%f152,%f218


/*    726 */	sxar2
/*    726 */	ldx	[%g3+%fp],%xg13
/*    726 */	fmaddd,s	%f164,%f246,%f208,%f164


/*    726 */	sxar1
/*    726 */	sub	%xg14,%xg27,%xg14

/*    726 */	and	%l2,255,%l2


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f210,%f194,%f194,%f210
/*    726 */	fmaddd,s	%f212,%f212,%f100,%f212


/*    726 */	sxar2
/*    726 */	std	%f178,[%xg15]
/*    726 */	fmaddd,s	%f52,%f50,%f166,%f52

/*    726 */	sxar1
/*    726 */	and	%xg14,255,%xg14

/*    726 */	sllx	%l2,4,%l2



/*    726 */	sxar2
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	fxtod,s	%f200,%f220


/*    726 */	sxar2
/*    726 */	sub	%l1,%xg27,%l1
/*    726 */	fmaddd,sc	%f150,%f186,%f152,%f222


/*    726 */	sxar2
/*    726 */	std	%f434,[%xg15+8]
/*    726 */	fmaddd,s	%f188,%f118,%f224,%f188


/*    726 */	sxar2
/*    726 */	sub	%xg13,%xg27,%l0
/*    726 */	frcpad,s	%f204,%f226


/*    726 */	sxar2
/*    726 */	std,s	%f162,[%xg17+%g2]
/*    726 */	fpmaddxhi,s	%f174,%f140,%f108,%f174


/*    726 */	sxar2
/*    726 */	add	%xg17,16,%l5
/*    726 */	std,s	%f164,[%xg17+%g1]


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f198,%f92,%f228
/*    726 */	fmaddd,s	%f112,%f218,%f124,%f218


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f212,%f210,%f194,%f212
/*    726 */	and	%l1,255,%xg13

/*    726 */	and	%l0,255,%l0


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg19],%f234
/*    726 */	ldd	[%xg14+%xg19],%f490

/*    726 */	sxar1
/*    726 */	sllx	%xg13,4,%xg13

/*    726 */	sllx	%l0,4,%l0


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg19],%f236
/*    726 */	fmaddd,s	%f186,%f222,%f124,%f222


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg19],%f492
/*    726 */	ldd	[%xg10+%xg20],%f244


/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%xg20],%f500
/*    726 */	faddd,s	%f214,%f188,%f214


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f226,%f204,%f62,%f204
/*    726 */	ldd	[%xg10+%o7],%f248


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f174,%f126,%f62,%f174
/*    726 */	ldd	[%xg11+%o7],%f504


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f198,%f228,%f230
/*    726 */	fpmaddx,s	%f68,%f128,%f130,%f68

/*    726 */	add	%l2,8,%l2



/*    726 */	sxar2
/*    726 */	add	%xg14,8,%xg14
/*    726 */	ldd	[%l2+%xg19],%f254


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f218,%f132,%f218
/*    726 */	ldd	[%xg14+%xg19],%f510



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f212,%f92,%f232
/*    726 */	fmuld,s	%f234,%f112,%f112


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f172,%f128,%f130,%f172
/*    726 */	add	%xg13,8,%xg13

/*    726 */	add	%l0,8,%l0


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg19],%f32
/*    726 */	fmaddd,s	%f186,%f222,%f132,%f222


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg19],%f288
/*    726 */	fmuld,s	%f236,%f186,%f186


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f204,%f204,%f204,%f238
/*    726 */	fnmsubd,sc	%f134,%f62,%f220,%f220




/*    726 */	sxar2
/*    726 */	fmuld,s	%f204,%f204,%f240
/*    726 */	fmuld,s	%f174,%f214,%f174


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f52,%f92,%f242
/*    726 */	fsubd,s	%f248,%f244,%f248



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f230,%f138,%f250
/*    726 */	fselmovd,s	%f108,%f212,%f232,%f252



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%o5],%f40
/*    726 */	ldd	[%xg7+%o5],%f296


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f68,%f140,%f108,%f68
/*    726 */	fmaddd,s	%f112,%f218,%f254,%f112


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg21],%f38
/*    726 */	ldd	[%xg7+%xg21],%f294


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f172,%f140,%f108,%f172
/*    726 */	fmaddd,s	%f186,%f222,%f32,%f186


/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%o4],%f42
/*    726 */	ldd	[%xg31+%o4],%f298


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f220,%f114,%f114
/*    726 */	fmuld,s	%f184,%f226,%f226


/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%xg22],%f46
/*    726 */	fselmovd,s	%f108,%f174,%f122,%f174


/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%xg22],%f302
/*    726 */	fcmpgeed,s	%f82,%f144,%f82


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f120,%f248,%f244,%f248
/*    726 */	fdtox,s	%f250,%f250


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f252,%f138,%f36
/*    726 */	faddd,s	%f234,%f112,%f234


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f68,%f126,%f62,%f68
/*    726 */	ldsw	[%xg12+-4016],%l0


/*    726 */	sxar2
/*    726 */	ldsw	[%xg12+-4012],%xg13
/*    726 */	faddd,s	%f236,%f186,%f236






/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f172,%f126,%f62,%f172
/*    726 */	ldd	[%xg8+%o3],%f66


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o3],%f322
/*    726 */	fmaddd,s	%f238,%f226,%f226,%f238



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f220,%f114,%f220
/*    726 */	ldd	[%xg8+%o2],%f64


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o2],%f320
/*    726 */	fsubd,s	%f40,%f38,%f40


/*    726 */	sxar2
/*    726 */	fsubd,s	%f46,%f42,%f46
/*    726 */	std	%f200,[%xg23+%fp]


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f174,%f82,%f174
/*    726 */	frcpad,s	%f248,%f48


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg24],%f78
/*    726 */	ldd	[%xg9+%xg24],%f334


/*    726 */	sxar2
/*    726 */	fxtod,s	%f250,%f50
/*    726 */	fdtox,s	%f36,%f36


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o0],%f82
/*    726 */	fmaddd,s	%f240,%f240,%f204,%f240


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o0],%f338
/*    726 */	fmuld,s	%f68,%f234,%f68

/*    726 */	sxar1
/*    726 */	fselmovd,s	%f108,%f52,%f242,%f58

/*    726 */	srl	%l0,%g0,%l0




/*    726 */	sxar2
/*    726 */	fmuld,s	%f172,%f236,%f172
/*    726 */	fmaddd,s	%f34,%f86,%f84,%f86


/*    726 */	sxar2
/*    726 */	srl	%xg13,%g0,%xg13
/*    726 */	fmaddd,sc	%f150,%f220,%f152,%f60


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg15+16],%f84
/*    726 */	std	%f456,[%xg25+%fp]


/*    726 */	sxar2
/*    726 */	add	%l0,%l0,%xg14
/*    726 */	fsubd,s	%f66,%f64,%f66


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f216,%f46,%f42,%f46
/*    726 */	ldx	[%xg23+%fp],%xg8


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f174,%f174
/*    726 */	add	%xg13,%xg13,%xg9


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f48,%f248,%f62,%f248
/*    726 */	add	%xg14,%l0,%xg14


/*    726 */	sxar2
/*    726 */	add	%xg9,%xg13,%xg9
/*    726 */	fnmsubd,sc	%f134,%f62,%f50,%f50




/*    726 */	sxar2
/*    726 */	fxtod,s	%f36,%f74
/*    726 */	sllx	%xg14,4,%xg13


/*    726 */	sxar2
/*    726 */	sllx	%xg9,4,%xg14
/*    726 */	fselmovd,s	%f108,%f68,%f170,%f68


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f88,%f144,%f88
/*    726 */	ldd	[%xg13+%xg26],%f100


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg26],%f356
/*    726 */	fsubd,s	%f82,%f78,%f82


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f172,%f110,%f172
/*    726 */	ldd	[%xg13+%g5],%f104


/*    726 */	sxar2
/*    726 */	sub	%xg8,%xg27,%xg8
/*    726 */	fcmpgeed,s	%f76,%f144,%f76


/*    726 */	sxar2
/*    726 */	fsubd,s	%f86,%f84,%f86
/*    726 */	frcpad,s	%f46,%f90


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f48,%f48
/*    726 */	ldx	[%xg25+%fp],%xg9


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f248,%f248,%f94
/*    726 */	ldd	[%xg14+%g5],%f360


/*    726 */	sxar2
/*    726 */	fmuld,s	%f248,%f248,%f96
/*    726 */	and	%xg8,255,%xg8


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f74,%f74
/*    726 */	sllx	%xg8,4,%xg8


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f50,%f230,%f230
/*    726 */	ldd	[%xg8+%xg19],%f118


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+32],%f246
/*    726 */	fmaddd,sc	%f142,%f180,%f70,%f70


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f68,%f88,%f68
/*    726 */	fmaddd,sc	%f136,%f58,%f138,%f98


/*    726 */	sxar2
/*    726 */	sub	%xg9,%xg27,%xg9
/*    726 */	fmaddd,s	%f34,%f82,%f78,%f82


/*    726 */	sxar2
/*    726 */	ldd,s	[%l5+%g2],%f106
/*    726 */	fselmovd,s	%f148,%f172,%f76,%f172



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f66,%f64,%f34
/*    726 */	fmaddd,s	%f220,%f60,%f124,%f60


/*    726 */	sxar2
/*    726 */	and	%xg9,255,%xg9
/*    726 */	fnmsubd,s	%f90,%f46,%f62,%f46


/*    726 */	sxar2
/*    726 */	ldd,s	[%l5+%g1],%f110
/*    726 */	std	%f250,[%xg28+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f174,%f86,%f84,%f174
/*    726 */	fmaddd,s	%f94,%f48,%f48,%f94




/*    726 */	sxar2
/*    726 */	std	%f506,[%g4+%fp]
/*    726 */	sllx	%xg9,4,%xg9


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f96,%f96,%f248,%f96
/*    726 */	fmaddd,sc	%f146,%f50,%f230,%f50



/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f68,%f68
/*    726 */	fsubd,s	%f104,%f100,%f104


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg19],%f374
/*    726 */	std	%f80,[%xg29+%fp]


/*    726 */	sxar2
/*    726 */	fsubd,s	%f82,%f106,%f82
/*    726 */	fmuld,s	%f184,%f90,%f90


/*    726 */	sxar2
/*    726 */	std	%f336,[%g3+%fp]
/*    726 */	add	%xg8,8,%xg8


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f172,%f172
/*    726 */	fsubd,s	%f34,%f110,%f34


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg19],%f158
/*    726 */	fmaddd,s	%f46,%f46,%f46,%f112


/*    726 */	sxar2
/*    726 */	fmuld,s	%f46,%f46,%f114
/*    726 */	fdtox,s	%f98,%f98


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f200,%f128,%f130,%f200
/*    726 */	ldx	[%xg28+%fp],%l1



/*    726 */	sxar2
/*    726 */	ldx	[%g4+%fp],%xg8
/*    726 */	add	%xg9,8,%xg9


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f180,%f70,%f180
/*    726 */	fmaddd,s	%f220,%f60,%f132,%f60


/*    726 */	sxar2
/*    726 */	fmuld,s	%f118,%f220,%f220
/*    726 */	fmaddd,s	%f246,%f104,%f100,%f104


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg19],%f414
/*    726 */	fmaddd,s	%f96,%f94,%f48,%f96


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f68,%f82,%f106,%f68
/*    726 */	ldx	[%xg29+%fp],%l2


/*    726 */	sxar2
/*    726 */	sub	%l1,%xg27,%l1
/*    726 */	fmaddd,sc	%f150,%f50,%f152,%f122


/*    726 */	sxar2
/*    726 */	ldx	[%g3+%fp],%xg9
/*    726 */	fmaddd,s	%f172,%f34,%f110,%f172



/*    726 */	sxar2
/*    726 */	sub	%xg8,%xg27,%l0
/*    726 */	and	%l1,255,%xg8


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f90,%f90,%f112
/*    726 */	fmaddd,s	%f114,%f114,%f46,%f114


/*    726 */	sxar2
/*    726 */	std	%f174,[%xg15+16]
/*    726 */	fmaddd,s	%f240,%f238,%f226,%f240

/*    726 */	and	%l0,255,%l0

/*    726 */	sxar1
/*    726 */	sllx	%xg8,4,%xg8


/*    726 */	sllx	%l0,4,%l0


/*    726 */	sxar2
/*    726 */	fxtod,s	%f98,%f154
/*    726 */	sub	%l2,%xg27,%l2


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f180,%f152,%f156
/*    726 */	std	%f430,[%xg15+24]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f220,%f60,%f158,%f220
/*    726 */	sub	%xg9,%xg27,%xg9


/*    726 */	sxar2
/*    726 */	frcpad,s	%f104,%f160
/*    726 */	std,s	%f68,[%l5+%g2]


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f200,%f140,%f108,%f200
/*    726 */	add	%xg17,32,%l1


/*    726 */	sxar2
/*    726 */	std,s	%f172,[%l5+%g1]
/*    726 */	fcmpleed,s	%f96,%f92,%f162


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f122,%f124,%f122
/*    726 */	fmaddd,s	%f114,%f112,%f90,%f114

/*    726 */	and	%l2,255,%l2


/*    726 */	sxar2
/*    726 */	and	%xg9,255,%l3
/*    726 */	ldd	[%xg8+%xg19],%f168


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg19],%f424
/*    726 */	sllx	%l2,4,%xg9

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg19],%f170
/*    726 */	fmaddd,s	%f180,%f156,%f124,%f156


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg19],%f426
/*    726 */	ldd	[%xg30+%xg20],%f176


/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%xg20],%f432
/*    726 */	faddd,s	%f118,%f220,%f118


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f160,%f104,%f62,%f104
/*    726 */	ldd	[%xg30+%o7],%f178


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f200,%f126,%f62,%f200
/*    726 */	ldd	[%xg31+%o7],%f434


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f96,%f162,%f164
/*    726 */	fpmaddx,s	%f250,%f128,%f130,%f250

/*    726 */	sxar1
/*    726 */	add	%xg8,8,%xg8

/*    726 */	add	%l0,8,%l0



/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg19],%f190
/*    726 */	fmaddd,s	%f50,%f122,%f132,%f122


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg19],%f446
/*    726 */	fcmpleed,s	%f114,%f92,%f166



/*    726 */	sxar2
/*    726 */	fmuld,s	%f168,%f50,%f50
/*    726 */	fpmaddx,s	%f80,%f128,%f130,%f80

/*    726 */	sxar1
/*    726 */	add	%xg9,8,%xg9

/*    726 */	add	%l3,8,%l3


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg19],%f192
/*    726 */	fmaddd,s	%f180,%f156,%f132,%f156


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg19],%f448
/*    726 */	fmuld,s	%f170,%f180,%f180


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f104,%f104,%f104,%f172
/*    726 */	fnmsubd,sc	%f134,%f62,%f154,%f154




/*    726 */	sxar2
/*    726 */	fmuld,s	%f104,%f104,%f60
/*    726 */	fmuld,s	%f200,%f118,%f200


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f240,%f92,%f174
/*    726 */	fsubd,s	%f178,%f176,%f178



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f164,%f138,%f186
/*    726 */	fselmovd,s	%f108,%f114,%f166,%f188



/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o5],%f206
/*    726 */	ldd	[%xg11+%o5],%f462


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f250,%f140,%f108,%f250
/*    726 */	fmaddd,s	%f50,%f122,%f190,%f50


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg21],%f204
/*    726 */	ldd	[%xg11+%xg21],%f460


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f80,%f140,%f108,%f80
/*    726 */	fmaddd,s	%f180,%f156,%f192,%f180


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o4],%f208
/*    726 */	ldd	[%xg14+%o4],%f464


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f154,%f58,%f58
/*    726 */	fmuld,s	%f184,%f160,%f160


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg22],%f210
/*    726 */	fselmovd,s	%f108,%f200,%f54,%f200


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg22],%f466
/*    726 */	fcmpgeed,s	%f102,%f144,%f102


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f216,%f178,%f176,%f178
/*    726 */	fdtox,s	%f186,%f186


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f188,%f138,%f202
/*    726 */	faddd,s	%f168,%f50,%f168


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f250,%f126,%f62,%f250
/*    726 */	ldsw	[%xg12+-4008],%xg8


/*    726 */	sxar2
/*    726 */	ldsw	[%xg12+-4004],%xg9
/*    726 */	faddd,s	%f170,%f180,%f170






/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f80,%f126,%f62,%f80
/*    726 */	ldd	[%xg6+%o3],%f226


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o3],%f482
/*    726 */	fmaddd,s	%f172,%f160,%f160,%f172



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f154,%f58,%f154
/*    726 */	ldd	[%xg6+%o2],%f224


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o2],%f480
/*    726 */	fsubd,s	%f206,%f204,%f206


/*    726 */	sxar2
/*    726 */	fsubd,s	%f210,%f208,%f210
/*    726 */	std	%f98,[%xg23+%fp]


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f200,%f102,%f200
/*    726 */	frcpad,s	%f178,%f214


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg24],%f234
/*    726 */	ldd	[%xg7+%xg24],%f490


/*    726 */	sxar2
/*    726 */	fxtod,s	%f186,%f218
/*    726 */	fdtox,s	%f202,%f202


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%o0],%f236
/*    726 */	fmaddd,s	%f60,%f60,%f104,%f60


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o0],%f492
/*    726 */	fmuld,s	%f250,%f168,%f250


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f240,%f174,%f220
/*    726 */	srl	%xg8,%g0,%xg8




/*    726 */	sxar2
/*    726 */	fmuld,s	%f80,%f170,%f80
/*    726 */	fmaddd,s	%f56,%f40,%f38,%f40


/*    726 */	sxar2
/*    726 */	srl	%xg9,%g0,%xg9
/*    726 */	fmaddd,sc	%f150,%f154,%f152,%f222


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg15+32],%f238
/*    726 */	std	%f354,[%xg25+%fp]


/*    726 */	sxar2
/*    726 */	add	%xg8,%xg8,%l0
/*    726 */	fsubd,s	%f226,%f224,%f226


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f246,%f210,%f208,%f210
/*    726 */	ldx	[%xg23+%fp],%xg6


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f200,%f200
/*    726 */	add	%xg9,%xg9,%xg7


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f214,%f178,%f62,%f178
/*    726 */	add	%l0,%xg8,%xg8


/*    726 */	sxar2
/*    726 */	add	%xg7,%xg9,%xg9
/*    726 */	fnmsubd,sc	%f134,%f62,%f218,%f218




/*    726 */	sxar2
/*    726 */	fxtod,s	%f202,%f230
/*    726 */	sllx	%xg8,4,%xg8


/*    726 */	sxar2
/*    726 */	sllx	%xg9,4,%xg9
/*    726 */	fselmovd,s	%f108,%f250,%f228,%f250


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f198,%f144,%f198
/*    726 */	ldd	[%xg8+%xg26],%f38


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg26],%f294
/*    726 */	fsubd,s	%f236,%f234,%f236


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f80,%f44,%f80
/*    726 */	ldd	[%xg8+%g5],%f42


/*    726 */	sxar2
/*    726 */	sub	%xg6,%xg27,%xg6
/*    726 */	fcmpgeed,s	%f116,%f144,%f116


/*    726 */	sxar2
/*    726 */	fsubd,s	%f40,%f238,%f40
/*    726 */	frcpad,s	%f210,%f244


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f214,%f214
/*    726 */	ldx	[%xg25+%fp],%xg7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f178,%f178,%f178,%f248
/*    726 */	ldd	[%xg9+%g5],%f298


/*    726 */	sxar2
/*    726 */	fmuld,s	%f178,%f178,%f254
/*    726 */	and	%xg6,255,%xg6


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f230,%f230
/*    726 */	sllx	%xg6,4,%xg6


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f218,%f164,%f164
/*    726 */	ldd	[%xg6+%xg19],%f50


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+48],%f34
/*    726 */	fmaddd,sc	%f142,%f74,%f252,%f252


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f250,%f198,%f250
/*    726 */	fmaddd,sc	%f136,%f220,%f138,%f32


/*    726 */	sxar2
/*    726 */	sub	%xg7,%xg27,%xg7
/*    726 */	fmaddd,s	%f56,%f236,%f234,%f236


/*    726 */	sxar2
/*    726 */	ldd,s	[%l1+%g2],%f44
/*    726 */	fselmovd,s	%f148,%f80,%f116,%f80



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f226,%f224,%f56
/*    726 */	fmaddd,s	%f154,%f222,%f124,%f222


/*    726 */	sxar2
/*    726 */	and	%xg7,255,%xg7
/*    726 */	fnmsubd,s	%f244,%f210,%f62,%f210


/*    726 */	sxar2
/*    726 */	ldd,s	[%l1+%g1],%f46
/*    726 */	std	%f186,[%xg28+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f200,%f40,%f238,%f200
/*    726 */	fmaddd,s	%f248,%f214,%f214,%f248




/*    726 */	sxar2
/*    726 */	std	%f442,[%g4+%fp]
/*    726 */	sllx	%xg7,4,%xg7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f254,%f254,%f178,%f254
/*    726 */	fmaddd,sc	%f146,%f218,%f164,%f218



/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f250,%f250
/*    726 */	fsubd,s	%f42,%f38,%f42


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg19],%f306
/*    726 */	std	%f36,[%xg29+%fp]


/*    726 */	sxar2
/*    726 */	fsubd,s	%f236,%f44,%f236
/*    726 */	fmuld,s	%f184,%f244,%f244


/*    726 */	sxar2
/*    726 */	std	%f292,[%g3+%fp]
/*    726 */	add	%xg6,8,%xg6


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f80,%f80
/*    726 */	fsubd,s	%f56,%f46,%f56


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg19],%f66
/*    726 */	fmaddd,s	%f210,%f210,%f210,%f48


/*    726 */	sxar2
/*    726 */	fmuld,s	%f210,%f210,%f72
/*    726 */	fdtox,s	%f32,%f32


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f98,%f128,%f130,%f98
/*    726 */	ldx	[%xg28+%fp],%l3


/*    726 */	ldx	[%g4+%fp],%l2


/*    726 */	sxar2
/*    726 */	add	%xg7,8,%xg7
/*    726 */	fmaddd,sc	%f146,%f74,%f252,%f74


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f154,%f222,%f132,%f222
/*    726 */	fmuld,s	%f50,%f154,%f154


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f42,%f38,%f42
/*    726 */	ldd	[%xg7+%xg19],%f322


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f254,%f248,%f214,%f254
/*    726 */	fmaddd,s	%f250,%f236,%f44,%f250


/*    726 */	sxar2
/*    726 */	ldx	[%xg29+%fp],%xg7
/*    726 */	sub	%l3,%xg27,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f218,%f152,%f54
/*    726 */	ldx	[%g3+%fp],%xg6



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f80,%f56,%f46,%f80
/*    726 */	sub	%l2,%xg27,%l2

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f48,%f244,%f244,%f48
/*    726 */	fmaddd,s	%f72,%f72,%f210,%f72


/*    726 */	sxar2
/*    726 */	std	%f200,[%xg15+32]
/*    726 */	fmaddd,s	%f60,%f172,%f160,%f60

/*    726 */	and	%l2,255,%l2

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sllx	%l2,4,%l2


/*    726 */	sxar2
/*    726 */	fxtod,s	%f32,%f58
/*    726 */	sub	%xg7,%xg27,%xg7


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f74,%f152,%f64
/*    726 */	std	%f456,[%xg15+40]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f154,%f222,%f66,%f154
/*    726 */	sub	%xg6,%xg27,%xg6


/*    726 */	sxar2
/*    726 */	frcpad,s	%f42,%f68
/*    726 */	std,s	%f250,[%l1+%g2]


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f98,%f140,%f108,%f98
/*    726 */	add	%xg17,48,%l0


/*    726 */	sxar2
/*    726 */	std,s	%f80,[%l1+%g1]
/*    726 */	fcmpleed,s	%f254,%f92,%f70


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f218,%f54,%f124,%f54
/*    726 */	fmaddd,s	%f72,%f48,%f244,%f72


/*    726 */	sxar2
/*    726 */	and	%xg7,255,%l1
/*    726 */	and	%xg6,255,%xg7


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg19],%f78
/*    726 */	ldd	[%l2+%xg19],%f334


/*    726 */	sxar2
/*    726 */	sllx	%l1,4,%xg6
/*    726 */	sllx	%xg7,4,%xg7


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg19],%f80
/*    726 */	fmaddd,s	%f74,%f64,%f124,%f64


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg19],%f336
/*    726 */	ldd	[%xg13+%xg20],%f86


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg20],%f342
/*    726 */	faddd,s	%f50,%f154,%f50

/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f68,%f42,%f62,%f42
/*    726 */	ldd	[%xg13+%o7],%f88
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f98,%f126,%f62,%f98
/*    726 */	ldd	[%xg14+%o7],%f344
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f254,%f70,%f76
/*    726 */	fpmaddx,s	%f186,%f128,%f130,%f186
/*    726 */	add	%l3,8,%l3
/*    726 */	add	%l2,8,%l2
/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg19],%f110
/*    726 */	fmaddd,s	%f218,%f54,%f132,%f54
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg19],%f366
/*    726 */	fcmpleed,s	%f72,%f92,%f104
/*    726 */	sxar2
/*    726 */	fmuld,s	%f78,%f218,%f218
/*    726 */	fpmaddx,s	%f36,%f128,%f130,%f36
/*    726 */	sxar2
/*    726 */	add	%xg6,8,%xg6
/*    726 */	add	%xg7,8,%xg7
/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg19],%f112
/*    726 */	fmaddd,s	%f74,%f64,%f132,%f64
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg19],%f368
/*    726 */	fmuld,s	%f80,%f74,%f74
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f42,%f42,%f42,%f84
/*    726 */	fnmsubd,sc	%f134,%f62,%f58,%f58
/*    726 */	sxar2
/*    726 */	fmuld,s	%f42,%f42,%f82
/*    726 */	fmuld,s	%f98,%f50,%f98
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f60,%f92,%f90
/*    726 */	fsubd,s	%f88,%f86,%f88
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f76,%f138,%f100
/*    726 */	fselmovd,s	%f108,%f72,%f104,%f106
/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%o5],%f118
/*    726 */	ldd	[%xg31+%o5],%f374
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f186,%f140,%f108,%f186
/*    726 */	fmaddd,s	%f218,%f54,%f110,%f218
/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%xg21],%f116
/*    726 */	ldd	[%xg31+%xg21],%f372
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f36,%f140,%f108,%f36
/*    726 */	fmaddd,s	%f74,%f64,%f112,%f74
/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o4],%f122
/*    726 */	ldd	[%xg9+%o4],%f378
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f58,%f220,%f220
/*    726 */	fmuld,s	%f184,%f68,%f68
/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg22],%f154
/*    726 */	fselmovd,s	%f108,%f98,%f242,%f98
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg22],%f410
/*    726 */	fcmpgeed,s	%f52,%f144,%f52
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f246,%f88,%f86,%f88
/*    726 */	fdtox,s	%f100,%f100
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f106,%f138,%f164
/*    726 */	faddd,s	%f78,%f218,%f78
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f186,%f126,%f62,%f186
/*    726 */	ldsw	[%xg12+-4000],%xg7
/*    726 */	sxar2
/*    726 */	ldsw	[%xg12+-3996],%l1
/*    726 */	faddd,s	%f80,%f74,%f80
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f36,%f126,%f62,%f36
/*    726 */	ldd	[%xg10+%o3],%f180
/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%o3],%f436
/*    726 */	fmaddd,s	%f84,%f68,%f68,%f84
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f58,%f220,%f58
/*    726 */	ldd	[%xg10+%o2],%f176
/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%o2],%f432
/*    726 */	fsubd,s	%f118,%f116,%f118
/*    726 */	sxar2
/*    726 */	fsubd,s	%f154,%f122,%f154
/*    726 */	std	%f32,[%xg23+%fp]
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f98,%f52,%f98
/*    726 */	frcpad,s	%f88,%f156
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg24],%f190
/*    726 */	ldd	[%xg11+%xg24],%f446
/*    726 */	sxar2
/*    726 */	fxtod,s	%f100,%f168
/*    726 */	fdtox,s	%f164,%f164
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o0],%f192
/*    726 */	fmaddd,s	%f82,%f82,%f42,%f82
/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%o0],%f448
/*    726 */	fmuld,s	%f186,%f78,%f186
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f60,%f90,%f170
/*    726 */	srl	%xg7,%g0,%xg7
/*    726 */	sxar2
/*    726 */	fmuld,s	%f36,%f80,%f36
/*    726 */	fmaddd,s	%f120,%f206,%f204,%f206
/*    726 */	srl	%l1,%g0,%l1
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f58,%f152,%f172
/*    726 */	ldd,s	[%xg15+48],%f194
/*    726 */	sxar2
/*    726 */	std	%f288,[%xg25+%fp]
/*    726 */	add	%xg7,%xg7,%xg11
/*    726 */	sxar2
/*    726 */	fsubd,s	%f180,%f176,%f180
/*    726 */	fmaddd,s	%f34,%f154,%f122,%f154
/*    726 */	sxar2
/*    726 */	ldx	[%xg23+%fp],%xg10
/*    726 */	fsubd,s	%f62,%f98,%f98
/*    726 */	sxar2
/*    726 */	add	%l1,%l1,%xg6
/*    726 */	fnmsubd,s	%f156,%f88,%f62,%f88
/*    726 */	sxar2
/*    726 */	add	%xg11,%xg7,%xg11
/*    726 */	add	%xg6,%l1,%xg7
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f168,%f168
/*    726 */	fxtod,s	%f164,%f182
/*    726 */	sxar2
/*    726 */	sllx	%xg11,4,%xg6
/*    726 */	sllx	%xg7,4,%xg7
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f186,%f162,%f186
/*    726 */	fcmpgeed,s	%f96,%f144,%f96
/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg26],%f200
/*    726 */	ldd	[%xg7+%xg26],%f456
/*    726 */	sxar2
/*    726 */	fsubd,s	%f192,%f190,%f192
/*    726 */	fselmovd,s	%f108,%f36,%f232,%f36
/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%g5],%f204
/*    726 */	sub	%xg10,%xg27,%xg10
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f212,%f144,%f212
/*    726 */	fsubd,s	%f206,%f194,%f206
/*    726 */	sxar2
/*    726 */	frcpad,s	%f154,%f196
/*    726 */	fmuld,s	%f184,%f156,%f156
/*    726 */	sxar2
/*    726 */	ldx	[%xg25+%fp],%xg11
/*    726 */	fmaddd,s	%f88,%f88,%f88,%f198
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%g5],%f460
/*    726 */	fmuld,s	%f88,%f88,%f66
/*    726 */	sxar2
/*    726 */	and	%xg10,255,%xg10
/*    726 */	fnmsubd,sc	%f134,%f62,%f182,%f182
/*    726 */	sxar2
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	fmaddd,sc	%f142,%f168,%f76,%f76
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg19],%f214
/*    726 */	ldd,s	[%xg16+64],%f56
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f230,%f188,%f188
/*    726 */	fselmovd,s	%f148,%f186,%f96,%f186
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f170,%f138,%f178
/*    726 */	sub	%xg11,%xg27,%xg11
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f120,%f192,%f190,%f192
/*    726 */	ldd,s	[%l0+%g2],%f208
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f36,%f212,%f36
/*    726 */	fmaddd,s	%f120,%f180,%f176,%f120
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f172,%f124,%f172
/*    726 */	and	%xg11,255,%xg11
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f196,%f154,%f62,%f154
/*    726 */	ldd,s	[%l0+%g1],%f210
/*    726 */	sxar2
/*    726 */	std	%f100,[%xg28+%fp]
/*    726 */	fmaddd,s	%f98,%f206,%f194,%f98
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f198,%f156,%f156,%f198
/*    726 */	std	%f356,[%g4+%fp]
/*    726 */	sxar2
/*    726 */	sllx	%xg11,4,%xg11
/*    726 */	fmaddd,s	%f66,%f66,%f88,%f66
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f168,%f76,%f168
/*    726 */	fsubd,s	%f62,%f186,%f186
/*    726 */	sxar2
/*    726 */	fsubd,s	%f204,%f200,%f204
/*    726 */	ldd	[%xg11+%xg19],%f470
/*    726 */	sxar2
/*    726 */	std	%f202,[%xg29+%fp]
/*    726 */	fsubd,s	%f192,%f208,%f192
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f196,%f196
/*    726 */	std	%f458,[%g3+%fp]
/*    726 */	sxar2
/*    726 */	add	%xg10,8,%xg10
/*    726 */	fsubd,s	%f62,%f36,%f36
/*    726 */	sxar2
/*    726 */	fsubd,s	%f120,%f210,%f120
/*    726 */	ldd	[%xg10+%xg19],%f222
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f154,%f154,%f154,%f212
/*    726 */	fmuld,s	%f154,%f154,%f76
/*    726 */	sxar2
/*    726 */	fdtox,s	%f178,%f178
/*    726 */	fpmaddx,s	%f32,%f128,%f130,%f32
/*    726 */	sxar1
/*    726 */	ldx	[%xg28+%fp],%xg10
/*    726 */	ldx	[%g4+%fp],%l3
/*    726 */	sxar2
/*    726 */	add	%xg11,8,%xg11
/*    726 */	fmaddd,sc	%f146,%f230,%f188,%f230
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f172,%f132,%f172
/*    726 */	fmuld,s	%f214,%f58,%f58
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f204,%f200,%f204
/*    726 */	ldd	[%xg11+%xg19],%f478
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f66,%f198,%f156,%f66
/*    726 */	fmaddd,s	%f186,%f192,%f208,%f186
/*    726 */	sxar2
/*    726 */	ldx	[%xg29+%fp],%l2
/*    726 */	sub	%xg10,%xg27,%xg10
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f168,%f152,%f218
/*    726 */	ldx	[%g3+%fp],%xg11
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f36,%f120,%f210,%f36
/*    726 */	sub	%l3,%xg27,%l3
/*    726 */	sxar2
/*    726 */	and	%xg10,255,%xg10
/*    726 */	fmaddd,s	%f212,%f196,%f196,%f212
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f76,%f76,%f154,%f76
/*    726 */	std	%f98,[%xg15+48]
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f82,%f84,%f68,%f82
/*    726 */	and	%l3,255,%l3
/*    726 */	sxar1
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	sllx	%l3,4,%l3
/*    726 */	sxar2
/*    726 */	fxtod,s	%f178,%f192
/*    726 */	sub	%l2,%xg27,%l2
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f230,%f152,%f220
/*    726 */	std	%f354,[%xg15+56]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f172,%f222,%f58
/*    726 */	sub	%xg11,%xg27,%xg11
/*    726 */	sxar2
/*    726 */	frcpad,s	%f204,%f224
/*    726 */	std,s	%f186,[%l0+%g2]
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f32,%f140,%f108,%f32
/*    726 */	add	%xg17,64,%l1
/*    726 */	sxar2
/*    726 */	std,s	%f36,[%l0+%g1]
/*    726 */	fcmpleed,s	%f66,%f92,%f94
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f168,%f218,%f124,%f218
/*    726 */	fmaddd,s	%f76,%f212,%f196,%f76
/*    726 */	and	%l2,255,%l2
/*    726 */	sxar2
/*    726 */	and	%xg11,255,%xg11
/*    726 */	ldd	[%xg10+%xg19],%f228
/*    726 */	sxar1
/*    726 */	ldd	[%l3+%xg19],%f484
/*    726 */	sllx	%l2,4,%l2
/*    726 */	sxar2
/*    726 */	sllx	%xg11,4,%xg11
/*    726 */	ldd	[%l2+%xg19],%f232
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f230,%f220,%f124,%f220
/*    726 */	ldd	[%xg11+%xg19],%f488
/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg20],%f236
/*    726 */	ldd	[%xg9+%xg20],%f492
/*    726 */	sxar2
/*    726 */	faddd,s	%f214,%f58,%f214
/*    726 */	fnmsubd,s	%f224,%f204,%f62,%f204
/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o7],%f238
/*    726 */	fpmaddx,s	%f32,%f126,%f62,%f32
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o7],%f494
/*    726 */	fselmovd,s	%f108,%f66,%f94,%f226
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f100,%f128,%f130,%f100
/*    726 */	add	%xg10,8,%xg10
/*    726 */	add	%l3,8,%l3
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg19],%f242
/*    726 */	fmaddd,s	%f168,%f218,%f132,%f218
/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg19],%f498
/*    726 */	fcmpleed,s	%f76,%f92,%f110
/*    726 */	sxar2
/*    726 */	fmuld,s	%f228,%f168,%f168
/*    726 */	fpmaddx,s	%f202,%f128,%f130,%f202
/*    726 */	add	%l2,8,%l2
/*    726 */	sxar2
/*    726 */	add	%xg11,8,%xg11
/*    726 */	ldd	[%l2+%xg19],%f244
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f230,%f220,%f132,%f220
/*    726 */	ldd	[%xg11+%xg19],%f500
/*    726 */	sxar2
/*    726 */	fmuld,s	%f232,%f230,%f230
/*    726 */	fmaddd,s	%f204,%f204,%f204,%f234
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f192,%f192
/*    726 */	fmuld,s	%f204,%f204,%f102
/*    726 */	sxar2
/*    726 */	fmuld,s	%f32,%f214,%f32
/*    726 */	fcmpleed,s	%f82,%f92,%f122
/*    726 */	sxar2
/*    726 */	fsubd,s	%f238,%f236,%f238
/*    726 */	fmaddd,sc	%f136,%f226,%f138,%f162
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f76,%f110,%f160
/*    726 */	ldd	[%xg13+%o5],%f158
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o5],%f414
/*    726 */	fpmaddxhi,s	%f100,%f140,%f108,%f100
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f168,%f218,%f242,%f168
/*    726 */	ldd	[%xg13+%xg21],%f156
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg21],%f412
/*    726 */	fpmaddxhi,s	%f202,%f140,%f108,%f202
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f230,%f220,%f244,%f230
/*    726 */	ldd	[%xg6+%o4],%f248
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o4],%f504
/*    726 */	fmaddd,sc	%f142,%f192,%f170,%f170
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f224,%f224
/*    726 */	ldd	[%xg6+%xg22],%f250
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f32,%f174,%f32
/*    726 */	ldd	[%xg7+%xg22],%f506
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f240,%f144,%f240
/*    726 */	fmaddd,s	%f34,%f238,%f236,%f238
/*    726 */	sxar2
/*    726 */	fdtox,s	%f162,%f162
/*    726 */	fmaddd,sc	%f136,%f160,%f138,%f172
/*    726 */	sxar2
/*    726 */	add	%xg12,40,%xg12
/*    726 */	faddd,s	%f228,%f168,%f228
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f100,%f126,%f62,%f100
/*    726 */	ldsw	[%xg12+-4032],%xg10
/*    726 */	sxar2
/*    726 */	ldsw	[%xg12+-4028],%xg11
/*    726 */	faddd,s	%f232,%f230,%f232
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f202,%f126,%f62,%f202
/*    726 */	ldd	[%xg30+%o3],%f40
/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%o3],%f296
/*    726 */	fmaddd,s	%f234,%f224,%f224,%f234
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f192,%f170,%f192
/*    726 */	ldd	[%xg30+%o2],%f38
/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%o2],%f294
/*    726 */	fsubd,s	%f158,%f156,%f158
/*    726 */	sxar2
/*    726 */	fsubd,s	%f250,%f248,%f250
/*    726 */	std	%f178,[%xg23+%fp]
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f32,%f240,%f32
/*    726 */	frcpad,s	%f238,%f252
/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%xg24],%f42
/*    726 */	ldd	[%xg31+%xg24],%f298
/*    726 */	sxar2
/*    726 */	fxtod,s	%f162,%f180
/*    726 */	fdtox,s	%f172,%f172
/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%o0],%f44
/*    726 */	fmaddd,s	%f102,%f102,%f204,%f102
/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%o0],%f300
/*    726 */	fmuld,s	%f100,%f228,%f100
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f82,%f122,%f168
/*    726 */	srl	%xg10,%g0,%xg10
/*    726 */	sxar2
/*    726 */	fmuld,s	%f202,%f232,%f202
/*    726 */	fmaddd,s	%f216,%f118,%f116,%f118
/*    726 */	sxar2
/*    726 */	srl	%xg11,%g0,%xg11
/*    726 */	fmaddd,sc	%f150,%f192,%f152,%f36
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg15+64],%f46
/*    726 */	std	%f434,[%xg25+%fp]
/*    726 */	sxar2
/*    726 */	add	%xg10,%xg10,%l0
/*    726 */	fsubd,s	%f40,%f38,%f40
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f250,%f248,%f250
/*    726 */	ldx	[%xg23+%fp],%xg30
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f32,%f32
/*    726 */	add	%xg11,%xg11,%xg31
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f252,%f238,%f62,%f238
/*    726 */	add	%l0,%xg10,%xg10
/*    726 */	sxar2
/*    726 */	add	%xg31,%xg11,%xg11
/*    726 */	fnmsubd,sc	%f134,%f62,%f180,%f180
/*    726 */	sxar2
/*    726 */	fxtod,s	%f172,%f186
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	sxar2
/*    726 */	sllx	%xg11,4,%xg11
/*    726 */	fselmovd,s	%f108,%f100,%f70,%f100
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f254,%f144,%f254
/*    726 */	ldd	[%xg10+%xg26],%f50
/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%xg26],%f306
/*    726 */	fsubd,s	%f44,%f42,%f44
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f202,%f166,%f202
/*    726 */	ldd	[%xg10+%g5],%f96
/*    726 */	sxar2
/*    726 */	sub	%xg30,%xg27,%xg31
/*    726 */	fcmpgeed,s	%f114,%f144,%f114
/*    726 */	sxar2
/*    726 */	fsubd,s	%f118,%f46,%f118
/*    726 */	frcpad,s	%f250,%f84
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f252,%f252
/*    726 */	ldx	[%xg25+%fp],%xg30
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f238,%f238,%f48
/*    726 */	ldd	[%xg11+%g5],%f352
/*    726 */	sxar2
/*    726 */	fmuld,s	%f238,%f238,%f88
/*    726 */	and	%xg31,255,%xg31
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f186,%f186
/*    726 */	sllx	%xg31,4,%xg31
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f180,%f226,%f226
/*    726 */	add	%xg16,80,%xg16
/*    726 */	sxar2
/*    726 */	ldd	[%xg31+%xg19],%f194
/*    726 */	ldd,s	[%xg16],%f120
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f182,%f106,%f106
/*    726 */	fselmovd,s	%f148,%f100,%f254,%f100
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f168,%f138,%f174
/*    726 */	sub	%xg30,%xg27,%xg30
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f216,%f44,%f42,%f44
/*    726 */	ldd,s	[%l1+%g2],%f52
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f202,%f114,%f202
/*    726 */	fmaddd,s	%f216,%f40,%f38,%f216
/*    726 */	sxar2
/*    726 */	fmovd,s	%f162,%f230
/*    726 */	fmaddd,s	%f192,%f36,%f124,%f36
/*    726 */	sxar2
/*    726 */	and	%xg30,255,%xg30
/*    726 */	fnmsubd,s	%f84,%f250,%f62,%f250
/*    726 */	sxar2
/*    726 */	ldd,s	[%l1+%g1],%f54
/*    726 */	std	%f230,[%xg28+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f118,%f46,%f32
/*    726 */	fmaddd,s	%f48,%f252,%f252,%f48
/*    726 */	sxar2
/*    726 */	std	%f486,[%g4+%fp]
/*    726 */	sllx	%xg30,4,%xg30
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f88,%f88,%f238,%f88
/*    726 */	fmaddd,sc	%f146,%f180,%f226,%f180
/*    726 */	sxar2
/*    726 */	fmovd,s	%f164,%f232
/*    726 */	fsubd,s	%f62,%f100,%f100
/*    726 */	sxar2
/*    726 */	fsubd,s	%f96,%f50,%f96
/*    726 */	ldd	[%xg30+%xg19],%f450
/*    726 */	sxar2
/*    726 */	std	%f232,[%xg29+%fp]
/*    726 */	fsubd,s	%f44,%f52,%f44
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f84,%f84
/*    726 */	std	%f488,[%g3+%fp]
/*    726 */	sxar2
/*    726 */	add	%xg31,8,%xg31
/*    726 */	fsubd,s	%f62,%f202,%f202
/*    726 */	sxar2
/*    726 */	fsubd,s	%f216,%f54,%f216
/*    726 */	ldd	[%xg31+%xg19],%f58
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f250,%f250,%f250,%f112
/*    726 */	fmuld,s	%f250,%f250,%f116
/*    726 */	sxar2
/*    726 */	fdtox,s	%f174,%f174
/*    726 */	fpmaddx,s	%f178,%f128,%f130,%f178
/*    726 */	sxar2
/*    726 */	ldx	[%xg28+%fp],%l4
/*    726 */	ldx	[%g4+%fp],%xg31
/*    726 */	sxar2
/*    726 */	add	%xg30,8,%xg30
/*    726 */	fmaddd,sc	%f146,%f182,%f106,%f182
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f192,%f36,%f132,%f36
/*    726 */	fmuld,s	%f194,%f192,%f192
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f120,%f96,%f50,%f96
/*    726 */	ldd	[%xg30+%xg19],%f314
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f88,%f48,%f252,%f88
/*    726 */	fmaddd,s	%f100,%f44,%f52,%f100
/*    726 */	sxar2
/*    726 */	ldx	[%xg29+%fp],%l0
/*    726 */	sub	%l4,%xg27,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f180,%f152,%f196
/*    726 */	ldx	[%g3+%fp],%xg30
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f216,%f54,%f202
/*    726 */	sub	%xg31,%xg27,%xg31
/*    726 */	and	%l4,255,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f84,%f84,%f112
/*    726 */	fmaddd,s	%f116,%f116,%f250,%f116
/*    726 */	sxar2
/*    726 */	std	%f32,[%xg15+64]
/*    726 */	fmaddd,s	%f102,%f234,%f224,%f102
/*    726 */	sxar1
/*    726 */	and	%xg31,255,%xg31
/*    726 */	sllx	%l4,4,%l4
/*    726 */	sxar2
/*    726 */	sllx	%xg31,4,%xg31
/*    726 */	fxtod,s	%f174,%f188
/*    726 */	sxar2
/*    726 */	sub	%l0,%xg27,%l0
/*    726 */	fmaddd,sc	%f150,%f182,%f152,%f198
/*    726 */	sxar2
/*    726 */	std	%f288,[%xg15+72]
/*    726 */	fmaddd,s	%f192,%f36,%f58,%f192
/*    726 */	sxar2
/*    726 */	sub	%xg30,%xg27,%xg30
/*    726 */	frcpad,s	%f96,%f166
/*    726 */	sxar2
/*    726 */	std,s	%f100,[%l1+%g2]
/*    726 */	fpmaddxhi,s	%f178,%f140,%f108,%f178
/*    726 */	sxar2
/*    726 */	add	%xg17,80,%xg17
/*    726 */	add	%xg15,80,%xg15
/*    726 */	sxar2
/*    726 */	std,s	%f202,[%l1+%g1]
/*    726 */	fcmpleed,s	%f88,%f92,%f170
/*    726 */	sxar2
/*    726 */	sub	%xg18,5,%xg18
/*    726 */	cmp	%xg18,11
/*    726 */	bge,pt	%icc, .L659
	nop


.L844:


/*    726 */	sxar2
/*    726 */	and	%xg30,255,%xg30
/*    726 */	ldd	[%xg6+%xg20],%f206


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f88,%f170,%f202
/*    726 */	fmovd,s	%f174,%f86


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg20],%f462
/*    726 */	ldd	[%xg6+%o7],%f208


/*    726 */	sxar2
/*    726 */	sllx	%xg30,4,%xg30
/*    726 */	fmaddd,s	%f182,%f198,%f124,%f198



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f180,%f196,%f124,%f196
/*    726 */	ldd	[%xg7+%o7],%f464


/*    726 */	sxar2
/*    726 */	add	%xg31,8,%l3
/*    726 */	ldd	[%xg31+%xg19],%f470


/*    726 */	mov	%l0,%l1


/*    726 */	sxar2
/*    726 */	ldd	[%l4+%xg19],%f214
/*    726 */	add	%xg30,8,%l5

/*    726 */	sxar1
/*    726 */	ldd	[%xg30+%xg19],%f474


/*    726 */	and	%l1,255,%l1


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f188,%f188
/*    726 */	fpmaddx,s	%f164,%f128,%f130,%f164


/*    726 */	sxar2
/*    726 */	add	%xg16,16,%xg31
/*    726 */	fpmaddx,s	%f162,%f128,%f130,%f162


/*    726 */	sxar2
/*    726 */	add	%xg15,16,%xg16
/*    726 */	sub	%xg18,1,%xg30

/*    726 */	sxar1
/*    726 */	ldd	[%l5+%xg19],%f486


/*    726 */	sllx	%l1,4,%l1


/*    726 */	sxar2
/*    726 */	std	%f86,[%xg23+%fp]
/*    726 */	fmaddd,sc	%f136,%f202,%f138,%f204

/*    726 */	sxar1
/*    726 */	fsubd,s	%f208,%f206,%f208

/*    726 */	add	%l4,8,%l2

/*    726 */	add	%l1,8,%l4


/*    726 */	sxar2
/*    726 */	std	%f342,[%xg25+%fp]
/*    726 */	fmaddd,s	%f182,%f198,%f132,%f198


/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg19],%f218
/*    726 */	fmaddd,s	%f180,%f196,%f132,%f196


/*    726 */	sxar2
/*    726 */	fmuld,s	%f214,%f180,%f180
/*    726 */	ldd	[%l4+%xg19],%f230




/*    726 */	sxar2
/*    726 */	fmovd,s	%f172,%f98
/*    726 */	faddd,s	%f194,%f192,%f194


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg19],%f220
/*    726 */	ldd	[%l3+%xg19],%f476



/*    726 */	sxar2
/*    726 */	add	%xg12,8,%l0
/*    726 */	fmaddd,sc	%f142,%f188,%f168,%f168


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f164,%f140,%f108,%f164
/*    726 */	ldd	[%xg13+%xg24],%f36


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f178,%f126,%f62,%f178
/*    726 */	add	%xg17,16,%xg12


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f162,%f140,%f108,%f162
/*    726 */	ldd	[%xg14+%xg24],%f292



/*    726 */	sxar2
/*    726 */	fdtox,s	%f204,%f204
/*    726 */	fmaddd,s	%f56,%f208,%f206,%f208


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o0],%f38
/*    726 */	fmaddd,sc	%f142,%f186,%f160,%f160


/*    726 */	sxar2
/*    726 */	fmuld,s	%f218,%f182,%f182
/*    726 */	ldx	[%xg23+%fp],%xg16


/*    726 */	sxar2
/*    726 */	ldx	[%xg25+%fp],%xg30
/*    726 */	fmaddd,s	%f180,%f196,%f220,%f180


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f166,%f96,%f62,%f96
/*    726 */	ldd	[%xg14+%o0],%f294




/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f102,%f92,%f216
/*    726 */	ldd	[%xg13+%o3],%f252


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o3],%f508
/*    726 */	fcmpgeed,s	%f60,%f144,%f60



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f188,%f168,%f188
/*    726 */	fpmaddx,s	%f164,%f126,%f62,%f164


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o2],%f250
/*    726 */	fmuld,s	%f178,%f194,%f178


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f162,%f126,%f62,%f162
/*    726 */	sub	%xg16,%xg27,%xg16


/*    726 */	sxar2
/*    726 */	sub	%xg30,%xg27,%xg30
/*    726 */	fxtod,s	%f204,%f222



/*    726 */	sxar2
/*    726 */	frcpad,s	%f208,%f226
/*    726 */	and	%xg16,255,%xg16


/*    726 */	sxar2
/*    726 */	std	%f204,[%xg28+%fp]
/*    726 */	and	%xg30,255,%xg30


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f182,%f198,%f230,%f182
/*    726 */	sllx	%xg16,4,%xg16


/*    726 */	sxar2
/*    726 */	std	%f460,[%g4+%fp]
/*    726 */	sllx	%xg30,4,%xg30


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f186,%f160,%f186
/*    726 */	faddd,s	%f214,%f180,%f214


/*    726 */	sxar2
/*    726 */	std	%f98,[%xg29+%fp]
/*    726 */	ldd	[%xg16+%xg19],%f240


/*    726 */	sxar2
/*    726 */	add	%xg16,8,%xg16
/*    726 */	ldd	[%xg30+%xg19],%f496



/*    726 */	sxar2
/*    726 */	fsubd,s	%f38,%f36,%f38
/*    726 */	fmaddd,sc	%f150,%f188,%f152,%f228


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f246,%f158,%f156,%f158
/*    726 */	add	%xg30,8,%l1


/*    726 */	sxar2
/*    726 */	std	%f354,[%g3+%fp]
/*    726 */	ldd	[%xg14+%o2],%f506



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f178,%f90,%f178
/*    726 */	ldd	[%xg16+%xg19],%f50


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f72,%f144,%f72
/*    726 */	fnmsubd,sc	%f134,%f62,%f222,%f222


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f226,%f208,%f62,%f208
/*    726 */	ldd	[%l1+%xg19],%f306



/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o4],%f210
/*    726 */	fmuld,s	%f184,%f226,%f226


/*    726 */	sxar2
/*    726 */	faddd,s	%f218,%f182,%f218
/*    726 */	ldd	[%xg11+%o4],%f466



/*    726 */	sxar2
/*    726 */	fmuld,s	%f162,%f214,%f162
/*    726 */	fmuld,s	%f240,%f188,%f238


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg22],%f212
/*    726 */	fmaddd,sc	%f150,%f186,%f152,%f242


/*    726 */	sxar2
/*    726 */	fsubd,s	%f252,%f250,%f252
/*    726 */	fmaddd,s	%f188,%f228,%f124,%f228


/*    726 */	sxar2
/*    726 */	ldx	[%xg28+%fp],%xg13
/*    726 */	ldx	[%g4+%fp],%xg14


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f96,%f96,%f96,%f40
/*    726 */	ldx	[%xg29+%fp],%xg16


/*    726 */	sxar2
/*    726 */	fmuld,s	%f96,%f96,%f42
/*    726 */	fmuld,s	%f184,%f166,%f166


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f222,%f202,%f202
/*    726 */	fmaddd,s	%f208,%f208,%f208,%f244


/*    726 */	sxar2
/*    726 */	ldx	[%g3+%fp],%xg30
/*    726 */	ldd	[%xg11+%xg22],%f468



/*    726 */	sxar2
/*    726 */	fmuld,s	%f208,%f208,%f248
/*    726 */	fmuld,s	%f164,%f218,%f164


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f102,%f216,%f224
/*    726 */	sub	%xg13,%xg27,%xg13


/*    726 */	sxar2
/*    726 */	sub	%xg14,%xg27,%xg14
/*    726 */	fmaddd,s	%f246,%f38,%f36,%f38


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f178,%f60,%f178
/*    726 */	ldd,s	[%xg15],%f48


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f66,%f144,%f66
/*    726 */	and	%xg13,255,%xg13


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f116,%f112,%f84,%f116
/*    726 */	fselmovd,s	%f108,%f162,%f94,%f162


/*    726 */	sxar2
/*    726 */	and	%xg14,255,%xg14
/*    726 */	sllx	%xg13,4,%xg13


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f188,%f228,%f132,%f188
/*    726 */	sllx	%xg14,4,%xg14


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg19],%f54
/*    726 */	fmaddd,s	%f186,%f242,%f124,%f242


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f222,%f202,%f222
/*    726 */	fmaddd,s	%f244,%f226,%f226,%f244


/*    726 */	sxar2
/*    726 */	sub	%xg16,%xg27,%xg16
/*    726 */	ldd	[%xg14+%xg19],%f310



/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg20],%f74
/*    726 */	fmaddd,s	%f248,%f248,%f208,%f248


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f164,%f104,%f164
/*    726 */	sub	%xg30,%xg27,%xg30



/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%xg20],%f330
/*    726 */	and	%xg16,255,%xg16


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f246,%f252,%f250,%f246
/*    726 */	fmaddd,s	%f40,%f166,%f166,%f40


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f224,%f138,%f236
/*    726 */	and	%xg30,255,%xg30


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o7],%f78
/*    726 */	fmaddd,s	%f42,%f42,%f96,%f42


/*    726 */	sxar2
/*    726 */	sllx	%xg16,4,%xg16
/*    726 */	fsubd,s	%f62,%f178,%f178


/*    726 */	sxar2
/*    726 */	fsubd,s	%f158,%f48,%f158
/*    726 */	ldd	[%xg11+%o7],%f334



/*    726 */	sxar2
/*    726 */	sllx	%xg30,4,%xg30
/*    726 */	add	%xg13,8,%xg13


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f162,%f66,%f162
/*    726 */	ldd,s	[%xg17+%g1],%f90


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f222,%f152,%f46
/*    726 */	add	%xg14,8,%xg14


/*    726 */	sxar2
/*    726 */	fmuld,s	%f54,%f222,%f52
/*    726 */	ldd,s	[%xg17+%g2],%f84


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f244,%f226,%f248
/*    726 */	ldd	[%xg16+%xg19],%f70


/*    726 */	sxar2
/*    726 */	add	%xg16,8,%xg16
/*    726 */	fselmovd,s	%f148,%f164,%f72,%f164


/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%xg19],%f326
/*    726 */	add	%xg30,8,%xg30



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f188,%f50,%f238
/*    726 */	fmaddd,s	%f186,%f242,%f132,%f242


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg19],%f86
/*    726 */	fsubd,s	%f246,%f90,%f246


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f42,%f40,%f166,%f42
/*    726 */	fsubd,s	%f212,%f210,%f212


/*    726 */	sxar2
/*    726 */	fdtox,s	%f236,%f236
/*    726 */	ldd	[%xg14+%xg19],%f342



/*    726 */	sxar2
/*    726 */	add	%xg17,32,%xg14
/*    726 */	ldd	[%xg16+%xg19],%f98


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f178,%f158,%f48,%f178
/*    726 */	fsubd,s	%f78,%f74,%f78


/*    726 */	sxar2
/*    726 */	add	%xg17,48,%xg16
/*    726 */	fmaddd,s	%f222,%f46,%f124,%f46



/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%xg19],%f354
/*    726 */	fsubd,s	%f62,%f162,%f162


/*    726 */	sxar2
/*    726 */	add	%xg15,32,%xg30
/*    726 */	fcmpleed,s	%f248,%f92,%f58


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o5],%f106
/*    726 */	fsubd,s	%f62,%f164,%f164


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f174,%f128,%f130,%f174
/*    726 */	ldd	[%xg9+%o5],%f362



/*    726 */	sxar2
/*    726 */	fsubd,s	%f38,%f84,%f38
/*    726 */	fpmaddx,s	%f204,%f128,%f130,%f204


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg21],%f104
/*    726 */	fpmaddx,s	%f172,%f128,%f130,%f172



/*    726 */	sxar2
/*    726 */	faddd,s	%f240,%f238,%f240
/*    726 */	ldd	[%xg9+%xg21],%f360



/*    726 */	sxar2
/*    726 */	fmuld,s	%f70,%f186,%f186
/*    726 */	fmaddd,s	%f120,%f212,%f210,%f212



/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg24],%f156
/*    726 */	fcmpleed,s	%f42,%f92,%f114


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f222,%f46,%f132,%f222
/*    726 */	ldd	[%xg9+%xg24],%f412



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f120,%f78,%f74,%f78
/*    726 */	fselmovd,s	%f108,%f248,%f58,%f68


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o0],%f158
/*    726 */	fmaddd,s	%f164,%f246,%f90,%f164


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f174,%f140,%f108,%f174
/*    726 */	ldd	[%xg9+%o0],%f414



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f38,%f84,%f162
/*    726 */	fpmaddxhi,s	%f204,%f140,%f108,%f204


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f172,%f140,%f108,%f172
/*    726 */	std	%f178,[%xg15]


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f116,%f92,%f232
/*    726 */	fmaddd,s	%f186,%f242,%f98,%f186


/*    726 */	sxar2
/*    726 */	std	%f236,[%xg23+%fp]
/*    726 */	frcpad,s	%f212,%f234


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o3],%f180
/*    726 */	fselmovd,s	%f108,%f42,%f114,%f154


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f52,%f222,%f86,%f52
/*    726 */	ldd	[%xg9+%o3],%f436



/*    726 */	sxar2
/*    726 */	frcpad,s	%f78,%f118
/*    726 */	fmaddd,sc	%f136,%f68,%f138,%f94


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o2],%f176
/*    726 */	fsubd,s	%f106,%f104,%f106


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f174,%f126,%f62,%f174
/*    726 */	std,s	%f164,[%xg17+%g1]


/*    726 */	sxar2
/*    726 */	fsubd,s	%f158,%f156,%f158
/*    726 */	fpmaddx,s	%f204,%f126,%f62,%f204


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f172,%f126,%f62,%f172
/*    726 */	std	%f434,[%xg15+8]


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f116,%f232,%f44
/*    726 */	faddd,s	%f70,%f186,%f70


/*    726 */	sxar2
/*    726 */	std,s	%f162,[%xg17+%g2]
/*    726 */	add	%xg17,64,%xg17


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f234,%f212,%f62,%f212
/*    726 */	std	%f492,[%xg25+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f154,%f138,%f192
/*    726 */	ldd	[%xg6+%o5],%f168


/*    726 */	sxar2
/*    726 */	faddd,s	%f54,%f52,%f54
/*    726 */	ldd	[%xg9+%o2],%f432



/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f118,%f78,%f62,%f78
/*    726 */	fmuld,s	%f184,%f234,%f234


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg21],%f166
/*    726 */	fdtox,s	%f94,%f94


/*    726 */	sxar2
/*    726 */	fmuld,s	%f174,%f240,%f174
/*    726 */	fmuld,s	%f184,%f118,%f118


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%o3],%f228
/*    726 */	fxtod,s	%f236,%f66


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f82,%f144,%f82
/*    726 */	ldd,s	[%xg15+16],%f188


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f44,%f138,%f60
/*    726 */	fmuld,s	%f172,%f70,%f172


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg12+%g2],%f194
/*    726 */	fmaddd,s	%f212,%f212,%f212,%f254


/*    726 */	sxar2
/*    726 */	ldx	[%xg23+%fp],%xg8
/*    726 */	ldx	[%xg25+%fp],%xg9


/*    726 */	sxar2
/*    726 */	fdtox,s	%f192,%f192
/*    726 */	fmuld,s	%f212,%f212,%f32


/*    726 */	sxar2
/*    726 */	fmuld,s	%f204,%f54,%f204
/*    726 */	ldd	[%xg6+%o2],%f226


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f78,%f78,%f78,%f186
/*    726 */	fmuld,s	%f78,%f78,%f190



/*    726 */	sxar2
/*    726 */	std	%f94,[%xg28+%fp]
/*    726 */	fselmovd,s	%f108,%f174,%f122,%f174


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f106,%f104,%f106
/*    726 */	ldd	[%xg6+%xg24],%f246


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f88,%f144,%f88
/*    726 */	fsubd,s	%f180,%f176,%f180


/*    726 */	sxar2
/*    726 */	sub	%xg8,%xg27,%xg8
/*    726 */	sub	%xg9,%xg27,%xg9


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f76,%f144,%f76
/*    726 */	fselmovd,s	%f108,%f172,%f110,%f172


/*    726 */	sxar2
/*    726 */	and	%xg8,255,%xg8
/*    726 */	and	%xg9,255,%xg9


/*    726 */	sxar2
/*    726 */	fdtox,s	%f60,%f60
/*    726 */	fmaddd,s	%f34,%f158,%f156,%f158


/*    726 */	sxar2
/*    726 */	sllx	%xg8,4,%xg8
/*    726 */	ldd,s	[%xg12+%g1],%f196



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f254,%f234,%f234,%f254
/*    726 */	fselmovd,s	%f108,%f204,%f170,%f204


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg19],%f200
/*    726 */	sllx	%xg9,4,%xg9


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f32,%f212,%f32
/*    726 */	fmaddd,s	%f186,%f118,%f118,%f186


/*    726 */	sxar2
/*    726 */	std	%f350,[%g4+%fp]
/*    726 */	add	%xg8,8,%xg8


/*    726 */	sxar2
/*    726 */	fxtod,s	%f94,%f122
/*    726 */	fmaddd,s	%f190,%f190,%f78,%f190


/*    726 */	sxar2
/*    726 */	add	%xg9,8,%xg13
/*    726 */	ldd	[%xg9+%xg19],%f456



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f174,%f82,%f174
/*    726 */	fmaddd,s	%f34,%f180,%f176,%f34


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg19],%f210
/*    726 */	sub	%xg18,2,%xg8


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f172,%f76,%f172
/*    726 */	fpmaddx,s	%f236,%f128,%f130,%f236


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg19],%f466
/*    726 */	add	%xg15,48,%xg9



/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f66,%f66
/*    726 */	fxtod,s	%f60,%f112



/*    726 */	sxar2
/*    726 */	std	%f60,[%xg29+%fp]
/*    726 */	sub	%xg18,3,%xg13


/*    726 */	sxar2
/*    726 */	fsubd,s	%f106,%f188,%f106
/*    726 */	fselmovd,s	%f148,%f204,%f88,%f204


/*    726 */	sxar2
/*    726 */	sub	%xg18,4,%xg18
/*    726 */	ldd	[%xg6+%o0],%f250


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f254,%f234,%f32
/*    726 */	ldd	[%xg7+%o5],%f424



/*    726 */	sxar2
/*    726 */	fsubd,s	%f158,%f194,%f158
/*    726 */	ldd	[%xg7+%xg21],%f422



/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f122,%f122
/*    726 */	fmaddd,s	%f190,%f186,%f118,%f190


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f174,%f174
/*    726 */	fsubd,s	%f34,%f196,%f34



/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o3],%f484
/*    726 */	fsubd,s	%f62,%f172,%f172


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f236,%f140,%f108,%f236
/*    726 */	ldd	[%xg7+%o2],%f482



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f66,%f224,%f224
/*    726 */	fnmsubd,sc	%f134,%f62,%f112,%f112


/*    726 */	sxar2
/*    726 */	std	%f316,[%g3+%fp]
/*    726 */	fsubd,s	%f62,%f204,%f204


/*    726 */	sxar2
/*    726 */	fxtod,s	%f192,%f198
/*    726 */	ldd	[%xg7+%xg24],%f502



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f32,%f92,%f64
/*    726 */	fpmaddx,s	%f94,%f128,%f130,%f94



/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%o0],%f506
/*    726 */	fmaddd,sc	%f142,%f122,%f68,%f68


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f190,%f92,%f208
/*    726 */	ldd	[%xg10+%xg21],%f40


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f174,%f106,%f188,%f174
/*    726 */	fpmaddx,s	%f60,%f128,%f130,%f60



/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%xg21],%f296
/*    726 */	fmaddd,s	%f172,%f34,%f196,%f172


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f236,%f126,%f62,%f236
/*    726 */	ldd	[%xg10+%o3],%f50


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f146,%f66,%f224,%f66
/*    726 */	fmaddd,sc	%f142,%f112,%f44,%f44


/*    726 */	sxar2
/*    726 */	ldx	[%xg28+%fp],%xg30
/*    726 */	ldx	[%g4+%fp],%xg8


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f204,%f158,%f194,%f204
/*    726 */	ldx	[%xg29+%fp],%xg9


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f198,%f198
/*    726 */	fselmovd,s	%f108,%f32,%f64,%f80


/*    726 */	sxar2
/*    726 */	ldx	[%g3+%fp],%xg13
/*    726 */	fpmaddxhi,s	%f94,%f140,%f108,%f94



/*    726 */	sxar2
/*    726 */	ldd	[%xg11+%o3],%f306
/*    726 */	fmaddd,sc	%f146,%f122,%f68,%f122


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f190,%f208,%f212
/*    726 */	ldd	[%xg10+%o2],%f48



/*    726 */	sxar2
/*    726 */	sub	%xg30,%xg27,%xg30
/*    726 */	sub	%xg8,%xg27,%xg8


/*    726 */	sxar2
/*    726 */	std	%f174,[%xg15+16]
/*    726 */	fpmaddxhi,s	%f60,%f140,%f108,%f60


/*    726 */	sxar2
/*    726 */	fsubd,s	%f168,%f166,%f168
/*    726 */	and	%xg30,255,%xg30


/*    726 */	sxar2
/*    726 */	sub	%xg9,%xg27,%xg9
/*    726 */	std	%f192,[%xg23+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f66,%f152,%f182
/*    726 */	fmaddd,sc	%f146,%f112,%f44,%f112


/*    726 */	sxar2
/*    726 */	and	%xg8,255,%xg8
/*    726 */	std,s	%f172,[%xg12+%g1]


/*    726 */	sxar2
/*    726 */	and	%xg9,255,%xg9
/*    726 */	sllx	%xg30,4,%xg30


/*    726 */	sxar2
/*    726 */	std,s	%f204,[%xg12+%g2]
/*    726 */	fmaddd,sc	%f142,%f198,%f154,%f154


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f136,%f80,%f138,%f100
/*    726 */	sllx	%xg8,4,%xg8


/*    726 */	sxar2
/*    726 */	sllx	%xg9,4,%xg9
/*    726 */	ldd	[%xg30+%xg19],%f220


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f122,%f152,%f202
/*    726 */	add	%xg30,8,%xg12


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg19],%f476
/*    726 */	fmaddd,sc	%f136,%f212,%f138,%f214



/*    726 */	sxar2
/*    726 */	std	%f430,[%xg15+24]
/*    726 */	add	%xg8,8,%l1


/*    726 */	sxar2
/*    726 */	add	%xg9,8,%xg8
/*    726 */	fpmaddx,s	%f94,%f126,%f62,%f94


/*    726 */	sxar2
/*    726 */	sub	%xg13,%xg27,%xg13
/*    726 */	std	%f448,[%xg25+%fp]


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f60,%f126,%f62,%f60
/*    726 */	fpmaddx,s	%f192,%f128,%f130,%f192


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f66,%f182,%f124,%f182
/*    726 */	fmaddd,sc	%f150,%f112,%f152,%f206


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg19],%f222
/*    726 */	ldd	[%xg12+%xg19],%f234


/*    726 */	sxar2
/*    726 */	and	%xg13,255,%xg13
/*    726 */	fcmpgeed,s	%f102,%f144,%f102


/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg19],%f490
/*    726 */	fmaddd,sc	%f146,%f198,%f154,%f198



/*    726 */	sxar2
/*    726 */	fdtox,s	%f100,%f100
/*    726 */	sllx	%xg13,4,%xg13


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%xg19],%f238
/*    726 */	fmaddd,s	%f122,%f202,%f124,%f202


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg19],%f478
/*    726 */	add	%xg13,8,%xg13



/*    726 */	sxar2
/*    726 */	fdtox,s	%f214,%f214
/*    726 */	ldd	[%xg13+%xg19],%f494


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f168,%f166,%f168
/*    726 */	fsubd,s	%f250,%f246,%f250


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o5],%f44
/*    726 */	ldx	[%xg23+%fp],%xg9


/*    726 */	sxar2
/*    726 */	ldx	[%xg25+%fp],%xg12
/*    726 */	fsubd,s	%f228,%f226,%f228


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f192,%f140,%f108,%f192
/*    726 */	fmaddd,s	%f66,%f182,%f132,%f182


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f206,%f124,%f206
/*    726 */	ldd,s	[%xg15+32],%f240



/*    726 */	sxar2
/*    726 */	fmuld,s	%f200,%f66,%f66
/*    726 */	fmaddd,sc	%f150,%f198,%f152,%f230


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg14+%g2],%f34
/*    726 */	fxtod,s	%f100,%f160



/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f116,%f144,%f116
/*    726 */	ldd	[%xg11+%o5],%f300



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f122,%f202,%f132,%f202
/*    726 */	sub	%xg9,%xg27,%xg9



/*    726 */	sxar2
/*    726 */	fxtod,s	%f214,%f242
/*    726 */	std	%f214,[%xg28+%fp]


/*    726 */	sxar2
/*    726 */	fmuld,s	%f220,%f122,%f122
/*    726 */	sub	%xg12,%xg27,%xg12


/*    726 */	sxar2
/*    726 */	and	%xg9,255,%xg9
/*    726 */	std	%f470,[%g4+%fp]


/*    726 */	sxar2
/*    726 */	and	%xg12,255,%xg12
/*    726 */	sllx	%xg9,4,%xg9


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f192,%f126,%f62,%f192
/*    726 */	fmaddd,s	%f56,%f250,%f246,%f250


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f206,%f132,%f206
/*    726 */	fmuld,s	%f222,%f112,%f112


/*    726 */	sxar2
/*    726 */	sllx	%xg12,4,%xg12
/*    726 */	ldd	[%xg9+%xg19],%f254


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f66,%f182,%f210,%f66
/*    726 */	add	%xg9,8,%xg9


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f198,%f230,%f124,%f230
/*    726 */	std	%f100,[%xg29+%fp]


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f134,%f62,%f160,%f160
/*    726 */	add	%xg12,8,%xg13



/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg19],%f510
/*    726 */	fpmaddx,s	%f100,%f128,%f130,%f224


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg19],%f38
/*    726 */	fnmsubd,sc	%f134,%f62,%f242,%f242


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f122,%f202,%f234,%f122
/*    726 */	ldd	[%xg13+%xg19],%f294



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f214,%f128,%f130,%f244
/*    726 */	fsubd,s	%f168,%f240,%f168


/*    726 */	sxar2
/*    726 */	std	%f356,[%g3+%fp]
/*    726 */	fmaddd,s	%f56,%f228,%f226,%f56


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f206,%f238,%f112
/*    726 */	fmuld,s	%f254,%f198,%f252


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg14+%g1],%f36
/*    726 */	faddd,s	%f200,%f66,%f200


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f198,%f230,%f132,%f198
/*    726 */	ldd	[%xg11+%o2],%f304



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f160,%f80,%f80
/*    726 */	fcmpgeed,s	%f248,%f144,%f248


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg24],%f66
/*    726 */	fpmaddxhi,s	%f224,%f140,%f108,%f224


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f142,%f242,%f212,%f212
/*    726 */	ldd	[%xg11+%xg24],%f322



/*    726 */	sxar2
/*    726 */	faddd,s	%f220,%f122,%f220
/*    726 */	fpmaddxhi,s	%f244,%f140,%f108,%f244


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o0],%f68
/*    726 */	fcmpgeed,s	%f42,%f144,%f42


/*    726 */	sxar2
/*    726 */	ldx	[%xg28+%fp],%xg30
/*    726 */	ldx	[%g4+%fp],%xg6


/*    726 */	sxar2
/*    726 */	fsubd,s	%f56,%f36,%f56
/*    726 */	faddd,s	%f222,%f112,%f222


/*    726 */	sxar2
/*    726 */	ldx	[%xg29+%fp],%xg7
/*    726 */	fsubd,s	%f250,%f34,%f250


/*    726 */	sxar2
/*    726 */	fmuld,s	%f236,%f200,%f236
/*    726 */	ldx	[%g3+%fp],%xg8


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f252,%f198,%f38,%f252
/*    726 */	fmaddd,sc	%f146,%f160,%f80,%f160


/*    726 */	sxar2
/*    726 */	fsubd,s	%f44,%f40,%f44
/*    726 */	ldd	[%xg11+%o0],%f324



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f224,%f126,%f62,%f224
/*    726 */	sub	%xg30,%xg27,%xg30


/*    726 */	sxar2
/*    726 */	sub	%xg6,%xg27,%xg6
/*    726 */	fmaddd,sc	%f146,%f242,%f212,%f242


/*    726 */	sxar2
/*    726 */	fmuld,s	%f94,%f220,%f94
/*    726 */	fpmaddx,s	%f244,%f126,%f62,%f244


/*    726 */	sxar2
/*    726 */	and	%xg30,255,%xg30
/*    726 */	and	%xg6,255,%xg6


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f190,%f144,%f190
/*    726 */	sllx	%xg30,4,%xg30


/*    726 */	sxar2
/*    726 */	sllx	%xg6,4,%xg6
/*    726 */	fsubd,s	%f50,%f48,%f50


/*    726 */	sxar2
/*    726 */	fmuld,s	%f60,%f222,%f60
/*    726 */	sub	%xg7,%xg27,%xg7


/*    726 */	sxar2
/*    726 */	sub	%xg8,%xg27,%xg8
/*    726 */	ldd	[%xg30+%xg19],%f54


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f236,%f216,%f236
/*    726 */	and	%xg7,255,%xg7


/*    726 */	sxar2
/*    726 */	and	%xg8,255,%xg8
/*    726 */	ldd	[%xg6+%xg19],%f310



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f150,%f160,%f152,%f218
/*    726 */	sllx	%xg7,4,%xg7


/*    726 */	sxar2
/*    726 */	sllx	%xg8,4,%xg8
/*    726 */	faddd,s	%f254,%f252,%f254


/*    726 */	sxar2
/*    726 */	add	%xg30,8,%xg30
/*    726 */	add	%xg6,8,%xg6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f120,%f44,%f40,%f44
/*    726 */	fmaddd,sc	%f150,%f242,%f152,%f46


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f94,%f58,%f94
/*    726 */	ldd	[%xg7+%xg19],%f58


/*    726 */	sxar2
/*    726 */	add	%xg7,8,%xg7
/*    726 */	ldd	[%xg8+%xg19],%f314



/*    726 */	sxar2
/*    726 */	add	%xg8,8,%xg8
/*    726 */	fmuld,s	%f54,%f242,%f52


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f32,%f144,%f32
/*    726 */	fselmovd,s	%f108,%f60,%f232,%f60


/*    726 */	sxar2
/*    726 */	ldd	[%xg30+%xg19],%f74
/*    726 */	fselmovd,s	%f148,%f236,%f102,%f236



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg19],%f330
/*    726 */	fsubd,s	%f68,%f66,%f68


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f160,%f218,%f124,%f218
/*    726 */	ldd	[%xg7+%xg19],%f70


/*    726 */	sxar2
/*    726 */	fmuld,s	%f192,%f254,%f192
/*    726 */	ldd	[%xg8+%xg19],%f326



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f46,%f124,%f46
/*    726 */	fmaddd,s	%f120,%f50,%f48,%f50


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f94,%f248,%f94
/*    726 */	fselmovd,s	%f148,%f60,%f116,%f60


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f236,%f236
/*    726 */	fmaddd,s	%f120,%f68,%f66,%f120


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f160,%f218,%f132,%f218
/*    726 */	fmuld,s	%f58,%f160,%f160


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f108,%f192,%f114,%f192
/*    726 */	fmaddd,s	%f242,%f46,%f132,%f242


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f94,%f94
/*    726 */	fsubd,s	%f62,%f60,%f60


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f236,%f168,%f240,%f236
/*    726 */	fmaddd,s	%f160,%f218,%f70,%f160


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f192,%f42,%f192
/*    726 */	fmaddd,s	%f52,%f242,%f74,%f52


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f94,%f250,%f34,%f94
/*    726 */	fmaddd,s	%f60,%f56,%f36,%f60



/*    726 */	sxar2
/*    726 */	std	%f236,[%xg15+32]
/*    726 */	faddd,s	%f58,%f160,%f58


/*    726 */	sxar2
/*    726 */	faddd,s	%f54,%f52,%f54
/*    726 */	std	%f492,[%xg15+40]


/*    726 */	sxar2
/*    726 */	std,s	%f94,[%xg14+%g2]
/*    726 */	std,s	%f60,[%xg14+%g1]


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f192,%f192
/*    726 */	fmuld,s	%f224,%f58,%f224


/*    726 */	sxar2
/*    726 */	fmuld,s	%f244,%f54,%f244
/*    726 */	ldd,s	[%xg15+48],%f72


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+%g2],%f76
/*    726 */	ldd,s	[%xg16+%g1],%f78


/*    726 */	sxar2
/*    726 */	fsubd,s	%f44,%f72,%f44
/*    726 */	fselmovd,s	%f108,%f224,%f64,%f224


/*    726 */	sxar2
/*    726 */	fsubd,s	%f120,%f76,%f120
/*    726 */	fselmovd,s	%f108,%f244,%f208,%f244


/*    726 */	sxar2
/*    726 */	fsubd,s	%f50,%f78,%f50
/*    726 */	fmaddd,s	%f192,%f44,%f72,%f192


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f148,%f224,%f32,%f224
/*    726 */	fselmovd,s	%f148,%f244,%f190,%f244



/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f224,%f224
/*    726 */	fsubd,s	%f62,%f244,%f244


/*    726 */	sxar2
/*    726 */	std	%f192,[%xg15+48]
/*    726 */	std	%f448,[%xg15+56]


/*    726 */	sxar2
/*    726 */	add	%xg15,64,%xg15
/*    726 */	fmaddd,s	%f224,%f50,%f78,%f224


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f244,%f120,%f76,%f244
/*    726 */	std,s	%f224,[%xg16+%g1]

/*    726 */	sxar1
/*    726 */	std,s	%f244,[%xg16+%g2]

.L840:


.L839:


.L842:
.LSSN857:


/*    728 */	sxar2
/*    728 */	ldsw	[%l0+-4032],%xg16
/*    728 */	ldsw	[%l0+-4028],%xg30
.LSSN858:


.LSSN859:

/*    756 */	sxar2
/*    756 */	subcc	%xg18,1,%xg18
/*    756 */	ldd,s	[%xg31],%f74

.LSSN860:

/*    758 */	sxar2
/*    758 */	ldd,s	[%xg15],%f94
/*    758 */	add	%xg31,16,%xg31
.LSSN861:

.LSSN862:

/*    757 */	sxar2
/*    757 */	ldd,s	[%g2+%xg17],%f98
/*    757 */	ldd,s	[%g1+%xg17],%f110
.LSSN863:


/*    735 */	sxar2
/*    735 */	srl	%xg16,%g0,%xg16
/*    735 */	srl	%xg30,%g0,%xg30


/*    735 */	sxar2
/*    735 */	add	%xg16,%xg16,%xg6
/*    735 */	add	%xg30,%xg30,%xg7


/*    735 */	sxar2
/*    735 */	add	%xg6,%xg16,%xg6
/*    735 */	add	%xg7,%xg30,%xg7


/*    735 */	sxar2
/*    735 */	sllx	%xg6,4,%xg6
/*    735 */	sllx	%xg7,4,%xg7
.LSSN864:


/*    734 */	sxar2
/*    734 */	ldd	[%xg26+%xg6],%f60
/*    734 */	ldd	[%xg26+%xg7],%f316

.LSSN865:


/*    741 */	sxar2
/*    741 */	ldd	[%g5+%xg6],%f64
/*    741 */	ldd	[%g5+%xg7],%f320

.LSSN866:


/*    732 */	sxar2
/*    732 */	ldd	[%xg20+%xg6],%f66
/*    732 */	ldd	[%xg20+%xg7],%f322

.LSSN867:


/*    739 */	sxar2
/*    739 */	ldd	[%o7+%xg6],%f68
/*    739 */	ldd	[%o7+%xg7],%f324

.LSSN868:


/*    740 */	sxar2
/*    740 */	ldd	[%o5+%xg6],%f72
/*    740 */	ldd	[%o5+%xg7],%f328

.LSSN869:

.LSSN870:

/*    756 */	sxar2
/*    756 */	ldd	[%xg21+%xg6],%f70
/*    756 */	fsubd,s	%f64,%f60,%f64
.LSSN871:

.LSSN872:

/*    736 */	sxar2
/*    736 */	ldd	[%xg21+%xg7],%f326
/*    736 */	ldd	[%o4+%xg6],%f76
.LSSN873:

.LSSN874:

.LSSN875:

/*    755 */	sxar2
/*    755 */	ldd	[%o4+%xg7],%f332
/*    755 */	fsubd,s	%f68,%f66,%f68
.LSSN876:

.LSSN877:


/*    743 */	sxar2
/*    743 */	ldd	[%xg22+%xg6],%f78
/*    743 */	ldd	[%xg22+%xg7],%f334

.LSSN878:


/*    731 */	sxar2
/*    731 */	ldd	[%xg24+%xg6],%f80
/*    731 */	ldd	[%xg24+%xg7],%f336

.LSSN879:

.LSSN880:

/*    738 */	sxar2
/*    738 */	fsubd,s	%f72,%f70,%f72
/*    738 */	ldd	[%o0+%xg6],%f82

.LSSN881:

/*    756 */	sxar2
/*    756 */	ldd	[%o0+%xg7],%f338
/*    756 */	fmaddd,s	%f74,%f64,%f60,%f64
.LSSN882:

.LSSN883:

.LSSN884:

/*    757 */	sxar2
/*    757 */	ldd	[%o3+%xg6],%f88
/*    757 */	fsubd,s	%f78,%f76,%f78
.LSSN885:

.LSSN886:

/*    755 */	sxar2
/*    755 */	ldd	[%o3+%xg7],%f344
/*    755 */	fmaddd,s	%f74,%f68,%f66,%f68
.LSSN887:



/*    742 */	sxar2
/*    742 */	ldd	[%o2+%xg6],%f86
/*    742 */	ldd	[%o2+%xg7],%f342

.LSSN888:

.LSSN889:

/*    756 */	sxar2
/*    756 */	fsubd,s	%f82,%f80,%f82
/*    756 */	fmaddd,s	%f74,%f72,%f70,%f72

.LSSN890:

/*    757 */	sxar2
/*    757 */	frcpad,s	%f64,%f84
/*    757 */	fmaddd,s	%f74,%f78,%f76,%f78

.LSSN891:

/*    755 */	sxar2
/*    755 */	fsubd,s	%f88,%f86,%f88
/*    755 */	frcpad,s	%f68,%f90

.LSSN892:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f74,%f82,%f80,%f82
/*    756 */	fsubd,s	%f72,%f94,%f72


/*    756 */	sxar2
/*    756 */	fnmsubd,s	%f84,%f64,%f62,%f64
/*    756 */	fmuld,s	%f184,%f84,%f84
.LSSN893:


/*    757 */	sxar2
/*    757 */	frcpad,s	%f78,%f96
/*    757 */	fmaddd,s	%f74,%f88,%f86,%f74
.LSSN894:


/*    755 */	sxar2
/*    755 */	fnmsubd,s	%f90,%f68,%f62,%f68
/*    755 */	fmuld,s	%f184,%f90,%f90

.LSSN895:

/*    756 */	sxar2
/*    756 */	fsubd,s	%f82,%f98,%f82
/*    756 */	fmaddd,s	%f64,%f64,%f64,%f100

.LSSN896:

/*    757 */	sxar2
/*    757 */	fmuld,s	%f64,%f64,%f102
/*    757 */	fnmsubd,s	%f96,%f78,%f62,%f78

.LSSN897:

/*    755 */	sxar2
/*    755 */	fmuld,s	%f184,%f96,%f96
/*    755 */	fmaddd,s	%f68,%f68,%f68,%f104

.LSSN898:

/*    757 */	sxar2
/*    757 */	fmuld,s	%f68,%f68,%f106
/*    757 */	fsubd,s	%f74,%f110,%f74
.LSSN899:


/*    756 */	sxar2
/*    756 */	fmaddd,s	%f100,%f84,%f84,%f100
/*    756 */	fmaddd,s	%f102,%f102,%f64,%f102
.LSSN900:


/*    757 */	sxar2
/*    757 */	fmaddd,s	%f78,%f78,%f78,%f112
/*    757 */	fmuld,s	%f78,%f78,%f114
.LSSN901:


/*    755 */	sxar2
/*    755 */	fmaddd,s	%f104,%f90,%f90,%f104
/*    755 */	fmaddd,s	%f106,%f106,%f68,%f106
.LSSN902:

.LSSN903:

/*    757 */	sxar2
/*    757 */	fmaddd,s	%f102,%f100,%f84,%f102
/*    757 */	fmaddd,s	%f112,%f96,%f96,%f112

.LSSN904:

/*    755 */	sxar2
/*    755 */	fmaddd,s	%f114,%f114,%f78,%f114
/*    755 */	fmaddd,s	%f106,%f104,%f90,%f106
.LSSN905:


/*    756 */	sxar2
/*    756 */	fcmpleed,s	%f102,%f92,%f116
/*    756 */	fcmpgeed,s	%f102,%f144,%f118
.LSSN906:

.LSSN907:

/*    755 */	sxar2
/*    755 */	fmaddd,s	%f114,%f112,%f96,%f114
/*    755 */	fcmpleed,s	%f106,%f92,%f120

.LSSN908:

/*    756 */	sxar2
/*    756 */	fcmpgeed,s	%f106,%f144,%f122
/*    756 */	fselmovd,s	%f108,%f102,%f116,%f102
.LSSN909:


/*    757 */	sxar2
/*    757 */	fcmpleed,s	%f114,%f92,%f154
/*    757 */	fcmpgeed,s	%f114,%f144,%f156
.LSSN910:

.LSSN911:

/*    756 */	sxar2
/*    756 */	fselmovd,s	%f108,%f106,%f120,%f106
/*    756 */	fmaddd,sc	%f136,%f102,%f138,%f158
.LSSN912:

.LSSN913:

/*    755 */	sxar2
/*    755 */	fselmovd,s	%f108,%f114,%f154,%f114
/*    755 */	fmaddd,sc	%f136,%f106,%f138,%f160
.LSSN914:

.LSSN915:

/*    757 */	sxar2
/*    757 */	fdtox,s	%f158,%f158
/*    757 */	fmaddd,sc	%f136,%f114,%f138,%f162
.LSSN916:

.LSSN917:

/*    756 */	sxar2
/*    756 */	fdtox,s	%f160,%f160
/*    756 */	fxtod,s	%f158,%f164



/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f158,%f128,%f130,%f166
/*    756 */	std	%f158,[%fp+%xg23]
.LSSN918:

.LSSN919:

/*    755 */	sxar2
/*    755 */	fdtox,s	%f162,%f162
/*    755 */	fxtod,s	%f160,%f168


.LSSN920:

/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f160,%f128,%f130,%f170
/*    756 */	fnmsubd,sc	%f134,%f62,%f164,%f164


/*    756 */	sxar2
/*    756 */	fpmaddxhi,s	%f166,%f140,%f108,%f166
/*    756 */	ldx	[%fp+%xg23],%xg8
.LSSN921:



/*    757 */	sxar2
/*    757 */	fxtod,s	%f162,%f172
/*    757 */	fpmaddx,s	%f162,%f128,%f130,%f174
.LSSN922:

.LSSN923:

/*    755 */	sxar2
/*    755 */	std	%f414,[%fp+%xg25]
/*    755 */	fnmsubd,sc	%f134,%f62,%f168,%f168

.LSSN924:

/*    756 */	sxar2
/*    756 */	fpmaddxhi,s	%f170,%f140,%f108,%f170
/*    756 */	sub	%xg8,%xg27,%xg8


/*    756 */	sxar2
/*    756 */	and	%xg8,255,%xg8
/*    756 */	fmaddd,sc	%f142,%f164,%f102,%f102


/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f166,%f126,%f62,%f166
/*    756 */	sllx	%xg8,4,%xg8
.LSSN925:


/*    757 */	sxar2
/*    757 */	fnmsubd,sc	%f134,%f62,%f172,%f172
/*    757 */	fpmaddxhi,s	%f174,%f140,%f108,%f174
.LSSN926:


/*    756 */	sxar2
/*    756 */	ldx	[%fp+%xg25],%xg9
/*    756 */	ldd	[%xg19+%xg8],%f180

.LSSN927:

/*    755 */	sxar2
/*    755 */	add	%xg8,8,%xg8
/*    755 */	fmaddd,sc	%f142,%f168,%f106,%f106
.LSSN928:

.LSSN929:

/*    755 */	sxar2
/*    755 */	ldd	[%xg19+%xg8],%f188
/*    755 */	fpmaddx,s	%f170,%f126,%f62,%f170

.LSSN930:

/*    756 */	sxar2
/*    756 */	std	%f160,[%fp+%xg28]
/*    756 */	sub	%xg9,%xg27,%xg9


/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f146,%f164,%f102,%f164
/*    756 */	and	%xg9,255,%xg9
.LSSN931:


/*    757 */	sxar2
/*    757 */	fmaddd,sc	%f142,%f172,%f114,%f114
/*    757 */	fpmaddx,s	%f174,%f126,%f62,%f174
.LSSN932:

.LSSN933:

/*    755 */	sxar2
/*    755 */	sllx	%xg9,4,%xg9
/*    755 */	fmaddd,sc	%f146,%f168,%f106,%f168
.LSSN934:


/*    756 */	sxar2
/*    756 */	ldd	[%xg19+%xg9],%f436
/*    756 */	add	%xg9,8,%xg9




/*    756 */	sxar2
/*    756 */	ldd	[%xg19+%xg9],%f444
/*    756 */	fmaddd,sc	%f150,%f164,%f152,%f176
.LSSN935:

.LSSN936:

/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f146,%f172,%f114,%f172
/*    756 */	fmuld,s	%f180,%f164,%f178
.LSSN937:

.LSSN938:

/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f150,%f168,%f152,%f182
/*    756 */	fmaddd,s	%f164,%f176,%f124,%f176
.LSSN939:

.LSSN940:

/*    755 */	sxar2
/*    755 */	fmaddd,sc	%f150,%f172,%f152,%f186
/*    755 */	fmaddd,s	%f168,%f182,%f124,%f182
.LSSN941:

.LSSN942:

/*    757 */	sxar2
/*    757 */	fmaddd,s	%f164,%f176,%f132,%f164
/*    757 */	fmaddd,s	%f172,%f186,%f124,%f186
.LSSN943:

.LSSN944:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f168,%f182,%f132,%f182
/*    756 */	fmaddd,s	%f178,%f164,%f188,%f178
.LSSN945:

.LSSN946:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f172,%f186,%f132,%f186
/*    756 */	faddd,s	%f180,%f178,%f180


/*    756 */	sxar2
/*    756 */	fmuld,s	%f166,%f180,%f166
/*    756 */	fselmovd,s	%f108,%f166,%f116,%f166


/*    756 */	sxar2
/*    756 */	fselmovd,s	%f148,%f166,%f118,%f166
/*    756 */	fsubd,s	%f62,%f166,%f166



/*    756 */	sxar2
/*    756 */	fmaddd,s	%f166,%f72,%f94,%f166
/*    756 */	std	%f166,[%xg15]

.LSSN947:

/*    758 */	sxar2
/*    758 */	std	%f422,[%xg15+8]
/*    758 */	add	%xg15,16,%xg15
.LSSN948:


/*    755 */	sxar2
/*    755 */	ldx	[%fp+%xg28],%xg10
/*    755 */	std	%f416,[%fp+%g4]


/*    755 */	sxar2
/*    755 */	sub	%xg10,%xg27,%xg10
/*    755 */	and	%xg10,255,%xg10


/*    755 */	sxar2
/*    755 */	sllx	%xg10,4,%xg10
/*    755 */	ldx	[%fp+%g4],%xg11


/*    755 */	sxar2
/*    755 */	ldd	[%xg19+%xg10],%f190
/*    755 */	add	%xg10,8,%xg10

.LSSN949:

/*    757 */	sxar2
/*    757 */	ldd	[%xg19+%xg10],%f192
/*    757 */	std	%f162,[%fp+%xg29]
.LSSN950:


/*    755 */	sxar2
/*    755 */	sub	%xg11,%xg27,%xg11
/*    755 */	and	%xg11,255,%xg11


/*    755 */	sxar2
/*    755 */	sllx	%xg11,4,%xg11
/*    755 */	ldd	[%xg19+%xg11],%f446



/*    755 */	sxar2
/*    755 */	add	%xg11,8,%xg11
/*    755 */	ldd	[%xg19+%xg11],%f448



/*    755 */	sxar2
/*    755 */	fmuld,s	%f190,%f168,%f168
/*    755 */	fmaddd,s	%f168,%f182,%f192,%f168


/*    755 */	sxar2
/*    755 */	faddd,s	%f190,%f168,%f190
/*    755 */	fmuld,s	%f170,%f190,%f170


/*    755 */	sxar2
/*    755 */	fselmovd,s	%f108,%f170,%f120,%f170
/*    755 */	fselmovd,s	%f148,%f170,%f122,%f170


/*    755 */	sxar2
/*    755 */	fsubd,s	%f62,%f170,%f170
/*    755 */	fmaddd,s	%f170,%f82,%f98,%f170

.LSSN951:

/*    757 */	sxar2
/*    757 */	std,s	%f170,[%g2+%xg17]
/*    757 */	ldx	[%fp+%xg29],%xg12


/*    757 */	sxar2
/*    757 */	std	%f418,[%fp+%g3]
/*    757 */	sub	%xg12,%xg27,%xg12


/*    757 */	sxar2
/*    757 */	and	%xg12,255,%xg12
/*    757 */	sllx	%xg12,4,%xg12


/*    757 */	sxar2
/*    757 */	ldx	[%fp+%g3],%xg13
/*    757 */	ldd	[%xg19+%xg12],%f194


/*    757 */	sxar2
/*    757 */	add	%xg12,8,%xg12
/*    757 */	ldd	[%xg19+%xg12],%f196


/*    757 */	sxar2
/*    757 */	sub	%xg13,%xg27,%xg13
/*    757 */	and	%xg13,255,%xg13


/*    757 */	sxar2
/*    757 */	sllx	%xg13,4,%xg13
/*    757 */	ldd	[%xg19+%xg13],%f450



/*    757 */	sxar2
/*    757 */	add	%xg13,8,%xg13
/*    757 */	ldd	[%xg19+%xg13],%f452



/*    757 */	sxar2
/*    757 */	fmuld,s	%f194,%f172,%f172
/*    757 */	fmaddd,s	%f172,%f186,%f196,%f172


/*    757 */	sxar2
/*    757 */	faddd,s	%f194,%f172,%f194
/*    757 */	fmuld,s	%f174,%f194,%f174


/*    757 */	sxar2
/*    757 */	fselmovd,s	%f108,%f174,%f154,%f174
/*    757 */	fselmovd,s	%f148,%f174,%f156,%f174


/*    757 */	sxar2
/*    757 */	fsubd,s	%f62,%f174,%f174
/*    757 */	fmaddd,s	%f174,%f74,%f110,%f174

.LSSN952:

/*    758 */	sxar2
/*    758 */	std,s	%f174,[%g1+%xg17]
/*    758 */	add	%xg17,16,%xg17

/*    758 */	bne,pt	%icc, .L842
/*    758 */	add	%l0,8,%l0


.L838:


.L661:
.LSSN953:


/*    726 */	sxar2
/*    726 */	sllx	%xg2,3,%xg9
/*    726 */	sllx	%xg2,4,%xg2


/*    726 */	sxar2
/*    726 */	add	%xg9,%xg3,%xg9
/*    726 */	add	%xg2,%xg4,%xg2

/*    726 */	sxar1
/*    726 */	cmp	%xg5,%g0

/*    726 */	be	.L688
	nop


.L662:
.LSSN954:


/*    728 */	sxar2
/*    728 */	add	%xg9,%fp,%xg9
/*    728 */	sethi	%hi(237952),%xg10
.LSSN955:


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+984],%f138
/*    756 */	fzero	%f148
.LSSN956:

.LSSN957:

/*    733 */	sxar2
/*    733 */	xor	%xg10,-385,%xg10
/*    733 */	sethi	%h44(.LB0+30720144),%xg11
.LSSN958:

.LSSN959:

/*    728 */	sxar2
/*    728 */	ldd	[%xg1+976],%f142
/*    728 */	add	%xg9,%xg10,%xg9
.LSSN960:

.LSSN961:

/*    756 */	sxar2
/*    756 */	or	%xg11,%m44(.LB0+30720144),%xg11
/*    756 */	ldd	[%xg1+936],%f154
.LSSN962:

.LSSN963:

/*    728 */	sxar2
/*    728 */	sllx	%xg11,12,%xg11
/*    728 */	ldsw	[%xg9],%xg18
.LSSN964:

.LSSN965:

/*    756 */	sxar2
/*    756 */	sethi	%hi(157952),%xg13
/*    756 */	ldd	[%xg1+968],%f150
.LSSN966:

.LSSN967:

/*    729 */	sxar2
/*    729 */	or	%xg11,%l44(.LB0+30720144),%xg11
/*    729 */	add	%xg2,%fp,%xg12
.LSSN968:

.LSSN969:

/*    729 */	sxar2
/*    729 */	ldd	[%xg1+960],%f172
/*    729 */	xor	%xg13,-257,%xg13
.LSSN970:


/*    756 */	sxar2
/*    756 */	sethi	%hi(237968),%xg14
/*    756 */	ldd	[%xg1+944],%f176
.LSSN971:

.LSSN972:

/*    756 */	sxar2
/*    756 */	add	%xg12,%xg13,%xg12
/*    756 */	xor	%xg14,-401,%xg14


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+952],%f180
/*    756 */	ldd	[%xg12],%f92

.LSSN973:

/*    735 */	sxar2
/*    735 */	sethi	%hi(524288),%xg20
/*    735 */	srl	%xg18,%g0,%xg18
.LSSN974:


/*    756 */	sxar2
/*    756 */	sethi	%h44(__fj_dlogexp2_const_),%xg15
/*    756 */	ldd	[%xg1+1016],%f186
.LSSN975:

.LSSN976:

/*    756 */	sxar2
/*    756 */	add	%xg18,%xg18,%xg19
/*    756 */	or	%xg15,%m44(__fj_dlogexp2_const_),%xg15

.LSSN977:

/*    735 */	sxar2
/*    735 */	ldd	[%xg1+1008],%f182
/*    735 */	add	%xg19,%xg18,%xg19
.LSSN978:


/*    756 */	sxar2
/*    756 */	sllx	%xg15,12,%xg15
/*    756 */	ldd	[%xg1+1000],%f194
.LSSN979:

.LSSN980:

/*    756 */	sxar2
/*    756 */	sllx	%xg19,4,%xg19
/*    756 */	or	%xg15,%l44(__fj_dlogexp2_const_),%xg15

.LSSN981:

/*    733 */	sxar2
/*    733 */	ldd	[%xg1+1032],%f164
/*    733 */	add	%xg11,%xg19,%xg11
.LSSN982:

.LSSN983:

/*    757 */	sxar2
/*    757 */	sethi	%hi(237976),%xg16
/*    757 */	sethi	%hi(237984),%xg17
.LSSN984:


/*    756 */	sxar2
/*    756 */	ldd	[%xg11+72],%f82
/*    756 */	ldd	[%xg11+24],%f80
.LSSN985:

.LSSN986:

/*    757 */	sxar2
/*    757 */	xor	%xg16,-409,%xg16
/*    757 */	xor	%xg17,-417,%xg17
.LSSN987:


/*    755 */	sxar2
/*    755 */	ldd	[%xg11+56],%f86
/*    755 */	ldd	[%xg11+8],%f84
.LSSN988:


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+1040],%f160
/*    756 */	ldd	[%xg1+992],%f196


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+1048],%f174
/*    756 */	ldd	[%xg1+1056],%f178
.LSSN989:

.LSSN990:

/*    756 */	sxar2
/*    756 */	ldd	[%xg11+88],%f90
/*    756 */	fsubd	%f82,%f80,%f82
.LSSN991:

.LSSN992:

/*    755 */	sxar2
/*    755 */	ldd	[%xg11+40],%f88
/*    755 */	fsubd	%f86,%f84,%f86
.LSSN993:

.LSSN994:

/*    756 */	sxar2
/*    756 */	ldd	[%xg11+16],%f98
/*    756 */	ldd	[%xg1+1024],%f66


/*    756 */	sxar2
/*    756 */	ldd	[%xg0+%xg2],%f94
/*    756 */	ldd	[%xg11+64],%f100
.LSSN995:


/*    755 */	sxar2
/*    755 */	ldd	[%xg11],%f106
/*    755 */	ldd	[%g2+%xg2],%f102
.LSSN996:

.LSSN997:

/*    755 */	sxar2
/*    755 */	fsubd	%f90,%f88,%f90
/*    755 */	ldd	[%xg11+48],%f108
.LSSN998:

.LSSN999:

/*    756 */	sxar2
/*    756 */	ldd	[%xg11+32],%f114
/*    756 */	fmaddd	%f92,%f82,%f80,%f82

.LSSN1000:

/*    757 */	sxar2
/*    757 */	fsubd	%f98,%f94,%f96
/*    757 */	ldd	[%g1+%xg2],%f110
.LSSN1001:

.LSSN1002:

/*    756 */	sxar2
/*    756 */	fmaddd	%f92,%f86,%f84,%f86
/*    756 */	fsubd	%f100,%f98,%f100
.LSSN1003:

.LSSN1004:

/*    755 */	sxar2
/*    755 */	ldd	[%xg11+80],%f116
/*    755 */	fsubd	%f106,%f102,%f104

.LSSN1005:

/*    757 */	sxar2
/*    757 */	fsubd	%f108,%f106,%f108
/*    757 */	fmaddd	%f92,%f90,%f88,%f90


/*    757 */	sxar2
/*    757 */	fsubd	%f114,%f110,%f112
/*    757 */	fsubd	%f116,%f114,%f116
.LSSN1006:

.LSSN1007:

/*    755 */	sxar2
/*    755 */	frcpad	%f82,%f118
/*    755 */	frcpad	%f86,%f120
.LSSN1008:

.LSSN1009:

/*    755 */	sxar2
/*    755 */	fmaddd	%f92,%f100,%f96,%f100
/*    755 */	fmaddd	%f92,%f108,%f104,%f108
.LSSN1010:

.LSSN1011:

/*    756 */	sxar2
/*    756 */	frcpad	%f90,%f122
/*    756 */	fnmsubd	%f118,%f82,%f318,%f82

.LSSN1012:

/*    755 */	sxar2
/*    755 */	fmuld	%f118,%f440,%f118
/*    755 */	fnmsubd	%f120,%f86,%f318,%f86

.LSSN1013:

/*    757 */	sxar2
/*    757 */	fmuld	%f120,%f440,%f120
/*    757 */	fmaddd	%f92,%f116,%f112,%f92


/*    757 */	sxar2
/*    757 */	fnmsubd	%f122,%f90,%f318,%f90
/*    757 */	fmuld	%f122,%f440,%f122
.LSSN1014:


/*    756 */	sxar2
/*    756 */	fmaddd	%f82,%f82,%f82,%f124
/*    756 */	fmuld	%f82,%f82,%f126
.LSSN1015:


/*    755 */	sxar2
/*    755 */	fmaddd	%f86,%f86,%f86,%f128
/*    755 */	fmuld	%f86,%f86,%f130
.LSSN1016:


/*    757 */	sxar2
/*    757 */	fmaddd	%f90,%f90,%f90,%f132
/*    757 */	fmuld	%f90,%f90,%f134
.LSSN1017:


/*    756 */	sxar2
/*    756 */	fmaddd	%f124,%f118,%f118,%f124
/*    756 */	fmaddd	%f126,%f126,%f82,%f126
.LSSN1018:


/*    755 */	sxar2
/*    755 */	fmaddd	%f128,%f120,%f120,%f128
/*    755 */	fmaddd	%f130,%f130,%f86,%f130
.LSSN1019:


/*    757 */	sxar2
/*    757 */	fmaddd	%f132,%f122,%f122,%f132
/*    757 */	fmaddd	%f134,%f134,%f90,%f134
.LSSN1020:

.LSSN1021:

/*    755 */	sxar2
/*    755 */	fmaddd	%f126,%f124,%f118,%f126
/*    755 */	fmaddd	%f130,%f128,%f120,%f130
.LSSN1022:

.LSSN1023:

/*    756 */	sxar2
/*    756 */	fmaddd	%f134,%f132,%f122,%f134
/*    756 */	fcmpleed	%f126,%f138,%f136

.LSSN1024:

/*    755 */	sxar2
/*    755 */	fcmpgeed	%f126,%f142,%f140
/*    755 */	fcmpleed	%f130,%f138,%f144

.LSSN1025:

/*    757 */	sxar2
/*    757 */	fcmpgeed	%f130,%f142,%f146
/*    757 */	fcmpleed	%f134,%f138,%f138

.LSSN1026:

/*    756 */	sxar2
/*    756 */	fcmpgeed	%f134,%f142,%f142
/*    756 */	fselmovd	%f148,%f126,%f136,%f126
.LSSN1027:

.LSSN1028:

/*    757 */	sxar2
/*    757 */	fselmovd	%f148,%f130,%f144,%f130
/*    757 */	fselmovd	%f148,%f134,%f138,%f134
.LSSN1029:

.LSSN1030:

/*    755 */	sxar2
/*    755 */	fmaddd	%f154,%f126,%f150,%f152
/*    755 */	fmaddd	%f154,%f130,%f150,%f156
.LSSN1031:

.LSSN1032:

/*    756 */	sxar2
/*    756 */	fmaddd	%f154,%f134,%f150,%f154
/*    756 */	fdtox	%f152,%f152
.LSSN1033:

.LSSN1034:

/*    757 */	sxar2
/*    757 */	fdtox	%f156,%f156
/*    757 */	fdtox	%f154,%f154
.LSSN1035:


/*    756 */	sxar2
/*    756 */	fxtod	%f152,%f158
/*    756 */	fpmaddx	%f152,%f164,%f160,%f162

.LSSN1036:

/*    755 */	sxar2
/*    755 */	std	%f152,[%fp+%xg14]
/*    755 */	fxtod	%f156,%f166

.LSSN1037:

/*    757 */	sxar2
/*    757 */	fpmaddx	%f156,%f164,%f160,%f168
/*    757 */	fxtod	%f154,%f170

.LSSN1038:

/*    756 */	sxar2
/*    756 */	fpmaddx	%f154,%f164,%f160,%f164
/*    756 */	fsubd	%f158,%f172,%f158


/*    756 */	sxar2
/*    756 */	fpmaddxhi	%f162,%f174,%f148,%f162
/*    756 */	ldx	[%fp+%xg14],%xg21
.LSSN1039:


/*    755 */	sxar2
/*    755 */	fsubd	%f166,%f172,%f166
/*    755 */	fpmaddxhi	%f168,%f174,%f148,%f168

.LSSN1040:

/*    757 */	sxar2
/*    757 */	std	%f156,[%fp+%xg16]
/*    757 */	fsubd	%f170,%f172,%f170

.LSSN1041:

/*    756 */	sxar2
/*    756 */	fpmaddxhi	%f164,%f174,%f148,%f164
/*    756 */	sub	%xg21,%xg20,%xg21


/*    756 */	sxar2
/*    756 */	and	%xg21,255,%xg21
/*    756 */	fmaddd	%f176,%f158,%f126,%f126


/*    756 */	sxar2
/*    756 */	fpmaddx	%f162,%f178,%f318,%f162
/*    756 */	sllx	%xg21,4,%xg21
.LSSN1042:


/*    755 */	sxar2
/*    755 */	fmaddd	%f176,%f166,%f130,%f130
/*    755 */	fpmaddx	%f168,%f178,%f318,%f168
.LSSN1043:


/*    756 */	sxar2
/*    756 */	ldd	[%xg15+%xg21],%f190
/*    756 */	add	%xg21,8,%xg21

.LSSN1044:

/*    757 */	sxar2
/*    757 */	ldd	[%xg15+%xg21],%f198
/*    757 */	fmaddd	%f176,%f170,%f134,%f176

.LSSN1045:

/*    756 */	sxar2
/*    756 */	fpmaddx	%f164,%f178,%f318,%f164
/*    756 */	fmaddd	%f180,%f158,%f126,%f158
.LSSN1046:

.LSSN1047:

/*    757 */	sxar2
/*    757 */	fmaddd	%f180,%f166,%f130,%f166
/*    757 */	fmaddd	%f180,%f170,%f176,%f180
.LSSN1048:


/*    756 */	sxar2
/*    756 */	fmaddd	%f186,%f158,%f182,%f184
/*    756 */	fmuld	%f190,%f158,%f188
.LSSN1049:

.LSSN1050:

/*    757 */	sxar2
/*    757 */	fmaddd	%f186,%f166,%f182,%f192
/*    757 */	fmaddd	%f186,%f180,%f182,%f186
.LSSN1051:

.LSSN1052:

/*    755 */	sxar2
/*    755 */	fmaddd	%f158,%f184,%f194,%f184
/*    755 */	fmaddd	%f166,%f192,%f194,%f192
.LSSN1053:

.LSSN1054:

/*    756 */	sxar2
/*    756 */	fmaddd	%f180,%f186,%f194,%f186
/*    756 */	fmaddd	%f158,%f184,%f196,%f158
.LSSN1055:

.LSSN1056:

/*    757 */	sxar2
/*    757 */	fmaddd	%f166,%f192,%f196,%f192
/*    757 */	fmaddd	%f180,%f186,%f196,%f186
.LSSN1057:


/*    756 */	sxar2
/*    756 */	fmaddd	%f188,%f158,%f198,%f188
/*    756 */	faddd	%f190,%f188,%f190


/*    756 */	sxar2
/*    756 */	fmuld	%f162,%f190,%f162
/*    756 */	fselmovd	%f148,%f162,%f136,%f162


/*    756 */	sxar2
/*    756 */	fselmovd	%f66,%f162,%f140,%f162
/*    756 */	fsubd	%f318,%f162,%f162


/*    756 */	sxar2
/*    756 */	fmaddd	%f162,%f100,%f94,%f162
/*    756 */	std	%f162,[%xg0+%xg2]
.LSSN1058:

.LSSN1059:

/*    757 */	sxar2
/*    757 */	ldx	[%fp+%xg16],%xg22
/*    757 */	std	%f154,[%fp+%xg17]
.LSSN1060:


/*    755 */	sxar2
/*    755 */	sub	%xg22,%xg20,%xg22
/*    755 */	and	%xg22,255,%xg22


/*    755 */	sxar2
/*    755 */	sllx	%xg22,4,%xg22
/*    755 */	ldd	[%xg15+%xg22],%f200


/*    755 */	sxar2
/*    755 */	add	%xg22,8,%xg22
/*    755 */	ldd	[%xg15+%xg22],%f202


/*    755 */	sxar2
/*    755 */	fmuld	%f200,%f166,%f166
/*    755 */	fmaddd	%f166,%f192,%f202,%f166


/*    755 */	sxar2
/*    755 */	faddd	%f200,%f166,%f200
/*    755 */	fmuld	%f168,%f200,%f168


/*    755 */	sxar2
/*    755 */	fselmovd	%f148,%f168,%f144,%f168
/*    755 */	fselmovd	%f66,%f168,%f146,%f168


/*    755 */	sxar2
/*    755 */	fsubd	%f318,%f168,%f168
/*    755 */	fmaddd	%f168,%f108,%f102,%f168

.LSSN1061:

/*    757 */	sxar2
/*    757 */	std	%f168,[%g2+%xg2]
/*    757 */	ldx	[%fp+%xg17],%xg23


/*    757 */	sxar2
/*    757 */	sub	%xg23,%xg20,%xg23
/*    757 */	and	%xg23,255,%xg23


/*    757 */	sxar2
/*    757 */	sllx	%xg23,4,%xg23
/*    757 */	ldd	[%xg15+%xg23],%f204


/*    757 */	sxar2
/*    757 */	add	%xg23,8,%xg23
/*    757 */	ldd	[%xg15+%xg23],%f206


/*    757 */	sxar2
/*    757 */	fmuld	%f204,%f180,%f180
/*    757 */	fmaddd	%f180,%f186,%f206,%f180


/*    757 */	sxar2
/*    757 */	faddd	%f204,%f180,%f204
/*    757 */	fmuld	%f164,%f204,%f164


/*    757 */	sxar2
/*    757 */	fselmovd	%f148,%f164,%f138,%f148
/*    757 */	fselmovd	%f66,%f148,%f142,%f66


/*    757 */	sxar2
/*    757 */	fsubd	%f318,%f66,%f66
/*    757 */	fmaddd	%f66,%f92,%f110,%f66

/*    757 */	sxar1
/*    757 */	std	%f66,[%g1+%xg2]
.LSSN1062:

/*    758 */	ba	.L688
	nop


.L665:
.LSSN1063:

/*    726 */	sxar1
/*    726 */	cmp	%xg5,%g0

/*    726 */	be	.L688
	nop


.L666:


/*    726 */	sxar2
/*    726 */	sra	%xg5,31,%xg14
/*    726 */	andn	%xg5,%xg14,%xg5


/*    726 */	sxar2
/*    726 */	srl	%xg5,31,%xg18
/*    726 */	add	%xg5,%xg18,%xg18


/*    726 */	sxar2
/*    726 */	sra	%xg18,1,%xg18
/*    726 */	add	%xg18,%xg18,%xg17


/*    726 */	sxar2
/*    726 */	sra	%xg18,%g0,%xg16
/*    726 */	sub	%xg5,%xg17,%xg17

/*    726 */	sxar1
/*    726 */	cmp	%xg18,%g0

/*    726 */	be	.L671
	nop


.L667:



/*    726 */	sxar2
/*    726 */	fmovd	%f440,%f184
/*    726 */	fmovd	%f318,%f62

.LSSN1064:


/*    758 */	sxar2
/*    758 */	sethi	%h44(.LB0+30720144),%xg30
/*    758 */	ldd	[%xg1+984],%f186


/*    758 */	sxar2
/*    758 */	or	%xg30,%m44(.LB0+30720144),%xg30
/*    758 */	sethi	%hi(157952),%xg11


/*    758 */	sxar2
/*    758 */	fzero,s	%f190
/*    758 */	ldd	[%xg1+984],%f442



/*    758 */	sxar2
/*    758 */	sllx	%xg30,12,%xg30
/*    758 */	ldd	[%xg1+936],%f192

/*    758 */	sxar1
/*    758 */	ldd	[%xg1+968],%f194


/*    758 */	sethi	%h44(__fj_dlogexp2_const_),%o3


/*    758 */	sxar2
/*    758 */	xor	%xg11,-257,%xg11
/*    758 */	sethi	%hi(233920),%xg15


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+968],%f450
/*    758 */	ldd	[%xg1+960],%f200




/*    758 */	sxar2
/*    758 */	or	%xg30,%l44(.LB0+30720144),%xg30
/*    758 */	ldd	[%xg1+1032],%f196

/*    758 */	sxar1
/*    758 */	ldd	[%xg1+1032],%f452


/*    758 */	or	%o3,%m44(__fj_dlogexp2_const_),%o3


/*    758 */	sxar2
/*    758 */	add	%xg3,%fp,%l3
/*    758 */	xor	%xg15,-449,%xg15


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1040],%f198
/*    758 */	ldd	[%xg1+1040],%f454



/*    758 */	sxar2
/*    758 */	add	%xg11,%xg4,%xg11
/*    758 */	ldd	[%xg1+1048],%f202

/*    758 */	sxar1
/*    758 */	ldd	[%xg1+1048],%f458


/*    758 */	sethi	%hi(237968),%g5


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+944],%f204
/*    758 */	ldd	[%xg1+952],%f208


/*    758 */	sethi	%hi(237976),%o0


/*    758 */	sllx	%o3,12,%o3


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1016],%f210
/*    758 */	ldd	[%xg1+1008],%f212


/*    758 */	sethi	%hi(237984),%o4

/*    758 */	sethi	%hi(237992),%o5


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1008],%f468
/*    758 */	ldd	[%xg1+1000],%f214


/*    758 */	sethi	%hi(238000),%o7


/*    758 */	sxar2
/*    758 */	sethi	%hi(238008),%xg2
/*    758 */	add	%xg30,64,%xg26


/*    758 */	sxar2
/*    758 */	add	%xg30,16,%xg27
/*    758 */	ldd	[%xg1+1000],%f470



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+992],%f216
/*    758 */	add	%xg30,24,%xg22


/*    758 */	sxar2
/*    758 */	add	%xg30,72,%xg23
/*    758 */	ldd	[%xg1+992],%f472



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1056],%f206
/*    758 */	add	%xg30,48,%xg31


/*    758 */	sxar2
/*    758 */	add	%xg30,8,%xg24
/*    758 */	ldd	[%xg1+1056],%f462



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+976],%f188
/*    758 */	add	%xg30,56,%xg25


/*    758 */	sxar2
/*    758 */	add	%xg30,80,%g3
/*    758 */	ldd	[%xg1+976],%f444



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1024],%f218
/*    758 */	add	%xg30,32,%g4


/*    758 */	sxar2
/*    758 */	add	%xg30,40,%xg28
/*    758 */	ldd	[%xg1+1024],%f474



/*    758 */	sxar2
/*    758 */	add	%xg30,88,%xg29
/*    758 */	add	%l3,%xg15,%l3


/*    758 */	sxar2
/*    758 */	add	%xg11,%fp,%xg11
/*    758 */	add	%xg4,%xg0,%xg19

/*    758 */	sxar1
/*    758 */	mov	%xg4,%xg21

/*    758 */	xor	%g5,-401,%g5

/*    758 */	xor	%o0,-409,%o0

/*    758 */	sethi	%hi(524288),%o2

/*    758 */	or	%o3,%l44(__fj_dlogexp2_const_),%o3

/*    758 */	xor	%o4,-417,%o4

/*    758 */	xor	%o5,-425,%o5


.LSSN1065:

/*    726 */	sxar2
/*    726 */	xor	%xg2,-441,%xg2
/*    726 */	cmp	%xg18,15

/*    726 */	bl	.L849
/*    726 */	xor	%o7,-433,%o7


.L845:


.L852:


/*    726 */	sxar2
/*    726 */	ldsw	[%l3+-4032],%xg14
/*    726 */	ldsw	[%l3+-4028],%xg15


/*    726 */	sxar2
/*    726 */	add	%l3,8,%xg5
/*    726 */	add	%xg11,16,%xg6

/*    726 */	sxar1
/*    726 */	ldd,s	[%xg11],%f50

/*    726 */	ldsw	[%l3+-4024],%l0


/*    726 */	sxar2
/*    726 */	add	%xg11,48,%xg10
/*    726 */	add	%l3,32,%xg12

/*    726 */	sxar1
/*    726 */	add	%l3,16,%xg7

/*    726 */	ldsw	[%l3+-4020],%l2


/*    726 */	sxar2
/*    726 */	add	%l3,24,%xg9
/*    726 */	ldd,s	[%xg11+16],%f32


/*    726 */	sxar2
/*    726 */	add	%xg11,32,%xg8
/*    726 */	add	%xg11,64,%xg13

/*    726 */	sxar1
/*    726 */	ldsw	[%l3+-4008],%xg9

/*    726 */	ldsw	[%l3+-4004],%l1


/*    726 */	sxar2
/*    726 */	srl	%xg14,%g0,%xg14
/*    726 */	srl	%xg15,%g0,%xg15


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+48],%f48
/*    726 */	add	%xg14,%xg14,%xg5


/*    726 */	sxar2
/*    726 */	add	%xg15,%xg15,%xg6
/*    726 */	ldd,s	[%xg11+32],%f40


/*    726 */	sxar2
/*    726 */	ldsw	[%l3+-4016],%xg7
/*    726 */	add	%xg5,%xg14,%xg5


/*    726 */	sxar2
/*    726 */	add	%xg6,%xg15,%xg6
/*    726 */	ldsw	[%l3+-4012],%xg8


/*    726 */	sxar2
/*    726 */	sllx	%xg5,4,%xg5
/*    726 */	sllx	%xg6,4,%xg6


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg22],%f34
/*    726 */	ldd	[%xg6+%xg22],%f290

/*    726 */	srl	%l0,%g0,%l0

/*    726 */	srl	%l2,%g0,%l2



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg23],%f36
/*    726 */	ldd	[%xg6+%xg23],%f292


/*    726 */	sxar2
/*    726 */	add	%l0,%l0,%xg10
/*    726 */	add	%l2,%l2,%xg12



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg28],%f38
/*    726 */	ldd	[%xg6+%xg28],%f294


/*    726 */	sxar2
/*    726 */	add	%xg10,%l0,%xg10
/*    726 */	add	%xg12,%l2,%xg12



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg29],%f42
/*    726 */	ldd	[%xg6+%xg29],%f298


/*    726 */	sxar2
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	sllx	%xg12,4,%xg12



/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg28],%f52
/*    726 */	ldd	[%xg12+%xg28],%f308


/*    726 */	sxar1
/*    726 */	srl	%xg9,%g0,%xg9

/*    726 */	srl	%l1,%g0,%l1


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg29],%f54
/*    726 */	fsubd,s	%f36,%f34,%f36

/*    726 */	sxar1
/*    726 */	add	%xg9,%xg9,%xg14

/*    726 */	add	%l1,%l1,%l0



/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg29],%f310
/*    726 */	ldd	[%xg5+%xg25],%f64

/*    726 */	sxar1
/*    726 */	add	%xg14,%xg9,%xg14

/*    726 */	add	%l0,%l1,%l0


/*    726 */	sxar2
/*    726 */	fsubd,s	%f42,%f38,%f42
/*    726 */	ldd	[%xg5+%xg24],%f60

/*    726 */	sxar1
/*    726 */	sllx	%xg14,4,%xg14

/*    726 */	sllx	%l0,4,%l0


/*    726 */	sxar2
/*    726 */	srl	%xg7,%g0,%xg7
/*    726 */	srl	%xg8,%g0,%xg8


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg24],%f316
/*    726 */	ldd	[%xg6+%xg25],%f320




/*    726 */	sxar2
/*    726 */	add	%xg7,%xg7,%xg13
/*    726 */	add	%xg8,%xg8,%xg15


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg22],%f56
/*    726 */	ldd	[%xg12+%xg22],%f312



/*    726 */	sxar2
/*    726 */	add	%xg13,%xg7,%xg13
/*    726 */	add	%xg15,%xg8,%xg15


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg23],%f58
/*    726 */	fsubd,s	%f54,%f52,%f54


/*    726 */	sxar2
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sllx	%xg15,4,%xg15


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg23],%f314
/*    726 */	fmaddd,s	%f50,%f36,%f34,%f36



/*    726 */	sxar2
/*    726 */	add	%l3,40,%xg7
/*    726 */	fsubd,s	%f64,%f60,%f64


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg28],%f80
/*    726 */	fmaddd,s	%f50,%f42,%f38,%f42



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg28],%f336
/*    726 */	ldd	[%xg14+%xg29],%f82



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg29],%f338
/*    726 */	ldd	[%xg13+%xg28],%f68


/*    726 */	sxar2
/*    726 */	fsubd,s	%f58,%f56,%f58
/*    726 */	fmaddd,s	%f32,%f54,%f52,%f54


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+64],%f52
/*    726 */	ldd	[%xg15+%xg28],%f324



/*    726 */	sxar2
/*    726 */	frcpad,s	%f36,%f66
/*    726 */	ldd	[%xg13+%xg29],%f70


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f64,%f60,%f64
/*    726 */	fsubd,s	%f82,%f80,%f82



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg29],%f326
/*    726 */	frcpad,s	%f42,%f72


/*    726 */	sxar2
/*    726 */	ldsw	[%l3+-4000],%xg8
/*    726 */	ldsw	[%l3+-3996],%xg7


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg25],%f78
/*    726 */	fmaddd,s	%f32,%f58,%f56,%f58


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg24],%f76
/*    726 */	frcpad,s	%f54,%f74



/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg24],%f332
/*    726 */	fnmsubd,s	%f66,%f36,%f62,%f36


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f66,%f66
/*    726 */	ldd	[%xg12+%xg25],%f334



/*    726 */	sxar2
/*    726 */	frcpad,s	%f64,%f88
/*    726 */	srl	%xg8,%g0,%xg8


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f48,%f82,%f80,%f82
/*    726 */	ldd	[%xg13+%xg22],%f228


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f72,%f42,%f62,%f42
/*    726 */	fmuld,s	%f184,%f72,%f72


/*    726 */	sxar2
/*    726 */	srl	%xg7,%g0,%xg7
/*    726 */	fsubd,s	%f70,%f68,%f70



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg22],%f484
/*    726 */	add	%xg8,%xg8,%xg9


/*    726 */	sxar2
/*    726 */	add	%xg7,%xg7,%l1
/*    726 */	ldd	[%xg13+%xg23],%f230


/*    726 */	sxar2
/*    726 */	frcpad,s	%f58,%f84
/*    726 */	add	%xg9,%xg8,%xg9


/*    726 */	sxar2
/*    726 */	add	%l1,%xg7,%l1
/*    726 */	ldd	[%xg15+%xg23],%f486



/*    726 */	sxar2
/*    726 */	fsubd,s	%f78,%f76,%f78
/*    726 */	fnmsubd,s	%f74,%f54,%f62,%f54


/*    726 */	sxar2
/*    726 */	sllx	%xg9,4,%xg9
/*    726 */	ldd	[%xg13+%xg25],%f252


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f36,%f36,%f36,%f90
/*    726 */	fmuld,s	%f36,%f36,%f98

/*    726 */	sllx	%l1,4,%l1


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg24],%f250
/*    726 */	fnmsubd,s	%f88,%f64,%f62,%f64


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f88,%f88
/*    726 */	ldd	[%xg15+%xg24],%f506


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f42,%f42,%f42,%f102
/*    726 */	fmuld,s	%f42,%f42,%f108



/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f74,%f74
/*    726 */	ldd	[%xg15+%xg25],%f508



/*    726 */	sxar2
/*    726 */	frcpad,s	%f82,%f226
/*    726 */	fnmsubd,s	%f84,%f58,%f62,%f58


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f84,%f84
/*    726 */	ldd	[%xg14+%xg22],%f96


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f54,%f54,%f54,%f110
/*    726 */	fmuld,s	%f54,%f54,%f86



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg22],%f352
/*    726 */	fmaddd,s	%f90,%f66,%f66,%f90


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f98,%f98,%f36,%f98
/*    726 */	ldd	[%xg14+%xg23],%f104


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg23],%f360
/*    726 */	fmaddd,s	%f64,%f64,%f64,%f114



/*    726 */	sxar2
/*    726 */	fmuld,s	%f64,%f64,%f220
/*    726 */	fmaddd,s	%f102,%f72,%f72,%f102


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f108,%f108,%f42,%f108
/*    726 */	ldd	[%xg14+%xg25],%f34


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f70,%f68,%f70
/*    726 */	ldd	[%xg9+%xg28],%f68


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f226,%f82,%f62,%f82
/*    726 */	ldd	[%l1+%xg28],%f324



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f58,%f58,%f112
/*    726 */	fmuld,s	%f58,%f58,%f92


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f78,%f76,%f78
/*    726 */	ldd	[%xg9+%xg29],%f76


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f86,%f86,%f54,%f86
/*    726 */	ldd	[%l1+%xg29],%f332



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f110,%f74,%f74,%f110
/*    726 */	fmaddd,s	%f98,%f90,%f66,%f98


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f114,%f88,%f88,%f114
/*    726 */	fmaddd,s	%f220,%f220,%f64,%f220


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg24],%f140
/*    726 */	fmaddd,s	%f108,%f102,%f72,%f108


/*    726 */	sxar2
/*    726 */	fsubd,s	%f230,%f228,%f230
/*    726 */	ldd	[%l0+%xg24],%f396



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f82,%f82,%f82,%f244
/*    726 */	fmuld,s	%f82,%f82,%f44



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg25],%f290
/*    726 */	fmaddd,s	%f112,%f84,%f84,%f112


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f92,%f58,%f92
/*    726 */	ldd	[%xg9+%xg22],%f72


/*    726 */	sxar2
/*    726 */	frcpad,s	%f70,%f100
/*    726 */	frcpad,s	%f78,%f222



/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg22],%f328
/*    726 */	fmaddd,s	%f86,%f110,%f74,%f86


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f98,%f186,%f232
/*    726 */	ldd	[%xg9+%xg23],%f80


/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg23],%f336
/*    726 */	fmaddd,s	%f220,%f114,%f88,%f220



/*    726 */	sxar2
/*    726 */	fsubd,s	%f252,%f250,%f252
/*    726 */	ldd	[%xg5+%g4],%f132


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f108,%f186,%f234
/*    726 */	fmaddd,s	%f40,%f230,%f228,%f230



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%g4],%f388
/*    726 */	fmaddd,s	%f44,%f44,%f82,%f44


/*    726 */	sxar2
/*    726 */	fsubd,s	%f76,%f68,%f76
/*    726 */	ldd	[%xg5+%g3],%f180


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f112,%f84,%f92
/*    726 */	fmuld,s	%f184,%f226,%f226


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f100,%f70,%f62,%f70
/*    726 */	ldd	[%xg6+%g3],%f436



/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f222,%f78,%f62,%f78
/*    726 */	fmuld,s	%f184,%f100,%f100


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f98,%f232,%f238
/*    726 */	ldd	[%xg10+%g3],%f154


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f86,%f186,%f236
/*    726 */	fcmpleed,s	%f220,%f186,%f254



/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%g3],%f410
/*    726 */	fselmovd,s	%f190,%f108,%f234,%f242


/*    726 */	sxar2
/*    726 */	frcpad,s	%f230,%f246
/*    726 */	ldd,s	[%xg11+80],%f58


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f252,%f250,%f252
/*    726 */	fmaddd,s	%f52,%f76,%f68,%f76


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg24],%f178
/*    726 */	fmuld,s	%f184,%f222,%f222


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f92,%f186,%f42
/*    726 */	ldd	[%l1+%xg24],%f434



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f70,%f70,%f70,%f224
/*    726 */	fmuld,s	%f70,%f70,%f38


/*    726 */	sxar2
/*    726 */	fmuld,s	%f78,%f78,%f94
/*    726 */	fmaddd,sc	%f192,%f238,%f194,%f54


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f78,%f78,%f78,%f240
/*    726 */	fselmovd,s	%f190,%f220,%f254,%f82


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f86,%f236,%f248
/*    726 */	fmaddd,sc	%f192,%f242,%f194,%f64


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f246,%f230,%f62,%f230
/*    726 */	frcpad,s	%f252,%f122


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f92,%f42,%f110
/*    726 */	frcpad,s	%f76,%f138


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f100,%f100,%f224
/*    726 */	fmaddd,s	%f38,%f38,%f70,%f38


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f94,%f94,%f78,%f94
/*    726 */	fdtox,s	%f54,%f54


/*    726 */	sxar2
/*    726 */	fsubd,s	%f104,%f96,%f104
/*    726 */	fmaddd,sc	%f192,%f82,%f194,%f112


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f248,%f194,%f78
/*    726 */	fdtox,s	%f64,%f64


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f246,%f246
/*    726 */	fmaddd,s	%f230,%f230,%f230,%f114


/*    726 */	sxar2
/*    726 */	fmuld,s	%f230,%f230,%f106
/*    726 */	fmaddd,sc	%f192,%f110,%f194,%f134


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f38,%f224,%f100,%f38
/*    726 */	fnmsubd,s	%f122,%f252,%f62,%f252

/*    726 */	sxar1
/*    726 */	fxtod,s	%f54,%f120


/*    726 */	std	%f54,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f138,%f76,%f62,%f76
/*    726 */	fmaddd,s	%f240,%f222,%f222,%f240


/*    726 */	sxar2
/*    726 */	std	%f310,[%o0+%fp]
/*    726 */	fdtox,s	%f112,%f112


/*    726 */	sxar2
/*    726 */	fdtox,s	%f78,%f78
/*    726 */	fxtod,s	%f64,%f124



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f244,%f226,%f226,%f244
/*    726 */	std	%f64,[%o7+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f48,%f104,%f96,%f104
/*    726 */	fmaddd,s	%f114,%f246,%f246,%f114


/*    726 */	sxar2
/*    726 */	fdtox,s	%f134,%f134
/*    726 */	fcmpleed,s	%f38,%f186,%f60


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f106,%f106,%f230,%f106
/*    726 */	fnmsubd,sc	%f200,%f62,%f120,%f120


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f122,%f122
/*    726 */	fxtod,s	%f112,%f224



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f252,%f252,%f252,%f84
/*    726 */	fnmsubd,sc	%f200,%f62,%f124,%f124

/*    726 */	sxar1
/*    726 */	fmuld,s	%f252,%f252,%f36


/*    726 */	ldx	[%g5+%fp],%i0

/*    726 */	ldx	[%o0+%fp],%i5


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f138,%f138
/*    726 */	fmaddd,s	%f76,%f76,%f76,%f90

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f94,%f240,%f222,%f94

/*    726 */	ldsw	[%l3+-3992],%l2

/*    726 */	ldsw	[%l3+-3988],%l4



/*    726 */	sxar2
/*    726 */	fmuld,s	%f76,%f76,%f56
/*    726 */	fselmovd,s	%f190,%f38,%f60,%f182


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f44,%f244,%f226,%f44
/*    726 */	ldx	[%o7+%fp],%xg8


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f64,%f196,%f198,%f230
/*    726 */	fmaddd,sc	%f204,%f120,%f238,%f238


/*    726 */	sxar2
/*    726 */	std	%f320,[%xg2+%fp]
/*    726 */	frcpad,s	%f104,%f74

/*    726 */	sub	%i0,%o2,%i0

/*    726 */	sub	%i5,%o2,%i5


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f224,%f224
/*    726 */	fmaddd,sc	%f204,%f124,%f242,%f242

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f106,%f114,%f246,%f106

/*    726 */	srl	%l2,%g0,%l2

/*    726 */	srl	%l4,%g0,%l4


/*    726 */	sxar2
/*    726 */	fxtod,s	%f134,%f228
/*    726 */	sub	%xg8,%o2,%xg8


/*    726 */	sxar2
/*    726 */	add	%l2,%l2,%xg7
/*    726 */	fmaddd,s	%f84,%f122,%f122,%f84

/*    726 */	sxar1
/*    726 */	and	%xg8,255,%xg8

/*    726 */	add	%l4,%l4,%i4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f90,%f138,%f138,%f90
/*    726 */	fmaddd,s	%f36,%f36,%f252,%f36

/*    726 */	sxar1
/*    726 */	add	%xg7,%l2,%xg7

/*    726 */	add	%i4,%l4,%i4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f56,%f76,%f56
/*    726 */	fsubd,s	%f34,%f140,%f34


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f120,%f238,%f120
/*    726 */	ldx	[%xg2+%fp],%l5


/*    726 */	sxar2
/*    726 */	sllx	%xg8,4,%xg8
/*    726 */	sllx	%xg7,4,%xg7

/*    726 */	sxar1
/*    726 */	std	%f112,[%o4+%fp]

/*    726 */	sllx	%i4,4,%i4


/*    726 */	sxar2
/*    726 */	add	%xg8,8,%l6
/*    726 */	fmaddd,sc	%f204,%f224,%f82,%f82

/*    726 */	sxar1
/*    726 */	fcmpleed,s	%f94,%f186,%f130

/*    726 */	and	%i0,255,%i0


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f124,%f242,%f124
/*    726 */	ldd	[%xg8+%o3],%f156


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f182,%f194,%f136
/*    726 */	fcmpleed,s	%f44,%f186,%f118

/*    726 */	and	%i5,255,%i5


/*    726 */	sxar2
/*    726 */	std	%f134,[%g5+%fp]
/*    726 */	fxtod,s	%f78,%f222


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f230,%f202,%f190,%f230
/*    726 */	std	%f390,[%o0+%fp]

/*    726 */	sub	%l5,%o2,%l5

/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f74,%f104,%f62,%f104

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f80,%f72,%f80
/*    726 */	ldd	[%xg7+%xg28],%f160

/*    726 */	sllx	%l5,4,%l5


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f106,%f186,%f246
/*    726 */	fnmsubd,sc	%f200,%f62,%f228,%f228



/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg28],%f416
/*    726 */	ldd	[%l5+%o3],%f412

/*    726 */	add	%l5,8,%l5


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg29],%f162
/*    726 */	fmaddd,s	%f36,%f84,%f122,%f36


/*    726 */	sllx	%i0,4,%i0


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f124,%f212,%f128
/*    726 */	ldd	[%i4+%xg29],%f418

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f56,%f90,%f138,%f56


/*    726 */	sllx	%i5,4,%i5


/*    726 */	sxar2
/*    726 */	std	%f78,[%o7+%fp]
/*    726 */	fmaddd,s	%f48,%f34,%f140,%f34


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f224,%f82,%f224
/*    726 */	fselmovd,s	%f190,%f94,%f130,%f226


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f120,%f212,%f114
/*    726 */	ldd	[%l6+%o3],%f166



/*    726 */	sxar2
/*    726 */	ldd	[%l5+%o3],%f422
/*    726 */	fdtox,s	%f136,%f136


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f44,%f118,%f88
/*    726 */	ldd	[%i0+%o3],%f66



/*    726 */	sxar2
/*    726 */	ldd	[%i5+%o3],%f322
/*    726 */	fnmsubd,sc	%f200,%f62,%f222,%f222

/*    726 */	add	%i5,8,%i5


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%g4],%f76
/*    726 */	fsubd,s	%f162,%f160,%f162

/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f230,%f206,%f62,%f230

/*    726 */	add	%i0,8,%i0


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f52,%f80,%f72,%f80
/*    726 */	ldd	[%i5+%o3],%f408


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f124,%f128,%f214,%f128
/*    726 */	add	%xg11,80,%xg8


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f106,%f246,%f158
/*    726 */	ldd	[%xg12+%g4],%f332



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f228,%f110,%f110
/*    726 */	fcmpleed,s	%f36,%f186,%f250

/*    726 */	ldsw	[%l3+-3984],%i3

/*    726 */	ldsw	[%l3+-3980],%i2

/*    726 */	ldx	[%g5+%fp],%l4

/*    726 */	ldx	[%o0+%fp],%l5


/*    726 */	sxar2
/*    726 */	fmuld,s	%f104,%f104,%f46
/*    726 */	fcmpleed,s	%f56,%f186,%f242

/*    726 */	ldx	[%o7+%fp],%l6

/*    726 */	ldx	[%o4+%fp],%l2


/*    726 */	sxar2
/*    726 */	frcpad,s	%f34,%f64
/*    726 */	fmaddd,sc	%f210,%f224,%f212,%f68


/*    726 */	sxar2
/*    726 */	fmuld,s	%f66,%f120,%f126
/*    726 */	add	%l3,48,%xg11


/*    726 */	sxar2
/*    726 */	std	%f368,[%o5+%fp]
/*    726 */	fmaddd,s	%f58,%f162,%f160,%f162


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f226,%f194,%f244
/*    726 */	fmaddd,s	%f120,%f114,%f214,%f114

/*    726 */	srl	%i3,%g0,%i3


/*    726 */	sxar2
/*    726 */	std	%f334,[%xg2+%fp]
/*    726 */	fmaddd,s	%f124,%f128,%f216,%f128

/*    726 */	sxar1
/*    726 */	fmuld,s	%f156,%f124,%f124

/*    726 */	sub	%l4,%o2,%l4

/*    726 */	sub	%l5,%o2,%l5


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f74,%f74
/*    726 */	fmaddd,s	%f104,%f104,%f104,%f164

/*    726 */	sub	%l2,%o2,%l2

/*    726 */	and	%l4,255,%l4


/*    726 */	sxar2
/*    726 */	fxtod,s	%f136,%f240
/*    726 */	fmaddd,sc	%f192,%f88,%f194,%f100

/*    726 */	and	%l5,255,%l5

/*    726 */	and	%l2,255,%l2


/*    726 */	sxar2
/*    726 */	fsubd,s	%f180,%f132,%f180
/*    726 */	fmaddd,sc	%f204,%f222,%f248,%f248

/*    726 */	sllx	%l4,4,%l4

/*    726 */	sllx	%l5,4,%l5

/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f54,%f196,%f198,%f54

/*    726 */	sllx	%l2,4,%l2


/*    726 */	sxar2
/*    726 */	ldd	[%i0+%o3],%f152
/*    726 */	frcpad,s	%f162,%f70



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f158,%f194,%f90
/*    726 */	fmaddd,sc	%f208,%f228,%f110,%f228

/*    726 */	sub	%l6,%o2,%l6

/*    726 */	ldx	[%o5+%fp],%i5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f124,%f128,%f166,%f124
/*    726 */	frcpad,s	%f80,%f168

/*    726 */	and	%l6,255,%l6


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg23],%f72
/*    726 */	fselmovd,s	%f190,%f36,%f250,%f96

/*    726 */	sxar1
/*    726 */	fselmovd,s	%f190,%f56,%f242,%f102

/*    726 */	sllx	%l6,4,%l6


/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f122
/*    726 */	fmaddd,s	%f46,%f46,%f104,%f46

/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f64,%f34,%f62,%f34

/*    726 */	add	%l2,8,%i0



/*    726 */	sxar2
/*    726 */	ldd	[%l5+%o3],%f378
/*    726 */	fmaddd,s	%f120,%f114,%f216,%f120

/*    726 */	sxar1
/*    726 */	ldd	[%xg7+%xg22],%f114

/*    726 */	sub	%i5,%o2,%i5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f68,%f214,%f68
/*    726 */	fdtox,s	%f244,%f244


/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg22],%f370
/*    726 */	fnmsubd,s	%f70,%f162,%f62,%f162

/*    726 */	and	%i5,255,%i5



/*    726 */	sxar2
/*    726 */	fdtox,s	%f100,%f100
/*    726 */	fmaddd,s	%f164,%f74,%f74,%f164

/*    726 */	sxar1
/*    726 */	ldd	[%i4+%xg23],%f328

/*    726 */	sllx	%i5,4,%i5



/*    726 */	sxar2
/*    726 */	faddd,s	%f156,%f124,%f156
/*    726 */	fmaddd,s	%f50,%f180,%f132,%f180

/*    726 */	add	%i5,8,%l3


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%o3],%f176
/*    726 */	fnmsubd,sc	%f200,%f62,%f240,%f240


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f222,%f248,%f222
/*    726 */	ldd	[%i5+%o3],%f432



/*    726 */	sxar2
/*    726 */	fdtox,s	%f90,%f90
/*    726 */	fmuld,s	%f184,%f64,%f64


/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%l7
/*    726 */	fmaddd,sc	%f192,%f102,%f194,%f110


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f108,%f188,%f108
/*    726 */	ldd	[%l6+%o3],%f252


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f78,%f196,%f198,%f78
/*    726 */	fmaddd,sc	%f210,%f228,%f212,%f166


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg21+%g1],%f170
/*    726 */	fpmaddxhi,s	%f54,%f202,%f190,%f54


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f70,%f70
/*    726 */	fmuld,s	%f230,%f156,%f230


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg25],%f156
/*    726 */	fnmsubd,s	%f168,%f80,%f62,%f80

/*    726 */	sub	%l7,%o2,%l7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f34,%f34,%f84
/*    726 */	fmuld,s	%f34,%f34,%f116

/*    726 */	sxar1
/*    726 */	ldd	[%l1+%xg25],%f412


/*    726 */	and	%l7,255,%l7


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f96,%f194,%f104
/*    726 */	fsubd,s	%f154,%f76,%f154

/*    726 */	sllx	%l7,4,%l7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f162,%f162,%f150
/*    726 */	fmuld,s	%f162,%f162,%f128


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f46,%f164,%f74,%f46
/*    726 */	ldd	[%l3+%o3],%f330


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f68,%f216,%f68
/*    726 */	fxtod,s	%f244,%f248


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f126,%f120,%f152,%f126
/*    726 */	ldd	[%i0+%o3],%f74


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f230,%f234,%f230
/*    726 */	fxtod,s	%f100,%f142


/*    726 */	sxar2
/*    726 */	fxtod,s	%f90,%f148
/*    726 */	fpmaddxhi,s	%f78,%f202,%f190,%f78


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f228,%f166,%f214,%f166
/*    726 */	fmuld,s	%f122,%f228,%f160


/*    726 */	sxar2
/*    726 */	fsubd,s	%f180,%f170,%f180
/*    726 */	fmaddd,s	%f84,%f64,%f64,%f84


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f240,%f182,%f182
/*    726 */	fpmaddx,s	%f54,%f206,%f62,%f54


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f150,%f70,%f70,%f150
/*    726 */	fpmaddx,s	%f134,%f196,%f198,%f134


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f230,%f108,%f230
/*    726 */	fdtox,s	%f104,%f104


/*    726 */	sxar2
/*    726 */	fsubd,s	%f72,%f114,%f72
/*    726 */	fmaddd,sc	%f210,%f222,%f212,%f234


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f116,%f116,%f34,%f116
/*    726 */	fdtox,s	%f110,%f110


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f168,%f168
/*    726 */	fmaddd,s	%f80,%f80,%f80,%f238


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f128,%f128,%f162,%f128
/*    726 */	fpmaddx,s	%f112,%f196,%f198,%f112


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f154,%f76,%f154
/*    726 */	fsubd,s	%f156,%f178,%f156

/*    726 */	sxar1
/*    726 */	fmuld,s	%f176,%f224,%f224

.L669:


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f222,%f234,%f214,%f234
/*    726 */	faddd,s	%f66,%f126,%f66

/*    726 */	srl	%i2,%g0,%i2

/*    726 */	sxar1
/*    726 */	ldd	[%l7+%o3],%f508

/*    726 */	add	%i3,%i3,%l2

/*    726 */	add	%i2,%i2,%l3


/*    726 */	sxar2
/*    726 */	fmuld,s	%f80,%f80,%f124
/*    726 */	fmaddd,s	%f238,%f168,%f168,%f238

/*    726 */	add	%l2,%i3,%l2

/*    726 */	add	%l3,%i2,%l3


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f46,%f186,%f120
/*    726 */	fmaddd,s	%f128,%f150,%f70,%f128

/*    726 */	sllx	%l2,4,%l2

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f148,%f148
/*    726 */	fpmaddxhi,s	%f112,%f202,%f190,%f112



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg26],%f34
/*    726 */	ldd	[%xg6+%xg26],%f290


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f116,%f84,%f64,%f116
/*    726 */	fmaddd,s	%f52,%f156,%f178,%f156



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f68,%f74,%f224
/*    726 */	fnmsubd,sc	%f200,%f62,%f142,%f142

/*    726 */	add	%l6,8,%l6

/*    726 */	add	%l7,8,%l7


/*    726 */	sxar2
/*    726 */	ldd	[%l6+%o3],%f76
/*    726 */	fmaddd,s	%f222,%f234,%f216,%f234


/*    726 */	sxar2
/*    726 */	ldd	[%l7+%o3],%f332
/*    726 */	fmuld,s	%f252,%f222,%f222


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg27],%f82
/*    726 */	ldd	[%xg6+%xg27],%f338


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f124,%f124,%f80,%f124
/*    726 */	fmuld,s	%f54,%f66,%f54


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg28],%f64
/*    726 */	fselmovd,s	%f190,%f46,%f120,%f70


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg28],%f320
/*    726 */	fcmpleed,s	%f128,%f186,%f66


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg29],%f68
/*    726 */	fmaddd,sc	%f204,%f148,%f158,%f158


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg29],%f324
/*    726 */	frcpad,s	%f156,%f74



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f116,%f186,%f164
/*    726 */	faddd,s	%f176,%f224,%f176


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f112,%f206,%f62,%f112
/*    726 */	ldd,s	[%xg8+16],%f172


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f240,%f182,%f240
/*    726 */	fmaddd,s	%f222,%f234,%f76,%f222




/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg31],%f108
/*    726 */	ldd	[%xg6+%xg31],%f364


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f54,%f232,%f54
/*    726 */	fcmpgeed,s	%f98,%f188,%f98



/*    726 */	add	%l4,8,%l4

/*    726 */	add	%l5,8,%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f34,%f82,%f34
/*    726 */	fselmovd,s	%f190,%f128,%f66,%f132



/*    726 */	sxar2
/*    726 */	fmovd,s	%f244,%f162
/*    726 */	ldd	[%l4+%o3],%f80


/*    726 */	sxar2
/*    726 */	ldd	[%l5+%o3],%f336
/*    726 */	fmaddd,sc	%f192,%f70,%f194,%f138


/*    726 */	sxar2
/*    726 */	fsubd,s	%f68,%f64,%f68
/*    726 */	fmovd,s	%f90,%f224



/*    726 */	sxar2
/*    726 */	std	%f162,[%o4+%fp]
/*    726 */	fmaddd,s	%f228,%f166,%f216,%f228


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f74,%f156,%f62,%f156
/*    726 */	std	%f224,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fxtod,s	%f104,%f76
/*    726 */	fmuld,s	%f112,%f176,%f112


/*    726 */	sxar2
/*    726 */	std	%f480,[%o0+%fp]
/*    726 */	faddd,s	%f252,%f222,%f252


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f78,%f206,%f62,%f78
/*    726 */	ldd	[%xg5+%xg30],%f84


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f54,%f98,%f54
/*    726 */	ldd	[%xg6+%xg30],%f340


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f34,%f82,%f34
/*    726 */	fmaddd,sc	%f192,%f132,%f194,%f82




/*    726 */	sxar2
/*    726 */	fmovd,s	%f136,%f222
/*    726 */	fdtox,s	%f138,%f138


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f68,%f64,%f68
/*    726 */	std	%f222,[%o7+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f160,%f228,%f80,%f160
/*    726 */	fnmsubd,sc	%f200,%f62,%f248,%f248


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f112,%f254,%f112
/*    726 */	fcmpgeed,s	%f220,%f188,%f220




/*    726 */	sxar2
/*    726 */	ldd,s	[%xg19],%f146
/*    726 */	fmuld,s	%f78,%f252,%f78


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f148,%f158,%f148
/*    726 */	ldsw	[%xg11+-4024],%l6


/*    726 */	sxar2
/*    726 */	ldsw	[%xg11+-4020],%l7
/*    726 */	ldd	[%l2+%xg22],%f224


/*    726 */	sxar2
/*    726 */	fsubd,s	%f108,%f84,%f108
/*    726 */	fselmovd,s	%f190,%f116,%f164,%f228


/*    726 */	sxar2
/*    726 */	fxtod,s	%f110,%f182
/*    726 */	fsubd,s	%f62,%f54,%f54

/*    726 */	ldx	[%g5+%fp],%i5


/*    726 */	sxar2
/*    726 */	frcpad,s	%f68,%f144
/*    726 */	fmaddd,s	%f58,%f72,%f114,%f72

/*    726 */	ldx	[%o0+%fp],%l4


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%g4],%f64
/*    726 */	ldd	[%xg15+%g4],%f320


/*    726 */	sxar2
/*    726 */	fsubd,s	%f34,%f146,%f34
/*    726 */	fmuld,s	%f184,%f74,%f74

/*    726 */	ldx	[%o7+%fp],%l5


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg22],%f480
/*    726 */	fmaddd,s	%f156,%f156,%f156,%f152


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f248,%f226,%f226
/*    726 */	ldd	[%l2+%xg23],%f178


/*    726 */	sxar2
/*    726 */	ldx	[%o4+%fp],%xg6
/*    726 */	fselmovd,s	%f218,%f112,%f220,%f112


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f78,%f236,%f78
/*    726 */	ldd	[%xg13+%g3],%f174

/*    726 */	sub	%i5,%o2,%i5


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f86,%f188,%f86
/*    726 */	fsubd,s	%f62,%f230,%f230

/*    726 */	sub	%l4,%o2,%l4

/*    726 */	and	%i5,255,%i5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f108,%f84,%f50
/*    726 */	fpmaddx,s	%f136,%f196,%f198,%f136

/*    726 */	and	%l4,255,%l4


/*    726 */	sxar2
/*    726 */	frcpad,s	%f72,%f166
/*    726 */	ldd,s	[%xg20],%f252

/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f144,%f68,%f62,%f68

/*    726 */	sllx	%i5,4,%i5

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f124,%f238,%f168,%f124
/*    726 */	fmaddd,sc	%f210,%f148,%f212,%f232


/*    726 */	sxar2
/*    726 */	std	%f418,[%o5+%fp]
/*    726 */	sub	%xg6,%o2,%xg6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f54,%f34,%f146,%f54
/*    726 */	fmuld,s	%f156,%f156,%f126


/*    726 */	sxar2
/*    726 */	ldd	[%i5+%o3],%f254
/*    726 */	ldd	[%l4+%o3],%f510


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f248,%f226,%f248
/*    726 */	fsubd,s	%f62,%f112,%f112


/*    726 */	sxar2
/*    726 */	fxtod,s	%f138,%f236
/*    726 */	ldd	[%xg15+%g3],%f430


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f78,%f86,%f78
/*    726 */	add	%xg21,16,%i2


/*    726 */	sxar2
/*    726 */	fsubd,s	%f50,%f252,%f50
/*    726 */	and	%xg6,255,%xg6


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f136,%f202,%f190,%f136
/*    726 */	ldd,s	[%i2+%g1],%f158


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg23],%f434
/*    726 */	ldd	[%xg7+%xg25],%f168


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f134,%f202,%f190,%f134
/*    726 */	fmuld,s	%f184,%f144,%f144


/*    726 */	sxar2
/*    726 */	std	%f478,[%xg2+%fp]
/*    726 */	sllx	%xg6,4,%xg6


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f166,%f72,%f62,%f72
/*    726 */	fmaddd,s	%f68,%f68,%f68,%f80



/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f228,%f194,%f140

/*    726 */	sub	%l5,%o2,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f148,%f232,%f214,%f232
/*    726 */	ldx	[%o5+%fp],%xg5



/*    726 */	sxar1
/*    726 */	std	%f54,[%xg19]

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	fmuld,s	%f254,%f148,%f108
/*    726 */	fmaddd,sc	%f210,%f248,%f212,%f114


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg24],%f226
/*    726 */	ldd	[%i4+%xg24],%f482


/*    726 */	sxar2
/*    726 */	fsubd,s	%f174,%f64,%f174
/*    726 */	fsubd,s	%f154,%f158,%f154

/*    726 */	sxar1
/*    726 */	ldd	[%xg6+%o3],%f222

/*    726 */	sllx	%l5,4,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f152,%f74,%f74,%f152
/*    726 */	fmaddd,sc	%f204,%f142,%f88,%f88


/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg25],%f424
/*    726 */	sub	%xg5,%o2,%xg5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f50,%f252,%f112
/*    726 */	fpmaddx,s	%f134,%f206,%f62,%f134


/*    726 */	sxar2
/*    726 */	fmuld,s	%f68,%f68,%f150
/*    726 */	fmaddd,s	%f80,%f144,%f144,%f80


/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%i3
/*    726 */	std	%f310,[%xg19+8]


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f90,%f196,%f198,%f90
/*    726 */	and	%xg5,255,%xg5




/*    726 */	sxar2
/*    726 */	fdtox,s	%f140,%f140
/*    726 */	ldd	[%l5+%o3],%f234


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f114,%f214,%f114
/*    726 */	sllx	%xg5,4,%xg5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f230,%f180,%f170,%f230
/*    726 */	fsubd,s	%f178,%f224,%f178


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f240,%f212,%f170
/*    726 */	ldd	[%xg5+%o3],%f478

/*    726 */	sub	%i3,%o2,%i3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f126,%f126,%f156,%f126
/*    726 */	add	%xg5,8,%xg5


/*    726 */	sxar2
/*    726 */	fdtox,s	%f82,%f82
/*    726 */	fmuld,s	%f184,%f166,%f166


/*    726 */	sxar2
/*    726 */	add	%xg6,8,%xg6
/*    726 */	fmaddd,s	%f72,%f72,%f72,%f220

/*    726 */	and	%i3,255,%i3



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%o3],%f494
/*    726 */	ldd	[%xg6+%o3],%f238

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f150,%f150,%f68,%f150

/*    726 */	sllx	%i3,4,%i3




/*    726 */	sxar2
/*    726 */	std	%f112,[%xg20]
/*    726 */	fpmaddx,s	%f244,%f196,%f198,%f244



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f174,%f64,%f174
/*    726 */	std	%f368,[%xg20+8]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f114,%f216,%f114
/*    726 */	fsubd,s	%f168,%f226,%f168


/*    726 */	sxar2
/*    726 */	std,s	%f230,[%xg21+%g1]
/*    726 */	fmuld,s	%f222,%f248,%f248

/*    726 */	srl	%l6,%g0,%l6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f170,%f214,%f170
/*    726 */	faddd,s	%f122,%f160,%f122

/*    726 */	srl	%l7,%g0,%l7


/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f490
/*    726 */	add	%l6,%l6,%xg5


/*    726 */	sxar2
/*    726 */	add	%l7,%l7,%xg6
/*    726 */	fmuld,s	%f72,%f72,%f146


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f220,%f166,%f166,%f220
/*    726 */	add	%xg5,%l6,%xg5


/*    726 */	sxar2
/*    726 */	add	%xg6,%l7,%xg6
/*    726 */	fcmpleed,s	%f124,%f186,%f162


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f150,%f80,%f144,%f150
/*    726 */	sllx	%xg5,4,%xg5


/*    726 */	sxar2
/*    726 */	sllx	%xg6,4,%xg6
/*    726 */	fnmsubd,sc	%f200,%f62,%f236,%f236



/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f244,%f202,%f190,%f244
/*    726 */	ldd	[%xg10+%xg26],%f68


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg26],%f324
/*    726 */	fmaddd,s	%f126,%f152,%f74,%f126



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f168,%f226,%f168
/*    726 */	fmaddd,s	%f248,%f114,%f238,%f248

/*    726 */	sxar1
/*    726 */	fnmsubd,sc	%f200,%f62,%f182,%f182

/*    726 */	add	%l5,8,%l5

/*    726 */	add	%i3,8,%i3

/*    726 */	ldd	[%l5+%o3],%f54


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f170,%f216,%f170
/*    726 */	ldd	[%i3+%o3],%f310


/*    726 */	sxar2
/*    726 */	fmuld,s	%f234,%f240,%f240
/*    726 */	ldd	[%xg10+%xg27],%f74


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg27],%f330
/*    726 */	fmaddd,s	%f146,%f146,%f72,%f146


/*    726 */	sxar2
/*    726 */	fmuld,s	%f134,%f122,%f134
/*    726 */	ldd	[%xg5+%xg28],%f80


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f124,%f162,%f252
/*    726 */	ldd	[%xg6+%xg28],%f336


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f150,%f186,%f64
/*    726 */	ldd	[%xg5+%xg29],%f84


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f236,%f70,%f70
/*    726 */	ldd	[%xg6+%xg29],%f340


/*    726 */	sxar2
/*    726 */	frcpad,s	%f168,%f34
/*    726 */	fcmpleed,s	%f126,%f186,%f144



/*    726 */	sxar2
/*    726 */	faddd,s	%f222,%f248,%f222
/*    726 */	fpmaddx,s	%f244,%f206,%f62,%f244


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg8+32],%f50
/*    726 */	fmaddd,sc	%f208,%f142,%f88,%f142




/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f170,%f54,%f240
/*    726 */	ldd	[%xg10+%xg31],%f98


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg31],%f354
/*    726 */	fselmovd,s	%f190,%f134,%f42,%f134

/*    726 */	sxar1
/*    726 */	fcmpgeed,s	%f92,%f188,%f92



/*    726 */	add	%i5,8,%i5

/*    726 */	add	%l4,8,%l4


/*    726 */	sxar2
/*    726 */	fsubd,s	%f68,%f74,%f68
/*    726 */	fselmovd,s	%f190,%f150,%f64,%f180



/*    726 */	sxar2
/*    726 */	fmovd,s	%f104,%f122
/*    726 */	ldd	[%i5+%o3],%f86


/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f342
/*    726 */	fmaddd,sc	%f192,%f252,%f194,%f152



/*    726 */	sxar2
/*    726 */	fsubd,s	%f84,%f80,%f84
/*    726 */	std	%f122,[%o4+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f148,%f232,%f216,%f148
/*    726 */	fnmsubd,s	%f34,%f168,%f62,%f168


/*    726 */	sxar2
/*    726 */	std	%f138,[%g5+%fp]
/*    726 */	fxtod,s	%f140,%f248


/*    726 */	sxar2
/*    726 */	fmuld,s	%f244,%f222,%f244
/*    726 */	std	%f394,[%o0+%fp]


/*    726 */	sxar2
/*    726 */	faddd,s	%f234,%f240,%f234
/*    726 */	fpmaddx,s	%f136,%f206,%f62,%f136


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg30],%f88
/*    726 */	fselmovd,s	%f218,%f134,%f92,%f134


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg30],%f344
/*    726 */	fmaddd,s	%f32,%f68,%f74,%f68



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f180,%f194,%f156
/*    726 */	fmovd,s	%f100,%f232



/*    726 */	sxar2
/*    726 */	fdtox,s	%f152,%f152
/*    726 */	fmaddd,s	%f50,%f84,%f80,%f84


/*    726 */	sxar2
/*    726 */	std	%f232,[%o7+%fp]
/*    726 */	fmaddd,s	%f108,%f148,%f86,%f108


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f76,%f76
/*    726 */	fselmovd,s	%f190,%f244,%f130,%f244


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f94,%f188,%f94
/*    726 */	ldd,s	[%xg19+16],%f114




/*    726 */	sxar2
/*    726 */	fmuld,s	%f136,%f234,%f136
/*    726 */	fmaddd,sc	%f208,%f236,%f70,%f236


/*    726 */	sxar2
/*    726 */	ldsw	[%xg11+-4016],%xg10
/*    726 */	ldsw	[%xg11+-4012],%xg12


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg22],%f230
/*    726 */	fsubd,s	%f98,%f88,%f98


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f126,%f144,%f92
/*    726 */	fxtod,s	%f82,%f176

/*    726 */	sxar1
/*    726 */	fsubd,s	%f62,%f134,%f134

/*    726 */	ldx	[%g5+%fp],%l4


/*    726 */	sxar2
/*    726 */	frcpad,s	%f84,%f112
/*    726 */	fmaddd,s	%f172,%f178,%f224,%f178

/*    726 */	ldx	[%o0+%fp],%l5


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%g4],%f70
/*    726 */	ldd	[%l0+%g4],%f326


/*    726 */	sxar2
/*    726 */	fsubd,s	%f68,%f114,%f68
/*    726 */	fmuld,s	%f184,%f34,%f34

/*    726 */	ldx	[%o7+%fp],%l7


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg22],%f486
/*    726 */	fmaddd,s	%f168,%f168,%f168,%f130


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f76,%f96,%f96
/*    726 */	ldd	[%xg5+%xg23],%f222

/*    726 */	ldx	[%o4+%fp],%l6


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f244,%f94,%f244
/*    726 */	fselmovd,s	%f190,%f136,%f60,%f136

/*    726 */	sxar1
/*    726 */	ldd	[%xg14+%g3],%f94

/*    726 */	sub	%l4,%o2,%l4


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f38,%f188,%f38
/*    726 */	fsubd,s	%f62,%f78,%f78

/*    726 */	sub	%l5,%o2,%l5

/*    726 */	and	%l4,255,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f98,%f88,%f98
/*    726 */	fpmaddx,s	%f100,%f196,%f198,%f100

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	frcpad,s	%f178,%f226
/*    726 */	ldd,s	[%xg20+16],%f60

/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f112,%f84,%f62,%f84

/*    726 */	sllx	%l4,4,%l4

/*    726 */	sllx	%l5,4,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f146,%f220,%f166,%f146
/*    726 */	fmaddd,sc	%f210,%f236,%f212,%f238

/*    726 */	sxar1
/*    726 */	std	%f378,[%o5+%fp]

/*    726 */	sub	%l6,%o2,%l6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f134,%f68,%f114,%f134
/*    726 */	fmuld,s	%f168,%f168,%f148


/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f68
/*    726 */	ldd	[%l5+%o3],%f324


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f76,%f96,%f76
/*    726 */	fsubd,s	%f62,%f244,%f244


/*    726 */	sxar2
/*    726 */	fxtod,s	%f152,%f54
/*    726 */	ldd	[%l0+%g3],%f350


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f136,%f38,%f136
/*    726 */	add	%xg21,32,%i0

/*    726 */	sxar1
/*    726 */	fsubd,s	%f98,%f60,%f98

/*    726 */	and	%l6,255,%l6


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f100,%f202,%f190,%f100
/*    726 */	ldd,s	[%i0+%g1],%f220


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg23],%f478
/*    726 */	ldd	[%l2+%xg25],%f232


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f90,%f202,%f190,%f90
/*    726 */	fmuld,s	%f184,%f112,%f112

/*    726 */	sxar1
/*    726 */	std	%f488,[%xg2+%fp]

/*    726 */	sllx	%l6,4,%l6


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f226,%f178,%f62,%f178
/*    726 */	fmaddd,s	%f84,%f84,%f84,%f72



/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f92,%f194,%f42

/*    726 */	sub	%l7,%o2,%l7

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f236,%f238,%f214,%f238

/*    726 */	ldx	[%o5+%fp],%i5



/*    726 */	sxar1
/*    726 */	std	%f134,[%xg19+16]

/*    726 */	and	%l7,255,%l7


/*    726 */	sxar2
/*    726 */	fmuld,s	%f68,%f236,%f122
/*    726 */	fmaddd,sc	%f210,%f76,%f212,%f160


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg24],%f86
/*    726 */	ldd	[%l3+%xg24],%f342


/*    726 */	sxar2
/*    726 */	fsubd,s	%f94,%f70,%f94
/*    726 */	fsubd,s	%f174,%f220,%f174

/*    726 */	sxar1
/*    726 */	ldd	[%l6+%o3],%f80

/*    726 */	sllx	%l7,4,%l7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f130,%f34,%f34,%f130
/*    726 */	fmaddd,sc	%f204,%f182,%f102,%f102

/*    726 */	sxar1
/*    726 */	ldd	[%l3+%xg25],%f488

/*    726 */	sub	%i5,%o2,%i5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f244,%f98,%f60,%f244
/*    726 */	fpmaddx,s	%f90,%f206,%f62,%f90


/*    726 */	sxar2
/*    726 */	fmuld,s	%f84,%f84,%f170
/*    726 */	fmaddd,s	%f72,%f112,%f112,%f72


/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%i3
/*    726 */	std	%f390,[%xg19+24]

/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f138,%f196,%f198,%f138

/*    726 */	and	%i5,255,%i5




/*    726 */	sxar2
/*    726 */	fdtox,s	%f42,%f42
/*    726 */	ldd	[%l7+%o3],%f88

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f76,%f160,%f214,%f160

/*    726 */	sllx	%i5,4,%i5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f78,%f154,%f158,%f78
/*    726 */	fsubd,s	%f222,%f230,%f222


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f142,%f212,%f240
/*    726 */	ldd	[%i5+%o3],%f336

/*    726 */	sub	%i3,%o2,%i3

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f148,%f148,%f168,%f148

/*    726 */	add	%i5,8,%i5


/*    726 */	sxar2
/*    726 */	fdtox,s	%f156,%f156
/*    726 */	fmuld,s	%f184,%f226,%f226

/*    726 */	add	%l6,8,%l6

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f178,%f178,%f178,%f38

/*    726 */	and	%i3,255,%i3



/*    726 */	sxar2
/*    726 */	ldd	[%i5+%o3],%f352
/*    726 */	ldd	[%l6+%o3],%f96

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f170,%f170,%f84,%f170

/*    726 */	sllx	%i3,4,%i3




/*    726 */	sxar2
/*    726 */	std	%f244,[%xg20+16]
/*    726 */	fpmaddx,s	%f104,%f196,%f198,%f104



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f48,%f94,%f70,%f94
/*    726 */	std	%f500,[%xg20+24]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f76,%f160,%f216,%f160
/*    726 */	fsubd,s	%f232,%f86,%f232


/*    726 */	sxar2
/*    726 */	std,s	%f78,[%i2+%g1]
/*    726 */	fmuld,s	%f80,%f76,%f76


/*    726 */	sxar2
/*    726 */	srl	%xg10,%g0,%i2
/*    726 */	fmaddd,s	%f142,%f240,%f214,%f240


/*    726 */	sxar2
/*    726 */	faddd,s	%f254,%f108,%f254
/*    726 */	srl	%xg12,%g0,%l6


/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f344
/*    726 */	add	%i2,%i2,%xg10


/*    726 */	sxar2
/*    726 */	add	%l6,%l6,%xg12
/*    726 */	fmuld,s	%f178,%f178,%f166


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f38,%f226,%f226,%f38
/*    726 */	add	%xg10,%i2,%xg10


/*    726 */	sxar2
/*    726 */	add	%xg12,%l6,%xg12
/*    726 */	fcmpleed,s	%f146,%f186,%f158


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f170,%f72,%f112,%f170
/*    726 */	sllx	%xg10,4,%xg10


/*    726 */	sxar2
/*    726 */	sllx	%xg12,4,%xg12
/*    726 */	fnmsubd,sc	%f200,%f62,%f54,%f54



/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f104,%f202,%f190,%f104
/*    726 */	ldd	[%xg13+%xg26],%f244


/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg26],%f500
/*    726 */	fmaddd,s	%f148,%f130,%f34,%f148



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f232,%f86,%f232
/*    726 */	fmaddd,s	%f76,%f160,%f96,%f76

/*    726 */	sxar1
/*    726 */	fnmsubd,sc	%f200,%f62,%f176,%f176

/*    726 */	add	%l7,8,%l7

/*    726 */	add	%i3,8,%i3


/*    726 */	sxar2
/*    726 */	ldd	[%l7+%o3],%f168
/*    726 */	fmaddd,s	%f142,%f240,%f216,%f240


/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f424
/*    726 */	fmuld,s	%f88,%f142,%f142


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg27],%f34
/*    726 */	ldd	[%xg15+%xg27],%f290


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f166,%f166,%f178,%f166
/*    726 */	fmuld,s	%f90,%f254,%f90


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg28],%f60
/*    726 */	fselmovd,s	%f190,%f146,%f158,%f134


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg28],%f316
/*    726 */	fcmpleed,s	%f170,%f186,%f234


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg29],%f72
/*    726 */	fmaddd,sc	%f204,%f54,%f252,%f252


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg29],%f328
/*    726 */	frcpad,s	%f232,%f154



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f148,%f186,%f160
/*    726 */	faddd,s	%f80,%f76,%f80


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f104,%f206,%f62,%f104
/*    726 */	ldd,s	[%xg8+48],%f32


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f182,%f102,%f182
/*    726 */	fmaddd,s	%f142,%f240,%f168,%f142




/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg31],%f108
/*    726 */	ldd	[%xg15+%xg31],%f364


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f90,%f246,%f90
/*    726 */	fcmpgeed,s	%f106,%f188,%f106



/*    726 */	add	%l4,8,%l4

/*    726 */	add	%l5,8,%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f244,%f34,%f244
/*    726 */	fselmovd,s	%f190,%f170,%f234,%f96



/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f76
/*    726 */	ldd	[%l5+%o3],%f332


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f134,%f194,%f74
/*    726 */	fsubd,s	%f72,%f60,%f72



/*    726 */	sxar2
/*    726 */	std	%f140,[%o4+%fp]
/*    726 */	fmaddd,s	%f236,%f238,%f216,%f236


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f154,%f232,%f62,%f232
/*    726 */	std	%f152,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fxtod,s	%f42,%f130
/*    726 */	fmuld,s	%f104,%f80,%f104


/*    726 */	sxar2
/*    726 */	std	%f408,[%o0+%fp]
/*    726 */	faddd,s	%f88,%f142,%f88


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f100,%f206,%f62,%f100
/*    726 */	ldd	[%xg13+%xg30],%f78


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f90,%f106,%f90
/*    726 */	ldd	[%xg15+%xg30],%f334


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f244,%f34,%f244
/*    726 */	fmaddd,sc	%f192,%f96,%f194,%f70




/*    726 */	sxar2
/*    726 */	fmovd,s	%f110,%f238
/*    726 */	fdtox,s	%f74,%f74


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f72,%f60,%f72
/*    726 */	std	%f238,[%o7+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f122,%f236,%f76,%f122
/*    726 */	fnmsubd,sc	%f200,%f62,%f248,%f248


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f104,%f250,%f104
/*    726 */	fcmpgeed,s	%f36,%f188,%f36




/*    726 */	sxar2
/*    726 */	ldd,s	[%xg19+32],%f84
/*    726 */	fmuld,s	%f100,%f88,%f100


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f54,%f252,%f54
/*    726 */	ldsw	[%xg11+-4008],%xg13


/*    726 */	sxar2
/*    726 */	ldsw	[%xg11+-4004],%xg15
/*    726 */	ldd	[%xg10+%xg22],%f178


/*    726 */	sxar2
/*    726 */	fsubd,s	%f108,%f78,%f108
/*    726 */	fselmovd,s	%f190,%f148,%f160,%f88


/*    726 */	sxar2
/*    726 */	fxtod,s	%f156,%f80
/*    726 */	fsubd,s	%f62,%f90,%f90

/*    726 */	ldx	[%g5+%fp],%l4


/*    726 */	sxar2
/*    726 */	frcpad,s	%f72,%f112
/*    726 */	fmaddd,s	%f50,%f222,%f230,%f222

/*    726 */	ldx	[%o0+%fp],%l5


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%g4],%f250
/*    726 */	ldd	[%l1+%g4],%f506


/*    726 */	sxar2
/*    726 */	fsubd,s	%f244,%f84,%f244
/*    726 */	fmuld,s	%f184,%f154,%f154

/*    726 */	ldx	[%o7+%fp],%l7


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg22],%f434
/*    726 */	fmaddd,s	%f232,%f232,%f232,%f142


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f248,%f228,%f228
/*    726 */	ldd	[%xg10+%xg23],%f102

/*    726 */	ldx	[%o4+%fp],%l6


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f104,%f36,%f104
/*    726 */	fselmovd,s	%f190,%f100,%f118,%f100

/*    726 */	sxar1
/*    726 */	ldd	[%xg9+%g3],%f224

/*    726 */	sub	%l4,%o2,%l4


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f44,%f188,%f44
/*    726 */	fsubd,s	%f62,%f136,%f136

/*    726 */	sub	%l5,%o2,%l5

/*    726 */	and	%l4,255,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f108,%f78,%f108
/*    726 */	fpmaddx,s	%f110,%f196,%f198,%f110

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	frcpad,s	%f222,%f230
/*    726 */	ldd,s	[%xg20+32],%f246

/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f112,%f72,%f62,%f72

/*    726 */	sllx	%l4,4,%l4

/*    726 */	sllx	%l5,4,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f166,%f38,%f226,%f166
/*    726 */	fmaddd,sc	%f210,%f54,%f212,%f240

/*    726 */	sxar1
/*    726 */	std	%f396,[%o5+%fp]

/*    726 */	sub	%l6,%o2,%l6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f90,%f244,%f84,%f90
/*    726 */	fmuld,s	%f232,%f232,%f168


/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f244
/*    726 */	ldd	[%l5+%o3],%f500


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f248,%f228,%f248
/*    726 */	fsubd,s	%f62,%f104,%f104


/*    726 */	sxar2
/*    726 */	fxtod,s	%f74,%f106
/*    726 */	ldd	[%l1+%g3],%f480


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f100,%f44,%f100
/*    726 */	add	%xg21,48,%i2

/*    726 */	sxar1
/*    726 */	fsubd,s	%f108,%f246,%f108

/*    726 */	and	%l6,255,%l6


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f110,%f202,%f190,%f110
/*    726 */	ldd,s	[%i2+%g1],%f226


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg23],%f358
/*    726 */	ldd	[%xg5+%xg25],%f228


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f138,%f202,%f190,%f138
/*    726 */	fmuld,s	%f184,%f112,%f112

/*    726 */	sxar1
/*    726 */	std	%f494,[%xg2+%fp]

/*    726 */	sllx	%l6,4,%l6


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f230,%f222,%f62,%f222
/*    726 */	fmaddd,s	%f72,%f72,%f72,%f114



/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f88,%f194,%f84

/*    726 */	sub	%l7,%o2,%l7

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f54,%f240,%f214,%f240

/*    726 */	ldx	[%o5+%fp],%i5



/*    726 */	sxar1
/*    726 */	std	%f90,[%xg19+32]

/*    726 */	and	%l7,255,%l7


/*    726 */	sxar2
/*    726 */	fmuld,s	%f244,%f54,%f238
/*    726 */	fmaddd,sc	%f210,%f248,%f212,%f252


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg24],%f40
/*    726 */	ldd	[%xg6+%xg24],%f296


/*    726 */	sxar2
/*    726 */	fsubd,s	%f224,%f250,%f224
/*    726 */	fsubd,s	%f94,%f226,%f94

/*    726 */	ldd	[%l6+%o3],%f38

/*    726 */	sllx	%l7,4,%l7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f142,%f154,%f154,%f142
/*    726 */	fmaddd,sc	%f204,%f176,%f132,%f132

/*    726 */	sxar1
/*    726 */	ldd	[%xg6+%xg25],%f484

/*    726 */	sub	%i5,%o2,%i5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f104,%f108,%f246,%f104
/*    726 */	fpmaddx,s	%f138,%f206,%f62,%f138


/*    726 */	sxar2
/*    726 */	fmuld,s	%f72,%f72,%f86
/*    726 */	fmaddd,s	%f114,%f112,%f112,%f114


/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%i3
/*    726 */	std	%f346,[%xg19+40]

/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f152,%f196,%f198,%f152

/*    726 */	and	%i5,255,%i5

/*    726 */	sxar1
/*    726 */	fdtox,s	%f84,%f84



/*    726 */	ldd	[%l7+%o3],%f44

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f248,%f252,%f214,%f252

/*    726 */	sllx	%i5,4,%i5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f136,%f174,%f220,%f136
/*    726 */	fsubd,s	%f102,%f178,%f102


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f182,%f212,%f254
/*    726 */	ldd	[%i5+%o3],%f294

/*    726 */	sub	%i3,%o2,%i3

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f168,%f168,%f232,%f168

/*    726 */	add	%i5,8,%i5


/*    726 */	sxar2
/*    726 */	fdtox,s	%f70,%f70
/*    726 */	fmuld,s	%f184,%f230,%f230

/*    726 */	add	%l6,8,%l6

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f222,%f222,%f222,%f34

/*    726 */	and	%i3,255,%i3


/*    726 */	sxar1
/*    726 */	ldd	[%i5+%o3],%f316

/*    726 */	ldd	[%l6+%o3],%f60

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f86,%f86,%f72,%f86

/*    726 */	sllx	%i3,4,%i3




/*    726 */	sxar2
/*    726 */	std	%f104,[%xg20+32]
/*    726 */	fpmaddx,s	%f140,%f196,%f198,%f140



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f52,%f224,%f250,%f224
/*    726 */	std	%f360,[%xg20+40]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f252,%f216,%f252
/*    726 */	fsubd,s	%f228,%f40,%f228


/*    726 */	sxar2
/*    726 */	std,s	%f136,[%i0+%g1]
/*    726 */	fmuld,s	%f38,%f248,%f248

/*    726 */	sxar2
/*    726 */	srl	%xg13,%g0,%i0
/*    726 */	fmaddd,s	%f182,%f254,%f214,%f254
/*    726 */	sxar2
/*    726 */	faddd,s	%f68,%f122,%f68
/*    726 */	srl	%xg15,%g0,%l6
/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f300
/*    726 */	add	%i0,%i0,%xg13
/*    726 */	sxar2
/*    726 */	add	%l6,%l6,%xg15
/*    726 */	fmuld,s	%f222,%f222,%f98
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f230,%f230,%f34
/*    726 */	add	%xg13,%i0,%xg13
/*    726 */	sxar2
/*    726 */	add	%xg15,%l6,%xg15
/*    726 */	fcmpleed,s	%f166,%f186,%f76
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f86,%f114,%f112,%f86
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sxar2
/*    726 */	sllx	%xg15,4,%xg15
/*    726 */	fnmsubd,sc	%f200,%f62,%f106,%f106
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f140,%f202,%f190,%f140
/*    726 */	ldd	[%xg14+%xg26],%f250
/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg26],%f506
/*    726 */	fmaddd,s	%f168,%f142,%f154,%f168
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f228,%f40,%f228
/*    726 */	fmaddd,s	%f248,%f252,%f60,%f248
/*    726 */	sxar1
/*    726 */	fnmsubd,sc	%f200,%f62,%f80,%f80
/*    726 */	add	%l7,8,%l7
/*    726 */	add	%i3,8,%i3
/*    726 */	sxar2
/*    726 */	ldd	[%l7+%o3],%f252
/*    726 */	fmaddd,s	%f182,%f254,%f216,%f254
/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f508
/*    726 */	fmuld,s	%f44,%f182,%f182
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg27],%f60
/*    726 */	ldd	[%l0+%xg27],%f316
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f98,%f98,%f222,%f98
/*    726 */	fmuld,s	%f138,%f68,%f138
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg28],%f90
/*    726 */	fselmovd,s	%f190,%f166,%f76,%f222
/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg28],%f346
/*    726 */	fcmpleed,s	%f86,%f186,%f236
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg29],%f78
/*    726 */	fmaddd,sc	%f204,%f106,%f134,%f134
/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg29],%f334
/*    726 */	frcpad,s	%f228,%f246
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f168,%f186,%f72
/*    726 */	faddd,s	%f38,%f248,%f38
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f140,%f206,%f62,%f140
/*    726 */	ldd,s	[%xg8+64],%f40
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f176,%f132,%f176
/*    726 */	fmaddd,s	%f182,%f254,%f252,%f182
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg31],%f118
/*    726 */	ldd	[%l0+%xg31],%f374
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f138,%f120,%f138
/*    726 */	fcmpgeed,s	%f46,%f188,%f46
/*    726 */	add	%l4,8,%l4
/*    726 */	add	%l5,8,%l5
/*    726 */	sxar2
/*    726 */	fsubd,s	%f250,%f60,%f250
/*    726 */	fselmovd,s	%f190,%f86,%f236,%f174
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f104
/*    726 */	ldd	[%l5+%o3],%f360
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f222,%f194,%f252
/*    726 */	fsubd,s	%f78,%f90,%f78
/*    726 */	std	%f42,[%o4+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f54,%f240,%f216,%f54
/*    726 */	fnmsubd,s	%f246,%f228,%f62,%f228
/*    726 */	sxar2
/*    726 */	std	%f74,[%g5+%fp]
/*    726 */	fxtod,s	%f84,%f36
/*    726 */	sxar2
/*    726 */	fmuld,s	%f140,%f38,%f140
/*    726 */	std	%f330,[%o0+%fp]
/*    726 */	sxar2
/*    726 */	faddd,s	%f44,%f182,%f44
/*    726 */	fpmaddx,s	%f110,%f206,%f62,%f110
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg30],%f108
/*    726 */	fselmovd,s	%f218,%f138,%f46,%f138
/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg30],%f364
/*    726 */	fmaddd,s	%f48,%f250,%f60,%f250
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f174,%f194,%f68
/*    726 */	fdtox,s	%f252,%f252
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f78,%f90,%f78
/*    726 */	std	%f82,[%o7+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f54,%f104,%f238
/*    726 */	fnmsubd,sc	%f200,%f62,%f130,%f130
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f140,%f164,%f140
/*    726 */	fcmpgeed,s	%f116,%f188,%f116
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg19+48],%f122
/*    726 */	fmuld,s	%f110,%f44,%f110
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f106,%f134,%f106
/*    726 */	ldsw	[%xg11+-4000],%xg14
/*    726 */	sxar2
/*    726 */	ldsw	[%xg11+-3996],%l0
/*    726 */	ldd	[%xg13+%xg22],%f112
/*    726 */	sxar2
/*    726 */	fsubd,s	%f118,%f108,%f118
/*    726 */	fselmovd,s	%f190,%f168,%f72,%f46
/*    726 */	sxar2
/*    726 */	fxtod,s	%f70,%f114
/*    726 */	fsubd,s	%f62,%f138,%f138
/*    726 */	ldx	[%g5+%fp],%l4
/*    726 */	sxar2
/*    726 */	frcpad,s	%f78,%f120
/*    726 */	fmaddd,s	%f32,%f102,%f178,%f102
/*    726 */	ldx	[%o0+%fp],%l5
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%g4],%f232
/*    726 */	ldd	[%i4+%g4],%f488
/*    726 */	sxar2
/*    726 */	fsubd,s	%f250,%f122,%f250
/*    726 */	fmuld,s	%f184,%f246,%f246
/*    726 */	ldx	[%o7+%fp],%l7
/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg22],%f368
/*    726 */	fmaddd,s	%f228,%f228,%f228,%f136
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f130,%f92,%f92
/*    726 */	ldd	[%xg13+%xg23],%f104
/*    726 */	ldx	[%o4+%fp],%l6
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f140,%f116,%f140
/*    726 */	fselmovd,s	%f190,%f110,%f242,%f110
/*    726 */	sxar1
/*    726 */	ldd	[%xg7+%g3],%f178
/*    726 */	sub	%l4,%o2,%l4
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f56,%f188,%f56
/*    726 */	fsubd,s	%f62,%f100,%f100
/*    726 */	sub	%l5,%o2,%l5
/*    726 */	and	%l4,255,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f48,%f118,%f108,%f118
/*    726 */	fpmaddx,s	%f82,%f196,%f198,%f242
/*    726 */	and	%l5,255,%l5
/*    726 */	sxar2
/*    726 */	frcpad,s	%f102,%f132
/*    726 */	ldd,s	[%xg20+48],%f182
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f120,%f78,%f62,%f78
/*    726 */	sllx	%l4,4,%l4
/*    726 */	sllx	%l5,4,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f98,%f34,%f230,%f98
/*    726 */	fmaddd,sc	%f210,%f106,%f212,%f154
/*    726 */	sxar1
/*    726 */	std	%f298,[%o5+%fp]
/*    726 */	sub	%l6,%o2,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f138,%f250,%f122,%f138
/*    726 */	fmuld,s	%f228,%f228,%f220
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f164
/*    726 */	ldd	[%l5+%o3],%f420
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f130,%f92,%f130
/*    726 */	fsubd,s	%f62,%f140,%f140
/*    726 */	sxar2
/*    726 */	fxtod,s	%f252,%f116
/*    726 */	ldd	[%i4+%g3],%f434
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f110,%f56,%f110
/*    726 */	add	%xg21,64,%i5
/*    726 */	sxar1
/*    726 */	fsubd,s	%f118,%f182,%f118
/*    726 */	and	%l6,255,%l6
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f242,%f202,%f190,%f242
/*    726 */	ldd,s	[%i5+%g1],%f230
/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg23],%f360
/*    726 */	ldd	[%xg10+%xg25],%f240
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f152,%f202,%f190,%f152
/*    726 */	fmuld,s	%f184,%f120,%f120
/*    726 */	sxar1
/*    726 */	std	%f338,[%xg2+%fp]
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f132,%f102,%f62,%f102
/*    726 */	fmaddd,s	%f78,%f78,%f78,%f122
/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f46,%f194,%f34
/*    726 */	sub	%l7,%o2,%l7
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f106,%f154,%f214,%f154
/*    726 */	ldx	[%o5+%fp],%i3
/*    726 */	sxar1
/*    726 */	std	%f138,[%xg19+48]
/*    726 */	and	%l7,255,%l7
/*    726 */	sxar2
/*    726 */	fmuld,s	%f164,%f106,%f56
/*    726 */	fmaddd,sc	%f210,%f130,%f212,%f248
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg24],%f48
/*    726 */	ldd	[%xg12+%xg24],%f304
/*    726 */	sxar2
/*    726 */	fsubd,s	%f178,%f232,%f178
/*    726 */	fsubd,s	%f224,%f230,%f224
/*    726 */	ldd	[%l6+%o3],%f44
/*    726 */	sllx	%l7,4,%l7
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f136,%f246,%f246,%f136
/*    726 */	fmaddd,sc	%f204,%f80,%f180,%f180
/*    726 */	sxar1
/*    726 */	ldd	[%xg12+%xg25],%f496
/*    726 */	sub	%i3,%o2,%i3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f140,%f118,%f182,%f140
/*    726 */	fpmaddx,s	%f152,%f206,%f62,%f152
/*    726 */	sxar2
/*    726 */	fmuld,s	%f78,%f78,%f38
/*    726 */	fmaddd,s	%f122,%f120,%f120,%f122
/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%i0
/*    726 */	std	%f394,[%xg19+56]
/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f74,%f196,%f198,%f74
/*    726 */	and	%i3,255,%i3
/*    726 */	sxar2
/*    726 */	fdtox,s	%f34,%f34
/*    726 */	ldd	[%l7+%o3],%f82
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f130,%f248,%f214,%f248
/*    726 */	sllx	%i3,4,%i3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f100,%f94,%f226,%f100
/*    726 */	fsubd,s	%f104,%f112,%f104
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f176,%f212,%f250
/*    726 */	ldd	[%i3+%o3],%f300
/*    726 */	sub	%i0,%o2,%i0
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f220,%f220,%f228,%f220
/*    726 */	add	%i3,8,%i3
/*    726 */	sxar2
/*    726 */	fdtox,s	%f68,%f68
/*    726 */	fmuld,s	%f184,%f132,%f132
/*    726 */	add	%l6,8,%l6
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f102,%f102,%f102,%f134
/*    726 */	and	%i0,255,%i0
/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f346
/*    726 */	ldd	[%l6+%o3],%f90
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f38,%f38,%f78,%f38
/*    726 */	sllx	%i0,4,%i0
/*    726 */	sxar2
/*    726 */	std	%f140,[%xg20+48]
/*    726 */	fpmaddx,s	%f42,%f196,%f198,%f42
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f178,%f232,%f178
/*    726 */	std	%f396,[%xg20+56]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f130,%f248,%f216,%f248
/*    726 */	fsubd,s	%f240,%f48,%f240
/*    726 */	sxar2
/*    726 */	std,s	%f100,[%i2+%g1]
/*    726 */	fmuld,s	%f44,%f130,%f130
/*    726 */	sxar2
/*    726 */	srl	%xg14,%g0,%i2
/*    726 */	fmaddd,s	%f176,%f250,%f214,%f250
/*    726 */	sxar1
/*    726 */	faddd,s	%f244,%f238,%f244
/*    726 */	srl	%l0,%g0,%l6
/*    726 */	sxar2
/*    726 */	ldd	[%i0+%o3],%f338
/*    726 */	add	%i2,%i2,%xg14
/*    726 */	add	%l6,%l6,%l0
/*    726 */	sxar2
/*    726 */	fmuld,s	%f102,%f102,%f92
/*    726 */	fmaddd,s	%f134,%f132,%f132,%f134
/*    726 */	sxar1
/*    726 */	add	%xg14,%i2,%xg14
/*    726 */	add	%l0,%l6,%l0
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f98,%f186,%f232
/*    726 */	fmaddd,s	%f38,%f122,%f120,%f38
/*    726 */	sxar1
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	sllx	%l0,4,%l0
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f116,%f116
/*    726 */	fpmaddxhi,s	%f42,%f202,%f190,%f42
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg26],%f94
/*    726 */	ldd	[%l1+%xg26],%f350
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f220,%f136,%f246,%f220
/*    726 */	fmaddd,s	%f32,%f240,%f48,%f240
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f130,%f248,%f90,%f130
/*    726 */	fnmsubd,sc	%f200,%f62,%f114,%f114
/*    726 */	add	%l7,8,%l7
/*    726 */	add	%i0,8,%i0
/*    726 */	sxar2
/*    726 */	ldd	[%l7+%o3],%f238
/*    726 */	fmaddd,s	%f176,%f250,%f216,%f250
/*    726 */	sxar2
/*    726 */	ldd	[%i0+%o3],%f494
/*    726 */	fmuld,s	%f82,%f176,%f176
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg27],%f246
/*    726 */	ldd	[%l1+%xg27],%f502
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f92,%f102,%f92
/*    726 */	fmuld,s	%f152,%f244,%f152
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg28],%f78
/*    726 */	fselmovd,s	%f190,%f98,%f232,%f226
/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg28],%f334
/*    726 */	fcmpleed,s	%f38,%f186,%f60
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg29],%f228
/*    726 */	fmaddd,sc	%f204,%f116,%f222,%f222
/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg29],%f484
/*    726 */	frcpad,s	%f240,%f142
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f220,%f186,%f254
/*    726 */	faddd,s	%f44,%f130,%f44
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f42,%f206,%f62,%f42
/*    726 */	ldd,s	[%xg8+80],%f48
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f80,%f180,%f80
/*    726 */	fmaddd,s	%f176,%f250,%f238,%f176
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg31],%f130
/*    726 */	ldd	[%l1+%xg31],%f386
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f152,%f162,%f152
/*    726 */	fcmpgeed,s	%f124,%f188,%f124
/*    726 */	add	%l4,8,%l4
/*    726 */	add	%l5,8,%l5
/*    726 */	sxar2
/*    726 */	fsubd,s	%f94,%f246,%f94
/*    726 */	fselmovd,s	%f190,%f38,%f60,%f182
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f90
/*    726 */	ldd	[%l5+%o3],%f346
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f226,%f194,%f54
/*    726 */	fsubd,s	%f228,%f78,%f228
/*    726 */	sxar2
/*    726 */	std	%f84,[%o4+%fp]
/*    726 */	fmaddd,s	%f106,%f154,%f216,%f106
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f142,%f240,%f62,%f240
/*    726 */	std	%f252,[%g5+%fp]
/*    726 */	sxar2
/*    726 */	fxtod,s	%f34,%f248
/*    726 */	fmuld,s	%f42,%f44,%f42
/*    726 */	sxar2
/*    726 */	std	%f508,[%o0+%fp]
/*    726 */	faddd,s	%f82,%f176,%f82
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f242,%f206,%f62,%f242
/*    726 */	ldd	[%xg9+%xg30],%f100
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f152,%f124,%f152
/*    726 */	ldd	[%l1+%xg30],%f356
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f52,%f94,%f246,%f94
/*    726 */	fmaddd,sc	%f192,%f182,%f194,%f136
/*    726 */	sxar2
/*    726 */	fdtox,s	%f54,%f54
/*    726 */	fmaddd,s	%f48,%f228,%f78,%f228
/*    726 */	sxar2
/*    726 */	std	%f156,[%o7+%fp]
/*    726 */	fmaddd,s	%f56,%f106,%f90,%f56
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f36,%f36
/*    726 */	fselmovd,s	%f190,%f42,%f144,%f42
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f126,%f188,%f126
/*    726 */	ldd,s	[%xg19+64],%f102
/*    726 */	sxar2
/*    726 */	fmuld,s	%f242,%f82,%f242
/*    726 */	fmaddd,sc	%f208,%f116,%f222,%f116
/*    726 */	sxar2
/*    726 */	ldsw	[%xg11+-3992],%xg9
/*    726 */	ldsw	[%xg11+-3988],%l1
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg22],%f120
/*    726 */	fsubd,s	%f130,%f100,%f130
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f220,%f254,%f238
/*    726 */	fxtod,s	%f68,%f222
/*    726 */	sxar1
/*    726 */	fsubd,s	%f62,%f152,%f152
/*    726 */	ldx	[%g5+%fp],%l5
/*    726 */	sxar2
/*    726 */	frcpad,s	%f228,%f138
/*    726 */	fmaddd,s	%f40,%f104,%f112,%f104
/*    726 */	ldx	[%o0+%fp],%l6
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%g4],%f162
/*    726 */	ldd	[%l3+%g4],%f418
/*    726 */	sxar2
/*    726 */	fsubd,s	%f94,%f102,%f94
/*    726 */	fmuld,s	%f184,%f142,%f142
/*    726 */	ldx	[%o7+%fp],%i0
/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg22],%f376
/*    726 */	fmaddd,s	%f240,%f240,%f240,%f144
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f36,%f88,%f88
/*    726 */	ldd	[%xg14+%xg23],%f90
/*    726 */	ldx	[%o4+%fp],%l7
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f42,%f126,%f42
/*    726 */	fselmovd,s	%f190,%f242,%f66,%f242
/*    726 */	sxar1
/*    726 */	ldd	[%l2+%g3],%f82
/*    726 */	sub	%l5,%o2,%l5
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f128,%f188,%f128
/*    726 */	fsubd,s	%f62,%f110,%f110
/*    726 */	sub	%l6,%o2,%l6
/*    726 */	and	%l5,255,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f52,%f130,%f100,%f130
/*    726 */	fpmaddx,s	%f156,%f196,%f198,%f108
/*    726 */	and	%l6,255,%l6
/*    726 */	sxar2
/*    726 */	frcpad,s	%f104,%f154
/*    726 */	ldd,s	[%xg20+64],%f126
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f138,%f228,%f62,%f228
/*    726 */	sllx	%l5,4,%l5
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f134,%f132,%f92
/*    726 */	fmaddd,sc	%f210,%f116,%f212,%f124
/*    726 */	sxar1
/*    726 */	std	%f340,[%o5+%fp]
/*    726 */	sub	%l7,%o2,%l7
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f152,%f94,%f102,%f152
/*    726 */	fmuld,s	%f240,%f240,%f94
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%o3],%f250
/*    726 */	ldd	[%l6+%o3],%f506
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f36,%f88,%f36
/*    726 */	fsubd,s	%f62,%f42,%f42
/*    726 */	sxar2
/*    726 */	fxtod,s	%f54,%f78
/*    726 */	ldd	[%l3+%g3],%f338
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f242,%f128,%f242
/*    726 */	add	%xg21,80,%l4
/*    726 */	sxar1
/*    726 */	fsubd,s	%f130,%f126,%f130
/*    726 */	and	%l7,255,%l7
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f108,%f202,%f190,%f108
/*    726 */	ldd,s	[%l4+%g1],%f102
/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg23],%f346
/*    726 */	ldd	[%xg13+%xg25],%f246
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f74,%f202,%f190,%f74
/*    726 */	fmuld,s	%f184,%f138,%f138
/*    726 */	sxar1
/*    726 */	std	%f412,[%xg2+%fp]
/*    726 */	sllx	%l7,4,%l7
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f154,%f104,%f62,%f104
/*    726 */	fmaddd,s	%f228,%f228,%f228,%f140
/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f238,%f194,%f112
/*    726 */	sub	%i0,%o2,%i0
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f116,%f124,%f214,%f124
/*    726 */	ldx	[%o5+%fp],%i3
/*    726 */	sxar1
/*    726 */	std	%f152,[%xg19+64]
/*    726 */	and	%i0,255,%i0
/*    726 */	sxar2
/*    726 */	fmuld,s	%f250,%f116,%f122
/*    726 */	fmaddd,sc	%f210,%f36,%f212,%f176
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg24],%f52
/*    726 */	ldd	[%xg15+%xg24],%f308
/*    726 */	sxar2
/*    726 */	fsubd,s	%f82,%f162,%f82
/*    726 */	fsubd,s	%f178,%f102,%f178
/*    726 */	sxar1
/*    726 */	ldd	[%l7+%o3],%f244
/*    726 */	sllx	%i0,4,%i0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f144,%f142,%f142,%f144
/*    726 */	fmaddd,sc	%f204,%f114,%f96,%f96
/*    726 */	sxar1
/*    726 */	ldd	[%xg15+%xg25],%f502
/*    726 */	sub	%i3,%o2,%i3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f42,%f130,%f126,%f42
/*    726 */	fpmaddx,s	%f74,%f206,%f62,%f74
/*    726 */	sxar2
/*    726 */	fmuld,s	%f228,%f228,%f44
/*    726 */	fmaddd,s	%f140,%f138,%f138,%f140
/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%i2
/*    726 */	std	%f408,[%xg19+72]
/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f252,%f196,%f198,%f252
/*    726 */	and	%i3,255,%i3
/*    726 */	sxar2
/*    726 */	fdtox,s	%f112,%f112
/*    726 */	ldd	[%i0+%o3],%f66
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f36,%f176,%f214,%f176
/*    726 */	sllx	%i3,4,%i3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f110,%f224,%f230,%f110
/*    726 */	fsubd,s	%f90,%f120,%f90
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f80,%f212,%f180
/*    726 */	ldd	[%i3+%o3],%f500
/*    726 */	sub	%i2,%o2,%i2
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f94,%f94,%f240,%f94
/*    726 */	add	%i3,8,%i3
/*    726 */	sxar2
/*    726 */	fdtox,s	%f136,%f136
/*    726 */	fmuld,s	%f184,%f154,%f154
/*    726 */	add	%l7,8,%l7
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f104,%f104,%f104,%f156
/*    726 */	and	%i2,255,%i2
/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f344
/*    726 */	ldd	[%l7+%o3],%f88
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f44,%f44,%f228,%f44
/*    726 */	sllx	%i2,4,%i2
/*    726 */	sxar2
/*    726 */	std	%f42,[%xg20+64]
/*    726 */	fpmaddx,s	%f84,%f196,%f198,%f84
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f82,%f162,%f82
/*    726 */	std	%f298,[%xg20+72]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f36,%f176,%f216,%f176
/*    726 */	fsubd,s	%f246,%f52,%f246
/*    726 */	sxar2
/*    726 */	std,s	%f110,[%i5+%g1]
/*    726 */	fmuld,s	%f244,%f36,%f36
/*    726 */	sxar2
/*    726 */	srl	%xg9,%g0,%i3
/*    726 */	fmaddd,s	%f80,%f180,%f214,%f180
/*    726 */	sxar1
/*    726 */	faddd,s	%f164,%f56,%f164
/*    726 */	srl	%l1,%g0,%l7
/*    726 */	sxar2
/*    726 */	ldd	[%i2+%o3],%f322
/*    726 */	add	%i3,%i3,%xg9
/*    726 */	add	%l7,%l7,%l1
/*    726 */	sxar2
/*    726 */	fmuld,s	%f104,%f104,%f106
/*    726 */	fmaddd,s	%f156,%f154,%f154,%f156
/*    726 */	sxar1
/*    726 */	add	%xg9,%i3,%xg9
/*    726 */	add	%l1,%l7,%l1
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f92,%f186,%f42
/*    726 */	fmaddd,s	%f44,%f140,%f138,%f44
/*    726 */	sxar1
/*    726 */	sllx	%xg9,4,%xg9
/*    726 */	sllx	%l1,4,%l1
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f78,%f78
/*    726 */	fpmaddxhi,s	%f84,%f202,%f190,%f84
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg26],%f110
/*    726 */	ldd	[%i4+%xg26],%f366
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f94,%f144,%f142,%f94
/*    726 */	fmaddd,s	%f40,%f246,%f52,%f246
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f36,%f176,%f88,%f36
/*    726 */	fnmsubd,sc	%f200,%f62,%f222,%f222
/*    726 */	add	%i0,8,%i0
/*    726 */	add	%i2,8,%i2
/*    726 */	sxar2
/*    726 */	ldd	[%i0+%o3],%f132
/*    726 */	fmaddd,s	%f80,%f180,%f216,%f180
/*    726 */	sxar2
/*    726 */	ldd	[%i2+%o3],%f388
/*    726 */	fmuld,s	%f66,%f80,%f80
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg27],%f138
/*    726 */	ldd	[%i4+%xg27],%f394
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f106,%f106,%f104,%f106
/*    726 */	fmuld,s	%f74,%f164,%f74
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg28],%f140
/*    726 */	fselmovd,s	%f190,%f92,%f42,%f104
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg28],%f396
/*    726 */	fcmpleed,s	%f44,%f186,%f118
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg29],%f128
/*    726 */	fmaddd,sc	%f204,%f78,%f226,%f226
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg29],%f384
/*    726 */	frcpad,s	%f246,%f162
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f94,%f186,%f130
/*    726 */	faddd,s	%f244,%f36,%f244
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f84,%f206,%f62,%f84
/*    726 */	ldd,s	[%xg8+96],%f52
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f114,%f96,%f114
/*    726 */	fmaddd,s	%f80,%f180,%f132,%f80
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg31],%f152
/*    726 */	ldd	[%i4+%xg31],%f408
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f74,%f158,%f74
/*    726 */	fcmpgeed,s	%f146,%f188,%f146
/*    726 */	add	%l5,8,%l5
/*    726 */	add	%l6,8,%l6
/*    726 */	sxar2
/*    726 */	fsubd,s	%f110,%f138,%f110
/*    726 */	fselmovd,s	%f190,%f44,%f118,%f88
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%o3],%f142
/*    726 */	ldd	[%l6+%o3],%f398
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f104,%f194,%f134
/*    726 */	fsubd,s	%f128,%f140,%f128
/*    726 */	std	%f34,[%o4+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f116,%f124,%f216,%f116
/*    726 */	fnmsubd,s	%f162,%f246,%f62,%f246
/*    726 */	std	%f54,[%g5+%fp]
/*    726 */	sxar2
/*    726 */	fxtod,s	%f112,%f224
/*    726 */	fmuld,s	%f84,%f244,%f84
/*    726 */	sxar2
/*    726 */	std	%f310,[%o0+%fp]
/*    726 */	faddd,s	%f66,%f80,%f66
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f108,%f206,%f62,%f108
/*    726 */	ldd	[%xg7+%xg30],%f144
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f74,%f146,%f74
/*    726 */	ldd	[%i4+%xg30],%f400
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f110,%f138,%f110
/*    726 */	fmaddd,sc	%f192,%f88,%f194,%f100
/*    726 */	sxar2
/*    726 */	fdtox,s	%f134,%f134
/*    726 */	fmaddd,s	%f52,%f128,%f140,%f128
/*    726 */	sxar2
/*    726 */	std	%f70,[%o7+%fp]
/*    726 */	fmaddd,s	%f122,%f116,%f142,%f122
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f248,%f248
/*    726 */	fselmovd,s	%f190,%f84,%f160,%f84
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f148,%f188,%f148
/*    726 */	ldd,s	[%xg19+80],%f146
/*    726 */	sxar2
/*    726 */	fmuld,s	%f108,%f66,%f108
/*    726 */	fmaddd,sc	%f208,%f78,%f226,%f78
/*    726 */	sxar2
/*    726 */	ldsw	[%xg11+-3984],%xg7
/*    726 */	ldsw	[%xg11+-3980],%l5
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg22],%f116
/*    726 */	fsubd,s	%f152,%f144,%f152
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f94,%f130,%f226
/*    726 */	fxtod,s	%f136,%f240
/*    726 */	sxar1
/*    726 */	fsubd,s	%f62,%f74,%f74
/*    726 */	ldx	[%g5+%fp],%l6
/*    726 */	sxar2
/*    726 */	frcpad,s	%f128,%f158
/*    726 */	fmaddd,s	%f48,%f90,%f120,%f90
/*    726 */	ldx	[%o0+%fp],%l7
/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%g4],%f96
/*    726 */	ldd	[%xg6+%g4],%f352
/*    726 */	sxar2
/*    726 */	fsubd,s	%f110,%f146,%f110
/*    726 */	fmuld,s	%f184,%f162,%f162
/*    726 */	ldx	[%o7+%fp],%i3
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg22],%f372
/*    726 */	fmaddd,s	%f246,%f246,%f246,%f164
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f248,%f46,%f46
/*    726 */	ldd	[%xg9+%xg23],%f80
/*    726 */	ldx	[%o4+%fp],%i2
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f84,%f148,%f84
/*    726 */	fselmovd,s	%f190,%f108,%f64,%f108
/*    726 */	sxar1
/*    726 */	ldd	[%xg5+%g3],%f180
/*    726 */	sub	%l6,%o2,%l6
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f150,%f188,%f150
/*    726 */	fsubd,s	%f62,%f242,%f242
/*    726 */	sub	%l7,%o2,%l7
/*    726 */	and	%l6,255,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f152,%f144,%f152
/*    726 */	fpmaddx,s	%f70,%f196,%f198,%f230
/*    726 */	and	%l7,255,%l7
/*    726 */	sxar2
/*    726 */	frcpad,s	%f90,%f176
/*    726 */	ldd,s	[%xg20+80],%f56
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f158,%f128,%f62,%f128
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sllx	%l7,4,%l7
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f106,%f156,%f154,%f106
/*    726 */	fmaddd,sc	%f210,%f78,%f212,%f148
/*    726 */	sxar1
/*    726 */	std	%f290,[%o5+%fp]
/*    726 */	sub	%i2,%o2,%i2
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f74,%f110,%f146,%f74
/*    726 */	fmuld,s	%f246,%f246,%f36
/*    726 */	sxar2
/*    726 */	ldd	[%l6+%o3],%f66
/*    726 */	ldd	[%l7+%o3],%f322
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f248,%f46,%f248
/*    726 */	fsubd,s	%f62,%f84,%f84
/*    726 */	sxar2
/*    726 */	fxtod,s	%f134,%f228
/*    726 */	ldd	[%xg6+%g3],%f436
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f108,%f150,%f108
/*    726 */	add	%xg21,96,%i0
/*    726 */	sxar1
/*    726 */	fsubd,s	%f152,%f56,%f152
/*    726 */	and	%i2,255,%i2
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f230,%f202,%f190,%f230
/*    726 */	ldd,s	[%i0+%g1],%f120
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg23],%f336
/*    726 */	ldd	[%xg14+%xg25],%f124
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f252,%f202,%f190,%f252
/*    726 */	fmuld,s	%f184,%f158,%f158
/*    726 */	sxar1
/*    726 */	std	%f326,[%xg2+%fp]
/*    726 */	sllx	%i2,4,%i2
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f176,%f90,%f62,%f90
/*    726 */	fmaddd,s	%f128,%f128,%f128,%f160
/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f226,%f194,%f244
/*    726 */	sub	%i3,%o2,%i3
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f78,%f148,%f214,%f148
/*    726 */	ldx	[%o5+%fp],%i5
/*    726 */	sxar1
/*    726 */	std	%f74,[%xg19+80]
/*    726 */	and	%i3,255,%i3
/*    726 */	sxar2
/*    726 */	fmuld,s	%f66,%f78,%f126
/*    726 */	fmaddd,sc	%f210,%f248,%f212,%f110
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg24],%f142
/*    726 */	ldd	[%l0+%xg24],%f398
/*    726 */	sxar2
/*    726 */	fsubd,s	%f180,%f96,%f180
/*    726 */	fsubd,s	%f82,%f120,%f82
/*    726 */	sxar1
/*    726 */	ldd	[%i2+%o3],%f138
/*    726 */	sllx	%i3,4,%i3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f164,%f162,%f162,%f164
/*    726 */	fmaddd,sc	%f204,%f222,%f174,%f174
/*    726 */	sxar1
/*    726 */	ldd	[%l0+%xg25],%f380
/*    726 */	sub	%i5,%o2,%i5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f84,%f152,%f56,%f84
/*    726 */	fpmaddx,s	%f252,%f206,%f62,%f252
/*    726 */	sxar2
/*    726 */	fmuld,s	%f128,%f128,%f56
/*    726 */	fmaddd,s	%f160,%f158,%f158,%f160
/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%i4
/*    726 */	std	%f330,[%xg19+88]
/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f54,%f196,%f198,%f54
/*    726 */	and	%i5,255,%i5
/*    726 */	sxar2
/*    726 */	fdtox,s	%f244,%f244
/*    726 */	ldd	[%i3+%o3],%f140
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f248,%f110,%f214,%f110
/*    726 */	sllx	%i5,4,%i5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f178,%f102,%f242
/*    726 */	fsubd,s	%f80,%f116,%f80
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f114,%f212,%f132
/*    726 */	ldd	[%i5+%o3],%f394
/*    726 */	sub	%i4,%o2,%i4
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f36,%f36,%f246,%f36
/*    726 */	add	%i5,8,%i5
/*    726 */	sxar2
/*    726 */	fdtox,s	%f100,%f100
/*    726 */	fmuld,s	%f184,%f176,%f176
/*    726 */	add	%i2,8,%i2
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f90,%f90,%f90,%f178
/*    726 */	and	%i4,255,%i4
/*    726 */	sxar2
/*    726 */	ldd	[%i5+%o3],%f400
/*    726 */	ldd	[%i2+%o3],%f144
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f56,%f56,%f128,%f56
/*    726 */	sllx	%i4,4,%i5
/*    726 */	sxar2
/*    726 */	std	%f84,[%xg20+80]
/*    726 */	fpmaddx,s	%f34,%f196,%f198,%f34
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f180,%f96,%f180
/*    726 */	std	%f340,[%xg20+88]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f110,%f216,%f110
/*    726 */	fsubd,s	%f124,%f142,%f124
/*    726 */	sxar2
/*    726 */	std,s	%f242,[%l4+%g1]
/*    726 */	fmuld,s	%f138,%f248,%f248
/*    726 */	sxar2
/*    726 */	srl	%xg7,%g0,%i2
/*    726 */	fmaddd,s	%f114,%f132,%f214,%f132
/*    726 */	sxar1
/*    726 */	faddd,s	%f250,%f122,%f250
/*    726 */	srl	%l5,%g0,%l5
/*    726 */	sxar2
/*    726 */	ldd	[%i5+%o3],%f396
/*    726 */	add	%i2,%i2,%xg7
/*    726 */	add	%l5,%l5,%i4
/*    726 */	sxar2
/*    726 */	fmuld,s	%f90,%f90,%f46
/*    726 */	fmaddd,s	%f178,%f176,%f176,%f178
/*    726 */	sxar1
/*    726 */	add	%xg7,%i2,%xg7
/*    726 */	add	%i4,%l5,%i4
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f106,%f186,%f246
/*    726 */	fmaddd,s	%f56,%f160,%f158,%f56
/*    726 */	sxar1
/*    726 */	sllx	%xg7,4,%xg7
/*    726 */	sllx	%i4,4,%i4
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f228,%f228
/*    726 */	fpmaddxhi,s	%f34,%f202,%f190,%f34
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg26],%f146
/*    726 */	ldd	[%l3+%xg26],%f402
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f36,%f164,%f162,%f36
/*    726 */	fmaddd,s	%f48,%f124,%f142,%f124
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f110,%f144,%f248
/*    726 */	fnmsubd,sc	%f200,%f62,%f240,%f240
/*    726 */	add	%i3,8,%i3
/*    726 */	add	%i5,8,%i5
/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f150
/*    726 */	fmaddd,s	%f114,%f132,%f216,%f132
/*    726 */	sxar2
/*    726 */	ldd	[%i5+%o3],%f406
/*    726 */	fmuld,s	%f140,%f114,%f114
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg27],%f152
/*    726 */	ldd	[%l3+%xg27],%f408
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f46,%f46,%f90,%f46
/*    726 */	fmuld,s	%f252,%f250,%f252
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg28],%f154
/*    726 */	fselmovd,s	%f190,%f106,%f246,%f158
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg28],%f410
/*    726 */	fcmpleed,s	%f56,%f186,%f242
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg29],%f162
/*    726 */	fmaddd,sc	%f204,%f228,%f104,%f104
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg29],%f418
/*    726 */	frcpad,s	%f124,%f64
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f36,%f186,%f250
/*    726 */	add	%xg8,112,%xg8
/*    726 */	sxar2
/*    726 */	faddd,s	%f138,%f248,%f138
/*    726 */	fpmaddx,s	%f34,%f206,%f62,%f34
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg8],%f58
/*    726 */	fmaddd,sc	%f208,%f222,%f174,%f222
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f114,%f132,%f150,%f114
/*    726 */	ldd	[%l2+%xg31],%f174
/*    726 */	sxar2
/*    726 */	ldd	[%l3+%xg31],%f430
/*    726 */	fselmovd,s	%f190,%f252,%f76,%f252
/*    726 */	sxar1
/*    726 */	fcmpgeed,s	%f166,%f188,%f166
/*    726 */	add	%l6,8,%l6
/*    726 */	add	%l7,8,%l7
/*    726 */	sxar2
/*    726 */	fsubd,s	%f146,%f152,%f146
/*    726 */	fselmovd,s	%f190,%f56,%f242,%f102
/*    726 */	sxar2
/*    726 */	ldd	[%l6+%o3],%f156
/*    726 */	ldd	[%l7+%o3],%f412
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f158,%f194,%f90
/*    726 */	fsubd,s	%f162,%f154,%f162
/*    726 */	sxar2
/*    726 */	std	%f112,[%o4+%fp]
/*    726 */	fmaddd,s	%f78,%f148,%f216,%f78
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f64,%f124,%f62,%f124
/*    726 */	std	%f134,[%g5+%fp]
/*    726 */	sxar2
/*    726 */	fxtod,s	%f244,%f248
/*    726 */	fmuld,s	%f34,%f138,%f34
/*    726 */	sxar2
/*    726 */	std	%f390,[%o0+%fp]
/*    726 */	faddd,s	%f140,%f114,%f140
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f230,%f206,%f62,%f230
/*    726 */	ldd	[%l2+%xg30],%f160
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f252,%f166,%f252
/*    726 */	ldd	[%l3+%xg30],%f416
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f146,%f152,%f146
/*    726 */	fmaddd,sc	%f192,%f102,%f194,%f110
/*    726 */	sxar2
/*    726 */	fdtox,s	%f90,%f90
/*    726 */	fmaddd,s	%f58,%f162,%f154,%f162
/*    726 */	sxar2
/*    726 */	std	%f68,[%o7+%fp]
/*    726 */	fmaddd,s	%f126,%f78,%f156,%f126
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f224,%f224
/*    726 */	fselmovd,s	%f190,%f34,%f72,%f34
/*    726 */	sxar2
/*    726 */	add	%xg11,56,%xg11
/*    726 */	fcmpgeed,s	%f168,%f188,%f168
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg19+96],%f164
/*    726 */	fmuld,s	%f230,%f140,%f230
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f228,%f104,%f228
/*    726 */	ldsw	[%xg11+-4032],%i3
/*    726 */	sxar2
/*    726 */	ldsw	[%xg11+-4028],%i2
/*    726 */	ldd	[%xg7+%xg22],%f114
/*    726 */	sxar2
/*    726 */	fsubd,s	%f174,%f160,%f174
/*    726 */	fselmovd,s	%f190,%f36,%f250,%f96
/*    726 */	sxar2
/*    726 */	fxtod,s	%f100,%f142
/*    726 */	fsubd,s	%f62,%f252,%f252
/*    726 */	ldx	[%g5+%fp],%l4
/*    726 */	sxar2
/*    726 */	frcpad,s	%f162,%f70
/*    726 */	fmaddd,s	%f52,%f80,%f116,%f80
/*    726 */	ldx	[%o0+%fp],%l5
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%g4],%f76
/*    726 */	ldd	[%xg12+%g4],%f332
/*    726 */	sxar2
/*    726 */	fsubd,s	%f146,%f164,%f146
/*    726 */	fmuld,s	%f184,%f64,%f64
/*    726 */	ldx	[%o7+%fp],%l6
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg22],%f370
/*    726 */	fmaddd,s	%f124,%f124,%f124,%f84
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f224,%f238,%f238
/*    726 */	ldd	[%xg7+%xg23],%f72
/*    726 */	ldx	[%o4+%fp],%i5
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f34,%f168,%f34
/*    726 */	fselmovd,s	%f190,%f230,%f234,%f230
/*    726 */	sxar1
/*    726 */	ldd	[%xg10+%g3],%f154
/*    726 */	sub	%l4,%o2,%l4
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f170,%f188,%f170
/*    726 */	fsubd,s	%f62,%f108,%f108
/*    726 */	sub	%l5,%o2,%l5
/*    726 */	and	%l4,255,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f174,%f160,%f174
/*    726 */	fpmaddx,s	%f68,%f196,%f198,%f78
/*    726 */	and	%l5,255,%l5
/*    726 */	sxar2
/*    726 */	frcpad,s	%f80,%f168
/*    726 */	ldd,s	[%xg20+96],%f128
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f70,%f162,%f62,%f162
/*    726 */	sllx	%l4,4,%l4
/*    726 */	sllx	%l5,4,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f46,%f178,%f176,%f46
/*    726 */	fmaddd,sc	%f210,%f228,%f212,%f166
/*    726 */	sxar1
/*    726 */	std	%f368,[%o5+%fp]
/*    726 */	sub	%i5,%o2,%i5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f252,%f146,%f164,%f252
/*    726 */	fmuld,s	%f124,%f124,%f116
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%o3],%f122
/*    726 */	ldd	[%l5+%o3],%f378
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f224,%f238,%f224
/*    726 */	fsubd,s	%f62,%f34,%f34
/*    726 */	sxar2
/*    726 */	fxtod,s	%f90,%f148
/*    726 */	ldd	[%xg12+%g3],%f410
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f230,%f170,%f230
/*    726 */	add	%xg21,112,%xg21
/*    726 */	sxar1
/*    726 */	fsubd,s	%f174,%f128,%f174
/*    726 */	and	%i5,255,%i5
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f78,%f202,%f190,%f78
/*    726 */	ldd,s	[%xg21+%g1],%f170
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg23],%f328
/*    726 */	ldd	[%xg9+%xg25],%f156
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f54,%f202,%f190,%f54
/*    726 */	fmuld,s	%f184,%f70,%f70
/*    726 */	sxar1
/*    726 */	std	%f324,[%xg2+%fp]
/*    726 */	sllx	%i5,4,%i5
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f168,%f80,%f62,%f80
/*    726 */	fmaddd,s	%f162,%f162,%f162,%f150
/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f96,%f194,%f104
/*    726 */	sub	%l6,%o2,%l6
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f228,%f166,%f214,%f166
/*    726 */	ldx	[%o5+%fp],%l2
/*    726 */	sxar1
/*    726 */	std	%f252,[%xg19+96]
/*    726 */	and	%l6,255,%l6
/*    726 */	sxar2
/*    726 */	fmuld,s	%f122,%f228,%f160
/*    726 */	fmaddd,sc	%f210,%f224,%f212,%f68
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg24],%f178
/*    726 */	ldd	[%l1+%xg24],%f434
/*    726 */	sxar2
/*    726 */	fsubd,s	%f154,%f76,%f154
/*    726 */	fsubd,s	%f180,%f170,%f180
/*    726 */	sxar1
/*    726 */	ldd	[%i5+%o3],%f176
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f84,%f64,%f64,%f84
/*    726 */	fmaddd,sc	%f204,%f240,%f182,%f182
/*    726 */	sxar1
/*    726 */	ldd	[%l1+%xg25],%f412
/*    726 */	sub	%l2,%o2,%l2
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f174,%f128,%f34
/*    726 */	fpmaddx,s	%f54,%f206,%f62,%f54
/*    726 */	sxar2
/*    726 */	fmuld,s	%f162,%f162,%f128
/*    726 */	fmaddd,s	%f150,%f70,%f70,%f150
/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%l7
/*    726 */	std	%f508,[%xg19+104]
/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f134,%f196,%f198,%f134
/*    726 */	and	%l2,255,%l2
/*    726 */	sxar2
/*    726 */	fdtox,s	%f104,%f104
/*    726 */	ldd	[%l6+%o3],%f252
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f224,%f68,%f214,%f68
/*    726 */	sllx	%l2,4,%l2
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f108,%f82,%f120,%f108
/*    726 */	fsubd,s	%f72,%f114,%f72
/*    726 */	sxar2
/*    726 */	add	%xg19,112,%xg19
/*    726 */	fmaddd,sc	%f210,%f222,%f212,%f234
/*    726 */	sxar1
/*    726 */	ldd	[%l2+%o3],%f432
/*    726 */	sub	%l7,%o2,%l7
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f116,%f116,%f124,%f116
/*    726 */	add	%l2,8,%l2
/*    726 */	sxar2
/*    726 */	fdtox,s	%f110,%f110
/*    726 */	fmuld,s	%f184,%f168,%f168
/*    726 */	add	%i5,8,%i5
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f80,%f80,%f80,%f238
/*    726 */	and	%l7,255,%l7
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%o3],%f330
/*    726 */	ldd	[%i5+%o3],%f74
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f128,%f128,%f162,%f128
/*    726 */	sllx	%l7,4,%l7
/*    726 */	sxar2
/*    726 */	std	%f34,[%xg20+96]
/*    726 */	fpmaddx,s	%f112,%f196,%f198,%f112
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f32,%f154,%f76,%f154
/*    726 */	std	%f290,[%xg20+104]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f68,%f216,%f68
/*    726 */	add	%xg20,112,%xg20
/*    726 */	sxar2
/*    726 */	fsubd,s	%f156,%f178,%f156
/*    726 */	std,s	%f108,[%i0+%g1]
/*    726 */	sxar1
/*    726 */	fmuld,s	%f176,%f224,%f224
/*    726 */	srl	%i3,%g0,%i3
/*    726 */	sxar2
/*    726 */	sub	%xg18,7,%xg18
/*    726 */	cmp	%xg18,16
/*    726 */	bge,pt	%icc, .L669
	nop


.L853:

/*    726 */	srl	%i2,%g0,%i2



/*    726 */	sxar2
/*    726 */	fmovd,s	%f244,%f162
/*    726 */	fmovd,s	%f90,%f76

/*    726 */	add	%i3,%i3,%i5

/*    726 */	sxar1
/*    726 */	fmovd,s	%f136,%f144

/*    726 */	add	%i2,%i2,%l2

/*    726 */	sxar1
/*    726 */	fnmsubd,sc	%f200,%f62,%f248,%f248

/*    726 */	add	%i5,%i3,%i5


/*    726 */	sxar2
/*    726 */	faddd,s	%f66,%f126,%f66
/*    726 */	ldd	[%xg5+%xg26],%f124

/*    726 */	add	%l2,%i2,%l2


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f112,%f202,%f190,%f112
/*    726 */	fcmpgeed,s	%f98,%f188,%f98


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f68,%f74,%f224
/*    726 */	ldd	[%xg6+%xg26],%f380

/*    726 */	add	%l4,8,%l4



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f52,%f156,%f178,%f156
/*    726 */	ldd	[%xg5+%xg27],%f120


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg27],%f376
/*    726 */	fmaddd,sc	%f208,%f240,%f182,%f240



/*    726 */	sxar2
/*    726 */	fmuld,s	%f80,%f80,%f82
/*    726 */	fmaddd,s	%f228,%f166,%f216,%f228


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg19],%f178
/*    726 */	ldd	[%l4+%o3],%f182



/*    726 */	sxar1
/*    726 */	std	%f162,[%o4+%fp]

/*    726 */	sllx	%i5,4,%i5

/*    726 */	sllx	%l2,4,%l2



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f222,%f234,%f214,%f234
/*    726 */	std	%f76,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f248,%f226,%f226
/*    726 */	fcmpgeed,s	%f220,%f188,%f220

/*    726 */	add	%l6,8,%l6


/*    726 */	sxar2
/*    726 */	std	%f332,[%o0+%fp]
/*    726 */	fmuld,s	%f54,%f66,%f54

/*    726 */	add	%l5,8,%l5


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f112,%f206,%f62,%f112
/*    726 */	std	%f144,[%o7+%fp]


/*    726 */	sxar2
/*    726 */	faddd,s	%f176,%f224,%f176
/*    726 */	fsubd,s	%f124,%f120,%f124


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f46,%f186,%f76
/*    726 */	ldd	[%i5+%xg28],%f138



/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg28],%f394
/*    726 */	fpmaddx,s	%f244,%f196,%f198,%f244


/*    726 */	sxar2
/*    726 */	ldd	[%i5+%xg29],%f140
/*    726 */	ldd	[%l2+%xg29],%f396



/*    726 */	sxar2
/*    726 */	frcpad,s	%f156,%f126
/*    726 */	fmaddd,s	%f82,%f82,%f80,%f82


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg31],%f166
/*    726 */	ldd	[%xg6+%xg31],%f422


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f168,%f168,%f238
/*    726 */	fmaddd,s	%f222,%f234,%f216,%f234



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg30],%f164
/*    726 */	add	%l7,8,%xg5


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f248,%f226,%f248
/*    726 */	fmaddd,sc	%f210,%f240,%f212,%f132


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f54,%f232,%f54
/*    726 */	ldd	[%xg6+%xg30],%f420

/*    726 */	sxar1
/*    726 */	add	%xg21,16,%xg6


/*    726 */	ldx	[%g5+%fp],%i2

/*    726 */	ldx	[%o0+%fp],%i3


/*    726 */	sxar2
/*    726 */	fmuld,s	%f112,%f176,%f112
/*    726 */	fmaddd,s	%f50,%f124,%f120,%f124


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f46,%f76,%f108
/*    726 */	fsubd,s	%f140,%f138,%f140

/*    726 */	ldx	[%o7+%fp],%l3

/*    726 */	ldx	[%o4+%fp],%i0


/*    726 */	sxar2
/*    726 */	fmovd,s	%f104,%f146
/*    726 */	std	%f418,[%o5+%fp]


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f126,%f156,%f62,%f156
/*    726 */	fsubd,s	%f166,%f164,%f166


/*    726 */	sxar2
/*    726 */	std	%f400,[%xg2+%fp]
/*    726 */	fmaddd,s	%f82,%f238,%f168,%f82


/*    726 */	sxar2
/*    726 */	ldd	[%l7+%o3],%f508
/*    726 */	add	%xg8,16,%l7

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f210,%f248,%f212,%f174


/*    726 */	sub	%i3,%o2,%i3


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg8+16],%f172
/*    726 */	fselmovd,s	%f218,%f54,%f98,%f54

/*    726 */	sub	%i0,%o2,%i0

/*    726 */	sub	%l3,%o2,%l3

/*    726 */	and	%i0,255,%i0

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f112,%f254,%f112
/*    726 */	fsubd,s	%f124,%f178,%f124

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f108,%f194,%f176

/*    726 */	sllx	%i0,4,%i0

/*    726 */	sllx	%l3,4,%l3



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%o3],%f488
/*    726 */	fmuld,s	%f252,%f222,%f222

/*    726 */	sxar1
/*    726 */	ldd	[%i0+%o3],%f254

/*    726 */	add	%i0,8,%i0


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%o3],%f120
/*    726 */	fmaddd,s	%f172,%f140,%f138,%f140

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f50,%f166,%f164,%f50

/*    726 */	ldx	[%o5+%fp],%l4


/*    726 */	sxar2
/*    726 */	ldd	[%i0+%o3],%f80
/*    726 */	add	%l3,8,%xg5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f174,%f214,%f174
/*    726 */	ldd,s	[%xg20],%f34


/*    726 */	sxar2
/*    726 */	add	%xg11,8,%l3
/*    726 */	ldd	[%l6+%o3],%f232



/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f54,%f54
/*    726 */	add	%xg19,16,%xg11


/*    726 */	sxar2
/*    726 */	add	%xg20,16,%xg11
/*    726 */	fselmovd,s	%f218,%f112,%f220,%f112


/*    726 */	sxar2
/*    726 */	sub	%xg18,1,%xg11
/*    726 */	fpmaddxhi,s	%f244,%f202,%f190,%f244


/*    726 */	sxar2
/*    726 */	add	%xg8,32,%xg11
/*    726 */	ldd	[%l5+%o3],%f438


/*    726 */	sxar1
/*    726 */	fmaddd,s	%f240,%f132,%f214,%f132

/*    726 */	sub	%l4,%o2,%l4


/*    726 */	sxar2
/*    726 */	fdtox,s	%f176,%f176
/*    726 */	fpmaddxhi,s	%f134,%f202,%f190,%f134

/*    726 */	and	%l4,255,%l4


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f126,%f126
/*    726 */	ldd	[%xg5+%o3],%f144


/*    726 */	sxar2
/*    726 */	frcpad,s	%f140,%f224
/*    726 */	fmaddd,s	%f222,%f234,%f232,%f222

/*    726 */	sllx	%l4,4,%l4

/*    726 */	sxar1
/*    726 */	ldd	[%xg10+%xg27],%f162

/*    726 */	and	%i3,255,%i3

/*    726 */	sxar1
/*    726 */	ldd	[%l4+%o3],%f510

/*    726 */	add	%l4,8,%l4



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f174,%f216,%f174
/*    726 */	fmaddd,s	%f54,%f124,%f178,%f54

/*    726 */	sxar1
/*    726 */	ldd	[%l4+%o3],%f336

/*    726 */	sllx	%i3,4,%i3


/*    726 */	sxar1
/*    726 */	fsubd,s	%f50,%f34,%f50

/*    726 */	add	%i3,8,%l4


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f112,%f112
/*    726 */	ldd	[%xg12+%xg27],%f418


/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f244,%f206,%f62,%f244

/*    726 */	sub	%i2,%o2,%i2


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f160,%f228,%f182,%f160
/*    726 */	fmaddd,s	%f156,%f156,%f156,%f234



/*    726 */	sxar2
/*    726 */	ldd	[%i3+%o3],%f488
/*    726 */	ldd	[%xg7+%xg24],%f68

/*    726 */	and	%i2,255,%i2


/*    726 */	sxar2
/*    726 */	fmuld,s	%f156,%f156,%f238
/*    726 */	fmuld,s	%f254,%f248,%f248



/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg24],%f324
/*    726 */	fnmsubd,s	%f224,%f140,%f62,%f140

/*    726 */	sllx	%i2,4,%i2


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f230,%f230
/*    726 */	fmaddd,s	%f116,%f84,%f64,%f116


/*    726 */	sxar2
/*    726 */	add	%i2,8,%xg5
/*    726 */	fmaddd,s	%f240,%f132,%f216,%f132



/*    726 */	sxar2
/*    726 */	ldd	[%i2+%o3],%f232
/*    726 */	fmaddd,s	%f128,%f150,%f70,%f128



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f134,%f206,%f62,%f134
/*    726 */	std	%f54,[%xg19]


/*    726 */	sxar2
/*    726 */	fmovd,s	%f100,%f152
/*    726 */	ldd	[%xg10+%xg26],%f150


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f112,%f50,%f34,%f112
/*    726 */	ldd	[%xg12+%xg26],%f406



/*    726 */	sxar2
/*    726 */	faddd,s	%f122,%f160,%f122
/*    726 */	fmaddd,s	%f234,%f126,%f126,%f234


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f174,%f80,%f248
/*    726 */	fmaddd,s	%f238,%f238,%f156,%f238


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg31],%f34
/*    726 */	fmuld,s	%f140,%f140,%f66


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg6+%g1],%f50
/*    726 */	fmaddd,s	%f230,%f180,%f170,%f230


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f140,%f140,%f140,%f64
/*    726 */	ldd	[%xg12+%xg31],%f290



/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f92,%f188,%f92
/*    726 */	fnmsubd,sc	%f200,%f62,%f148,%f148


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg25],%f70
/*    726 */	ldx	[%xg2+%fp],%xg8



/*    726 */	sxar2
/*    726 */	fsubd,s	%f150,%f162,%f150
/*    726 */	faddd,s	%f252,%f222,%f252


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f78,%f206,%f62,%f78
/*    726 */	std	%f146,[%o4+%fp]



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f116,%f186,%f228
/*    726 */	fmuld,s	%f134,%f122,%f134


/*    726 */	sxar2
/*    726 */	std	%f176,[%g5+%fp]
/*    726 */	faddd,s	%f254,%f248,%f254


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f234,%f126,%f238
/*    726 */	ldd	[%l4+%o3],%f382


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f66,%f66,%f140,%f66
/*    726 */	sub	%xg8,%o2,%xg8


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg30],%f140
/*    726 */	fcmpgeed,s	%f94,%f188,%f94


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f72,%f114,%f72
/*    726 */	and	%xg8,255,%xg8


/*    726 */	sxar2
/*    726 */	fxtod,s	%f104,%f156
/*    726 */	ldd	[%xg12+%xg30],%f396



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f148,%f158,%f158
/*    726 */	ldd	[%i4+%xg25],%f326



/*    726 */	sxar2
/*    726 */	sllx	%xg8,4,%xg8
/*    726 */	fmaddd,s	%f32,%f150,%f162,%f150


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f82,%f186,%f138
/*    726 */	ldd	[%xg8+%o3],%f376


/*    726 */	sxar2
/*    726 */	add	%xg8,8,%xg8
/*    726 */	fmuld,s	%f78,%f252,%f78



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f116,%f228,%f84
/*    726 */	ldd	[%xg8+%o3],%f400



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%o3],%f126
/*    726 */	fselmovd,s	%f190,%f134,%f42,%f134



/*    726 */	sxar2
/*    726 */	ldd	[%i5+%xg22],%f166
/*    726 */	fmuld,s	%f244,%f254,%f244


/*    726 */	sxar2
/*    726 */	fsubd,s	%f34,%f140,%f34
/*    726 */	add	%xg21,32,%xg5


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f128,%f186,%f226
/*    726 */	fmuld,s	%f184,%f224,%f224


/*    726 */	sxar2
/*    726 */	std	%f112,[%xg20]
/*    726 */	ldd	[%l2+%xg22],%f422



/*    726 */	sxar2
/*    726 */	fmuld,s	%f120,%f240,%f240
/*    726 */	fnmsubd,sc	%f200,%f62,%f156,%f156


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f148,%f158,%f148
/*    726 */	fxtod,s	%f176,%f124


/*    726 */	sxar2
/*    726 */	std	%f432,[%o0+%fp]
/*    726 */	fselmovd,s	%f190,%f82,%f138,%f178


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f78,%f236,%f78
/*    726 */	std	%f310,[%xg19+8]


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f84,%f194,%f164
/*    726 */	fselmovd,s	%f218,%f134,%f92,%f134


/*    726 */	sxar2
/*    726 */	std	%f368,[%xg20+8]
/*    726 */	ldd	[%i5+%xg23],%f174


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f244,%f130,%f244
/*    726 */	fmaddd,s	%f32,%f34,%f140,%f34


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f136,%f196,%f198,%f136
/*    726 */	fsubd,s	%f70,%f68,%f70


/*    726 */	sxar2
/*    726 */	std	%f152,[%o7+%fp]
/*    726 */	ldd	[%l2+%xg23],%f430



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f132,%f144,%f240
/*    726 */	fmaddd,sc	%f204,%f156,%f96,%f96


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f148,%f212,%f114
/*    726 */	fmuld,s	%f232,%f148,%f236


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg26],%f92
/*    726 */	fselmovd,s	%f190,%f128,%f226,%f74


/*    726 */	sxar2
/*    726 */	frcpad,s	%f72,%f98
/*    726 */	ldd	[%xg15+%xg26],%f348



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%g4],%f168
/*    726 */	fmaddd,s	%f64,%f224,%f224,%f64


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f134,%f134
/*    726 */	fnmsubd,sc	%f200,%f62,%f124,%f124


/*    726 */	sxar2
/*    726 */	std,s	%f230,[%xg21+%g1]
/*    726 */	fselmovd,s	%f218,%f244,%f94,%f244



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%g4],%f424
/*    726 */	fcmpgeed,s	%f86,%f188,%f86


/*    726 */	sxar2
/*    726 */	fdtox,s	%f164,%f164
/*    726 */	faddd,s	%f120,%f240,%f120


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f178,%f194,%f122
/*    726 */	ldd,s	[%xg19+16],%f240


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%g3],%f182
/*    726 */	fpmaddxhi,s	%f136,%f202,%f190,%f136


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f148,%f114,%f214,%f114
/*    726 */	ldd	[%xg15+%g3],%f438



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f90,%f196,%f198,%f90
/*    726 */	fmaddd,sc	%f208,%f156,%f96,%f156


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f70,%f68,%f70
/*    726 */	fnmsubd,sc	%f200,%f62,%f142,%f142


/*    726 */	sxar2
/*    726 */	ldd	[%i5+%xg24],%f96
/*    726 */	ldx	[%g5+%fp],%xg10


/*    726 */	sxar2
/*    726 */	fsubd,s	%f150,%f240,%f150
/*    726 */	ldx	[%o0+%fp],%xg8


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f244,%f244
/*    726 */	fmaddd,s	%f66,%f64,%f224,%f66

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f192,%f74,%f194,%f158

/*    726 */	ldx	[%o7+%fp],%l4



/*    726 */	sxar2
/*    726 */	ldx	[%o4+%fp],%xg12
/*    726 */	fnmsubd,s	%f98,%f72,%f62,%f72


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f124,%f108,%f108
/*    726 */	std	%f402,[%o5+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f148,%f114,%f216,%f148
/*    726 */	fselmovd,s	%f218,%f78,%f86,%f78


/*    726 */	sxar2
/*    726 */	std	%f408,[%xg2+%fp]
/*    726 */	fpmaddx,s	%f136,%f206,%f62,%f136


/*    726 */	sxar2
/*    726 */	fdtox,s	%f122,%f122
/*    726 */	sub	%xg8,%o2,%xg8


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg5+%g1],%f114
/*    726 */	sub	%xg12,%o2,%xg12

/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f90,%f202,%f190,%f90

/*    726 */	sub	%l4,%o2,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f156,%f212,%f54
/*    726 */	fmaddd,sc	%f204,%f142,%f88,%f88


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f134,%f150,%f240,%f134
/*    726 */	and	%xg12,255,%xg12


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg20+16],%f32
/*    726 */	frcpad,s	%f70,%f222


/*    726 */	sxar2
/*    726 */	fdtox,s	%f158,%f158
/*    726 */	sllx	%xg12,4,%xg12


/*    726 */	sxar2
/*    726 */	and	%xg8,255,%xg8
/*    726 */	fmuld,s	%f72,%f72,%f64


/*    726 */	sxar2
/*    726 */	fsubd,s	%f154,%f50,%f154
/*    726 */	ldd	[%xg12+%o3],%f112


/*    726 */	sxar2
/*    726 */	add	%xg12,8,%xg12
/*    726 */	fmaddd,s	%f236,%f148,%f126,%f236

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f208,%f124,%f108,%f124

/*    726 */	ldx	[%o5+%fp],%l5

/*    726 */	and	%l4,255,%l4



/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f78,%f78
/*    726 */	fsubd,s	%f34,%f32,%f34


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%o3],%f132
/*    726 */	sllx	%xg8,4,%xg8


/*    726 */	sxar2
/*    726 */	fsubd,s	%f174,%f166,%f174
/*    726 */	fmuld,s	%f136,%f120,%f136

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	ldd	[%xg8+%o3],%f408
/*    726 */	fxtod,s	%f164,%f162



/*    726 */	sxar2
/*    726 */	std	%f134,[%xg19+16]
/*    726 */	fpmaddx,s	%f90,%f206,%f62,%f90


/*    726 */	sxar2
/*    726 */	add	%l4,8,%xg12
/*    726 */	fmuld,s	%f184,%f98,%f98

/*    726 */	sub	%l5,%o2,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f156,%f54,%f214,%f54
/*    726 */	add	%xg8,8,%i0



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f72,%f72,%f248
/*    726 */	fmaddd,sc	%f208,%f142,%f88,%f142

/*    726 */	sxar1
/*    726 */	ldd	[%xg13+%xg27],%f88

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f222,%f70,%f62,%f70
/*    726 */	faddd,s	%f232,%f236,%f232

/*    726 */	sxar1
/*    726 */	ldd	[%xg15+%xg27],%f344


/*    726 */	sllx	%l5,4,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f64,%f64,%f72,%f64
/*    726 */	fmaddd,s	%f244,%f34,%f32,%f244

/*    726 */	sxar1
/*    726 */	ldd	[%l5+%o3],%f368

/*    726 */	add	%l5,8,%l5



/*    726 */	sxar2
/*    726 */	fxtod,s	%f158,%f230
/*    726 */	sub	%xg10,%o2,%xg10


/*    726 */	sxar2
/*    726 */	fmovd,s	%f110,%f108
/*    726 */	ldd	[%l5+%o3],%f388



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f174,%f166,%f174
/*    726 */	fmaddd,s	%f78,%f154,%f50,%f78


/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%l7
/*    726 */	ldd	[%l4+%o3],%f154


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f136,%f60,%f136
/*    726 */	fnmsubd,sc	%f200,%f62,%f162,%f162


/*    726 */	sxar2
/*    726 */	and	%xg10,255,%xg10
/*    726 */	std	%f164,[%o4+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f248,%f98,%f98,%f248
/*    726 */	sllx	%xg10,4,%xg10


/*    726 */	sxar2
/*    726 */	std	%f122,[%g5+%fp]
/*    726 */	fmaddd,s	%f156,%f54,%f216,%f54


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f222,%f222
/*    726 */	fmuld,s	%f90,%f232,%f90


/*    726 */	sxar2
/*    726 */	add	%xg10,8,%l6
/*    726 */	std	%f378,[%o0+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f70,%f70,%f70,%f252
/*    726 */	fmuld,s	%f70,%f70,%f72

/*    726 */	sub	%l7,%o2,%l7



/*    726 */	sxar2
/*    726 */	std	%f244,[%xg20+16]
/*    726 */	fxtod,s	%f110,%f234



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f104,%f196,%f198,%f104
/*    726 */	std	%f390,[%xg19+24]

/*    726 */	and	%l7,255,%l7


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f106,%f188,%f106
/*    726 */	frcpad,s	%f174,%f254

/*    726 */	sllx	%l7,4,%l7


/*    726 */	sxar2
/*    726 */	std	%f500,[%xg20+24]
/*    726 */	fmaddd,sc	%f210,%f124,%f212,%f60


/*    726 */	sxar2
/*    726 */	fsubd,s	%f92,%f88,%f92
/*    726 */	std,s	%f78,[%xg6+%g1]


/*    726 */	sxar2
/*    726 */	add	%l7,8,%xg6
/*    726 */	fmaddd,sc	%f204,%f162,%f84,%f84


/*    726 */	sxar2
/*    726 */	fmuld,s	%f112,%f156,%f156
/*    726 */	std	%f108,[%o7+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f64,%f248,%f98,%f64
/*    726 */	ldd	[%i5+%xg25],%f98


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f90,%f246,%f90
/*    726 */	ldd	[%l2+%xg24],%f352



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f252,%f222,%f222,%f252
/*    726 */	fmaddd,s	%f72,%f72,%f70,%f72


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f234,%f234
/*    726 */	fmaddd,sc	%f210,%f142,%f212,%f86



/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg25],%f354
/*    726 */	fpmaddxhi,s	%f104,%f202,%f190,%f104


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f254,%f174,%f62,%f174
/*    726 */	ldd,s	[%xg19+32],%f140


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f124,%f60,%f214,%f60
/*    726 */	fmaddd,s	%f40,%f92,%f88,%f92


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg31],%f42
/*    726 */	fmaddd,sc	%f208,%f162,%f84,%f162


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f156,%f54,%f132,%f156
/*    726 */	ldx	[%g5+%fp],%xg8

/*    726 */	ldx	[%o0+%fp],%i2


/*    726 */	sxar2
/*    726 */	fsubd,s	%f182,%f168,%f182
/*    726 */	fselmovd,s	%f218,%f90,%f106,%f90

/*    726 */	ldx	[%o7+%fp],%l5

/*    726 */	ldx	[%o4+%fp],%l4


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f238,%f186,%f68
/*    726 */	fmaddd,s	%f72,%f252,%f222,%f72


/*    726 */	sxar2
/*    726 */	std	%f420,[%o5+%fp]
/*    726 */	fsubd,s	%f98,%f96,%f98


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f234,%f102,%f102
/*    726 */	ldd	[%xg15+%xg31],%f298



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg30],%f146
/*    726 */	fpmaddx,s	%f104,%f206,%f62,%f104


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f142,%f86,%f214,%f86
/*    726 */	ldd	[%xg15+%xg30],%f402




/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o3],%f152
/*    726 */	fmuld,s	%f174,%f174,%f130


/*    726 */	sxar2
/*    726 */	fsubd,s	%f92,%f140,%f92
/*    726 */	ldd	[%xg12+%o3],%f222

/*    726 */	sub	%l4,%o2,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f124,%f60,%f216,%f60
/*    726 */	fmaddd,sc	%f210,%f162,%f212,%f150

/*    726 */	sxar1
/*    726 */	ldd	[%l7+%o3],%f410

/*    726 */	and	%l4,255,%l4



/*    726 */	sxar2
/*    726 */	std	%f364,[%xg2+%fp]
/*    726 */	fsubd,s	%f62,%f90,%f90

/*    726 */	sxar1
/*    726 */	faddd,s	%f112,%f156,%f112

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f182,%f168,%f182
/*    726 */	fsubd,s	%f42,%f146,%f42

/*    726 */	sxar1
/*    726 */	ldd	[%l6+%o3],%f168

/*    726 */	sub	%l5,%o2,%l5


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f238,%f68,%f224
/*    726 */	fxtod,s	%f122,%f94

/*    726 */	sxar1
/*    726 */	ldd	[%i0+%o3],%f424

/*    726 */	and	%l5,255,%l5



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f64,%f186,%f120
/*    726 */	fmaddd,s	%f172,%f98,%f96,%f98

/*    726 */	sxar1
/*    726 */	ldd	[%l4+%o3],%f246

/*    726 */	add	%l4,8,%l4


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f176,%f196,%f198,%f176
/*    726 */	fmaddd,s	%f174,%f174,%f174,%f126

/*    726 */	sxar1
/*    726 */	ldd	[%xg6+%o3],%f478


/*    726 */	sllx	%l5,4,%l5


/*    726 */	sxar2
/*    726 */	add	%xg21,48,%xg10
/*    726 */	fmaddd,s	%f142,%f86,%f216,%f86


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f234,%f102,%f234
/*    726 */	ldd,s	[%xg20+32],%f232


/*    726 */	sxar2
/*    726 */	fmuld,s	%f152,%f124,%f124
/*    726 */	sub	%xg8,%o2,%xg8


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f130,%f130,%f174,%f130
/*    726 */	ldx	[%o5+%fp],%xg12


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%g4],%f160
/*    726 */	fmaddd,s	%f90,%f92,%f140,%f90

/*    726 */	sxar1
/*    726 */	fmuld,s	%f104,%f112,%f104

/*    726 */	sub	%i2,%o2,%i2


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f42,%f146,%f42
/*    726 */	fmaddd,s	%f162,%f150,%f214,%f150

/*    726 */	ldd	[%l4+%o3],%f40


/*    726 */	sxar2
/*    726 */	and	%xg8,255,%xg8
/*    726 */	fcmpleed,s	%f66,%f186,%f220



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%g4],%f416
/*    726 */	fcmpgeed,s	%f36,%f188,%f36

/*    726 */	and	%i2,255,%i2


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%g3],%f170
/*    726 */	fpmaddx,s	%f100,%f196,%f198,%f100


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f254,%f254
/*    726 */	sub	%xg12,%o2,%xg12


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f94,%f94
/*    726 */	fselmovd,s	%f190,%f64,%f120,%f134


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%g3],%f426
/*    726 */	and	%xg12,255,%xg12



/*    726 */	sxar2
/*    726 */	frcpad,s	%f98,%f144
/*    726 */	fmaddd,sc	%f192,%f224,%f194,%f148

/*    726 */	ldd	[%l5+%o3],%f32


/*    726 */	sxar2
/*    726 */	sllx	%xg12,4,%xg12
/*    726 */	fmuld,s	%f154,%f142,%f142



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f124,%f60,%f168,%f124
/*    726 */	ldd	[%xg12+%o3],%f502



/*    726 */	sxar2
/*    726 */	add	%xg12,8,%xg12
/*    726 */	add	%l5,8,%xg6


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f176,%f202,%f190,%f176
/*    726 */	fmaddd,sc	%f210,%f234,%f212,%f174



/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%o3],%f296
/*    726 */	std	%f90,[%xg19+32]


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f104,%f250,%f104
/*    726 */	sllx	%xg8,4,%xg8


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f150,%f216,%f150
/*    726 */	fselmovd,s	%f190,%f66,%f220,%f80

/*    726 */	sxar1
/*    726 */	fcmpgeed,s	%f38,%f188,%f38

/*    726 */	sllx	%i2,4,%i2


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg10+%g1],%f102
/*    726 */	add	%xg19,32,%xg13


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f100,%f202,%f190,%f100
/*    726 */	fmaddd,s	%f126,%f254,%f254,%f126


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%g4],%f54
/*    726 */	add	%xg20,32,%xg15


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f94,%f178,%f178
/*    726 */	fcmpleed,s	%f72,%f186,%f156



/*    726 */	sxar2
/*    726 */	ldd	[%l1+%g4],%f310
/*    726 */	fmaddd,sc	%f192,%f134,%f194,%f166


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f144,%f98,%f62,%f98
/*    726 */	ldd	[%xg9+%g3],%f78


/*    726 */	sxar2
/*    726 */	add	%xg8,8,%xg13
/*    726 */	fdtox,s	%f148,%f148


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f142,%f86,%f222,%f142
/*    726 */	ldd	[%l1+%g3],%f334



/*    726 */	sxar2
/*    726 */	add	%i2,8,%xg15
/*    726 */	fpmaddx,s	%f176,%f206,%f62,%f176


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f164,%f196,%f198,%f164
/*    726 */	ldx	[%xg2+%fp],%l4


/*    726 */	sxar2
/*    726 */	add	%xg20,48,%xg12
/*    726 */	ldd	[%xg6+%o3],%f88


/*    726 */	sxar2
/*    726 */	fmuld,s	%f246,%f162,%f162
/*    726 */	fmaddd,s	%f234,%f174,%f214,%f174


/*    726 */	sxar2
/*    726 */	sub	%xg18,2,%xg6
/*    726 */	ldd	[%xg8+%o3],%f86


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f104,%f36,%f104
/*    726 */	faddd,s	%f152,%f124,%f152


/*    726 */	sxar2
/*    726 */	add	%xg19,48,%xg8
/*    726 */	fmaddd,sc	%f192,%f80,%f194,%f180


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f136,%f38,%f136
/*    726 */	ldd	[%i2+%o3],%f342



/*    726 */	sxar2
/*    726 */	sub	%xg18,3,%xg6
/*    726 */	fsubd,s	%f42,%f232,%f42


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f100,%f206,%f62,%f100
/*    726 */	ldd	[%xg14+%xg26],%f96

/*    726 */	sub	%l4,%o2,%l4


/*    726 */	sxar2
/*    726 */	fdtox,s	%f166,%f166
/*    726 */	fmaddd,sc	%f208,%f94,%f178,%f94


/*    726 */	sxar1
/*    726 */	ldd	[%l0+%xg26],%f352

/*    726 */	and	%l4,255,%l4



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f72,%f156,%f236
/*    726 */	fmuld,s	%f184,%f144,%f144

/*    726 */	sxar1
/*    726 */	ldd	[%xg14+%xg27],%f106

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f98,%f98,%f98,%f240
/*    726 */	fmaddd,s	%f130,%f126,%f254,%f130

/*    726 */	sxar1
/*    726 */	ldd	[%l4+%o3],%f288

/*    726 */	add	%l4,8,%l4



/*    726 */	sxar2
/*    726 */	fmuld,s	%f98,%f98,%f244
/*    726 */	faddd,s	%f154,%f142,%f154



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg27],%f362
/*    726 */	add	%xg21,64,%xg8


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f104,%f104
/*    726 */	ldd	[%l4+%o3],%f344



/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f164,%f202,%f190,%f164
/*    726 */	add	%xg21,80,%xg12


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg31],%f50
/*    726 */	fmaddd,s	%f162,%f150,%f40,%f162



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f234,%f174,%f216,%f174
/*    726 */	fsubd,s	%f182,%f114,%f182


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg31],%f306
/*    726 */	fmuld,s	%f176,%f152,%f176



/*    726 */	sxar2
/*    726 */	fsubd,s	%f170,%f160,%f170
/*    726 */	fsubd,s	%f62,%f136,%f136


/*    726 */	sxar2
/*    726 */	std	%f148,[%o4+%fp]
/*    726 */	fdtox,s	%f180,%f180


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f230,%f230
/*    726 */	ldd	[%xg13+%o3],%f124


/*    726 */	sxar2
/*    726 */	fmuld,s	%f100,%f154,%f100
/*    726 */	fpmaddx,s	%f110,%f196,%f198,%f110



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%o3],%f380
/*    726 */	fmaddd,sc	%f210,%f94,%f212,%f248


/*    726 */	sxar2
/*    726 */	fxtod,s	%f166,%f250
/*    726 */	ldd	[%xg14+%xg30],%f126


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f236,%f194,%f252
/*    726 */	fmaddd,s	%f240,%f144,%f144,%f240


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg30],%f382
/*    726 */	fmaddd,s	%f244,%f244,%f98,%f244


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f130,%f186,%f34
/*    726 */	fmuld,s	%f32,%f234,%f234


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f104,%f42,%f232,%f104
/*    726 */	faddd,s	%f246,%f162,%f246



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f164,%f206,%f62,%f164
/*    726 */	fselmovd,s	%f190,%f176,%f76,%f176


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f46,%f188,%f46
/*    726 */	fmaddd,s	%f48,%f170,%f160,%f170


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f136,%f182,%f114,%f136
/*    726 */	std	%f166,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fxtod,s	%f180,%f70
/*    726 */	fselmovd,s	%f190,%f100,%f118,%f100


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f44,%f188,%f44
/*    726 */	fpmaddxhi,s	%f110,%f202,%f190,%f110


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f94,%f248,%f214,%f248
/*    726 */	fsubd,s	%f78,%f54,%f78



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f230,%f74,%f74
/*    726 */	fdtox,s	%f252,%f252


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f250,%f250
/*    726 */	fmaddd,s	%f244,%f240,%f144,%f244


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f130,%f34,%f84
/*    726 */	fmaddd,s	%f234,%f174,%f88,%f234


/*    726 */	sxar2
/*    726 */	std	%f104,[%xg20+32]
/*    726 */	fmuld,s	%f86,%f94,%f98


/*    726 */	sxar2
/*    726 */	fsubd,s	%f96,%f106,%f96
/*    726 */	fmuld,s	%f164,%f246,%f164


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f176,%f46,%f176
/*    726 */	fxtod,s	%f148,%f92


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f100,%f44,%f100
/*    726 */	std	%f422,[%o0+%fp]


/*    726 */	sxar2
/*    726 */	fsubd,s	%f170,%f102,%f170
/*    726 */	std	%f346,[%xg19+40]



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f122,%f196,%f198,%f122
/*    726 */	fmaddd,s	%f52,%f78,%f54,%f78


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f200,%f62,%f70,%f70
/*    726 */	std,s	%f136,[%xg5+%g1]


/*    726 */	sxar2
/*    726 */	std	%f360,[%xg20+40]
/*    726 */	fmaddd,sc	%f204,%f250,%f134,%f134


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f244,%f186,%f108
/*    726 */	fmaddd,sc	%f208,%f230,%f74,%f230


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f84,%f194,%f112
/*    726 */	fmaddd,s	%f94,%f248,%f216,%f94


/*    726 */	sxar2
/*    726 */	fxtod,s	%f252,%f114
/*    726 */	faddd,s	%f32,%f234,%f32


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f110,%f206,%f62,%f110
/*    726 */	fmaddd,s	%f48,%f96,%f106,%f96


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg19+48],%f136
/*    726 */	fsubd,s	%f62,%f176,%f176


/*    726 */	sxar2
/*    726 */	std	%f158,[%o7+%fp]
/*    726 */	fselmovd,s	%f190,%f164,%f228,%f164

/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f116,%f188,%f116
/*    726 */	fnmsubd,sc	%f200,%f62,%f92,%f92
/*    726 */	sxar2
/*    726 */	add	%xg19,64,%xg13
/*    726 */	add	%xg20,64,%xg14
/*    726 */	sxar2
/*    726 */	ldx	[%g5+%fp],%xg13
/*    726 */	fsubd,s	%f62,%f100,%f100
/*    726 */	sxar2
/*    726 */	fsubd,s	%f96,%f136,%f96
/*    726 */	sub	%xg18,4,%xg15
/*    726 */	sxar2
/*    726 */	ldx	[%o0+%fp],%xg15
/*    726 */	fsubd,s	%f50,%f126,%f50
/*    726 */	ldx	[%o7+%fp],%l0
/*    726 */	sxar2
/*    726 */	ldx	[%o4+%fp],%xg14
/*    726 */	add	%xg19,80,%xg5
/*    726 */	sxar2
/*    726 */	fdtox,s	%f112,%f112
/*    726 */	fselmovd,s	%f218,%f164,%f116,%f164
/*    726 */	sxar2
/*    726 */	std	%f404,[%o5+%fp]
/*    726 */	add	%xg20,80,%xg6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f98,%f94,%f124,%f98
/*    726 */	fpmaddxhi,s	%f122,%f202,%f190,%f122
/*    726 */	sxar2
/*    726 */	std	%f414,[%xg2+%fp]
/*    726 */	sub	%xg13,%o2,%xg13
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg26],%f144
/*    726 */	fpmaddx,s	%f148,%f196,%f198,%f132
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg27],%f142
/*    726 */	fmaddd,sc	%f208,%f250,%f134,%f250
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f92,%f224,%f224
/*    726 */	ldd	[%xg9+%xg31],%f54
/*    726 */	sxar2
/*    726 */	sub	%xg14,%o2,%xg14
/*    726 */	sub	%xg15,%o2,%xg15
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f176,%f96,%f136,%f176
/*    726 */	and	%xg14,255,%xg14
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg30],%f154
/*    726 */	and	%xg13,255,%xg13
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg20+48],%f150
/*    726 */	fmaddd,s	%f100,%f170,%f102,%f100
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f48,%f50,%f126,%f50
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f164,%f164
/*    726 */	ldd	[%xg14+%o3],%f178
/*    726 */	sxar2
/*    726 */	add	%xg14,8,%xg14
/*    726 */	fmuld,s	%f110,%f32,%f110
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f122,%f206,%f62,%f122
/*    726 */	faddd,s	%f86,%f98,%f86
/*    726 */	sxar2
/*    726 */	ldx	[%o5+%fp],%xg5
/*    726 */	ldd	[%xg14+%o3],%f234
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg8+%g1],%f174
/*    726 */	fpmaddxhi,s	%f132,%f202,%f190,%f132
/*    726 */	sxar2
/*    726 */	and	%xg15,255,%xg15
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg26],%f400
/*    726 */	fmaddd,sc	%f210,%f250,%f212,%f146
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f92,%f224,%f92
/*    726 */	sllx	%xg15,4,%xg15
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f82,%f188,%f82
/*    726 */	fnmsubd,sc	%f200,%f62,%f114,%f114
/*    726 */	sub	%l0,%o2,%l0
/*    726 */	sxar2
/*    726 */	std	%f176,[%xg19+48]
/*    726 */	ldd	[%l1+%xg27],%f398
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f230,%f212,%f140
/*    726 */	fsubd,s	%f50,%f150,%f50
/*    726 */	sxar2
/*    726 */	sub	%xg5,%o2,%xg5
/*    726 */	ldd	[%xg13+%o3],%f168
/*    726 */	sxar2
/*    726 */	and	%xg5,255,%xg5
/*    726 */	fcmpgeed,s	%f238,%f188,%f238
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f110,%f242,%f110
/*    726 */	fmuld,s	%f122,%f86,%f122
/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%o3],%f424
/*    726 */	sllx	%xg5,4,%xg5
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f56,%f188,%f56
/*    726 */	fpmaddx,s	%f132,%f206,%f62,%f132
/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%o3],%f434
/*    726 */	add	%xg5,8,%xg5
/*    726 */	sxar1
/*    726 */	add	%xg13,8,%xg13
/*    726 */	and	%l0,255,%l0
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f92,%f212,%f152
/*    726 */	ldd	[%xg5+%o3],%f490
/*    726 */	sxar2
/*    726 */	add	%xg15,8,%xg15
/*    726 */	fsubd,s	%f144,%f142,%f144
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f250,%f146,%f214,%f146
/*    726 */	ldx	[%xg2+%fp],%xg9
/*    726 */	sxar1
/*    726 */	ldd	[%xg15+%o3],%f498
/*    726 */	sllx	%l0,4,%l0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f164,%f50,%f150,%f164
/*    726 */	fmuld,s	%f168,%f250,%f162
/*    726 */	sxar2
/*    726 */	std	%f252,[%o4+%fp]
/*    726 */	ldd	[%l1+%xg31],%f310
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f114,%f236,%f236
/*    726 */	sub	%xg18,5,%xg6
/*    726 */	sxar2
/*    726 */	fmuld,s	%f178,%f92,%f170
/*    726 */	fmaddd,s	%f230,%f140,%f214,%f140
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f122,%f138,%f122
/*    726 */	std	%f112,[%g5+%fp]
/*    726 */	sxar2
/*    726 */	std	%f432,[%xg19+56]
/*    726 */	sub	%xg9,%o2,%xg9
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f244,%f108,%f222
/*    726 */	fselmovd,s	%f218,%f110,%f56,%f110
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg30],%f410
/*    726 */	fmaddd,s	%f92,%f152,%f214,%f152
/*    726 */	sxar2
/*    726 */	and	%xg9,255,%xg9
/*    726 */	fmaddd,s	%f52,%f144,%f142,%f144
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f250,%f146,%f216,%f250
/*    726 */	std	%f368,[%o0+%fp]
/*    726 */	sxar2
/*    726 */	sllx	%xg9,4,%xg9
/*    726 */	fxtod,s	%f112,%f148
/*    726 */	sxar2
/*    726 */	std	%f164,[%xg20+48]
/*    726 */	fsubd,s	%f78,%f174,%f78
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f114,%f236,%f114
/*    726 */	fpmaddx,s	%f166,%f196,%f198,%f166
/*    726 */	sxar2
/*    726 */	std,s	%f100,[%xg10+%g1]
/*    726 */	add	%xg9,8,%xg10
/*    726 */	sxar2
/*    726 */	fsubd,s	%f54,%f154,%f54
/*    726 */	fselmovd,s	%f218,%f122,%f82,%f122
/*    726 */	sxar2
/*    726 */	std	%f180,[%o7+%fp]
/*    726 */	fmaddd,s	%f230,%f140,%f216,%f140
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg19+64],%f240
/*    726 */	ldd	[%xg13+%o3],%f242
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f192,%f222,%f194,%f232
/*    726 */	ldd	[%l0+%o3],%f236
/*    726 */	add	%l0,8,%l0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f152,%f216,%f92
/*    726 */	std	%f420,[%xg20+56]
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f252,%f196,%f198,%f224
/*    726 */	fsubd,s	%f62,%f110,%f110
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f70,%f80,%f80
/*    726 */	fnmsubd,sc	%f200,%f62,%f148,%f148
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o3],%f492
/*    726 */	ldd	[%l0+%o3],%f246
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o3],%f502
/*    726 */	fsubd,s	%f144,%f240,%f144
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f250,%f242,%f162
/*    726 */	fmaddd,s	%f52,%f54,%f154,%f54
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f122,%f122
/*    726 */	ldd	[%xg7+%xg26],%f40
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f114,%f212,%f160
/*    726 */	fdtox,s	%f232,%f232
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg26],%f296
/*    726 */	fmaddd,s	%f170,%f92,%f234,%f170
/*    726 */	sxar2
/*    726 */	fmuld,s	%f236,%f230,%f230
/*    726 */	ldd	[%xg7+%xg27],%f38
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f166,%f202,%f190,%f166
/*    726 */	ldx	[%g5+%fp],%xg15
/*    726 */	sxar2
/*    726 */	ldx	[%o0+%fp],%xg5
/*    726 */	fmaddd,s	%f110,%f78,%f174,%f110
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f204,%f148,%f84,%f84
/*    726 */	ldx	[%o7+%fp],%xg14
/*    726 */	sxar2
/*    726 */	ldx	[%o4+%fp],%xg13
/*    726 */	fpmaddxhi,s	%f224,%f202,%f190,%f224
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f70,%f80,%f70
/*    726 */	std	%f508,[%o5+%fp]
/*    726 */	sxar2
/*    726 */	faddd,s	%f168,%f162,%f168
/*    726 */	std	%f436,[%xg2+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f122,%f144,%f240,%f122
/*    726 */	fcmpgeed,s	%f64,%f188,%f64
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f114,%f160,%f214,%f160
/*    726 */	ldd,s	[%xg20+64],%f250
/*    726 */	sxar2
/*    726 */	sub	%xg5,%o2,%xg5
/*    726 */	fxtod,s	%f232,%f36
/*    726 */	sxar2
/*    726 */	faddd,s	%f178,%f170,%f178
/*    726 */	sub	%xg13,%o2,%xg13
/*    726 */	sxar2
/*    726 */	sub	%xg14,%o2,%xg14
/*    726 */	fmaddd,s	%f230,%f140,%f246,%f230
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f166,%f206,%f62,%f166
/*    726 */	and	%xg13,255,%xg13
/*    726 */	sxar2
/*    726 */	and	%xg14,255,%xg14
/*    726 */	ldd	[%i4+%xg27],%f294
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f208,%f148,%f84,%f148
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sxar2
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	fpmaddx,s	%f224,%f206,%f62,%f224
/*    726 */	sxar2
/*    726 */	fsubd,s	%f54,%f250,%f54
/*    726 */	ldd	[%xg13+%o3],%f42
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o3],%f74
/*    726 */	add	%xg13,8,%xg13
/*    726 */	sxar2
/*    726 */	ldx	[%o5+%fp],%xg6
/*    726 */	ldd	[%xg13+%o3],%f52
/*    726 */	sxar2
/*    726 */	add	%xg14,8,%xg14
/*    726 */	and	%xg5,255,%xg5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f114,%f160,%f216,%f160
/*    726 */	std	%f122,[%xg19+64]
/*    726 */	sxar2
/*    726 */	sllx	%xg5,4,%xg5
/*    726 */	fnmsubd,sc	%f200,%f62,%f36,%f36
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o3],%f78
/*    726 */	fmuld,s	%f132,%f178,%f132
/*    726 */	sxar2
/*    726 */	faddd,s	%f236,%f230,%f236
/*    726 */	add	%xg5,8,%xg10
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f70,%f212,%f182
/*    726 */	fmuld,s	%f166,%f168,%f166
/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%o3],%f302
/*    726 */	ldd	[%xg7+%xg31],%f60
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f210,%f148,%f212,%f248
/*    726 */	sub	%xg6,%o2,%xg6
/*    726 */	sxar2
/*    726 */	fsubd,s	%f40,%f38,%f40
/*    726 */	ldd	[%i4+%xg31],%f316
/*    726 */	sxar2
/*    726 */	sub	%xg15,%o2,%xg15
/*    726 */	and	%xg6,255,%xg6
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f72,%f188,%f72
/*    726 */	ldd	[%xg7+%xg30],%f56
/*    726 */	sxar2
/*    726 */	and	%xg15,255,%xg15
/*    726 */	sllx	%xg6,4,%xg6
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f112,%f196,%f198,%f112
/*    726 */	ldd	[%i4+%xg30],%f312
/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%o3],%f298
/*    726 */	add	%xg6,8,%xg6
/*    726 */	sxar2
/*    726 */	ldx	[%xg2+%fp],%xg13
/*    726 */	fmaddd,sc	%f204,%f36,%f222,%f222
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg12+%g1],%f44
/*    726 */	sllx	%xg15,4,%xg15
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f132,%f68,%f132
/*    726 */	fmaddd,s	%f70,%f182,%f214,%f182
/*    726 */	sxar2
/*    726 */	add	%xg15,8,%xg9
/*    726 */	fselmovd,s	%f190,%f166,%f120,%f166
/*    726 */	sxar2
/*    726 */	std	%f378,[%xg19+72]
/*    726 */	fmaddd,s	%f148,%f248,%f214,%f248
/*    726 */	sxar2
/*    726 */	std,s	%f110,[%xg8+%g1]
/*    726 */	fsubd,s	%f60,%f56,%f60
/*    726 */	sxar2
/*    726 */	sub	%xg18,6,%xg8
/*    726 */	fpmaddx,s	%f158,%f196,%f198,%f158
/*    726 */	sxar2
/*    726 */	fmuld,s	%f42,%f114,%f114
/*    726 */	sub	%xg13,%o2,%xg13
/*    726 */	sxar2
/*    726 */	std	%f232,[%o4+%fp]
/*    726 */	ldd	[%xg6+%o3],%f308
/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%o3],%f46
/*    726 */	and	%xg13,255,%xg13
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f40,%f38,%f40
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%o3],%f76
/*    726 */	fmaddd,sc	%f208,%f36,%f222,%f36
/*    726 */	sxar2
/*    726 */	add	%xg21,96,%xg15
/*    726 */	fselmovd,s	%f218,%f132,%f238,%f132
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%o3],%f332
/*    726 */	fpmaddxhi,s	%f112,%f202,%f190,%f112
/*    726 */	sxar2
/*    726 */	add	%xg19,96,%xg6
/*    726 */	fmaddd,s	%f70,%f182,%f216,%f182
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o3],%f330
/*    726 */	add	%xg13,8,%xg13
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f166,%f64,%f166
/*    726 */	fmaddd,s	%f148,%f248,%f216,%f248
/*    726 */	sxar2
/*    726 */	fmuld,s	%f46,%f148,%f148
/*    726 */	ldd,s	[%xg19+80],%f80
/*    726 */	sxar2
/*    726 */	add	%xg21,112,%xg21
/*    726 */	fmaddd,s	%f114,%f160,%f52,%f114
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%o3],%f334
/*    726 */	fmaddd,s	%f58,%f60,%f56,%f60
/*    726 */	sxar2
/*    726 */	sub	%xg18,7,%xg18
/*    726 */	fpmaddxhi,s	%f158,%f202,%f190,%f158
/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f180,%f196,%f198,%f228
/*    726 */	ldd	[%i5+%g4],%f48
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%g4],%f304
/*    726 */	fmuld,s	%f74,%f70,%f70
/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f210,%f36,%f212,%f84
/*    726 */	ldd	[%i5+%g3],%f50
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f132,%f132
/*    726 */	fsubd,s	%f40,%f80,%f40
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%g3],%f306
/*    726 */	fsubd,s	%f62,%f166,%f166
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f112,%f206,%f62,%f112
/*    726 */	fmaddd,s	%f148,%f248,%f76,%f148
/*    726 */	sxar2
/*    726 */	ldd	[%i5+%xg26],%f88
/*    726 */	fcmpgeed,s	%f130,%f188,%f130
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f128,%f188,%f128
/*    726 */	faddd,s	%f42,%f114,%f42
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg26],%f344
/*    726 */	fpmaddx,s	%f158,%f206,%f62,%f158
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f228,%f202,%f190,%f228
/*    726 */	ldd	[%i5+%xg27],%f86
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f70,%f182,%f78,%f70
/*    726 */	ldd	[%l2+%xg27],%f342
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f36,%f84,%f214,%f84
/*    726 */	fsubd,s	%f50,%f48,%f50
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f132,%f54,%f250,%f132
/*    726 */	ldd	[%i5+%xg31],%f96
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f66,%f188,%f66
/*    726 */	fmaddd,s	%f166,%f40,%f80,%f166
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg31],%f352
/*    726 */	faddd,s	%f46,%f148,%f46
/*    726 */	sxar2
/*    726 */	ldd	[%i5+%xg30],%f94
/*    726 */	fmuld,s	%f224,%f42,%f224
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg30],%f350
/*    726 */	fsubd,s	%f88,%f86,%f88
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%g4],%f254
/*    726 */	fpmaddx,s	%f228,%f206,%f62,%f228
/*    726 */	sxar2
/*    726 */	fmuld,s	%f158,%f236,%f158
/*    726 */	ldd	[%i4+%g4],%f510
/*    726 */	sxar2
/*    726 */	faddd,s	%f74,%f70,%f74
/*    726 */	fmaddd,s	%f172,%f50,%f48,%f50
/*    726 */	sxar2
/*    726 */	std	%f132,[%xg20+64]
/*    726 */	std	%f388,[%xg20+72]
/*    726 */	sxar2
/*    726 */	fsubd,s	%f96,%f94,%f96
/*    726 */	ldd	[%xg7+%g3],%f32
/*    726 */	sxar2
/*    726 */	add	%xg20,96,%xg7
/*    726 */	fmuld,s	%f112,%f46,%f112
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%g3],%f288
/*    726 */	fselmovd,s	%f190,%f224,%f156,%f224
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f88,%f86,%f88
/*    726 */	fselmovd,s	%f190,%f158,%f226,%f158
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg15+%g1],%f98
/*    726 */	fmuld,s	%f228,%f74,%f228
/*    726 */	sxar2
/*    726 */	fsubd,s	%f32,%f254,%f32
/*    726 */	ldx	[%o4+%fp],%xg14
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg20+80],%f82
/*    726 */	fcmpgeed,s	%f244,%f188,%f244
/*    726 */	sxar2
/*    726 */	std	%f488,[%o5+%fp]
/*    726 */	fpmaddx,s	%f232,%f196,%f198,%f232
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f112,%f34,%f112
/*    726 */	fselmovd,s	%f218,%f224,%f72,%f224
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f172,%f96,%f94,%f172
/*    726 */	fselmovd,s	%f218,%f158,%f128,%f158
/*    726 */	sxar2
/*    726 */	fsubd,s	%f50,%f98,%f50
/*    726 */	sub	%xg14,%o2,%xg14
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f228,%f220,%f228
/*    726 */	fsubd,s	%f60,%f82,%f60
/*    726 */	sxar2
/*    726 */	and	%xg14,255,%xg14
/*    726 */	fmaddd,s	%f58,%f32,%f254,%f32
/*    726 */	sxar2
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	ldx	[%o5+%fp],%xg5
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o3],%f92
/*    726 */	add	%xg14,8,%xg14
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f232,%f202,%f190,%f232
/*    726 */	fsubd,s	%f62,%f224,%f224
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%o3],%f102
/*    726 */	fselmovd,s	%f218,%f112,%f130,%f112
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f158,%f158
/*    726 */	std	%f166,[%xg19+80]
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f218,%f228,%f66,%f228
/*    726 */	std	%f422,[%xg19+88]
/*    726 */	sxar2
/*    726 */	sub	%xg5,%o2,%xg5
/*    726 */	fsubd,s	%f32,%f44,%f32
/*    726 */	sxar2
/*    726 */	and	%xg5,255,%xg5
/*    726 */	sllx	%xg5,4,%xg5
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f232,%f206,%f62,%f232
/*    726 */	ldd	[%xg5+%o3],%f348
/*    726 */	sxar2
/*    726 */	add	%xg5,8,%xg5
/*    726 */	fmaddd,s	%f224,%f60,%f82,%f224
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f112,%f112
/*    726 */	ldd	[%xg5+%o3],%f358
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f228,%f228
/*    726 */	ldd,s	[%xg19+96],%f100
/*    726 */	sxar2
/*    726 */	fmuld,s	%f92,%f36,%f90
/*    726 */	fmaddd,s	%f36,%f84,%f216,%f36
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f158,%f32,%f44,%f158
/*    726 */	std	%f224,[%xg20+80]
/*    726 */	sxar2
/*    726 */	fsubd,s	%f88,%f100,%f88
/*    726 */	std	%f480,[%xg20+88]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f228,%f50,%f98,%f228
/*    726 */	fmaddd,s	%f90,%f36,%f102,%f90
/*    726 */	sxar2
/*    726 */	std,s	%f158,[%xg12+%g1]
/*    726 */	fmaddd,s	%f112,%f88,%f100,%f112
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg20+96],%f104
/*    726 */	std,s	%f228,[%xg15+%g1]
/*    726 */	sxar2
/*    726 */	faddd,s	%f92,%f90,%f92
/*    726 */	fsubd,s	%f172,%f104,%f172
/*    726 */	sxar2
/*    726 */	std	%f112,[%xg19+96]
/*    726 */	std	%f368,[%xg19+104]
/*    726 */	sxar2
/*    726 */	add	%xg19,112,%xg19
/*    726 */	fmuld,s	%f232,%f92,%f232
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f190,%f232,%f108,%f232
/*    726 */	fselmovd,s	%f218,%f232,%f244,%f232
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f232,%f232
/*    726 */	fmaddd,s	%f232,%f172,%f104,%f232
/*    726 */	sxar2
/*    726 */	std	%f232,[%xg20+96]
/*    726 */	std	%f488,[%xg20+104]
/*    726 */	sxar1
/*    726 */	add	%xg20,112,%xg20

.L849:


.L848:


.L851:
.LSSN1066:


/*    728 */	sxar2
/*    728 */	ldsw	[%l3+-4032],%xg5
/*    728 */	ldsw	[%l3+-4028],%xg6
.LSSN1067:


.LSSN1068:

/*    756 */	sxar2
/*    756 */	subcc	%xg18,1,%xg18
/*    756 */	ldd,s	[%xg11],%f142

.LSSN1069:

/*    758 */	sxar2
/*    758 */	ldd,s	[%xg19],%f160
/*    758 */	add	%xg11,16,%xg11
.LSSN1070:

.LSSN1071:

/*    757 */	sxar2
/*    757 */	ldd,s	[%xg20],%f164
/*    757 */	ldd,s	[%g1+%xg21],%f174
.LSSN1072:


/*    735 */	sxar2
/*    735 */	srl	%xg5,%g0,%xg5
/*    735 */	srl	%xg6,%g0,%xg6


/*    735 */	sxar2
/*    735 */	add	%xg5,%xg5,%xg7
/*    735 */	add	%xg6,%xg6,%xg8


/*    735 */	sxar2
/*    735 */	add	%xg7,%xg5,%xg7
/*    735 */	add	%xg8,%xg6,%xg8


/*    735 */	sxar2
/*    735 */	sllx	%xg7,4,%xg7
/*    735 */	sllx	%xg8,4,%xg8
.LSSN1073:


/*    734 */	sxar2
/*    734 */	ldd	[%xg22+%xg7],%f130
/*    734 */	ldd	[%xg22+%xg8],%f386

.LSSN1074:


/*    741 */	sxar2
/*    741 */	ldd	[%xg23+%xg7],%f132
/*    741 */	ldd	[%xg23+%xg8],%f388

.LSSN1075:


/*    732 */	sxar2
/*    732 */	ldd	[%xg24+%xg7],%f134
/*    732 */	ldd	[%xg24+%xg8],%f390

.LSSN1076:


/*    739 */	sxar2
/*    739 */	ldd	[%xg25+%xg7],%f136
/*    739 */	ldd	[%xg25+%xg8],%f392

.LSSN1077:


/*    740 */	sxar2
/*    740 */	ldd	[%xg26+%xg7],%f140
/*    740 */	ldd	[%xg26+%xg8],%f396

.LSSN1078:

.LSSN1079:

/*    756 */	sxar2
/*    756 */	ldd	[%xg27+%xg7],%f138
/*    756 */	fsubd,s	%f132,%f130,%f132
.LSSN1080:

.LSSN1081:

/*    736 */	sxar2
/*    736 */	ldd	[%xg27+%xg8],%f394
/*    736 */	ldd	[%xg28+%xg7],%f144
.LSSN1082:

.LSSN1083:

.LSSN1084:

/*    755 */	sxar2
/*    755 */	ldd	[%xg28+%xg8],%f400
/*    755 */	fsubd,s	%f136,%f134,%f136
.LSSN1085:

.LSSN1086:


/*    743 */	sxar2
/*    743 */	ldd	[%xg29+%xg7],%f146
/*    743 */	ldd	[%xg29+%xg8],%f402

.LSSN1087:


/*    731 */	sxar2
/*    731 */	ldd	[%xg30+%xg7],%f148
/*    731 */	ldd	[%xg30+%xg8],%f404

.LSSN1088:

.LSSN1089:

/*    738 */	sxar2
/*    738 */	fsubd,s	%f140,%f138,%f140
/*    738 */	ldd	[%xg31+%xg7],%f150

.LSSN1090:

/*    756 */	sxar2
/*    756 */	ldd	[%xg31+%xg8],%f406
/*    756 */	fmaddd,s	%f142,%f132,%f130,%f132
.LSSN1091:

.LSSN1092:

.LSSN1093:

/*    757 */	sxar2
/*    757 */	ldd	[%g3+%xg7],%f156
/*    757 */	fsubd,s	%f146,%f144,%f146
.LSSN1094:

.LSSN1095:

/*    755 */	sxar2
/*    755 */	ldd	[%g3+%xg8],%f412
/*    755 */	fmaddd,s	%f142,%f136,%f134,%f136
.LSSN1096:



/*    742 */	sxar2
/*    742 */	ldd	[%g4+%xg7],%f154
/*    742 */	ldd	[%g4+%xg8],%f410

.LSSN1097:

.LSSN1098:

/*    756 */	sxar2
/*    756 */	fsubd,s	%f150,%f148,%f150
/*    756 */	fmaddd,s	%f142,%f140,%f138,%f140

.LSSN1099:

/*    757 */	sxar2
/*    757 */	frcpad,s	%f132,%f152
/*    757 */	fmaddd,s	%f142,%f146,%f144,%f146

.LSSN1100:

/*    755 */	sxar2
/*    755 */	fsubd,s	%f156,%f154,%f156
/*    755 */	frcpad,s	%f136,%f158

.LSSN1101:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f142,%f150,%f148,%f150
/*    756 */	fsubd,s	%f140,%f160,%f140


/*    756 */	sxar2
/*    756 */	fnmsubd,s	%f152,%f132,%f62,%f132
/*    756 */	fmuld,s	%f184,%f152,%f152
.LSSN1102:


/*    757 */	sxar2
/*    757 */	frcpad,s	%f146,%f162
/*    757 */	fmaddd,s	%f142,%f156,%f154,%f142
.LSSN1103:


/*    755 */	sxar2
/*    755 */	fnmsubd,s	%f158,%f136,%f62,%f136
/*    755 */	fmuld,s	%f184,%f158,%f158

.LSSN1104:

/*    756 */	sxar2
/*    756 */	fsubd,s	%f150,%f164,%f150
/*    756 */	fmaddd,s	%f132,%f132,%f132,%f166

.LSSN1105:

/*    757 */	sxar2
/*    757 */	fmuld,s	%f132,%f132,%f168
/*    757 */	fnmsubd,s	%f162,%f146,%f62,%f146

.LSSN1106:

/*    755 */	sxar2
/*    755 */	fmuld,s	%f184,%f162,%f162
/*    755 */	fmaddd,s	%f136,%f136,%f136,%f170

.LSSN1107:

/*    757 */	sxar2
/*    757 */	fmuld,s	%f136,%f136,%f172
/*    757 */	fsubd,s	%f142,%f174,%f142
.LSSN1108:


/*    756 */	sxar2
/*    756 */	fmaddd,s	%f166,%f152,%f152,%f166
/*    756 */	fmaddd,s	%f168,%f168,%f132,%f168
.LSSN1109:


/*    757 */	sxar2
/*    757 */	fmaddd,s	%f146,%f146,%f146,%f176
/*    757 */	fmuld,s	%f146,%f146,%f178
.LSSN1110:


/*    755 */	sxar2
/*    755 */	fmaddd,s	%f170,%f158,%f158,%f170
/*    755 */	fmaddd,s	%f172,%f172,%f136,%f172
.LSSN1111:

.LSSN1112:

/*    757 */	sxar2
/*    757 */	fmaddd,s	%f168,%f166,%f152,%f168
/*    757 */	fmaddd,s	%f176,%f162,%f162,%f176

.LSSN1113:

/*    755 */	sxar2
/*    755 */	fmaddd,s	%f178,%f178,%f146,%f178
/*    755 */	fmaddd,s	%f172,%f170,%f158,%f172
.LSSN1114:


/*    756 */	sxar2
/*    756 */	fcmpleed,s	%f168,%f186,%f180
/*    756 */	fcmpgeed,s	%f168,%f188,%f182
.LSSN1115:

.LSSN1116:

/*    755 */	sxar2
/*    755 */	fmaddd,s	%f178,%f176,%f162,%f178
/*    755 */	fcmpleed,s	%f172,%f186,%f220

.LSSN1117:

/*    756 */	sxar2
/*    756 */	fcmpgeed,s	%f172,%f188,%f222
/*    756 */	fselmovd,s	%f190,%f168,%f180,%f168
.LSSN1118:


/*    757 */	sxar2
/*    757 */	fcmpleed,s	%f178,%f186,%f224
/*    757 */	fcmpgeed,s	%f178,%f188,%f226
.LSSN1119:

.LSSN1120:

/*    756 */	sxar2
/*    756 */	fselmovd,s	%f190,%f172,%f220,%f172
/*    756 */	fmaddd,sc	%f192,%f168,%f194,%f228
.LSSN1121:

.LSSN1122:

/*    755 */	sxar2
/*    755 */	fselmovd,s	%f190,%f178,%f224,%f178
/*    755 */	fmaddd,sc	%f192,%f172,%f194,%f230
.LSSN1123:

.LSSN1124:

/*    757 */	sxar2
/*    757 */	fdtox,s	%f228,%f228
/*    757 */	fmaddd,sc	%f192,%f178,%f194,%f232
.LSSN1125:

.LSSN1126:

/*    756 */	sxar2
/*    756 */	fdtox,s	%f230,%f230
/*    756 */	fxtod,s	%f228,%f234



/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f228,%f196,%f198,%f236
/*    756 */	std	%f228,[%fp+%g5]
.LSSN1127:

.LSSN1128:

/*    755 */	sxar2
/*    755 */	fdtox,s	%f232,%f232
/*    755 */	fxtod,s	%f230,%f238


.LSSN1129:

/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f230,%f196,%f198,%f240
/*    756 */	fnmsubd,sc	%f200,%f62,%f234,%f234


/*    756 */	sxar2
/*    756 */	fpmaddxhi,s	%f236,%f202,%f190,%f236
/*    756 */	ldx	[%fp+%g5],%xg9
.LSSN1130:



/*    757 */	sxar2
/*    757 */	fxtod,s	%f232,%f242
/*    757 */	fpmaddx,s	%f232,%f196,%f198,%f244
.LSSN1131:

.LSSN1132:

/*    755 */	sxar2
/*    755 */	std	%f484,[%fp+%o0]
/*    755 */	fnmsubd,sc	%f200,%f62,%f238,%f238

.LSSN1133:

/*    756 */	sxar2
/*    756 */	fpmaddxhi,s	%f240,%f202,%f190,%f240
/*    756 */	sub	%xg9,%o2,%xg9


/*    756 */	sxar2
/*    756 */	and	%xg9,255,%xg9
/*    756 */	fmaddd,sc	%f204,%f234,%f168,%f168


/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f236,%f206,%f62,%f236
/*    756 */	sllx	%xg9,4,%xg9
.LSSN1134:


/*    757 */	sxar2
/*    757 */	fnmsubd,sc	%f200,%f62,%f242,%f242
/*    757 */	fpmaddxhi,s	%f244,%f202,%f190,%f244
.LSSN1135:


/*    756 */	sxar2
/*    756 */	ldx	[%fp+%o0],%xg10
/*    756 */	ldd	[%o3+%xg9],%f250

.LSSN1136:

/*    755 */	sxar2
/*    755 */	add	%xg9,8,%xg9
/*    755 */	fmaddd,sc	%f204,%f238,%f172,%f172
.LSSN1137:

.LSSN1138:

/*    755 */	sxar2
/*    755 */	ldd	[%o3+%xg9],%f32
/*    755 */	fpmaddx,s	%f240,%f206,%f62,%f240

.LSSN1139:

/*    756 */	sxar2
/*    756 */	std	%f230,[%fp+%o4]
/*    756 */	sub	%xg10,%o2,%xg10


/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f208,%f234,%f168,%f234
/*    756 */	and	%xg10,255,%xg10
.LSSN1140:


/*    757 */	sxar2
/*    757 */	fmaddd,sc	%f204,%f242,%f178,%f178
/*    757 */	fpmaddx,s	%f244,%f206,%f62,%f244
.LSSN1141:

.LSSN1142:

/*    755 */	sxar2
/*    755 */	sllx	%xg10,4,%xg10
/*    755 */	fmaddd,sc	%f208,%f238,%f172,%f238
.LSSN1143:


/*    756 */	sxar2
/*    756 */	ldd	[%o3+%xg10],%f506
/*    756 */	add	%xg10,8,%xg10




/*    756 */	sxar2
/*    756 */	ldd	[%o3+%xg10],%f288
/*    756 */	fmaddd,sc	%f210,%f234,%f212,%f246
.LSSN1144:

.LSSN1145:

/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f208,%f242,%f178,%f242
/*    756 */	fmuld,s	%f250,%f234,%f248
.LSSN1146:

.LSSN1147:

/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f210,%f238,%f212,%f252
/*    756 */	fmaddd,s	%f234,%f246,%f214,%f246
.LSSN1148:

.LSSN1149:

/*    755 */	sxar2
/*    755 */	fmaddd,sc	%f210,%f242,%f212,%f254
/*    755 */	fmaddd,s	%f238,%f252,%f214,%f252
.LSSN1150:

.LSSN1151:

/*    757 */	sxar2
/*    757 */	fmaddd,s	%f234,%f246,%f216,%f234
/*    757 */	fmaddd,s	%f242,%f254,%f214,%f254
.LSSN1152:

.LSSN1153:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f238,%f252,%f216,%f252
/*    756 */	fmaddd,s	%f248,%f234,%f32,%f248
.LSSN1154:

.LSSN1155:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f242,%f254,%f216,%f254
/*    756 */	faddd,s	%f250,%f248,%f250


/*    756 */	sxar2
/*    756 */	fmuld,s	%f236,%f250,%f236
/*    756 */	fselmovd,s	%f190,%f236,%f180,%f236


/*    756 */	sxar2
/*    756 */	fselmovd,s	%f218,%f236,%f182,%f236
/*    756 */	fsubd,s	%f62,%f236,%f236



/*    756 */	sxar2
/*    756 */	fmaddd,s	%f236,%f140,%f160,%f236
/*    756 */	std	%f236,[%xg19]

.LSSN1156:

/*    758 */	sxar2
/*    758 */	std	%f492,[%xg19+8]
/*    758 */	add	%xg19,16,%xg19
.LSSN1157:


/*    755 */	sxar2
/*    755 */	ldx	[%fp+%o4],%xg12
/*    755 */	std	%f486,[%fp+%o5]


/*    755 */	sxar2
/*    755 */	sub	%xg12,%o2,%xg12
/*    755 */	and	%xg12,255,%xg12


/*    755 */	sxar2
/*    755 */	sllx	%xg12,4,%xg12
/*    755 */	ldx	[%fp+%o5],%xg13


/*    755 */	sxar2
/*    755 */	ldd	[%o3+%xg12],%f34
/*    755 */	add	%xg12,8,%xg12

.LSSN1158:

/*    757 */	sxar2
/*    757 */	ldd	[%o3+%xg12],%f36
/*    757 */	std	%f232,[%fp+%o7]
.LSSN1159:


/*    755 */	sxar2
/*    755 */	sub	%xg13,%o2,%xg13
/*    755 */	and	%xg13,255,%xg13


/*    755 */	sxar2
/*    755 */	sllx	%xg13,4,%xg13
/*    755 */	ldd	[%o3+%xg13],%f290



/*    755 */	sxar2
/*    755 */	add	%xg13,8,%xg13
/*    755 */	ldd	[%o3+%xg13],%f292



/*    755 */	sxar2
/*    755 */	fmuld,s	%f34,%f238,%f238
/*    755 */	fmaddd,s	%f238,%f252,%f36,%f238


/*    755 */	sxar2
/*    755 */	faddd,s	%f34,%f238,%f34
/*    755 */	fmuld,s	%f240,%f34,%f240


/*    755 */	sxar2
/*    755 */	fselmovd,s	%f190,%f240,%f220,%f240
/*    755 */	fselmovd,s	%f218,%f240,%f222,%f240


/*    755 */	sxar2
/*    755 */	fsubd,s	%f62,%f240,%f240
/*    755 */	fmaddd,s	%f240,%f150,%f164,%f240



/*    755 */	sxar2
/*    755 */	std	%f240,[%xg20]
/*    755 */	std	%f496,[%xg20+8]
.LSSN1160:

.LSSN1161:

/*    757 */	sxar2
/*    757 */	add	%xg20,16,%xg20
/*    757 */	ldx	[%fp+%o7],%xg14


/*    757 */	sxar2
/*    757 */	std	%f488,[%fp+%xg2]
/*    757 */	sub	%xg14,%o2,%xg14


/*    757 */	sxar2
/*    757 */	and	%xg14,255,%xg14
/*    757 */	sllx	%xg14,4,%xg14


/*    757 */	sxar2
/*    757 */	ldx	[%fp+%xg2],%xg15
/*    757 */	ldd	[%o3+%xg14],%f38


/*    757 */	sxar2
/*    757 */	add	%xg14,8,%xg14
/*    757 */	ldd	[%o3+%xg14],%f40


/*    757 */	sxar2
/*    757 */	sub	%xg15,%o2,%xg15
/*    757 */	and	%xg15,255,%xg15


/*    757 */	sxar2
/*    757 */	sllx	%xg15,4,%xg15
/*    757 */	ldd	[%o3+%xg15],%f294



/*    757 */	sxar2
/*    757 */	add	%xg15,8,%xg15
/*    757 */	ldd	[%o3+%xg15],%f296



/*    757 */	sxar2
/*    757 */	fmuld,s	%f38,%f242,%f242
/*    757 */	fmaddd,s	%f242,%f254,%f40,%f242


/*    757 */	sxar2
/*    757 */	faddd,s	%f38,%f242,%f38
/*    757 */	fmuld,s	%f244,%f38,%f244


/*    757 */	sxar2
/*    757 */	fselmovd,s	%f190,%f244,%f224,%f244
/*    757 */	fselmovd,s	%f218,%f244,%f226,%f244


/*    757 */	sxar2
/*    757 */	fsubd,s	%f62,%f244,%f244
/*    757 */	fmaddd,s	%f244,%f142,%f174,%f244

.LSSN1162:

/*    758 */	sxar2
/*    758 */	std,s	%f244,[%g1+%xg21]
/*    758 */	add	%xg21,16,%xg21

/*    758 */	bne,pt	%icc, .L851
/*    758 */	add	%l3,8,%l3


.L847:


.L671:
.LSSN1163:


/*    726 */	sxar2
/*    726 */	sllx	%xg16,3,%xg9
/*    726 */	sllx	%xg16,4,%xg16


/*    726 */	sxar2
/*    726 */	add	%xg9,%xg3,%xg9
/*    726 */	add	%xg16,%xg4,%xg16

/*    726 */	sxar1
/*    726 */	cmp	%xg17,%g0

/*    726 */	be	.L688
	nop


.L672:
.LSSN1164:


/*    728 */	sxar2
/*    728 */	add	%xg9,%fp,%xg9
/*    728 */	sethi	%hi(237952),%xg10
.LSSN1165:


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+984],%f164
/*    756 */	fzero	%f174
.LSSN1166:

.LSSN1167:

/*    733 */	sxar2
/*    733 */	xor	%xg10,-385,%xg10
/*    733 */	sethi	%h44(.LB0+30720144),%xg11
.LSSN1168:

.LSSN1169:

/*    728 */	sxar2
/*    728 */	ldd	[%xg1+976],%f168
/*    728 */	add	%xg9,%xg10,%xg9
.LSSN1170:

.LSSN1171:

/*    756 */	sxar2
/*    756 */	or	%xg11,%m44(.LB0+30720144),%xg11
/*    756 */	ldd	[%xg1+936],%f180
.LSSN1172:

.LSSN1173:

/*    728 */	sxar2
/*    728 */	sllx	%xg11,12,%xg11
/*    728 */	ldsw	[%xg9],%xg19
.LSSN1174:

.LSSN1175:

/*    756 */	sxar2
/*    756 */	sethi	%hi(157952),%xg13
/*    756 */	ldd	[%xg1+968],%f176
.LSSN1176:

.LSSN1177:

/*    729 */	sxar2
/*    729 */	or	%xg11,%l44(.LB0+30720144),%xg11
/*    729 */	add	%xg16,%fp,%xg12
.LSSN1178:

.LSSN1179:

/*    729 */	sxar2
/*    729 */	ldd	[%xg1+960],%f198
/*    729 */	xor	%xg13,-257,%xg13
.LSSN1180:


/*    756 */	sxar2
/*    756 */	sethi	%hi(237968),%xg14
/*    756 */	ldd	[%xg1+944],%f202
.LSSN1181:

.LSSN1182:

/*    756 */	sxar2
/*    756 */	add	%xg12,%xg13,%xg12
/*    756 */	xor	%xg14,-401,%xg14


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+952],%f206
/*    756 */	ldd	[%xg12],%f118

.LSSN1183:

/*    735 */	sxar2
/*    735 */	sethi	%hi(524288),%xg21
/*    735 */	srl	%xg19,%g0,%xg19
.LSSN1184:


/*    756 */	sxar2
/*    756 */	sethi	%h44(__fj_dlogexp2_const_),%xg15
/*    756 */	ldd	[%xg1+1016],%f212
.LSSN1185:

.LSSN1186:

/*    756 */	sxar2
/*    756 */	add	%xg19,%xg19,%xg20
/*    756 */	or	%xg15,%m44(__fj_dlogexp2_const_),%xg15

.LSSN1187:

/*    735 */	sxar2
/*    735 */	ldd	[%xg1+1008],%f208
/*    735 */	add	%xg20,%xg19,%xg20
.LSSN1188:


/*    756 */	sxar2
/*    756 */	sllx	%xg15,12,%xg15
/*    756 */	ldd	[%xg1+1000],%f220
.LSSN1189:

.LSSN1190:

/*    756 */	sxar2
/*    756 */	sllx	%xg20,4,%xg20
/*    756 */	or	%xg15,%l44(__fj_dlogexp2_const_),%xg15

.LSSN1191:

/*    733 */	sxar2
/*    733 */	ldd	[%xg1+1032],%f190
/*    733 */	add	%xg11,%xg20,%xg11
.LSSN1192:

.LSSN1193:

/*    757 */	sxar2
/*    757 */	sethi	%hi(237976),%xg17
/*    757 */	sethi	%hi(237984),%xg18
.LSSN1194:


/*    756 */	sxar2
/*    756 */	ldd	[%xg11+72],%f108
/*    756 */	ldd	[%xg11+24],%f106
.LSSN1195:

.LSSN1196:

/*    757 */	sxar2
/*    757 */	xor	%xg17,-409,%xg17
/*    757 */	xor	%xg18,-417,%xg18
.LSSN1197:


/*    755 */	sxar2
/*    755 */	ldd	[%xg11+56],%f112
/*    755 */	ldd	[%xg11+8],%f110
.LSSN1198:


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+1040],%f186
/*    756 */	ldd	[%xg1+992],%f222


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+1048],%f200
/*    756 */	ldd	[%xg1+1056],%f204
.LSSN1199:

.LSSN1200:

/*    756 */	sxar2
/*    756 */	ldd	[%xg11+88],%f116
/*    756 */	fsubd	%f108,%f106,%f108
.LSSN1201:

.LSSN1202:

/*    755 */	sxar2
/*    755 */	ldd	[%xg11+40],%f114
/*    755 */	fsubd	%f112,%f110,%f112
.LSSN1203:

.LSSN1204:

/*    756 */	sxar2
/*    756 */	ldd	[%xg11+16],%f124
/*    756 */	ldd	[%xg1+1024],%f64


/*    756 */	sxar2
/*    756 */	ldd	[%xg0+%xg16],%f120
/*    756 */	ldd	[%xg11+64],%f126
.LSSN1205:


/*    755 */	sxar2
/*    755 */	ldd	[%xg11],%f132
/*    755 */	ldd	[%g2+%xg16],%f128
.LSSN1206:

.LSSN1207:

/*    755 */	sxar2
/*    755 */	fsubd	%f116,%f114,%f116
/*    755 */	ldd	[%xg11+48],%f134
.LSSN1208:

.LSSN1209:

/*    756 */	sxar2
/*    756 */	ldd	[%xg11+32],%f140
/*    756 */	fmaddd	%f118,%f108,%f106,%f108

.LSSN1210:

/*    757 */	sxar2
/*    757 */	fsubd	%f124,%f120,%f122
/*    757 */	ldd	[%g1+%xg16],%f136
.LSSN1211:

.LSSN1212:

/*    756 */	sxar2
/*    756 */	fmaddd	%f118,%f112,%f110,%f112
/*    756 */	fsubd	%f126,%f124,%f126
.LSSN1213:

.LSSN1214:

/*    755 */	sxar2
/*    755 */	ldd	[%xg11+80],%f142
/*    755 */	fsubd	%f132,%f128,%f130

.LSSN1215:

/*    757 */	sxar2
/*    757 */	fsubd	%f134,%f132,%f134
/*    757 */	fmaddd	%f118,%f116,%f114,%f116


/*    757 */	sxar2
/*    757 */	fsubd	%f140,%f136,%f138
/*    757 */	fsubd	%f142,%f140,%f142
.LSSN1216:

.LSSN1217:

/*    755 */	sxar2
/*    755 */	frcpad	%f108,%f144
/*    755 */	frcpad	%f112,%f146
.LSSN1218:

.LSSN1219:

/*    755 */	sxar2
/*    755 */	fmaddd	%f118,%f126,%f122,%f126
/*    755 */	fmaddd	%f118,%f134,%f130,%f134
.LSSN1220:

.LSSN1221:

/*    756 */	sxar2
/*    756 */	frcpad	%f116,%f148
/*    756 */	fnmsubd	%f144,%f108,%f318,%f108

.LSSN1222:

/*    755 */	sxar2
/*    755 */	fmuld	%f144,%f440,%f144
/*    755 */	fnmsubd	%f146,%f112,%f318,%f112

.LSSN1223:

/*    757 */	sxar2
/*    757 */	fmuld	%f146,%f440,%f146
/*    757 */	fmaddd	%f118,%f142,%f138,%f118


/*    757 */	sxar2
/*    757 */	fnmsubd	%f148,%f116,%f318,%f116
/*    757 */	fmuld	%f148,%f440,%f148
.LSSN1224:


/*    756 */	sxar2
/*    756 */	fmaddd	%f108,%f108,%f108,%f150
/*    756 */	fmuld	%f108,%f108,%f152
.LSSN1225:


/*    755 */	sxar2
/*    755 */	fmaddd	%f112,%f112,%f112,%f154
/*    755 */	fmuld	%f112,%f112,%f156
.LSSN1226:


/*    757 */	sxar2
/*    757 */	fmaddd	%f116,%f116,%f116,%f158
/*    757 */	fmuld	%f116,%f116,%f160
.LSSN1227:


/*    756 */	sxar2
/*    756 */	fmaddd	%f150,%f144,%f144,%f150
/*    756 */	fmaddd	%f152,%f152,%f108,%f152
.LSSN1228:


/*    755 */	sxar2
/*    755 */	fmaddd	%f154,%f146,%f146,%f154
/*    755 */	fmaddd	%f156,%f156,%f112,%f156
.LSSN1229:


/*    757 */	sxar2
/*    757 */	fmaddd	%f158,%f148,%f148,%f158
/*    757 */	fmaddd	%f160,%f160,%f116,%f160
.LSSN1230:

.LSSN1231:

/*    755 */	sxar2
/*    755 */	fmaddd	%f152,%f150,%f144,%f152
/*    755 */	fmaddd	%f156,%f154,%f146,%f156
.LSSN1232:

.LSSN1233:

/*    756 */	sxar2
/*    756 */	fmaddd	%f160,%f158,%f148,%f160
/*    756 */	fcmpleed	%f152,%f164,%f162

.LSSN1234:

/*    755 */	sxar2
/*    755 */	fcmpgeed	%f152,%f168,%f166
/*    755 */	fcmpleed	%f156,%f164,%f170

.LSSN1235:

/*    757 */	sxar2
/*    757 */	fcmpgeed	%f156,%f168,%f172
/*    757 */	fcmpleed	%f160,%f164,%f164

.LSSN1236:

/*    756 */	sxar2
/*    756 */	fcmpgeed	%f160,%f168,%f168
/*    756 */	fselmovd	%f174,%f152,%f162,%f152
.LSSN1237:

.LSSN1238:

/*    757 */	sxar2
/*    757 */	fselmovd	%f174,%f156,%f170,%f156
/*    757 */	fselmovd	%f174,%f160,%f164,%f160
.LSSN1239:

.LSSN1240:

/*    755 */	sxar2
/*    755 */	fmaddd	%f180,%f152,%f176,%f178
/*    755 */	fmaddd	%f180,%f156,%f176,%f182
.LSSN1241:

.LSSN1242:

/*    756 */	sxar2
/*    756 */	fmaddd	%f180,%f160,%f176,%f180
/*    756 */	fdtox	%f178,%f178
.LSSN1243:

.LSSN1244:

/*    757 */	sxar2
/*    757 */	fdtox	%f182,%f182
/*    757 */	fdtox	%f180,%f180
.LSSN1245:


/*    756 */	sxar2
/*    756 */	fxtod	%f178,%f184
/*    756 */	fpmaddx	%f178,%f190,%f186,%f188

.LSSN1246:

/*    755 */	sxar2
/*    755 */	std	%f178,[%fp+%xg14]
/*    755 */	fxtod	%f182,%f192

.LSSN1247:

/*    757 */	sxar2
/*    757 */	fpmaddx	%f182,%f190,%f186,%f194
/*    757 */	fxtod	%f180,%f196

.LSSN1248:

/*    756 */	sxar2
/*    756 */	fpmaddx	%f180,%f190,%f186,%f190
/*    756 */	fsubd	%f184,%f198,%f184


/*    756 */	sxar2
/*    756 */	fpmaddxhi	%f188,%f200,%f174,%f188
/*    756 */	ldx	[%fp+%xg14],%xg22
.LSSN1249:


/*    755 */	sxar2
/*    755 */	fsubd	%f192,%f198,%f192
/*    755 */	fpmaddxhi	%f194,%f200,%f174,%f194

.LSSN1250:

/*    757 */	sxar2
/*    757 */	std	%f182,[%fp+%xg17]
/*    757 */	fsubd	%f196,%f198,%f196

.LSSN1251:

/*    756 */	sxar2
/*    756 */	fpmaddxhi	%f190,%f200,%f174,%f190
/*    756 */	sub	%xg22,%xg21,%xg22


/*    756 */	sxar2
/*    756 */	and	%xg22,255,%xg22
/*    756 */	fmaddd	%f202,%f184,%f152,%f152


/*    756 */	sxar2
/*    756 */	fpmaddx	%f188,%f204,%f318,%f188
/*    756 */	sllx	%xg22,4,%xg22
.LSSN1252:


/*    755 */	sxar2
/*    755 */	fmaddd	%f202,%f192,%f156,%f156
/*    755 */	fpmaddx	%f194,%f204,%f318,%f194
.LSSN1253:


/*    756 */	sxar2
/*    756 */	ldd	[%xg15+%xg22],%f216
/*    756 */	add	%xg22,8,%xg22

.LSSN1254:

/*    757 */	sxar2
/*    757 */	ldd	[%xg15+%xg22],%f224
/*    757 */	fmaddd	%f202,%f196,%f160,%f202

.LSSN1255:

/*    756 */	sxar2
/*    756 */	fpmaddx	%f190,%f204,%f318,%f190
/*    756 */	fmaddd	%f206,%f184,%f152,%f184
.LSSN1256:

.LSSN1257:

/*    757 */	sxar2
/*    757 */	fmaddd	%f206,%f192,%f156,%f192
/*    757 */	fmaddd	%f206,%f196,%f202,%f206
.LSSN1258:


/*    756 */	sxar2
/*    756 */	fmaddd	%f212,%f184,%f208,%f210
/*    756 */	fmuld	%f216,%f184,%f214
.LSSN1259:

.LSSN1260:

/*    757 */	sxar2
/*    757 */	fmaddd	%f212,%f192,%f208,%f218
/*    757 */	fmaddd	%f212,%f206,%f208,%f212
.LSSN1261:

.LSSN1262:

/*    755 */	sxar2
/*    755 */	fmaddd	%f184,%f210,%f220,%f210
/*    755 */	fmaddd	%f192,%f218,%f220,%f218
.LSSN1263:

.LSSN1264:

/*    756 */	sxar2
/*    756 */	fmaddd	%f206,%f212,%f220,%f212
/*    756 */	fmaddd	%f184,%f210,%f222,%f184
.LSSN1265:

.LSSN1266:

/*    757 */	sxar2
/*    757 */	fmaddd	%f192,%f218,%f222,%f218
/*    757 */	fmaddd	%f206,%f212,%f222,%f212
.LSSN1267:


/*    756 */	sxar2
/*    756 */	fmaddd	%f214,%f184,%f224,%f214
/*    756 */	faddd	%f216,%f214,%f216


/*    756 */	sxar2
/*    756 */	fmuld	%f188,%f216,%f188
/*    756 */	fselmovd	%f174,%f188,%f162,%f188


/*    756 */	sxar2
/*    756 */	fselmovd	%f64,%f188,%f166,%f188
/*    756 */	fsubd	%f318,%f188,%f188


/*    756 */	sxar2
/*    756 */	fmaddd	%f188,%f126,%f120,%f188
/*    756 */	std	%f188,[%xg0+%xg16]
.LSSN1268:

.LSSN1269:

/*    757 */	sxar2
/*    757 */	ldx	[%fp+%xg17],%xg23
/*    757 */	std	%f180,[%fp+%xg18]
.LSSN1270:


/*    755 */	sxar2
/*    755 */	sub	%xg23,%xg21,%xg23
/*    755 */	and	%xg23,255,%xg23


/*    755 */	sxar2
/*    755 */	sllx	%xg23,4,%xg23
/*    755 */	ldd	[%xg15+%xg23],%f226


/*    755 */	sxar2
/*    755 */	add	%xg23,8,%xg23
/*    755 */	ldd	[%xg15+%xg23],%f228


/*    755 */	sxar2
/*    755 */	fmuld	%f226,%f192,%f192
/*    755 */	fmaddd	%f192,%f218,%f228,%f192


/*    755 */	sxar2
/*    755 */	faddd	%f226,%f192,%f226
/*    755 */	fmuld	%f194,%f226,%f194


/*    755 */	sxar2
/*    755 */	fselmovd	%f174,%f194,%f170,%f194
/*    755 */	fselmovd	%f64,%f194,%f172,%f194


/*    755 */	sxar2
/*    755 */	fsubd	%f318,%f194,%f194
/*    755 */	fmaddd	%f194,%f134,%f128,%f194

.LSSN1271:

/*    757 */	sxar2
/*    757 */	std	%f194,[%g2+%xg16]
/*    757 */	ldx	[%fp+%xg18],%xg24


/*    757 */	sxar2
/*    757 */	sub	%xg24,%xg21,%xg24
/*    757 */	and	%xg24,255,%xg24


/*    757 */	sxar2
/*    757 */	sllx	%xg24,4,%xg24
/*    757 */	ldd	[%xg15+%xg24],%f230


/*    757 */	sxar2
/*    757 */	add	%xg24,8,%xg24
/*    757 */	ldd	[%xg15+%xg24],%f232


/*    757 */	sxar2
/*    757 */	fmuld	%f230,%f206,%f206
/*    757 */	fmaddd	%f206,%f212,%f232,%f206


/*    757 */	sxar2
/*    757 */	faddd	%f230,%f206,%f230
/*    757 */	fmuld	%f190,%f230,%f190


/*    757 */	sxar2
/*    757 */	fselmovd	%f174,%f190,%f164,%f174
/*    757 */	fselmovd	%f64,%f174,%f168,%f64


/*    757 */	sxar2
/*    757 */	fsubd	%f318,%f64,%f64
/*    757 */	fmaddd	%f64,%f118,%f136,%f64

/*    757 */	sxar1
/*    757 */	std	%f64,[%g1+%xg16]
.LSSN1272:

/*    758 */	ba	.L688
	nop


.L677:
.LSSN1273:

/*    726 */	sxar1
/*    726 */	sra	%o1,31,%xg4

/*    726 */	cmp	%o1,%g0

/*    726 */	sxar1
/*    726 */	andn	%o1,%xg4,%xg4

/*    726 */	ble	.L688
	nop


.L678:


/*    726 */	sxar2
/*    726 */	fnegd	%f440,%f440
/*    726 */	mov	%g0,%xg3


/*    726 */	sxar2
/*    726 */	srl	%xg4,31,%xg8
/*    726 */	add	%xg8,%xg4,%xg8


/*    726 */	sxar2
/*    726 */	mov	%g0,%xg16
/*    726 */	sra	%xg8,1,%xg8


/*    726 */	sxar2
/*    726 */	add	%xg8,%xg8,%xg30
/*    726 */	sra	%xg8,%g0,%xg2


/*    726 */	sxar2
/*    726 */	sub	%xg4,%xg30,%xg4
/*    726 */	cmp	%xg8,%g0

/*    726 */	be	.L683
	nop


.L679:



/*    726 */	sxar2
/*    726 */	fmovd	%f440,%f184
/*    726 */	fmovd	%f318,%f62

.LSSN1274:


/*    758 */	sxar2
/*    758 */	sethi	%h44(.LB0+30720144),%xg26
/*    758 */	ldd	[%xg1+984],%f94


/*    758 */	sxar2
/*    758 */	or	%xg26,%m44(.LB0+30720144),%xg26
/*    758 */	fzero,s	%f110

/*    758 */	sxar1
/*    758 */	ldd	[%xg1+984],%f350


/*    758 */	sethi	%h44(__fj_dlogexp2_const_),%g4

/*    758 */	sxar1
/*    758 */	sllx	%xg26,12,%xg26

/*    758 */	sethi	%hi(233920),%o7


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+936],%f114
/*    758 */	ldd	[%xg1+968],%f116


/*    758 */	sethi	%hi(157952),%o4


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+968],%f372
/*    758 */	ldd	[%xg1+960],%f122



/*    758 */	or	%g4,%m44(__fj_dlogexp2_const_),%g4

/*    758 */	sxar1
/*    758 */	or	%xg26,%l44(.LB0+30720144),%xg26

/*    758 */	xor	%o7,-449,%o7


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1032],%f118
/*    758 */	ldd	[%xg1+1032],%f374


/*    758 */	xor	%o4,-257,%o4


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1040],%f120
/*    758 */	ldd	[%xg1+1040],%f376



/*    758 */	sxar2
/*    758 */	sethi	%hi(237968),%xg30
/*    758 */	ldd	[%xg1+1048],%f124



/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1048],%f380
/*    758 */	sethi	%hi(237976),%xg31

/*    758 */	sllx	%g4,12,%g4


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+944],%f126
/*    758 */	ldd	[%xg1+952],%f130



/*    758 */	sethi	%hi(237984),%g5

/*    758 */	sethi	%hi(237992),%o0


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1016],%f132
/*    758 */	ldd	[%xg1+1008],%f134


/*    758 */	sethi	%hi(238000),%o2

/*    758 */	sethi	%hi(238008),%o3
.LSSN1275:

.LSSN1276:

/*    758 */	sxar2
/*    758 */	mov	%g0,%xg3
/*    758 */	add	%xg26,64,%xg22


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1008],%f390
/*    758 */	ldd	[%xg1+1000],%f136



/*    758 */	sxar2
/*    758 */	add	%xg26,16,%xg23
/*    758 */	add	%xg26,24,%xg18


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1000],%f392
/*    758 */	ldd	[%xg1+992],%f138



/*    758 */	sxar2
/*    758 */	add	%xg26,72,%xg19
/*    758 */	add	%xg26,48,%xg27


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+992],%f394
/*    758 */	ldd	[%xg1+1056],%f128



/*    758 */	sxar2
/*    758 */	add	%xg26,8,%xg20
/*    758 */	add	%xg26,56,%xg21


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+1056],%f384
/*    758 */	ldd	[%xg1+976],%f112



/*    758 */	sxar2
/*    758 */	add	%xg26,80,%xg28
/*    758 */	add	%xg26,32,%xg29


/*    758 */	sxar2
/*    758 */	ldd	[%xg1+976],%f368
/*    758 */	ldd	[%xg1+1024],%f140



/*    758 */	sxar2
/*    758 */	add	%xg26,40,%xg24
/*    758 */	add	%xg26,88,%xg25

/*    758 */	sxar1
/*    758 */	ldd	[%xg1+1024],%f396


/*    758 */	add	%o7,%fp,%o7

/*    758 */	add	%o4,%fp,%o4


/*    758 */	sxar2
/*    758 */	mov	%xg0,%xg11
/*    758 */	mov	%g2,%xg16


/*    758 */	sxar2
/*    758 */	mov	%g1,%xg17
/*    758 */	xor	%xg30,-401,%xg30

/*    758 */	sxar1
/*    758 */	xor	%xg31,-409,%xg31

/*    758 */	sethi	%hi(524288),%g3

/*    758 */	or	%g4,%l44(__fj_dlogexp2_const_),%g4

/*    758 */	xor	%g5,-417,%g5

/*    758 */	xor	%o0,-425,%o0

/*    758 */	xor	%o2,-433,%o2

.LSSN1277:

/*    726 */	sxar1
/*    726 */	cmp	%xg8,14

/*    726 */	bl	.L831
/*    726 */	xor	%o3,-441,%o3


.L827:


.L834:


/*    726 */	sxar2
/*    726 */	ldsw	[%o7+-4032],%xg14
/*    726 */	ldsw	[%o7+-4028],%xg15


/*    726 */	sxar2
/*    726 */	add	%o4,16,%xg5
/*    726 */	add	%o7,16,%xg6

/*    726 */	add	%o7,8,%o5

/*    726 */	ldsw	[%o7+-4024],%o5


/*    726 */	sxar2
/*    726 */	add	%o4,48,%xg10
/*    726 */	ldd,s	[%o4],%f232

/*    726 */	sxar1
/*    726 */	add	%o4,32,%xg7

/*    726 */	ldsw	[%o7+-4020],%l2


/*    726 */	sxar2
/*    726 */	add	%o7,32,%xg12
/*    726 */	ldsw	[%o7+-4016],%xg7


/*    726 */	sxar2
/*    726 */	add	%o7,24,%xg9
/*    726 */	ldd,s	[%o4+16],%f242


/*    726 */	sxar2
/*    726 */	add	%o4,64,%xg13
/*    726 */	ldsw	[%o7+-4012],%xg9


/*    726 */	sxar2
/*    726 */	srl	%xg14,%g0,%xg14
/*    726 */	srl	%xg15,%g0,%xg15


/*    726 */	sxar2
/*    726 */	ldd,s	[%o4+32],%f40
/*    726 */	add	%xg14,%xg14,%xg5

/*    726 */	sxar1
/*    726 */	add	%xg15,%xg15,%xg6

/*    726 */	ldsw	[%o7+-4008],%l1


/*    726 */	sxar2
/*    726 */	add	%xg5,%xg14,%xg5
/*    726 */	add	%xg6,%xg15,%xg6

/*    726 */	ldsw	[%o7+-4004],%l4


/*    726 */	sxar2
/*    726 */	sllx	%xg5,4,%xg5
/*    726 */	sllx	%xg6,4,%xg6

/*    726 */	srl	%o5,%g0,%o5

/*    726 */	srl	%l2,%g0,%l2


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg20],%f220
/*    726 */	ldd	[%xg6+%xg20],%f476



/*    726 */	sxar2
/*    726 */	add	%o5,%o5,%xg10
/*    726 */	add	%l2,%l2,%xg12


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg21],%f222
/*    726 */	ldd	[%xg6+%xg21],%f478



/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg18],%f224
/*    726 */	add	%xg10,%o5,%xg10


/*    726 */	sxar2
/*    726 */	add	%xg12,%l2,%xg12
/*    726 */	ldd	[%xg6+%xg18],%f480


/*    726 */	sxar2
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	sllx	%xg12,4,%xg12



/*    726 */	sxar2
/*    726 */	srl	%xg7,%g0,%xg7
/*    726 */	srl	%xg9,%g0,%xg9


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg20],%f228
/*    726 */	ldd	[%xg12+%xg20],%f484



/*    726 */	sxar2
/*    726 */	add	%xg7,%xg7,%xg13
/*    726 */	add	%xg9,%xg9,%xg15


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg21],%f230
/*    726 */	fsubd,s	%f222,%f220,%f222


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg19],%f226
/*    726 */	ldd	[%xg12+%xg21],%f486


/*    726 */	sxar2
/*    726 */	add	%xg13,%xg7,%xg13
/*    726 */	add	%xg15,%xg9,%xg15



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg19],%f482
/*    726 */	ldd	[%xg5+%xg24],%f234



/*    726 */	sxar2
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sllx	%xg15,4,%xg15


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg24],%f490
/*    726 */	ldd	[%xg5+%xg25],%f236

/*    726 */	srl	%l1,%g0,%l1

/*    726 */	srl	%l4,%g0,%l4



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg25],%f492
/*    726 */	ldd	[%xg10+%xg18],%f238

/*    726 */	sxar1
/*    726 */	add	%l1,%l1,%xg14

/*    726 */	add	%l4,%l4,%l0



/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg18],%f494
/*    726 */	fsubd,s	%f230,%f228,%f230

/*    726 */	sxar1
/*    726 */	add	%xg14,%l1,%xg14

/*    726 */	add	%l0,%l4,%l0



/*    726 */	sxar2
/*    726 */	fsubd,s	%f226,%f224,%f226
/*    726 */	ldd	[%xg10+%xg19],%f240


/*    726 */	sxar2
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	fmaddd,s	%f232,%f222,%f220,%f222

/*    726 */	sxar1
/*    726 */	ldd	[%xg12+%xg19],%f496

/*    726 */	sllx	%l0,4,%l0

/*    726 */	add	%o7,40,%o5



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg20],%f254
/*    726 */	fsubd,s	%f236,%f234,%f236



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg20],%f510
/*    726 */	ldd	[%xg13+%xg21],%f32



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg21],%f288
/*    726 */	ldd	[%xg10+%xg24],%f246



/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg24],%f502
/*    726 */	ldd	[%xg10+%xg25],%f248


/*    726 */	sxar2
/*    726 */	fsubd,s	%f240,%f238,%f240
/*    726 */	fmaddd,s	%f242,%f230,%f228,%f230


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f232,%f226,%f224,%f226
/*    726 */	ldd	[%xg12+%xg25],%f504

/*    726 */	sxar1
/*    726 */	frcpad,s	%f222,%f244


/*    726 */	ldsw	[%o7+-4000],%l3


/*    726 */	sxar2
/*    726 */	fsubd,s	%f32,%f254,%f32
/*    726 */	fmaddd,s	%f232,%f236,%f234,%f236


/*    726 */	sxar2
/*    726 */	ldsw	[%o7+-3996],%xg7
/*    726 */	ldd	[%xg13+%xg24],%f54



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg24],%f310
/*    726 */	fsubd,s	%f248,%f246,%f248

/*    726 */	sxar1
/*    726 */	ldd	[%xg13+%xg25],%f56

/*    726 */	srl	%l3,%g0,%l3


/*    726 */	sxar2
/*    726 */	frcpad,s	%f230,%f252
/*    726 */	fmaddd,s	%f242,%f240,%f238,%f240



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg25],%f312
/*    726 */	add	%l3,%l3,%xg9


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f244,%f222,%f62,%f222
/*    726 */	fmuld,s	%f184,%f244,%f244


/*    726 */	sxar2
/*    726 */	srl	%xg7,%g0,%xg7
/*    726 */	add	%xg9,%l3,%xg9


/*    726 */	sxar2
/*    726 */	frcpad,s	%f226,%f250
/*    726 */	fmaddd,s	%f40,%f32,%f254,%f32


/*    726 */	sxar2
/*    726 */	add	%xg7,%xg7,%l1
/*    726 */	sllx	%xg9,4,%xg9


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg18],%f36
/*    726 */	frcpad,s	%f236,%f34


/*    726 */	sxar2
/*    726 */	add	%l1,%xg7,%l1
/*    726 */	ldd	[%xg15+%xg18],%f292


/*    726 */	sllx	%l1,4,%l1


/*    726 */	sxar2
/*    726 */	fsubd,s	%f56,%f54,%f56
/*    726 */	ldd	[%xg13+%xg19],%f38


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f248,%f246,%f248
/*    726 */	ldd	[%xg15+%xg19],%f294



/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f252,%f230,%f62,%f230
/*    726 */	fmuld,s	%f184,%f252,%f252


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f222,%f222,%f222,%f44
/*    726 */	fmuld,s	%f222,%f222,%f46


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg20],%f186
/*    726 */	fnmsubd,s	%f250,%f226,%f62,%f226


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f250,%f250
/*    726 */	ldd	[%l0+%xg20],%f442



/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f34,%f236,%f62,%f236
/*    726 */	fmuld,s	%f184,%f34,%f34


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg21],%f188
/*    726 */	frcpad,s	%f240,%f42


/*    726 */	sxar2
/*    726 */	frcpad,s	%f32,%f64
/*    726 */	ldd	[%l0+%xg21],%f444



/*    726 */	sxar2
/*    726 */	frcpad,s	%f248,%f48
/*    726 */	ldd,s	[%o4+48],%f68


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f56,%f54,%f56
/*    726 */	fmaddd,s	%f230,%f230,%f230,%f58


/*    726 */	sxar2
/*    726 */	fmuld,s	%f230,%f230,%f60
/*    726 */	ldd,s	[%o4+64],%f72


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg18],%f162
/*    726 */	fmaddd,s	%f44,%f244,%f244,%f44


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f46,%f46,%f222,%f46
/*    726 */	ldd	[%l0+%xg18],%f418



/*    726 */	sxar2
/*    726 */	fmuld,s	%f226,%f226,%f50
/*    726 */	fmaddd,s	%f226,%f226,%f226,%f52


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg19],%f164
/*    726 */	fmaddd,s	%f236,%f236,%f236,%f66


/*    726 */	sxar2
/*    726 */	fmuld,s	%f236,%f236,%f70
/*    726 */	ldd	[%l0+%xg19],%f420



/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f42,%f240,%f62,%f240
/*    726 */	fnmsubd,s	%f64,%f32,%f62,%f32


/*    726 */	sxar2
/*    726 */	fsubd,s	%f38,%f36,%f38
/*    726 */	fnmsubd,s	%f48,%f248,%f62,%f248


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg24],%f198
/*    726 */	fmaddd,s	%f58,%f252,%f252,%f58


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f60,%f60,%f230,%f60
/*    726 */	ldd	[%l0+%xg24],%f454



/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg25],%f204
/*    726 */	fmaddd,s	%f46,%f44,%f244,%f46


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f42,%f42
/*    726 */	fmaddd,s	%f52,%f250,%f250,%f52


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f50,%f226,%f50
/*    726 */	ldd	[%l0+%xg25],%f460



/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg18],%f182
/*    726 */	fmaddd,s	%f66,%f34,%f34,%f66


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f70,%f70,%f236,%f70
/*    726 */	ldd	[%xg9+%xg19],%f174


/*    726 */	sxar2
/*    726 */	fmuld,s	%f240,%f240,%f86
/*    726 */	fmaddd,s	%f240,%f240,%f240,%f88



/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg18],%f438
/*    726 */	frcpad,s	%f56,%f98


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f64,%f64
/*    726 */	ldd	[%l1+%xg19],%f430



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f60,%f58,%f252,%f60
/*    726 */	fmaddd,s	%f32,%f32,%f32,%f100


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f46,%f94,%f96
/*    726 */	fmuld,s	%f32,%f32,%f104


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg27],%f254
/*    726 */	fmaddd,s	%f40,%f38,%f36,%f38


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f52,%f250,%f50
/*    726 */	ldd	[%xg6+%xg27],%f510



/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f48,%f48
/*    726 */	fmaddd,s	%f70,%f66,%f34,%f70


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg20],%f52
/*    726 */	fmaddd,s	%f248,%f248,%f248,%f90


/*    726 */	sxar2
/*    726 */	fmuld,s	%f248,%f248,%f92
/*    726 */	ldd	[%l1+%xg20],%f308



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f88,%f42,%f42,%f88
/*    726 */	fmaddd,s	%f86,%f86,%f240,%f86


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg21],%f54
/*    726 */	fcmpleed,s	%f60,%f94,%f106


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f98,%f56,%f62,%f56
/*    726 */	ldd	[%l1+%xg21],%f310



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f46,%f96,%f108
/*    726 */	fmaddd,s	%f100,%f64,%f64,%f100


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f50,%f94,%f102
/*    726 */	fmaddd,s	%f104,%f104,%f32,%f104


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg26],%f32
/*    726 */	fcmpleed,s	%f70,%f94,%f144


/*    726 */	sxar2
/*    726 */	fsubd,s	%f188,%f186,%f188
/*    726 */	ldd	[%xg6+%xg26],%f288



/*    726 */	sxar2
/*    726 */	frcpad,s	%f38,%f74
/*    726 */	fmaddd,s	%f90,%f48,%f48,%f90


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f92,%f248,%f92
/*    726 */	fmaddd,s	%f86,%f88,%f42,%f86


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f98,%f98
/*    726 */	fselmovd,s	%f110,%f60,%f106,%f146


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f108,%f116,%f148
/*    726 */	fmaddd,s	%f56,%f56,%f56,%f154


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f50,%f102,%f142
/*    726 */	fmuld,s	%f56,%f56,%f158


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f70,%f144,%f160
/*    726 */	fmaddd,s	%f104,%f100,%f64,%f104


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f74,%f38,%f62,%f38
/*    726 */	fmaddd,s	%f68,%f188,%f186,%f188


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f90,%f48,%f92
/*    726 */	fsubd,s	%f164,%f162,%f164


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f86,%f94,%f166
/*    726 */	fmaddd,sc	%f114,%f146,%f116,%f170


/*    726 */	sxar2
/*    726 */	fdtox,s	%f148,%f148
/*    726 */	fmaddd,s	%f154,%f98,%f98,%f154


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f142,%f116,%f156
/*    726 */	fmaddd,s	%f158,%f158,%f56,%f158


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f160,%f116,%f172
/*    726 */	fcmpleed,s	%f104,%f94,%f176


/*    726 */	sxar2
/*    726 */	frcpad,s	%f188,%f220
/*    726 */	fsubd,s	%f204,%f198,%f204


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f74,%f74
/*    726 */	fmuld,s	%f38,%f38,%f150


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f38,%f38,%f38,%f152
/*    726 */	fdtox,s	%f170,%f170


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f92,%f94,%f168
/*    726 */	fxtod,s	%f148,%f190



/*    726 */	sxar2
/*    726 */	std	%f404,[%o0+%fp]
/*    726 */	fdtox,s	%f156,%f156


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f68,%f164,%f162,%f164
/*    726 */	std	%f148,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f86,%f166,%f178
/*    726 */	fdtox,s	%f172,%f172


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f158,%f154,%f98,%f158
/*    726 */	fselmovd,s	%f110,%f104,%f176,%f194


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f220,%f188,%f62,%f188
/*    726 */	fmaddd,s	%f68,%f204,%f198,%f204


/*    726 */	sxar2
/*    726 */	fxtod,s	%f170,%f202
/*    726 */	fmovd,s	%f170,%f234


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f150,%f150,%f38,%f150
/*    726 */	fnmsubd,sc	%f122,%f62,%f190,%f190


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f152,%f74,%f74,%f152
/*    726 */	fxtod,s	%f156,%f192

/*    726 */	sxar1
/*    726 */	ldx	[%g5+%fp],%xg7

/*    726 */	ldx	[%o0+%fp],%l2


/*    726 */	ldsw	[%o7+-3992],%l3

/*    726 */	ldsw	[%o7+-3988],%l4


/*    726 */	sxar2
/*    726 */	fxtod,s	%f172,%f212
/*    726 */	fmovd,s	%f172,%f238


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f92,%f168,%f180
/*    726 */	fpmaddx,s	%f148,%f118,%f120,%f148


/*    726 */	sxar2
/*    726 */	frcpad,s	%f164,%f196
/*    726 */	fmaddd,sc	%f114,%f178,%f116,%f208



/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f202,%f202
/*    726 */	sub	%xg7,%g3,%xg7

/*    726 */	sub	%l2,%g3,%l2


/*    726 */	sxar2
/*    726 */	std	%f490,[%o0+%fp]
/*    726 */	fcmpleed,s	%f158,%f94,%f210


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f190,%f108,%f108
/*    726 */	and	%xg7,255,%xg7

/*    726 */	and	%l2,255,%l2


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f192,%f192
/*    726 */	sllx	%xg7,4,%xg7

/*    726 */	sllx	%l2,4,%l2


/*    726 */	sxar2
/*    726 */	std	%f234,[%g5+%fp]
/*    726 */	fmaddd,sc	%f114,%f194,%f116,%f214



/*    726 */	sxar2
/*    726 */	add	%xg7,8,%o7
/*    726 */	fnmsubd,sc	%f122,%f62,%f212,%f212

/*    726 */	sxar1
/*    726 */	std	%f238,[%o2+%fp]

/*    726 */	srl	%l3,%g0,%l3


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f220,%f220
/*    726 */	std	%f494,[%o3+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f188,%f188,%f188,%f246
/*    726 */	ldd	[%xg7+%g4],%f228

/*    726 */	sxar1
/*    726 */	ldd	[%l2+%g4],%f484

/*    726 */	add	%l2,8,%l2


/*    726 */	sxar1
/*    726 */	fmuld,s	%f188,%f188,%f80

/*    726 */	srl	%l4,%g0,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f202,%f146,%f146
/*    726 */	std	%f156,[%xg30+%fp]


/*    726 */	sxar2
/*    726 */	frcpad,s	%f204,%f252
/*    726 */	ldd	[%o7+%g4],%f230


/*    726 */	sxar2
/*    726 */	add	%l3,%l3,%xg7
/*    726 */	fmaddd,sc	%f130,%f190,%f108,%f190

/*    726 */	add	%l4,%l4,%i4


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f192,%f142,%f142
/*    726 */	ldd	[%l2+%g4],%f486

/*    726 */	sxar1
/*    726 */	add	%xg7,%l3,%xg7

/*    726 */	add	%i4,%l4,%i4



/*    726 */	sxar2
/*    726 */	fsubd,s	%f174,%f182,%f174
/*    726 */	fmaddd,s	%f150,%f152,%f74,%f150


/*    726 */	sxar2
/*    726 */	sllx	%xg7,4,%xg7
/*    726 */	std	%f412,[%xg31+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f180,%f116,%f200
/*    726 */	fpmaddxhi,s	%f148,%f124,%f110,%f148

/*    726 */	sllx	%i4,4,%i4


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg18],%f36
/*    726 */	fnmsubd,s	%f196,%f164,%f62,%f164

/*    726 */	sxar1
/*    726 */	fselmovd,s	%f110,%f158,%f210,%f222

/*    726 */	add	%o4,80,%o7



/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg18],%f292
/*    726 */	fdtox,s	%f208,%f208


/*    726 */	sxar2
/*    726 */	fdtox,s	%f214,%f214
/*    726 */	ldd	[%xg7+%xg19],%f34


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f190,%f134,%f224
/*    726 */	fmuld,s	%f228,%f190,%f226



/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg19],%f290
/*    726 */	fmaddd,sc	%f130,%f192,%f142,%f192


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f212,%f160,%f160
/*    726 */	fmaddd,sc	%f130,%f202,%f146,%f202


/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%l5
/*    726 */	fmaddd,s	%f246,%f220,%f220,%f246

/*    726 */	sxar1
/*    726 */	ldx	[%xg31+%fp],%l6

/*    726 */	ldx	[%g5+%fp],%l7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f80,%f80,%f188,%f80
/*    726 */	fnmsubd,s	%f252,%f204,%f62,%f204


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f174,%f182,%f174
/*    726 */	fcmpleed,s	%f150,%f94,%f206

/*    726 */	ldx	[%o0+%fp],%i0


/*    726 */	sxar2
/*    726 */	fdtox,s	%f200,%f200
/*    726 */	fpmaddx,s	%f148,%f128,%f62,%f148

/*    726 */	ldx	[%o2+%fp],%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f190,%f224,%f136,%f224
/*    726 */	fmaddd,sc	%f114,%f222,%f116,%f234

/*    726 */	sub	%l5,%g3,%l5

/*    726 */	ldx	[%o3+%fp],%l2


/*    726 */	sxar2
/*    726 */	fxtod,s	%f208,%f236
/*    726 */	fmaddd,sc	%f132,%f192,%f134,%f248

/*    726 */	sub	%l6,%g3,%l6

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	fxtod,s	%f214,%f238
/*    726 */	fmuld,s	%f164,%f164,%f240

/*    726 */	and	%l6,255,%l6

/*    726 */	sllx	%l5,4,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f164,%f164,%f164,%f244
/*    726 */	fmuld,s	%f184,%f196,%f196

/*    726 */	sllx	%l6,4,%l6

/*    726 */	ldd	[%l5+%g4],%f56


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f156,%f118,%f120,%f156
/*    726 */	fsubd,s	%f254,%f32,%f254

/*    726 */	sub	%l7,%g3,%l7



/*    726 */	sxar2
/*    726 */	ldd	[%l6+%g4],%f312
/*    726 */	fmaddd,sc	%f130,%f212,%f160,%f212

/*    726 */	sxar1
/*    726 */	fsubd,s	%f34,%f36,%f34

/*    726 */	and	%l7,255,%l7


/*    726 */	sxar2
/*    726 */	ldd,s	[%o4+80],%f76
/*    726 */	fmaddd,s	%f190,%f224,%f138,%f190

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f132,%f202,%f134,%f38

/*    726 */	sub	%i0,%g3,%i0

/*    726 */	sllx	%l7,4,%l7


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f192,%f248,%f136,%f248
/*    726 */	fmuld,s	%f184,%f252,%f252

/*    726 */	and	%i0,255,%i0

/*    726 */	add	%l7,8,%o4

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f80,%f246,%f220,%f80

/*    726 */	add	%l5,8,%l5

/*    726 */	add	%l6,8,%l6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f204,%f204,%f204,%f44
/*    726 */	frcpad,s	%f174,%f216

/*    726 */	sxar1
/*    726 */	ldd	[%l5+%g4],%f64

/*    726 */	sllx	%i0,4,%i0


/*    726 */	sxar2
/*    726 */	fmuld,s	%f204,%f204,%f48
/*    726 */	fselmovd,s	%f110,%f150,%f206,%f218


/*    726 */	sxar2
/*    726 */	fxtod,s	%f200,%f250
/*    726 */	ldd	[%l6+%g4],%f320

/*    726 */	sub	%l2,%g3,%l2


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f238,%f238
/*    726 */	fnmsubd,sc	%f122,%f62,%f236,%f236

/*    726 */	sxar1
/*    726 */	ldd	[%o4+%g4],%f98

/*    726 */	sub	%l3,%g3,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f226,%f190,%f230,%f226
/*    726 */	fmaddd,s	%f244,%f196,%f196,%f244

/*    726 */	sxar1
/*    726 */	ldd	[%l7+%g4],%f108

/*    726 */	and	%l2,255,%l2


/*    726 */	sxar2
/*    726 */	fdtox,s	%f234,%f234
/*    726 */	fmaddd,s	%f192,%f248,%f138,%f248

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	ldd	[%i0+%g4],%f364
/*    726 */	fpmaddxhi,s	%f156,%f124,%f110,%f156

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f232,%f254,%f32,%f254

/*    726 */	sllx	%l2,4,%l2

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f212,%f134,%f42
/*    726 */	fmaddd,s	%f240,%f240,%f164,%f240


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f38,%f136,%f38
/*    726 */	fsubd,s	%f54,%f52,%f54


/*    726 */	sxar2
/*    726 */	fmuld,s	%f56,%f192,%f192
/*    726 */	fmaddd,s	%f76,%f34,%f36,%f34


/*    726 */	sxar2
/*    726 */	faddd,s	%f228,%f226,%f228
/*    726 */	fcmpleed,s	%f80,%f94,%f58


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f44,%f252,%f252,%f44
/*    726 */	fmaddd,s	%f48,%f48,%f204,%f48

/*    726 */	sxar1
/*    726 */	fmuld,s	%f148,%f228,%f148

.L681:


/*    726 */	ldd	[%l3+%g4],%f32


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f212,%f42,%f136,%f42
/*    726 */	ldd	[%l2+%g4],%f288


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f192,%f248,%f64,%f192
/*    726 */	frcpad,s	%f34,%f246


/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f216,%f174,%f62,%f174

/*    726 */	add	%i0,8,%i0


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f244,%f196,%f240
/*    726 */	fmaddd,s	%f202,%f38,%f138,%f38


/*    726 */	sxar2
/*    726 */	ldd	[%i0+%g4],%f354
/*    726 */	fmuld,s	%f108,%f202,%f202


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f170,%f118,%f120,%f170
/*    726 */	fmaddd,s	%f48,%f44,%f252,%f48



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f80,%f58,%f248
/*    726 */	fpmaddx,s	%f172,%f118,%f120,%f172

/*    726 */	add	%l3,8,%l3

/*    726 */	add	%l2,8,%l2


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f66
/*    726 */	fmaddd,s	%f212,%f42,%f138,%f42


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%g4],%f322
/*    726 */	fmuld,s	%f32,%f212,%f212


/*    726 */	sxar2
/*    726 */	faddd,s	%f56,%f192,%f56
/*    726 */	fpmaddx,s	%f156,%f128,%f62,%f156



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f240,%f94,%f36
/*    726 */	fmaddd,sc	%f114,%f218,%f116,%f44

/*    726 */	ldsw	[%o5+-4024],%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f38,%f98,%f202
/*    726 */	fmaddd,s	%f72,%f54,%f52,%f54

/*    726 */	ldsw	[%o5+-4020],%l4


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f170,%f124,%f110,%f170
/*    726 */	fcmpleed,s	%f48,%f94,%f52



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f236,%f178,%f178
/*    726 */	fmaddd,sc	%f114,%f248,%f116,%f64


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg22],%f98
/*    726 */	ldd	[%xg6+%xg22],%f354


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f172,%f124,%f110,%f172
/*    726 */	fmaddd,s	%f212,%f42,%f66,%f212

/*    726 */	sxar1
/*    726 */	ldd	[%xg9+%xg24],%f84

/*    726 */	srl	%l3,%g0,%l3


/*    726 */	sxar2
/*    726 */	fmuld,s	%f156,%f56,%f156
/*    726 */	ldd	[%l1+%xg24],%f340

/*    726 */	sxar1
/*    726 */	ldd	[%xg9+%xg25],%f88

/*    726 */	srl	%l4,%g0,%l4


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f240,%f36,%f74
/*    726 */	ldd	[%l1+%xg25],%f344


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg23],%f90
/*    726 */	ldd	[%xg6+%xg23],%f346


/*    726 */	sxar2
/*    726 */	frcpad,s	%f54,%f78
/*    726 */	faddd,s	%f108,%f202,%f108

/*    726 */	add	%l3,%l3,%o4

/*    726 */	add	%l4,%l4,%l2


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f170,%f128,%f62,%f170
/*    726 */	fselmovd,s	%f110,%f48,%f52,%f82

/*    726 */	add	%o4,%l3,%o4

/*    726 */	add	%l2,%l4,%l2


/*    726 */	sxar2
/*    726 */	fdtox,s	%f44,%f44
/*    726 */	fdtox,s	%f64,%f64

/*    726 */	sllx	%o4,4,%o4

/*    726 */	sllx	%l2,4,%l2


/*    726 */	sxar2
/*    726 */	faddd,s	%f32,%f212,%f32
/*    726 */	fpmaddx,s	%f172,%f128,%f62,%f172





/*    726 */	sxar2
/*    726 */	fmovd,s	%f214,%f100
/*    726 */	ldd	[%o4+%xg18],%f188


/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg18],%f444
/*    726 */	fmaddd,sc	%f130,%f236,%f178,%f236




/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f156,%f102,%f156
/*    726 */	std	%f356,[%o0+%fp]


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f50,%f112,%f50
/*    726 */	fsubd,s	%f88,%f84,%f88


/*    726 */	sxar2
/*    726 */	std	%f100,[%g5+%fp]
/*    726 */	fsubd,s	%f98,%f90,%f98


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f78,%f54,%f62,%f54
/*    726 */	ldd	[%xg10+%xg26],%f152


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg26],%f408
/*    726 */	fmuld,s	%f170,%f108,%f170


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f82,%f116,%f100
/*    726 */	ldd	[%xg10+%xg27],%f154


/*    726 */	sxar2
/*    726 */	fxtod,s	%f44,%f102
/*    726 */	ldd	[%xg12+%xg27],%f410


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg28],%f162
/*    726 */	fxtod,s	%f64,%f108


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg28],%f418
/*    726 */	fmuld,s	%f172,%f32,%f172



/*    726 */	sxar2
/*    726 */	fmovd,s	%f200,%f146
/*    726 */	ldd	[%xg5+%xg29],%f160


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f236,%f134,%f142
/*    726 */	ldd	[%xg6+%xg29],%f416


/*    726 */	sxar2
/*    726 */	std	%f146,[%o2+%fp]
/*    726 */	fselmovd,s	%f140,%f156,%f50,%f156


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f88,%f84,%f88
/*    726 */	std	%f402,[%o3+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f232,%f98,%f90,%f98
/*    726 */	fselmovd,s	%f110,%f148,%f96,%f148





/*    726 */	sxar2
/*    726 */	fmovd,s	%f208,%f164
/*    726 */	fxtod,s	%f234,%f146


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f46,%f112,%f46
/*    726 */	ldd,s	[%xg11],%f178


/*    726 */	sxar2
/*    726 */	std	%f164,[%xg30+%fp]
/*    726 */	fnmsubd,sc	%f122,%f62,%f250,%f250




/*    726 */	sxar2
/*    726 */	fsubd,s	%f154,%f152,%f154
/*    726 */	std	%f420,[%xg31+%fp]


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f108,%f108
/*    726 */	fselmovd,s	%f110,%f172,%f144,%f172


/*    726 */	sxar2
/*    726 */	ldx	[%g5+%fp],%xg5
/*    726 */	ldd,s	[%xg16],%f186


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f70,%f112,%f70
/*    726 */	fsubd,s	%f162,%f160,%f162

/*    726 */	sxar1
/*    726 */	ldd	[%o4+%xg19],%f202

/*    726 */	ldx	[%o0+%fp],%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f156,%f156
/*    726 */	frcpad,s	%f88,%f164

/*    726 */	ldx	[%o2+%fp],%l6


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg20],%f226
/*    726 */	fsubd,s	%f98,%f178,%f98


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f78,%f78
/*    726 */	ldd	[%i4+%xg20],%f482


/*    726 */	sxar2
/*    726 */	ldx	[%o3+%fp],%xg6
/*    726 */	fmaddd,s	%f54,%f54,%f54,%f182


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f148,%f46,%f148
/*    726 */	sub	%xg5,%g3,%xg5


/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%l3
/*    726 */	fmaddd,sc	%f126,%f250,%f180,%f180


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f238,%f194,%f194
/*    726 */	ldx	[%xg31+%fp],%l4


/*    726 */	sxar2
/*    726 */	and	%xg5,255,%xg5
/*    726 */	fsubd,s	%f254,%f186,%f254


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f154,%f152,%f154
/*    726 */	ldd	[%xg7+%xg21],%f228


/*    726 */	sxar2
/*    726 */	sllx	%xg5,4,%xg5
/*    726 */	fselmovd,s	%f140,%f172,%f70,%f172


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f232,%f162,%f160,%f232
/*    726 */	fmaddd,s	%f236,%f142,%f136,%f142


/*    726 */	sxar2
/*    726 */	sub	%xg6,%g3,%xg6
/*    726 */	fnmsubd,s	%f164,%f88,%f62,%f88


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17],%f196
/*    726 */	ldd	[%l2+%xg19],%f458

/*    726 */	sub	%l3,%g3,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f156,%f98,%f178,%f156
/*    726 */	fmuld,s	%f54,%f54,%f190

/*    726 */	sub	%l4,%g3,%l4

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f182,%f78,%f78,%f182
/*    726 */	fsubd,s	%f62,%f148,%f148


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f238,%f194,%f238
/*    726 */	add	%xg5,8,%l7

/*    726 */	sxar1
/*    726 */	fmuld,s	%f174,%f174,%f192

/*    726 */	and	%l4,255,%l4

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f174,%f174,%f174,%f194
/*    726 */	fmuld,s	%f184,%f216,%f216

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f230
/*    726 */	fsubd,s	%f62,%f172,%f172


/*    726 */	sxar2
/*    726 */	fsubd,s	%f232,%f196,%f232
/*    726 */	ldd	[%l4+%g4],%f486

/*    726 */	add	%l3,8,%l3


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f164,%f164
/*    726 */	fmaddd,s	%f88,%f88,%f88,%f198

/*    726 */	sxar1
/*    726 */	ldd	[%i4+%xg21],%f484

/*    726 */	add	%l4,8,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f190,%f190,%f54,%f190
/*    726 */	fnmsubd,sc	%f122,%f62,%f102,%f102





/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f250,%f180,%f250
/*    726 */	fpmaddx,s	%f208,%f118,%f120,%f208


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f252
/*    726 */	fmaddd,s	%f148,%f254,%f186,%f148


/*    726 */	sxar2
/*    726 */	ldd	[%l4+%g4],%f508
/*    726 */	fsubd,s	%f202,%f188,%f202


/*    726 */	sxar2
/*    726 */	and	%xg6,255,%xg6
/*    726 */	ldd,s	[%o7+16],%f220


/*    726 */	sxar2
/*    726 */	sllx	%xg6,4,%xg6
/*    726 */	fmaddd,s	%f236,%f142,%f138,%f142


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f194,%f216,%f216,%f194
/*    726 */	ldd	[%l7+%g4],%f66

/*    726 */	sub	%l6,%g3,%l6


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f238,%f134,%f204
/*    726 */	fmaddd,s	%f172,%f232,%f196,%f172



/*    726 */	sub	%l5,%g3,%l5

/*    726 */	and	%l6,255,%l6


/*    726 */	sxar2
/*    726 */	fmuld,s	%f88,%f88,%f224
/*    726 */	fmaddd,s	%f198,%f164,%f164,%f198



/*    726 */	sxar2
/*    726 */	std	%f412,[%xg11+8]
/*    726 */	fmaddd,s	%f190,%f182,%f78,%f190

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f228,%f226,%f228
/*    726 */	std	%f156,[%xg11]

/*    726 */	sxar1
/*    726 */	fmuld,s	%f230,%f236,%f236

/*    726 */	sllx	%l5,4,%l5



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f250,%f134,%f232
/*    726 */	ldd	[%xg5+%g4],%f32


/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f288
/*    726 */	fdtox,s	%f100,%f100


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f220,%f202,%f188,%f202
/*    726 */	std	%f148,[%xg16]

/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f208,%f124,%f110,%f208

/*    726 */	sllx	%l6,4,%l6



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f192,%f192,%f174,%f192
/*    726 */	std	%f404,[%xg16+8]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f204,%f136,%f204
/*    726 */	std	%f172,[%xg17]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f224,%f88,%f224
/*    726 */	std	%f428,[%xg17+8]

/*    726 */	sxar1
/*    726 */	fcmpleed,s	%f190,%f94,%f244


/*    726 */	ldd	[%l6+%g4],%f42


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f250,%f232,%f136,%f232
/*    726 */	ldd	[%xg6+%g4],%f298


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f236,%f142,%f252,%f236
/*    726 */	frcpad,s	%f202,%f254


/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f246,%f34,%f62,%f34

/*    726 */	add	%l5,8,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f192,%f194,%f216,%f192
/*    726 */	fmaddd,s	%f238,%f204,%f138,%f204


/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f322
/*    726 */	fmuld,s	%f32,%f238,%f238


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f214,%f118,%f120,%f214
/*    726 */	fmaddd,s	%f224,%f198,%f164,%f224



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f190,%f244,%f38
/*    726 */	fpmaddx,s	%f200,%f118,%f120,%f200

/*    726 */	add	%l6,8,%l6


/*    726 */	sxar2
/*    726 */	add	%xg6,8,%xg6
/*    726 */	ldd	[%l6+%g4],%f88


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f250,%f232,%f138,%f232
/*    726 */	ldd	[%xg6+%g4],%f344


/*    726 */	sxar2
/*    726 */	fmuld,s	%f42,%f250,%f250
/*    726 */	faddd,s	%f230,%f236,%f230



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f208,%f128,%f62,%f208
/*    726 */	fcmpleed,s	%f192,%f94,%f54

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f114,%f74,%f116,%f56

/*    726 */	ldsw	[%o5+-4016],%i0


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f204,%f66,%f238
/*    726 */	fmaddd,s	%f76,%f228,%f226,%f228

/*    726 */	ldsw	[%o5+-4012],%i2


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f214,%f124,%f110,%f214
/*    726 */	fcmpleed,s	%f224,%f94,%f78



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f102,%f218,%f218
/*    726 */	fmaddd,sc	%f114,%f38,%f116,%f84


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg22],%f152
/*    726 */	ldd	[%xg12+%xg22],%f408


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f200,%f124,%f110,%f200
/*    726 */	fmaddd,s	%f250,%f232,%f88,%f250

/*    726 */	sxar1
/*    726 */	ldd	[%xg7+%xg24],%f142

/*    726 */	srl	%i0,%g0,%i0


/*    726 */	sxar2
/*    726 */	fmuld,s	%f208,%f230,%f208
/*    726 */	ldd	[%i4+%xg24],%f398

/*    726 */	sxar1
/*    726 */	ldd	[%xg7+%xg25],%f144

/*    726 */	srl	%i2,%g0,%i2


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f192,%f54,%f90
/*    726 */	ldd	[%i4+%xg25],%f400


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg23],%f148
/*    726 */	ldd	[%xg12+%xg23],%f404


/*    726 */	sxar2
/*    726 */	frcpad,s	%f228,%f96
/*    726 */	faddd,s	%f32,%f238,%f32


/*    726 */	sxar2
/*    726 */	add	%i0,%i0,%xg5
/*    726 */	add	%i2,%i2,%xg6


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f214,%f128,%f62,%f214
/*    726 */	fselmovd,s	%f110,%f224,%f78,%f98


/*    726 */	sxar2
/*    726 */	add	%xg5,%i0,%xg5
/*    726 */	add	%xg6,%i2,%xg6


/*    726 */	sxar2
/*    726 */	fdtox,s	%f56,%f56
/*    726 */	fdtox,s	%f84,%f84


/*    726 */	sxar2
/*    726 */	sllx	%xg5,4,%xg5
/*    726 */	sllx	%xg6,4,%xg6


/*    726 */	sxar2
/*    726 */	faddd,s	%f42,%f250,%f42
/*    726 */	fpmaddx,s	%f200,%f128,%f62,%f200





/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg18],%f196
/*    726 */	ldd	[%xg6+%xg18],%f452


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f102,%f218,%f102
/*    726 */	fselmovd,s	%f110,%f208,%f166,%f208




/*    726 */	sxar2
/*    726 */	std	%f320,[%o0+%fp]
/*    726 */	fcmpgeed,s	%f86,%f112,%f86


/*    726 */	sxar2
/*    726 */	fsubd,s	%f144,%f142,%f144
/*    726 */	std	%f64,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fsubd,s	%f152,%f148,%f152
/*    726 */	fnmsubd,s	%f96,%f228,%f62,%f228


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg26],%f172
/*    726 */	ldd	[%xg15+%xg26],%f428


/*    726 */	sxar2
/*    726 */	fmuld,s	%f214,%f32,%f214
/*    726 */	fmaddd,sc	%f114,%f98,%f116,%f156


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg27],%f174
/*    726 */	fxtod,s	%f56,%f160


/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg27],%f430
/*    726 */	ldd	[%xg10+%xg28],%f180


/*    726 */	sxar2
/*    726 */	fxtod,s	%f84,%f162
/*    726 */	ldd	[%xg12+%xg28],%f436


/*    726 */	sxar2
/*    726 */	fmuld,s	%f200,%f42,%f200
/*    726 */	fmovd,s	%f234,%f166



/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg29],%f178
/*    726 */	fmaddd,sc	%f132,%f102,%f134,%f164


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg29],%f434
/*    726 */	std	%f166,[%o2+%fp]


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f208,%f86,%f208
/*    726 */	fmaddd,s	%f76,%f144,%f142,%f144


/*    726 */	sxar2
/*    726 */	std	%f422,[%o3+%fp]
/*    726 */	fmaddd,s	%f242,%f152,%f148,%f152





/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f170,%f106,%f170
/*    726 */	fxtod,s	%f100,%f166


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f60,%f112,%f60
/*    726 */	ldd,s	[%xg11+16],%f186


/*    726 */	sxar2
/*    726 */	std	%f44,[%xg30+%fp]
/*    726 */	fnmsubd,sc	%f122,%f62,%f146,%f146




/*    726 */	sxar2
/*    726 */	fsubd,s	%f174,%f172,%f174
/*    726 */	std	%f300,[%xg31+%fp]


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f162,%f162
/*    726 */	fselmovd,s	%f110,%f200,%f168,%f200


/*    726 */	sxar2
/*    726 */	ldx	[%g5+%fp],%xg10
/*    726 */	ldd,s	[%xg16+16],%f194


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f92,%f112,%f92
/*    726 */	fsubd,s	%f180,%f178,%f180

/*    726 */	sxar1
/*    726 */	ldd	[%xg5+%xg19],%f226

/*    726 */	ldx	[%o0+%fp],%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f208,%f208
/*    726 */	frcpad,s	%f144,%f182

/*    726 */	ldx	[%o2+%fp],%l6


/*    726 */	sxar2
/*    726 */	ldd	[%o4+%xg20],%f236
/*    726 */	fsubd,s	%f152,%f186,%f152


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f96,%f96
/*    726 */	ldd	[%l2+%xg20],%f492


/*    726 */	sxar2
/*    726 */	ldx	[%o3+%fp],%xg12
/*    726 */	fmaddd,s	%f228,%f228,%f228,%f188


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f170,%f60,%f170
/*    726 */	sub	%xg10,%g3,%xg10


/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%l3
/*    726 */	fmaddd,sc	%f126,%f146,%f222,%f222


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f108,%f248,%f248
/*    726 */	ldx	[%xg31+%fp],%l4


/*    726 */	sxar2
/*    726 */	and	%xg10,255,%xg10
/*    726 */	fsubd,s	%f154,%f194,%f154


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f174,%f172,%f174
/*    726 */	ldd	[%o4+%xg21],%f238


/*    726 */	sxar2
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	fselmovd,s	%f140,%f200,%f92,%f200


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f180,%f178,%f242
/*    726 */	fmaddd,s	%f102,%f164,%f136,%f164


/*    726 */	sxar2
/*    726 */	sub	%xg12,%g3,%xg12
/*    726 */	fnmsubd,s	%f182,%f144,%f62,%f144


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+16],%f216
/*    726 */	ldd	[%xg6+%xg19],%f482

/*    726 */	sub	%l3,%g3,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f208,%f152,%f186,%f208
/*    726 */	fmuld,s	%f228,%f228,%f198

/*    726 */	sub	%l4,%g3,%l4

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f188,%f96,%f96,%f188
/*    726 */	fsubd,s	%f62,%f170,%f170


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f108,%f248,%f108
/*    726 */	add	%xg10,8,%l7

/*    726 */	sxar1
/*    726 */	fmuld,s	%f34,%f34,%f204

/*    726 */	and	%l4,255,%l4

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f34,%f34,%f212
/*    726 */	fmuld,s	%f184,%f246,%f246

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f248
/*    726 */	fsubd,s	%f62,%f200,%f200


/*    726 */	sxar2
/*    726 */	fsubd,s	%f242,%f216,%f242
/*    726 */	ldd	[%l4+%g4],%f504

/*    726 */	add	%l3,8,%l3


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f182,%f182
/*    726 */	fmaddd,s	%f144,%f144,%f144,%f218

/*    726 */	sxar1
/*    726 */	ldd	[%l2+%xg21],%f494

/*    726 */	add	%l4,8,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f198,%f198,%f228,%f198
/*    726 */	fnmsubd,sc	%f122,%f62,%f160,%f160





/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f146,%f222,%f146
/*    726 */	fpmaddx,s	%f44,%f118,%f120,%f44

/*    726 */	ldd	[%l3+%g4],%f32


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f170,%f154,%f194,%f170
/*    726 */	ldd	[%l4+%g4],%f288


/*    726 */	sxar2
/*    726 */	fsubd,s	%f226,%f196,%f226
/*    726 */	and	%xg12,255,%xg12


/*    726 */	sxar2
/*    726 */	ldd,s	[%o7+32],%f232
/*    726 */	sllx	%xg12,4,%xg12


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f102,%f164,%f138,%f164
/*    726 */	fmaddd,s	%f212,%f246,%f246,%f212

/*    726 */	sxar1
/*    726 */	ldd	[%l7+%g4],%f92

/*    726 */	sub	%l6,%g3,%l6


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f108,%f134,%f228
/*    726 */	fmaddd,s	%f200,%f242,%f216,%f200



/*    726 */	sub	%l5,%g3,%l5

/*    726 */	and	%l6,255,%l6


/*    726 */	sxar2
/*    726 */	fmuld,s	%f144,%f144,%f230
/*    726 */	fmaddd,s	%f218,%f182,%f182,%f218



/*    726 */	sxar2
/*    726 */	std	%f464,[%xg11+24]
/*    726 */	fmaddd,s	%f198,%f188,%f96,%f198

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f238,%f236,%f238
/*    726 */	std	%f208,[%xg11+16]

/*    726 */	sxar1
/*    726 */	fmuld,s	%f248,%f102,%f102

/*    726 */	sllx	%l5,4,%l5



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f146,%f134,%f250
/*    726 */	ldd	[%xg10+%g4],%f42


/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f298
/*    726 */	fdtox,s	%f156,%f156


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f232,%f226,%f196,%f226
/*    726 */	std	%f170,[%xg16+16]

/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f44,%f124,%f110,%f44

/*    726 */	sllx	%l6,4,%l6



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f204,%f204,%f34,%f204
/*    726 */	std	%f426,[%xg16+24]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f108,%f228,%f136,%f228
/*    726 */	std	%f200,[%xg17+16]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f230,%f230,%f144,%f230
/*    726 */	std	%f456,[%xg17+24]

/*    726 */	sxar1
/*    726 */	fcmpleed,s	%f198,%f94,%f252


/*    726 */	ldd	[%l6+%g4],%f60


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f146,%f250,%f136,%f250
/*    726 */	ldd	[%xg12+%g4],%f316


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f102,%f164,%f32,%f102
/*    726 */	frcpad,s	%f226,%f34


/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f254,%f202,%f62,%f202

/*    726 */	add	%l5,8,%l5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f204,%f212,%f246,%f204
/*    726 */	fmaddd,s	%f108,%f228,%f138,%f228


/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f348
/*    726 */	fmuld,s	%f42,%f108,%f108


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f64,%f118,%f120,%f64
/*    726 */	fmaddd,s	%f230,%f218,%f182,%f230



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f198,%f252,%f50
/*    726 */	fpmaddx,s	%f234,%f118,%f120,%f234

/*    726 */	add	%l6,8,%l6


/*    726 */	sxar2
/*    726 */	add	%xg12,8,%xg12
/*    726 */	ldd	[%l6+%g4],%f154


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f146,%f250,%f138,%f250
/*    726 */	ldd	[%xg12+%g4],%f410


/*    726 */	sxar2
/*    726 */	fmuld,s	%f60,%f146,%f146
/*    726 */	faddd,s	%f248,%f102,%f248



/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f44,%f128,%f62,%f44
/*    726 */	fcmpleed,s	%f204,%f94,%f66

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f114,%f90,%f116,%f88

/*    726 */	ldsw	[%o5+-4008],%i0


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f108,%f228,%f92,%f108
/*    726 */	fmaddd,s	%f220,%f238,%f236,%f238

/*    726 */	ldsw	[%o5+-4004],%i2


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f64,%f124,%f110,%f64
/*    726 */	fcmpleed,s	%f230,%f94,%f142



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f160,%f74,%f74
/*    726 */	fmaddd,sc	%f114,%f50,%f116,%f152


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg22],%f182
/*    726 */	ldd	[%xg15+%xg22],%f438


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f234,%f124,%f110,%f234
/*    726 */	fmaddd,s	%f146,%f250,%f154,%f146

/*    726 */	sxar1
/*    726 */	ldd	[%o4+%xg24],%f172

/*    726 */	srl	%i0,%g0,%i0


/*    726 */	sxar2
/*    726 */	fmuld,s	%f44,%f248,%f44
/*    726 */	ldd	[%l2+%xg24],%f428

/*    726 */	sxar1
/*    726 */	ldd	[%o4+%xg25],%f178

/*    726 */	srl	%i2,%g0,%i2


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f204,%f66,%f164
/*    726 */	ldd	[%l2+%xg25],%f434


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg23],%f180
/*    726 */	ldd	[%xg15+%xg23],%f436


/*    726 */	sxar2
/*    726 */	frcpad,s	%f238,%f168
/*    726 */	faddd,s	%f42,%f108,%f42


/*    726 */	sxar2
/*    726 */	add	%i0,%i0,%xg10
/*    726 */	add	%i2,%i2,%xg12


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f64,%f128,%f62,%f64
/*    726 */	fselmovd,s	%f110,%f230,%f142,%f170


/*    726 */	sxar2
/*    726 */	add	%xg10,%i0,%xg10
/*    726 */	add	%xg12,%i2,%xg12


/*    726 */	sxar2
/*    726 */	fdtox,s	%f88,%f88
/*    726 */	fdtox,s	%f152,%f152


/*    726 */	sxar2
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	sllx	%xg12,4,%xg12


/*    726 */	sxar2
/*    726 */	faddd,s	%f60,%f146,%f60
/*    726 */	fpmaddx,s	%f234,%f128,%f62,%f234





/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg18],%f146
/*    726 */	ldd	[%xg12+%xg18],%f402


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f160,%f74,%f160
/*    726 */	fselmovd,s	%f110,%f44,%f206,%f44




/*    726 */	sxar2
/*    726 */	std	%f340,[%o0+%fp]
/*    726 */	fcmpgeed,s	%f150,%f112,%f150


/*    726 */	sxar2
/*    726 */	fsubd,s	%f178,%f172,%f178
/*    726 */	std	%f84,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fsubd,s	%f182,%f180,%f182
/*    726 */	fnmsubd,s	%f168,%f238,%f62,%f238


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg26],%f206
/*    726 */	ldd	[%l0+%xg26],%f462


/*    726 */	sxar2
/*    726 */	fmuld,s	%f64,%f42,%f64
/*    726 */	fmaddd,sc	%f114,%f170,%f116,%f186


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg27],%f248
/*    726 */	fxtod,s	%f88,%f188


/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg27],%f504
/*    726 */	ldd	[%xg13+%xg28],%f32


/*    726 */	sxar2
/*    726 */	fxtod,s	%f152,%f194
/*    726 */	ldd	[%xg15+%xg28],%f288



/*    726 */	sxar2
/*    726 */	fmuld,s	%f234,%f60,%f234
/*    726 */	ldd	[%xg13+%xg29],%f250


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f160,%f134,%f196
/*    726 */	ldd	[%xg15+%xg29],%f506


/*    726 */	sxar2
/*    726 */	std	%f100,[%o2+%fp]
/*    726 */	fselmovd,s	%f140,%f44,%f150,%f44


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f220,%f178,%f172,%f178
/*    726 */	std	%f356,[%o3+%fp]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f182,%f180,%f182
/*    726 */	fselmovd,s	%f110,%f214,%f176,%f214





/*    726 */	sxar2
/*    726 */	fxtod,s	%f156,%f200
/*    726 */	fcmpgeed,s	%f104,%f112,%f104


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+32],%f46
/*    726 */	std	%f56,[%xg30+%fp]


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f166,%f166
/*    726 */	fsubd,s	%f248,%f206,%f248




/*    726 */	sxar2
/*    726 */	std	%f312,[%xg31+%fp]
/*    726 */	fnmsubd,sc	%f122,%f62,%f194,%f194


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f234,%f210,%f234
/*    726 */	ldx	[%g5+%fp],%xg13


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+32],%f144
/*    726 */	fcmpgeed,s	%f158,%f112,%f158


/*    726 */	sxar2
/*    726 */	fsubd,s	%f32,%f250,%f32
/*    726 */	ldd	[%xg10+%xg19],%f176

/*    726 */	ldx	[%o0+%fp],%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f44,%f44
/*    726 */	frcpad,s	%f178,%f42

/*    726 */	ldx	[%o2+%fp],%l6


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%xg20],%f208
/*    726 */	fsubd,s	%f182,%f46,%f182


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f168,%f168
/*    726 */	ldd	[%xg6+%xg20],%f464


/*    726 */	sxar2
/*    726 */	ldx	[%o3+%fp],%xg15
/*    726 */	fmaddd,s	%f238,%f238,%f238,%f60


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f214,%f104,%f214
/*    726 */	sub	%xg13,%g3,%xg13


/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%l3
/*    726 */	fmaddd,sc	%f126,%f166,%f82,%f82


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f162,%f38,%f38
/*    726 */	ldx	[%xg31+%fp],%l4


/*    726 */	sxar2
/*    726 */	and	%xg13,255,%xg13
/*    726 */	fsubd,s	%f174,%f144,%f174


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f68,%f248,%f206,%f248
/*    726 */	ldd	[%xg5+%xg21],%f210


/*    726 */	sxar2
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	fselmovd,s	%f140,%f234,%f158,%f234


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f32,%f250,%f40
/*    726 */	fmaddd,s	%f160,%f196,%f136,%f196


/*    726 */	sxar2
/*    726 */	sub	%xg15,%g3,%xg15
/*    726 */	fnmsubd,s	%f42,%f178,%f62,%f178


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+32],%f150
/*    726 */	ldd	[%xg12+%xg19],%f432

/*    726 */	sub	%l3,%g3,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f44,%f182,%f46,%f44
/*    726 */	fmuld,s	%f238,%f238,%f228

/*    726 */	sub	%l4,%g3,%l4

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f60,%f168,%f168,%f60
/*    726 */	fsubd,s	%f62,%f214,%f214


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f162,%f38,%f162
/*    726 */	add	%xg13,8,%l7

/*    726 */	sxar1
/*    726 */	fmuld,s	%f202,%f202,%f108

/*    726 */	and	%l4,255,%l4

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f202,%f202,%f148
/*    726 */	fmuld,s	%f184,%f254,%f254

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f212
/*    726 */	fsubd,s	%f62,%f234,%f234


/*    726 */	sxar2
/*    726 */	fsubd,s	%f40,%f150,%f40
/*    726 */	ldd	[%l4+%g4],%f468

/*    726 */	add	%l3,8,%l3


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f42,%f42
/*    726 */	fmaddd,s	%f178,%f178,%f178,%f180

/*    726 */	sxar1
/*    726 */	ldd	[%xg6+%xg21],%f466

/*    726 */	add	%l4,8,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f228,%f228,%f238,%f228
/*    726 */	fnmsubd,sc	%f122,%f62,%f188,%f188





/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f166,%f82,%f166
/*    726 */	fpmaddx,s	%f56,%f118,%f120,%f56

/*    726 */	ldd	[%l3+%g4],%f32


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f214,%f174,%f144,%f214
/*    726 */	ldd	[%l4+%g4],%f288


/*    726 */	sxar2
/*    726 */	fsubd,s	%f176,%f146,%f176
/*    726 */	and	%xg15,255,%xg15


/*    726 */	sxar2
/*    726 */	ldd,s	[%o7+48],%f242
/*    726 */	sllx	%xg15,4,%xg15


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f160,%f196,%f138,%f196
/*    726 */	fmaddd,s	%f148,%f254,%f254,%f148

/*    726 */	sxar1
/*    726 */	ldd	[%l7+%g4],%f172

/*    726 */	sub	%l6,%g3,%l6


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f162,%f134,%f182
/*    726 */	fmaddd,s	%f234,%f40,%f150,%f234



/*    726 */	sub	%l5,%g3,%l5

/*    726 */	and	%l6,255,%l6


/*    726 */	sxar2
/*    726 */	fmuld,s	%f178,%f178,%f38
/*    726 */	fmaddd,s	%f180,%f42,%f42,%f180



/*    726 */	sxar2
/*    726 */	std	%f300,[%xg11+40]
/*    726 */	fmaddd,s	%f228,%f60,%f168,%f228

/*    726 */	and	%l5,255,%l5


/*    726 */	sxar2
/*    726 */	fsubd,s	%f210,%f208,%f210
/*    726 */	std	%f44,[%xg11+32]

/*    726 */	sxar1
/*    726 */	fmuld,s	%f212,%f160,%f160

/*    726 */	sllx	%l5,4,%l5



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f166,%f134,%f216
/*    726 */	ldd	[%xg13+%g4],%f46


/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f302
/*    726 */	fdtox,s	%f186,%f186


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f176,%f146,%f176
/*    726 */	std	%f214,[%xg16+32]

/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f56,%f124,%f110,%f56
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f108,%f108,%f202,%f108
/*    726 */	std	%f470,[%xg16+40]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f182,%f136,%f182
/*    726 */	std	%f234,[%xg17+32]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f38,%f38,%f178,%f38
/*    726 */	std	%f490,[%xg17+40]
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f228,%f94,%f250
/*    726 */	ldd	[%l6+%g4],%f86
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f166,%f216,%f136,%f216
/*    726 */	ldd	[%xg15+%g4],%f342
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f160,%f196,%f32,%f160
/*    726 */	frcpad,s	%f176,%f44
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f34,%f226,%f62,%f226
/*    726 */	add	%l5,8,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f108,%f148,%f254,%f108
/*    726 */	fmaddd,s	%f162,%f182,%f138,%f182
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f428
/*    726 */	fmuld,s	%f46,%f162,%f162
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f84,%f118,%f120,%f84
/*    726 */	fmaddd,s	%f38,%f180,%f42,%f38
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f228,%f250,%f82
/*    726 */	fpmaddx,s	%f100,%f118,%f120,%f100
/*    726 */	add	%l6,8,%l6
/*    726 */	sxar2
/*    726 */	add	%xg15,8,%xg15
/*    726 */	ldd	[%l6+%g4],%f196
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f166,%f216,%f138,%f216
/*    726 */	ldd	[%xg15+%g4],%f452
/*    726 */	sxar2
/*    726 */	fmuld,s	%f86,%f166,%f166
/*    726 */	faddd,s	%f212,%f160,%f212
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f56,%f128,%f62,%f56
/*    726 */	fcmpleed,s	%f108,%f94,%f146
/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f114,%f164,%f116,%f160
/*    726 */	ldsw	[%o5+-4000],%i0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f182,%f172,%f162
/*    726 */	fmaddd,s	%f232,%f210,%f208,%f210
/*    726 */	ldsw	[%o5+-3996],%i2
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f84,%f124,%f110,%f84
/*    726 */	fcmpleed,s	%f38,%f94,%f182
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f188,%f90,%f90
/*    726 */	fmaddd,sc	%f114,%f82,%f116,%f246
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg22],%f222
/*    726 */	ldd	[%l0+%xg22],%f478
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f100,%f124,%f110,%f100
/*    726 */	fmaddd,s	%f166,%f216,%f196,%f166
/*    726 */	sxar1
/*    726 */	ldd	[%xg5+%xg24],%f214
/*    726 */	srl	%i0,%g0,%i0
/*    726 */	sxar2
/*    726 */	fmuld,s	%f56,%f212,%f56
/*    726 */	ldd	[%xg6+%xg24],%f470
/*    726 */	sxar1
/*    726 */	ldd	[%xg5+%xg25],%f216
/*    726 */	srl	%i2,%g0,%i2
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f108,%f146,%f202
/*    726 */	ldd	[%xg6+%xg25],%f472
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg23],%f218
/*    726 */	ldd	[%l0+%xg23],%f474
/*    726 */	sxar2
/*    726 */	frcpad,s	%f210,%f206
/*    726 */	faddd,s	%f46,%f162,%f46
/*    726 */	sxar2
/*    726 */	add	%i0,%i0,%xg13
/*    726 */	add	%i2,%i2,%xg15
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f84,%f128,%f62,%f84
/*    726 */	fselmovd,s	%f110,%f38,%f182,%f208
/*    726 */	sxar2
/*    726 */	add	%xg13,%i0,%xg13
/*    726 */	add	%xg15,%i2,%xg15
/*    726 */	sxar2
/*    726 */	fdtox,s	%f160,%f160
/*    726 */	fdtox,s	%f246,%f246
/*    726 */	sxar2
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sllx	%xg15,4,%xg15
/*    726 */	sxar2
/*    726 */	faddd,s	%f86,%f166,%f86
/*    726 */	fpmaddx,s	%f100,%f128,%f62,%f100
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg18],%f60
/*    726 */	ldd	[%xg15+%xg18],%f316
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f188,%f90,%f188
/*    726 */	fselmovd,s	%f110,%f56,%f36,%f56
/*    726 */	sxar2
/*    726 */	std	%f408,[%o0+%fp]
/*    726 */	fcmpgeed,s	%f240,%f112,%f240
/*    726 */	sxar2
/*    726 */	fsubd,s	%f216,%f214,%f216
/*    726 */	std	%f152,[%g5+%fp]
/*    726 */	sxar2
/*    726 */	fsubd,s	%f222,%f218,%f222
/*    726 */	fnmsubd,s	%f206,%f210,%f62,%f210
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg26],%f254
/*    726 */	ldd	[%l1+%xg26],%f510
/*    726 */	sxar2
/*    726 */	fmuld,s	%f84,%f46,%f84
/*    726 */	fmaddd,sc	%f114,%f208,%f116,%f154
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg27],%f32
/*    726 */	fxtod,s	%f160,%f234
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg27],%f288
/*    726 */	ldd	[%xg14+%xg28],%f70
/*    726 */	sxar2
/*    726 */	fxtod,s	%f246,%f236
/*    726 */	ldd	[%l0+%xg28],%f326
/*    726 */	sxar2
/*    726 */	fmuld,s	%f100,%f86,%f100
/*    726 */	ldd	[%xg14+%xg29],%f36
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f188,%f134,%f238
/*    726 */	ldd	[%l0+%xg29],%f292
/*    726 */	sxar2
/*    726 */	std	%f156,[%o2+%fp]
/*    726 */	fselmovd,s	%f140,%f56,%f240,%f56
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f232,%f216,%f214,%f216
/*    726 */	std	%f412,[%o3+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f68,%f222,%f218,%f222
/*    726 */	fselmovd,s	%f110,%f64,%f58,%f64
/*    726 */	sxar2
/*    726 */	fxtod,s	%f186,%f240
/*    726 */	fcmpgeed,s	%f80,%f112,%f80
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+48],%f46
/*    726 */	std	%f88,[%xg30+%fp]
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f200,%f200
/*    726 */	fsubd,s	%f32,%f254,%f32
/*    726 */	sxar2
/*    726 */	std	%f344,[%xg31+%fp]
/*    726 */	fnmsubd,sc	%f122,%f62,%f236,%f236
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f100,%f52,%f100
/*    726 */	ldx	[%g5+%fp],%xg14
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+48],%f58
/*    726 */	fcmpgeed,s	%f48,%f112,%f48
/*    726 */	sxar2
/*    726 */	fsubd,s	%f70,%f36,%f70
/*    726 */	ldd	[%xg13+%xg19],%f90
/*    726 */	ldx	[%o0+%fp],%l5
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f56,%f56
/*    726 */	frcpad,s	%f216,%f42
/*    726 */	ldx	[%o2+%fp],%l6
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg20],%f166
/*    726 */	fsubd,s	%f222,%f46,%f222
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f206,%f206
/*    726 */	ldd	[%xg12+%xg20],%f422
/*    726 */	ldx	[%o3+%fp],%l0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f210,%f210,%f210,%f52
/*    726 */	fselmovd,s	%f140,%f64,%f80,%f64
/*    726 */	sxar2
/*    726 */	sub	%xg14,%g3,%xg14
/*    726 */	ldx	[%xg30+%fp],%l3
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f200,%f98,%f98
/*    726 */	fmaddd,sc	%f126,%f194,%f50,%f50
/*    726 */	sxar2
/*    726 */	ldx	[%xg31+%fp],%l4
/*    726 */	and	%xg14,255,%xg14
/*    726 */	sxar2
/*    726 */	fsubd,s	%f248,%f58,%f248
/*    726 */	fmaddd,s	%f72,%f32,%f254,%f32
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg21],%f168
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f100,%f48,%f100
/*    726 */	fmaddd,s	%f68,%f70,%f36,%f70
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f188,%f238,%f136,%f238
/*    726 */	sub	%l0,%g3,%l0
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f42,%f216,%f62,%f216
/*    726 */	ldd,s	[%xg17+48],%f96
/*    726 */	sxar1
/*    726 */	ldd	[%xg15+%xg19],%f346
/*    726 */	sub	%l3,%g3,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f56,%f222,%f46,%f56
/*    726 */	fmuld,s	%f210,%f210,%f46
/*    726 */	sub	%l4,%g3,%l4
/*    726 */	and	%l3,255,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f52,%f206,%f206,%f52
/*    726 */	fsubd,s	%f62,%f64,%f64
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f194,%f50,%f194
/*    726 */	add	%xg14,8,%l7
/*    726 */	sxar1
/*    726 */	fmuld,s	%f226,%f226,%f50
/*    726 */	and	%l4,255,%l4
/*    726 */	sllx	%l3,4,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f226,%f226,%f226,%f92
/*    726 */	fmuld,s	%f184,%f34,%f34
/*    726 */	sllx	%l4,4,%l4
/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f172
/*    726 */	fsubd,s	%f62,%f100,%f100
/*    726 */	sxar2
/*    726 */	fsubd,s	%f70,%f96,%f70
/*    726 */	ldd	[%l4+%g4],%f428
/*    726 */	add	%l3,8,%l3
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f42,%f42
/*    726 */	fmaddd,s	%f216,%f216,%f216,%f102
/*    726 */	sxar1
/*    726 */	ldd	[%xg12+%xg21],%f424
/*    726 */	add	%l4,8,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f46,%f46,%f210,%f46
/*    726 */	fnmsubd,sc	%f122,%f62,%f234,%f234
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f200,%f98,%f200
/*    726 */	fpmaddx,s	%f88,%f118,%f120,%f88
/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f178
/*    726 */	fmaddd,s	%f64,%f248,%f58,%f64
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%g4],%f434
/*    726 */	fsubd,s	%f90,%f60,%f90
/*    726 */	and	%l0,255,%l0
/*    726 */	sxar1
/*    726 */	ldd,s	[%o7+64],%f40
/*    726 */	sllx	%l0,4,%l0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f188,%f238,%f138,%f238
/*    726 */	fmaddd,s	%f92,%f34,%f34,%f92
/*    726 */	sxar1
/*    726 */	ldd	[%l7+%g4],%f218
/*    726 */	sub	%l6,%g3,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f194,%f134,%f104
/*    726 */	fmaddd,s	%f100,%f70,%f96,%f100
/*    726 */	sub	%l5,%g3,%l5
/*    726 */	and	%l6,255,%l6
/*    726 */	sxar2
/*    726 */	fmuld,s	%f216,%f216,%f70
/*    726 */	fmaddd,s	%f102,%f42,%f42,%f102
/*    726 */	sxar2
/*    726 */	std	%f312,[%xg11+56]
/*    726 */	fmaddd,s	%f46,%f52,%f206,%f46
/*    726 */	and	%l5,255,%l5
/*    726 */	sxar2
/*    726 */	fsubd,s	%f168,%f166,%f168
/*    726 */	std	%f56,[%xg11+48]
/*    726 */	sxar1
/*    726 */	fmuld,s	%f172,%f188,%f188
/*    726 */	sllx	%l5,4,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f200,%f134,%f174
/*    726 */	ldd	[%xg14+%g4],%f210
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f466
/*    726 */	fdtox,s	%f154,%f154
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f90,%f60,%f90
/*    726 */	std	%f64,[%xg16+48]
/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f88,%f124,%f110,%f88
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f50,%f226,%f50
/*    726 */	std	%f320,[%xg16+56]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f194,%f104,%f136,%f104
/*    726 */	std	%f100,[%xg17+48]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f70,%f70,%f216,%f70
/*    726 */	std	%f356,[%xg17+56]
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f46,%f94,%f96
/*    726 */	ldd	[%l6+%g4],%f216
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f200,%f174,%f136,%f174
/*    726 */	ldd	[%l0+%g4],%f472
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f188,%f238,%f178,%f188
/*    726 */	frcpad,s	%f90,%f206
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f44,%f176,%f62,%f176
/*    726 */	add	%l5,8,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f50,%f92,%f34,%f50
/*    726 */	fmaddd,s	%f194,%f104,%f138,%f104
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f474
/*    726 */	fmuld,s	%f210,%f194,%f194
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f152,%f118,%f120,%f152
/*    726 */	fmaddd,s	%f70,%f102,%f42,%f70
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f46,%f96,%f214
/*    726 */	fpmaddx,s	%f156,%f118,%f120,%f156
/*    726 */	add	%l6,8,%l6
/*    726 */	add	%l0,8,%l0
/*    726 */	sxar2
/*    726 */	ldd	[%l6+%g4],%f222
/*    726 */	fmaddd,s	%f200,%f174,%f138,%f174
/*    726 */	sxar2
/*    726 */	ldd	[%l0+%g4],%f478
/*    726 */	fmuld,s	%f216,%f200,%f200
/*    726 */	sxar2
/*    726 */	faddd,s	%f172,%f188,%f172
/*    726 */	fpmaddx,s	%f88,%f128,%f62,%f88
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f50,%f94,%f102
/*    726 */	fmaddd,sc	%f114,%f202,%f116,%f162
/*    726 */	ldsw	[%o5+-3992],%i0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f194,%f104,%f218,%f194
/*    726 */	fmaddd,s	%f242,%f168,%f166,%f168
/*    726 */	ldsw	[%o5+-3988],%i2
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f152,%f124,%f110,%f152
/*    726 */	fcmpleed,s	%f70,%f94,%f144
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f234,%f164,%f164
/*    726 */	fmaddd,sc	%f114,%f214,%f116,%f148
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg22],%f92
/*    726 */	ldd	[%l1+%xg22],%f348
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f156,%f124,%f110,%f156
/*    726 */	fmaddd,s	%f200,%f174,%f222,%f200
/*    726 */	sxar1
/*    726 */	ldd	[%xg10+%xg24],%f68
/*    726 */	srl	%i0,%g0,%i0
/*    726 */	sxar2
/*    726 */	fmuld,s	%f88,%f172,%f88
/*    726 */	ldd	[%xg12+%xg24],%f324
/*    726 */	sxar1
/*    726 */	ldd	[%xg10+%xg25],%f80
/*    726 */	srl	%i2,%g0,%i2
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f50,%f102,%f226
/*    726 */	ldd	[%xg12+%xg25],%f336
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg23],%f86
/*    726 */	ldd	[%l1+%xg23],%f342
/*    726 */	sxar2
/*    726 */	frcpad,s	%f168,%f64
/*    726 */	faddd,s	%f210,%f194,%f210
/*    726 */	sxar1
/*    726 */	add	%i0,%i0,%xg14
/*    726 */	add	%i2,%i2,%l0
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f152,%f128,%f62,%f152
/*    726 */	fselmovd,s	%f110,%f70,%f144,%f36
/*    726 */	sxar1
/*    726 */	add	%xg14,%i0,%xg14
/*    726 */	add	%l0,%i2,%l0
/*    726 */	sxar2
/*    726 */	fdtox,s	%f162,%f162
/*    726 */	fdtox,s	%f148,%f148
/*    726 */	sxar1
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	sllx	%l0,4,%l0
/*    726 */	sxar2
/*    726 */	faddd,s	%f216,%f200,%f216
/*    726 */	fpmaddx,s	%f156,%f128,%f62,%f156
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg18],%f218
/*    726 */	ldd	[%l0+%xg18],%f474
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f234,%f164,%f234
/*    726 */	fselmovd,s	%f110,%f88,%f54,%f88
/*    726 */	sxar2
/*    726 */	std	%f502,[%o0+%fp]
/*    726 */	fcmpgeed,s	%f192,%f112,%f192
/*    726 */	sxar2
/*    726 */	fsubd,s	%f80,%f68,%f80
/*    726 */	std	%f246,[%g5+%fp]
/*    726 */	sxar2
/*    726 */	fsubd,s	%f92,%f86,%f92
/*    726 */	fnmsubd,s	%f64,%f168,%f62,%f168
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg26],%f166
/*    726 */	ldd	[%i4+%xg26],%f422
/*    726 */	sxar2
/*    726 */	fmuld,s	%f152,%f210,%f152
/*    726 */	fmaddd,sc	%f114,%f36,%f116,%f172
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg27],%f188
/*    726 */	fxtod,s	%f162,%f98
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg27],%f444
/*    726 */	ldd	[%xg9+%xg28],%f74
/*    726 */	sxar2
/*    726 */	fxtod,s	%f148,%f100
/*    726 */	ldd	[%l1+%xg28],%f330
/*    726 */	sxar2
/*    726 */	fmuld,s	%f156,%f216,%f156
/*    726 */	ldd	[%xg9+%xg29],%f194
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f234,%f134,%f104
/*    726 */	ldd	[%l1+%xg29],%f450
/*    726 */	sxar2
/*    726 */	std	%f186,[%o2+%fp]
/*    726 */	fselmovd,s	%f140,%f88,%f192,%f88
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f80,%f68,%f80
/*    726 */	std	%f442,[%o3+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f92,%f86,%f92
/*    726 */	fselmovd,s	%f110,%f84,%f244,%f84
/*    726 */	sxar2
/*    726 */	fxtod,s	%f154,%f164
/*    726 */	fcmpgeed,s	%f190,%f112,%f190
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+64],%f210
/*    726 */	std	%f160,[%xg30+%fp]
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f240,%f240
/*    726 */	fsubd,s	%f188,%f166,%f188
/*    726 */	sxar2
/*    726 */	std	%f416,[%xg31+%fp]
/*    726 */	fnmsubd,sc	%f122,%f62,%f100,%f100
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f156,%f78,%f156
/*    726 */	ldx	[%g5+%fp],%xg9
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+64],%f216
/*    726 */	fcmpgeed,s	%f224,%f112,%f224
/*    726 */	sxar2
/*    726 */	fsubd,s	%f74,%f194,%f74
/*    726 */	ldd	[%xg14+%xg19],%f58
/*    726 */	ldx	[%o0+%fp],%l5
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f88,%f88
/*    726 */	frcpad,s	%f80,%f200
/*    726 */	ldx	[%o2+%fp],%l6
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg20],%f248
/*    726 */	fsubd,s	%f92,%f210,%f92
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f64,%f64
/*    726 */	ldd	[%xg15+%xg20],%f504
/*    726 */	ldx	[%o3+%fp],%l1
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f168,%f168,%f168,%f212
/*    726 */	fselmovd,s	%f140,%f84,%f190,%f84
/*    726 */	sxar2
/*    726 */	sub	%xg9,%g3,%xg9
/*    726 */	ldx	[%xg30+%fp],%l3
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f240,%f170,%f170
/*    726 */	fmaddd,sc	%f126,%f236,%f82,%f82
/*    726 */	sxar2
/*    726 */	ldx	[%xg31+%fp],%l4
/*    726 */	and	%xg9,255,%xg9
/*    726 */	sxar2
/*    726 */	fsubd,s	%f32,%f216,%f32
/*    726 */	fmaddd,s	%f76,%f188,%f166,%f188
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg21],%f244
/*    726 */	sllx	%xg9,4,%xg9
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f156,%f224,%f156
/*    726 */	fmaddd,s	%f72,%f74,%f194,%f74
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f234,%f104,%f136,%f104
/*    726 */	sub	%l1,%g3,%l1
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f200,%f80,%f62,%f80
/*    726 */	ldd,s	[%xg17+64],%f224
/*    726 */	sxar1
/*    726 */	ldd	[%l0+%xg19],%f314
/*    726 */	sub	%l3,%g3,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f88,%f92,%f210,%f88
/*    726 */	fmuld,s	%f168,%f168,%f60
/*    726 */	sub	%l4,%g3,%l4
/*    726 */	and	%l3,255,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f212,%f64,%f64,%f212
/*    726 */	fsubd,s	%f62,%f84,%f84
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f236,%f82,%f236
/*    726 */	add	%xg9,8,%l7
/*    726 */	sxar1
/*    726 */	fmuld,s	%f176,%f176,%f86
/*    726 */	and	%l4,255,%l4
/*    726 */	sllx	%l3,4,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f176,%f176,%f176,%f222
/*    726 */	fmuld,s	%f184,%f44,%f44
/*    726 */	sllx	%l4,4,%l4
/*    726 */	ldd	[%l3+%g4],%f34
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f156,%f156
/*    726 */	fsubd,s	%f74,%f224,%f74
/*    726 */	sxar1
/*    726 */	ldd	[%l4+%g4],%f290
/*    726 */	add	%l3,8,%l3
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f200,%f200
/*    726 */	fmaddd,s	%f80,%f80,%f80,%f238
/*    726 */	sxar1
/*    726 */	ldd	[%xg15+%xg21],%f500
/*    726 */	add	%l4,8,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f60,%f60,%f168,%f60
/*    726 */	fnmsubd,sc	%f122,%f62,%f98,%f98
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f240,%f170,%f240
/*    726 */	fpmaddx,s	%f160,%f118,%f120,%f160
/*    726 */	ldd	[%l3+%g4],%f48
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f84,%f32,%f216,%f84
/*    726 */	ldd	[%l4+%g4],%f304
/*    726 */	sxar1
/*    726 */	fsubd,s	%f58,%f218,%f58
/*    726 */	and	%l1,255,%l1
/*    726 */	sxar1
/*    726 */	ldd,s	[%o7+80],%f68
/*    726 */	sllx	%l1,4,%l1
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f234,%f104,%f138,%f104
/*    726 */	fmaddd,s	%f222,%f44,%f44,%f222
/*    726 */	sxar1
/*    726 */	ldd	[%l7+%g4],%f72
/*    726 */	sub	%l6,%g3,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f236,%f134,%f254
/*    726 */	fmaddd,s	%f156,%f74,%f224,%f156
/*    726 */	sub	%l5,%g3,%l5
/*    726 */	and	%l6,255,%l6
/*    726 */	sxar2
/*    726 */	fmuld,s	%f80,%f80,%f92
/*    726 */	fmaddd,s	%f238,%f200,%f200,%f238
/*    726 */	sxar2
/*    726 */	std	%f344,[%xg11+72]
/*    726 */	fmaddd,s	%f60,%f212,%f64,%f60
/*    726 */	and	%l5,255,%l5
/*    726 */	sxar2
/*    726 */	fsubd,s	%f244,%f248,%f244
/*    726 */	std	%f88,[%xg11+64]
/*    726 */	sxar1
/*    726 */	fmuld,s	%f34,%f234,%f234
/*    726 */	sllx	%l5,4,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f240,%f134,%f42
/*    726 */	ldd	[%xg9+%g4],%f52
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f308
/*    726 */	fdtox,s	%f172,%f172
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f68,%f58,%f218,%f58
/*    726 */	std	%f84,[%xg16+64]
/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f160,%f124,%f110,%f160
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f86,%f86,%f176,%f86
/*    726 */	std	%f340,[%xg16+72]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f236,%f254,%f136,%f254
/*    726 */	std	%f156,[%xg17+64]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f92,%f92,%f80,%f92
/*    726 */	std	%f412,[%xg17+72]
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f60,%f94,%f106
/*    726 */	ldd	[%l6+%g4],%f64
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f42,%f136,%f42
/*    726 */	ldd	[%l1+%g4],%f320
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f234,%f104,%f48,%f234
/*    726 */	frcpad,s	%f58,%f196
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f206,%f90,%f62,%f90
/*    726 */	add	%l5,8,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f86,%f222,%f44,%f86
/*    726 */	fmaddd,s	%f236,%f254,%f138,%f254
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f328
/*    726 */	fmuld,s	%f52,%f236,%f236
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f246,%f118,%f120,%f246
/*    726 */	fmaddd,s	%f92,%f238,%f200,%f92
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f60,%f106,%f56
/*    726 */	fpmaddx,s	%f186,%f118,%f120,%f186
/*    726 */	add	%l6,8,%l6
/*    726 */	add	%l1,8,%l1
/*    726 */	sxar2
/*    726 */	ldd	[%l6+%g4],%f74
/*    726 */	fmaddd,s	%f240,%f42,%f138,%f42
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%g4],%f330
/*    726 */	fmuld,s	%f64,%f240,%f240
/*    726 */	sxar2
/*    726 */	faddd,s	%f34,%f234,%f34
/*    726 */	fpmaddx,s	%f160,%f128,%f62,%f160
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f86,%f94,%f166
/*    726 */	fmaddd,sc	%f114,%f226,%f116,%f156
/*    726 */	ldsw	[%o5+-3984],%i0
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f236,%f254,%f72,%f236
/*    726 */	fmaddd,s	%f40,%f244,%f248,%f244
/*    726 */	ldsw	[%o5+-3980],%i2
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f246,%f124,%f110,%f246
/*    726 */	fcmpleed,s	%f92,%f94,%f168
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f98,%f202,%f202
/*    726 */	fmaddd,sc	%f114,%f56,%f116,%f170
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg22],%f104
/*    726 */	ldd	[%i4+%xg22],%f360
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f186,%f124,%f110,%f186
/*    726 */	fmaddd,s	%f240,%f42,%f74,%f240
/*    726 */	sxar1
/*    726 */	ldd	[%xg13+%xg24],%f82
/*    726 */	srl	%i0,%g0,%i0
/*    726 */	sxar2
/*    726 */	fmuld,s	%f160,%f34,%f160
/*    726 */	ldd	[%xg15+%xg24],%f338
/*    726 */	sxar1
/*    726 */	ldd	[%xg13+%xg25],%f84
/*    726 */	srl	%i2,%g0,%i2
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f86,%f166,%f178
/*    726 */	ldd	[%xg15+%xg25],%f340
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg23],%f88
/*    726 */	ldd	[%i4+%xg23],%f344
/*    726 */	sxar2
/*    726 */	frcpad,s	%f244,%f80
/*    726 */	faddd,s	%f52,%f236,%f52
/*    726 */	sxar1
/*    726 */	add	%i0,%i0,%xg9
/*    726 */	add	%i2,%i2,%l1
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f246,%f128,%f62,%f246
/*    726 */	fselmovd,s	%f110,%f92,%f168,%f180
/*    726 */	sxar1
/*    726 */	add	%xg9,%i0,%xg9
/*    726 */	add	%l1,%i2,%l1
/*    726 */	sxar2
/*    726 */	fdtox,s	%f156,%f156
/*    726 */	fdtox,s	%f170,%f170
/*    726 */	sxar1
/*    726 */	sllx	%xg9,4,%xg9
/*    726 */	sllx	%l1,4,%l1
/*    726 */	sxar2
/*    726 */	faddd,s	%f64,%f240,%f64
/*    726 */	fpmaddx,s	%f186,%f128,%f62,%f186
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg18],%f254
/*    726 */	ldd	[%l1+%xg18],%f510
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f98,%f202,%f98
/*    726 */	fselmovd,s	%f110,%f160,%f66,%f160
/*    726 */	sxar2
/*    726 */	std	%f404,[%o0+%fp]
/*    726 */	fcmpgeed,s	%f204,%f112,%f204
/*    726 */	sxar2
/*    726 */	fsubd,s	%f84,%f82,%f84
/*    726 */	std	%f148,[%g5+%fp]
/*    726 */	sxar2
/*    726 */	fsubd,s	%f104,%f88,%f104
/*    726 */	fnmsubd,s	%f80,%f244,%f62,%f244
/*    726 */	sxar2
/*    726 */	ldd	[%o4+%xg26],%f194
/*    726 */	ldd	[%l2+%xg26],%f450
/*    726 */	sxar2
/*    726 */	fmuld,s	%f246,%f52,%f246
/*    726 */	fmaddd,sc	%f114,%f180,%f116,%f200
/*    726 */	sxar2
/*    726 */	ldd	[%o4+%xg27],%f224
/*    726 */	fxtod,s	%f156,%f192
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg27],%f480
/*    726 */	ldd	[%xg7+%xg28],%f78
/*    726 */	sxar2
/*    726 */	fxtod,s	%f170,%f202
/*    726 */	ldd	[%i4+%xg28],%f334
/*    726 */	sxar2
/*    726 */	fmuld,s	%f186,%f64,%f186
/*    726 */	ldd	[%xg7+%xg29],%f234
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f98,%f134,%f190
/*    726 */	ldd	[%i4+%xg29],%f490
/*    726 */	sxar2
/*    726 */	std	%f154,[%o2+%fp]
/*    726 */	fselmovd,s	%f140,%f160,%f204,%f160
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f40,%f84,%f82,%f84
/*    726 */	std	%f410,[%o3+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f76,%f104,%f88,%f104
/*    726 */	fselmovd,s	%f110,%f152,%f252,%f152
/*    726 */	sxar2
/*    726 */	fxtod,s	%f172,%f212
/*    726 */	fcmpgeed,s	%f198,%f112,%f198
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+80],%f238
/*    726 */	std	%f162,[%xg30+%fp]
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f164,%f164
/*    726 */	fsubd,s	%f224,%f194,%f224
/*    726 */	sxar2
/*    726 */	std	%f418,[%xg31+%fp]
/*    726 */	fnmsubd,sc	%f122,%f62,%f202,%f202
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f186,%f142,%f186
/*    726 */	ldx	[%g5+%fp],%xg7
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+80],%f248
/*    726 */	fcmpgeed,s	%f230,%f112,%f230
/*    726 */	sxar2
/*    726 */	fsubd,s	%f78,%f234,%f78
/*    726 */	ldd	[%xg9+%xg19],%f174
/*    726 */	ldx	[%o0+%fp],%l6
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f160,%f160
/*    726 */	frcpad,s	%f84,%f236
/*    726 */	ldx	[%o2+%fp],%l7
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg20],%f52
/*    726 */	fsubd,s	%f104,%f238,%f104
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f80,%f80
/*    726 */	ldd	[%l0+%xg20],%f308
/*    726 */	ldx	[%o3+%fp],%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f244,%f244,%f244,%f240
/*    726 */	fselmovd,s	%f140,%f152,%f198,%f152
/*    726 */	sxar2
/*    726 */	sub	%xg7,%g3,%xg7
/*    726 */	ldx	[%xg30+%fp],%l4
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f164,%f208,%f208
/*    726 */	fmaddd,sc	%f126,%f100,%f214,%f214
/*    726 */	sxar2
/*    726 */	ldx	[%xg31+%fp],%l5
/*    726 */	and	%xg7,255,%xg7
/*    726 */	sxar2
/*    726 */	fsubd,s	%f188,%f248,%f188
/*    726 */	fmaddd,s	%f220,%f224,%f194,%f224
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg21],%f42
/*    726 */	sllx	%xg7,4,%xg7
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f186,%f230,%f186
/*    726 */	fmaddd,s	%f76,%f78,%f234,%f78
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f98,%f190,%f136,%f190
/*    726 */	sub	%l3,%g3,%l3
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f236,%f84,%f62,%f84
/*    726 */	ldd,s	[%xg17+80],%f44
/*    726 */	sxar1
/*    726 */	ldd	[%l1+%xg19],%f430
/*    726 */	sub	%l4,%g3,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f160,%f104,%f238,%f160
/*    726 */	fmuld,s	%f244,%f244,%f104
/*    726 */	sub	%l5,%g3,%l5
/*    726 */	and	%l4,255,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f80,%f80,%f240
/*    726 */	fsubd,s	%f62,%f152,%f152
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f100,%f214,%f100
/*    726 */	add	%xg7,8,%i0
/*    726 */	sxar1
/*    726 */	fmuld,s	%f90,%f90,%f150
/*    726 */	and	%l5,255,%l5
/*    726 */	sllx	%l4,4,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f90,%f90,%f90,%f32
/*    726 */	fmuld,s	%f184,%f206,%f206
/*    726 */	sllx	%l5,4,%l5
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%g4],%f64
/*    726 */	fsubd,s	%f62,%f186,%f186
/*    726 */	sxar2
/*    726 */	fsubd,s	%f78,%f44,%f78
/*    726 */	ldd	[%l5+%g4],%f320
/*    726 */	add	%l4,8,%l4
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f236,%f236
/*    726 */	fmaddd,s	%f84,%f84,%f84,%f48
/*    726 */	sxar1
/*    726 */	ldd	[%l0+%xg21],%f298
/*    726 */	add	%l5,8,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f104,%f104,%f244,%f104
/*    726 */	fnmsubd,sc	%f122,%f62,%f192,%f192
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f164,%f208,%f164
/*    726 */	fpmaddx,s	%f162,%f118,%f120,%f162
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%g4],%f74
/*    726 */	fmaddd,s	%f152,%f188,%f248,%f152
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f330
/*    726 */	fsubd,s	%f174,%f254,%f174
/*    726 */	and	%l3,255,%l3
/*    726 */	sxar1
/*    726 */	ldd,s	[%o7+96],%f72
/*    726 */	sllx	%l3,4,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f98,%f190,%f138,%f190
/*    726 */	fmaddd,s	%f32,%f206,%f206,%f32
/*    726 */	sxar1
/*    726 */	ldd	[%i0+%g4],%f82
/*    726 */	sub	%l7,%g3,%l7
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f100,%f134,%f54
/*    726 */	fmaddd,s	%f186,%f78,%f44,%f186
/*    726 */	sub	%l6,%g3,%l6
/*    726 */	and	%l7,255,%l7
/*    726 */	sxar2
/*    726 */	fmuld,s	%f84,%f84,%f158
/*    726 */	fmaddd,s	%f48,%f236,%f236,%f48
/*    726 */	sxar2
/*    726 */	std	%f416,[%xg11+88]
/*    726 */	fmaddd,s	%f104,%f240,%f80,%f104
/*    726 */	and	%l6,255,%l6
/*    726 */	sxar2
/*    726 */	fsubd,s	%f42,%f52,%f42
/*    726 */	std	%f160,[%xg11+80]
/*    726 */	sxar1
/*    726 */	fmuld,s	%f64,%f98,%f98
/*    726 */	sllx	%l6,4,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f164,%f134,%f66
/*    726 */	ldd	[%xg7+%g4],%f76
/*    726 */	sxar2
/*    726 */	ldd	[%l6+%g4],%f332
/*    726 */	fdtox,s	%f200,%f200
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f174,%f254,%f174
/*    726 */	std	%f152,[%xg16+80]
/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f162,%f124,%f110,%f162
/*    726 */	sllx	%l7,4,%l7
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f150,%f150,%f90,%f150
/*    726 */	std	%f408,[%xg16+88]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f100,%f54,%f136,%f54
/*    726 */	std	%f186,[%xg17+80]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f158,%f158,%f84,%f158
/*    726 */	std	%f442,[%xg17+88]
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f104,%f94,%f176
/*    726 */	ldd	[%l7+%g4],%f78
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f164,%f66,%f136,%f66
/*    726 */	ldd	[%l3+%g4],%f334
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f98,%f190,%f74,%f98
/*    726 */	frcpad,s	%f174,%f216
/*    726 */	sxar1
/*    726 */	fnmsubd,s	%f196,%f58,%f62,%f58
/*    726 */	add	%l6,8,%l6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f150,%f32,%f206,%f150
/*    726 */	fmaddd,s	%f100,%f54,%f138,%f54
/*    726 */	sxar2
/*    726 */	ldd	[%l6+%g4],%f338
/*    726 */	fmuld,s	%f76,%f100,%f100
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f148,%f118,%f120,%f148
/*    726 */	fmaddd,s	%f158,%f48,%f236,%f158
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f104,%f176,%f194
/*    726 */	fpmaddx,s	%f154,%f118,%f120,%f154
/*    726 */	add	%l7,8,%l7
/*    726 */	add	%l3,8,%l3
/*    726 */	sxar2
/*    726 */	ldd	[%l7+%g4],%f84
/*    726 */	fmaddd,s	%f164,%f66,%f138,%f66
/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f340
/*    726 */	fmuld,s	%f78,%f164,%f164
/*    726 */	sxar2
/*    726 */	faddd,s	%f64,%f98,%f64
/*    726 */	fpmaddx,s	%f162,%f128,%f62,%f162
/*    726 */	add	%o5,56,%o5
/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f150,%f94,%f206
/*    726 */	fmaddd,sc	%f114,%f178,%f116,%f208
/*    726 */	ldsw	[%o5+-4032],%i2
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f100,%f54,%f82,%f100
/*    726 */	fmaddd,s	%f68,%f42,%f52,%f42
/*    726 */	ldsw	[%o5+-4028],%i3
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f148,%f124,%f110,%f148
/*    726 */	fcmpleed,s	%f158,%f94,%f210
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f192,%f226,%f226
/*    726 */	fmaddd,sc	%f114,%f194,%f116,%f214
/*    726 */	sxar2
/*    726 */	ldd	[%o4+%xg22],%f142
/*    726 */	ldd	[%l2+%xg22],%f398
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f154,%f124,%f110,%f154
/*    726 */	fmaddd,s	%f164,%f66,%f84,%f164
/*    726 */	sxar1
/*    726 */	ldd	[%xg14+%xg24],%f88
/*    726 */	srl	%i2,%g0,%i2
/*    726 */	sxar2
/*    726 */	fmuld,s	%f162,%f64,%f162
/*    726 */	ldd	[%l0+%xg24],%f344
/*    726 */	sxar1
/*    726 */	ldd	[%xg14+%xg25],%f90
/*    726 */	srl	%i3,%g0,%i3
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f150,%f206,%f218
/*    726 */	ldd	[%l0+%xg25],%f346
/*    726 */	sxar2
/*    726 */	ldd	[%o4+%xg23],%f98
/*    726 */	ldd	[%l2+%xg23],%f354
/*    726 */	sxar2
/*    726 */	frcpad,s	%f42,%f82
/*    726 */	faddd,s	%f76,%f100,%f76
/*    726 */	sxar1
/*    726 */	add	%i2,%i2,%xg7
/*    726 */	add	%i3,%i3,%i4
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f148,%f128,%f62,%f148
/*    726 */	fselmovd,s	%f110,%f158,%f210,%f222
/*    726 */	sxar1
/*    726 */	add	%xg7,%i2,%xg7
/*    726 */	add	%i4,%i3,%i4
/*    726 */	sxar2
/*    726 */	fdtox,s	%f208,%f208
/*    726 */	fdtox,s	%f214,%f214
/*    726 */	sxar1
/*    726 */	sllx	%xg7,4,%xg7
/*    726 */	sllx	%i4,4,%i4
/*    726 */	sxar2
/*    726 */	faddd,s	%f78,%f164,%f78
/*    726 */	fpmaddx,s	%f154,%f128,%f62,%f154
/*    726 */	sxar2
/*    726 */	fmovd,s	%f170,%f186
/*    726 */	ldd	[%xg7+%xg18],%f160
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg18],%f416
/*    726 */	fmaddd,sc	%f130,%f192,%f226,%f192
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f162,%f146,%f162
/*    726 */	std	%f442,[%o0+%fp]
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f108,%f112,%f108
/*    726 */	fsubd,s	%f90,%f88,%f90
/*    726 */	sxar2
/*    726 */	std	%f186,[%g5+%fp]
/*    726 */	fsubd,s	%f142,%f98,%f142
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f82,%f42,%f62,%f42
/*    726 */	ldd	[%xg5+%xg26],%f146
/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg26],%f402
/*    726 */	fmuld,s	%f148,%f76,%f148
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f222,%f116,%f234
/*    726 */	ldd	[%xg5+%xg27],%f254
/*    726 */	sxar2
/*    726 */	fxtod,s	%f208,%f236
/*    726 */	ldd	[%xg6+%xg27],%f510
/*    726 */	sxar2
/*    726 */	ldd	[%o4+%xg28],%f164
/*    726 */	fxtod,s	%f214,%f238
/*    726 */	sxar2
/*    726 */	ldd	[%l2+%xg28],%f420
/*    726 */	fmuld,s	%f154,%f78,%f154
/*    726 */	sxar2
/*    726 */	fmovd,s	%f172,%f188
/*    726 */	ldd	[%o4+%xg29],%f152
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f192,%f134,%f248
/*    726 */	ldd	[%l2+%xg29],%f408
/*    726 */	sxar2
/*    726 */	std	%f188,[%o2+%fp]
/*    726 */	fselmovd,s	%f140,%f162,%f108,%f162
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f68,%f90,%f88,%f90
/*    726 */	std	%f444,[%o3+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f220,%f142,%f98,%f142
/*    726 */	fselmovd,s	%f110,%f246,%f250,%f246
/*    726 */	sxar2
/*    726 */	fxtod,s	%f200,%f250
/*    726 */	fcmpgeed,s	%f228,%f112,%f228
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+96],%f186
/*    726 */	std	%f156,[%xg30+%fp]
/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f212,%f212
/*    726 */	fsubd,s	%f254,%f146,%f254
/*    726 */	sxar2
/*    726 */	std	%f412,[%xg31+%fp]
/*    726 */	fnmsubd,sc	%f122,%f62,%f238,%f238
/*    726 */	sxar1
/*    726 */	fselmovd,s	%f110,%f154,%f182,%f154
/*    726 */	ldx	[%g5+%fp],%o4
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+96],%f188
/*    726 */	fcmpgeed,s	%f38,%f112,%f38
/*    726 */	sxar2
/*    726 */	fsubd,s	%f164,%f152,%f164
/*    726 */	ldd	[%xg7+%xg19],%f34
/*    726 */	ldx	[%o0+%fp],%i0
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f162,%f162
/*    726 */	frcpad,s	%f90,%f252
/*    726 */	ldx	[%o2+%fp],%l3
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg20],%f52
/*    726 */	fsubd,s	%f142,%f186,%f142
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f82,%f82
/*    726 */	ldd	[%l1+%xg20],%f308
/*    726 */	ldx	[%o3+%fp],%l2
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f42,%f42,%f42,%f84
/*    726 */	fselmovd,s	%f140,%f246,%f228,%f246
/*    726 */	sub	%o4,%g3,%o4
/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%l4
/*    726 */	fmaddd,sc	%f126,%f212,%f36,%f36
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f202,%f56,%f56
/*    726 */	ldx	[%xg31+%fp],%l5
/*    726 */	and	%o4,255,%o4
/*    726 */	sxar2
/*    726 */	fsubd,s	%f224,%f188,%f224
/*    726 */	fmaddd,s	%f232,%f254,%f146,%f254
/*    726 */	sxar1
/*    726 */	ldd	[%xg9+%xg21],%f54
/*    726 */	sllx	%o4,4,%o4
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f154,%f38,%f154
/*    726 */	fmaddd,s	%f220,%f164,%f152,%f220
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f192,%f248,%f136,%f248
/*    726 */	sub	%l2,%g3,%l2
/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f252,%f90,%f62,%f90
/*    726 */	ldd,s	[%xg17+96],%f190
/*    726 */	sxar1
/*    726 */	ldd	[%i4+%xg19],%f290
/*    726 */	sub	%l4,%g3,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f142,%f186,%f162
/*    726 */	fmuld,s	%f42,%f42,%f80
/*    726 */	sub	%l5,%g3,%l5
/*    726 */	and	%l4,255,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f84,%f82,%f82,%f84
/*    726 */	fsubd,s	%f62,%f246,%f246
/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f130,%f202,%f56,%f202
/*    726 */	add	%o4,8,%l6
/*    726 */	sxar1
/*    726 */	fmuld,s	%f58,%f58,%f240
/*    726 */	and	%l5,255,%l5
/*    726 */	add	%o7,112,%o7
/*    726 */	sllx	%l4,4,%l4
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f58,%f58,%f58,%f244
/*    726 */	fmuld,s	%f184,%f196,%f196
/*    726 */	sllx	%l5,4,%l5
/*    726 */	ldd	[%l4+%g4],%f56
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f154,%f154
/*    726 */	fsubd,s	%f220,%f190,%f220
/*    726 */	sxar1
/*    726 */	ldd	[%l5+%g4],%f312
/*    726 */	add	%l4,8,%l4
/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f252,%f252
/*    726 */	fmaddd,s	%f90,%f90,%f90,%f44
/*    726 */	sxar1
/*    726 */	ldd	[%l1+%xg21],%f310
/*    726 */	add	%l5,8,%l5
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f80,%f80,%f42,%f80
/*    726 */	fnmsubd,sc	%f122,%f62,%f236,%f236
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f212,%f36,%f212
/*    726 */	fpmaddx,s	%f156,%f118,%f120,%f156
/*    726 */	sxar2
/*    726 */	ldd	[%l4+%g4],%f64
/*    726 */	fmaddd,s	%f246,%f224,%f188,%f246
/*    726 */	sxar2
/*    726 */	ldd	[%l5+%g4],%f320
/*    726 */	fsubd,s	%f34,%f160,%f34
/*    726 */	and	%l2,255,%l2
/*    726 */	sxar1
/*    726 */	ldd,s	[%o7],%f76
/*    726 */	sllx	%l2,4,%l2
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f192,%f248,%f138,%f248
/*    726 */	fmaddd,s	%f244,%f196,%f196,%f244
/*    726 */	sxar1
/*    726 */	ldd	[%l6+%g4],%f98
/*    726 */	sub	%l3,%g3,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f202,%f134,%f38
/*    726 */	fmaddd,s	%f154,%f220,%f190,%f154
/*    726 */	sub	%i0,%g3,%i0
/*    726 */	and	%l3,255,%l3
/*    726 */	sxar2
/*    726 */	fmuld,s	%f90,%f90,%f48
/*    726 */	fmaddd,s	%f44,%f252,%f252,%f44
/*    726 */	sxar2
/*    726 */	std	%f418,[%xg11+104]
/*    726 */	fmaddd,s	%f80,%f84,%f82,%f80
/*    726 */	and	%i0,255,%i0
/*    726 */	sxar2
/*    726 */	fsubd,s	%f54,%f52,%f54
/*    726 */	std	%f162,[%xg11+96]
/*    726 */	sxar1
/*    726 */	fmuld,s	%f56,%f192,%f192
/*    726 */	sllx	%i0,4,%i0
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f212,%f134,%f42
/*    726 */	ldd	[%o4+%g4],%f108
/*    726 */	sxar2
/*    726 */	ldd	[%i0+%g4],%f364
/*    726 */	fdtox,s	%f234,%f234
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f76,%f34,%f160,%f34
/*    726 */	std	%f246,[%xg16+96]
/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f156,%f124,%f110,%f156
/*    726 */	sllx	%l3,4,%l3
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f240,%f240,%f58,%f240
/*    726 */	std	%f502,[%xg16+104]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f38,%f136,%f38
/*    726 */	add	%xg17,112,%xg17
/*    726 */	sxar2
/*    726 */	std	%f154,[%xg17+-16]
/*    726 */	fmaddd,s	%f48,%f48,%f90,%f48
/*    726 */	sxar2
/*    726 */	add	%xg16,112,%xg16
/*    726 */	add	%xg11,112,%xg11
/*    726 */	sxar2
/*    726 */	std	%f410,[%xg17+-8]
/*    726 */	fcmpleed,s	%f80,%f94,%f58
/*    726 */	sxar2
/*    726 */	sub	%xg8,7,%xg8
/*    726 */	cmp	%xg8,15
/*    726 */	bge,pt	%icc, .L681
	nop


.L835:


/*    726 */	sxar1
/*    726 */	ldd	[%l3+%g4],%f84

/*    726 */	add	%l3,8,%l3


/*    726 */	sxar2
/*    726 */	fmovd,s	%f214,%f246
/*    726 */	fmovd,s	%f200,%f32



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f212,%f42,%f136,%f42
/*    726 */	fmovd,s	%f208,%f36

/*    726 */	add	%l2,8,%o4



/*    726 */	sxar2
/*    726 */	ldd	[%l2+%g4],%f340
/*    726 */	fmaddd,sc	%f126,%f236,%f178,%f178


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f172,%f118,%f120,%f172
/*    726 */	add	%xg17,16,%l2


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f100
/*    726 */	fmaddd,s	%f72,%f54,%f52,%f54


/*    726 */	sxar2
/*    726 */	ldd	[%o4+%g4],%f356
/*    726 */	fselmovd,s	%f110,%f148,%f96,%f148



/*    726 */	sxar2
/*    726 */	add	%xg11,16,%o4
/*    726 */	fmaddd,s	%f192,%f248,%f64,%f192


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f250,%f250
/*    726 */	ldd	[%xg5+%xg22],%f154


/*    726 */	sxar2
/*    726 */	sub	%xg8,1,%o4
/*    726 */	fselmovd,s	%f110,%f80,%f58,%f66


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f156,%f128,%f62,%f156
/*    726 */	add	%xg16,16,%l4





/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg22],%f410
/*    726 */	std	%f502,[%o0+%fp]

/*    726 */	add	%i0,8,%i0


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f50,%f112,%f50
/*    726 */	fmaddd,sc	%f126,%f238,%f194,%f194


/*    726 */	sxar1
/*    726 */	std	%f246,[%g5+%fp]

/*    726 */	add	%o5,8,%o5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f212,%f42,%f138,%f42
/*    726 */	fmuld,s	%f84,%f212,%f212

/*    726 */	std	%f32,[%o2+%fp]

/*    726 */	add	%o7,16,%o7


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f236,%f178,%f236
/*    726 */	fpmaddxhi,s	%f172,%f124,%f110,%f172


/*    726 */	sxar2
/*    726 */	std	%f288,[%o3+%fp]
/*    726 */	frcpad,s	%f54,%f78


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f46,%f112,%f46
/*    726 */	faddd,s	%f56,%f192,%f56


/*    726 */	sxar2
/*    726 */	std	%f36,[%xg30+%fp]
/*    726 */	fmaddd,sc	%f126,%f250,%f180,%f180


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f66,%f116,%f82
/*    726 */	std	%f292,[%xg31+%fp]


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f70,%f112,%f70
/*    726 */	fpmaddx,s	%f208,%f118,%f120,%f208


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f238,%f194,%f238
/*    726 */	ldd	[%xg5+%xg23],%f152



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg23],%f408
/*    726 */	ldd	[%xg5+%xg28],%f182


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f212,%f42,%f100,%f212
/*    726 */	fmaddd,s	%f240,%f244,%f196,%f240


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f236,%f134,%f96
/*    726 */	fpmaddx,s	%f172,%f128,%f62,%f172



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg28],%f438
/*    726 */	fnmsubd,s	%f78,%f54,%f62,%f54


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f78,%f78
/*    726 */	ldd	[%xg5+%xg29],%f178


/*    726 */	sxar2
/*    726 */	fmuld,s	%f156,%f56,%f156
/*    726 */	fmaddd,sc	%f130,%f250,%f180,%f250



/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%xg29],%f434
/*    726 */	fdtox,s	%f82,%f82


/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%o4
/*    726 */	ldx	[%xg31+%fp],%l2


/*    726 */	sxar2
/*    726 */	fsubd,s	%f154,%f152,%f154
/*    726 */	fmovd,s	%f234,%f162


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f218,%f116,%f74
/*    726 */	ldx	[%g5+%fp],%xg5


/*    726 */	sxar2
/*    726 */	ldx	[%o0+%fp],%xg6
/*    726 */	faddd,s	%f84,%f212,%f84

/*    726 */	ldx	[%o2+%fp],%l3


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f148,%f46,%f148
/*    726 */	fmaddd,s	%f236,%f96,%f136,%f96

/*    726 */	ldx	[%o3+%fp],%l4


/*    726 */	sxar2
/*    726 */	fsubd,s	%f182,%f178,%f182
/*    726 */	fmaddd,s	%f54,%f54,%f54,%f142

/*    726 */	sxar1
/*    726 */	fmuld,s	%f54,%f54,%f146

/*    726 */	sub	%o4,%g3,%o4

/*    726 */	sub	%l2,%g3,%l2


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f156,%f102,%f156
/*    726 */	fmaddd,sc	%f132,%f250,%f134,%f160

/*    726 */	and	%o4,255,%o4

/*    726 */	and	%l2,255,%l2

/*    726 */	sxar1
/*    726 */	ldd	[%xg9+%xg24],%f88


/*    726 */	sllx	%o4,4,%o4

/*    726 */	sllx	%l2,4,%l2



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f232,%f154,%f152,%f154
/*    726 */	ldd	[%o4+%g4],%f188

/*    726 */	add	%o4,8,%o4

/*    726 */	sxar1
/*    726 */	ldd	[%l2+%g4],%f444

/*    726 */	add	%l2,8,%l2


/*    726 */	sxar1
/*    726 */	ldd	[%o4+%g4],%f194

/*    726 */	sub	%l3,%g3,%l3

/*    726 */	sub	%l4,%g3,%l4


/*    726 */	sxar2
/*    726 */	fmuld,s	%f172,%f84,%f172
/*    726 */	fmaddd,s	%f236,%f96,%f138,%f96

/*    726 */	sxar1
/*    726 */	ldd	[%l2+%g4],%f450

/*    726 */	and	%l4,255,%l4



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f232,%f182,%f178,%f232
/*    726 */	fmaddd,s	%f142,%f78,%f78,%f142

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f146,%f146,%f54,%f146

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	std	%f338,[%o0+%fp]
/*    726 */	ldd	[%l1+%xg24],%f344


/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	fmuld,s	%f188,%f236,%f236
/*    726 */	fmaddd,s	%f250,%f160,%f136,%f160


/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg25],%f90
/*    726 */	fselmovd,s	%f140,%f156,%f50,%f156

/*    726 */	sxar1
/*    726 */	fpmaddxhi,s	%f208,%f124,%f110,%f208

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	fdtox,s	%f74,%f74
/*    726 */	sub	%xg5,%g3,%xg5


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f38,%f138,%f38
/*    726 */	std	%f82,[%g5+%fp]



/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg25],%f346
/*    726 */	sub	%xg6,%g3,%xg6


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f172,%f144,%f172
/*    726 */	fsubd,s	%f62,%f148,%f148


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f216,%f174,%f62,%f174
/*    726 */	ldd,s	[%xg11],%f190


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16],%f244
/*    726 */	fmuld,s	%f108,%f202,%f202


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f146,%f142,%f78,%f146
/*    726 */	ldd	[%l4+%g4],%f486

/*    726 */	sxar1
/*    726 */	ldd,s	[%xg17],%f246

/*    726 */	add	%l4,8,%l4

/*    726 */	sxar1
/*    726 */	ldd	[%l3+%g4],%f230


/*    726 */	add	%l3,8,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f236,%f96,%f194,%f236
/*    726 */	fmaddd,s	%f250,%f160,%f138,%f160


/*    726 */	sxar2
/*    726 */	fsubd,s	%f90,%f88,%f90
/*    726 */	fsubd,s	%f62,%f156,%f156


/*    726 */	sxar2
/*    726 */	and	%xg5,255,%xg5
/*    726 */	ldd	[%i0+%g4],%f354




/*    726 */	sxar2
/*    726 */	fsubd,s	%f154,%f190,%f154
/*    726 */	and	%xg6,255,%xg6

/*    726 */	ldd	[%l3+%g4],%f46


/*    726 */	sxar2
/*    726 */	fsubd,s	%f254,%f244,%f254
/*    726 */	sllx	%xg5,4,%xg5


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f172,%f70,%f172
/*    726 */	ldd	[%l4+%g4],%f302



/*    726 */	sxar2
/*    726 */	fsubd,s	%f232,%f246,%f232
/*    726 */	sllx	%xg6,4,%xg6


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f170,%f118,%f120,%f170
/*    726 */	fpmaddx,s	%f208,%f128,%f62,%f208


/*    726 */	sxar2
/*    726 */	std	%f162,[%o2+%fp]
/*    726 */	fcmpleed,s	%f146,%f94,%f192


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg20],%f32
/*    726 */	add	%xg5,8,%o4


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f200,%f118,%f120,%f200
/*    726 */	ldd	[%i4+%xg20],%f288



/*    726 */	sxar2
/*    726 */	add	%xg6,8,%l2
/*    726 */	fmuld,s	%f230,%f250,%f250


/*    726 */	sxar2
/*    726 */	faddd,s	%f188,%f236,%f188
/*    726 */	fmaddd,sc	%f132,%f238,%f134,%f186


/*    726 */	sxar2
/*    726 */	fxtod,s	%f74,%f220
/*    726 */	ldd	[%xg7+%xg21],%f36



/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg21],%f292
/*    726 */	fmaddd,s	%f156,%f154,%f190,%f156


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f148,%f254,%f244,%f148
/*    726 */	fmaddd,s	%f72,%f90,%f88,%f90


/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg22],%f88
/*    726 */	fsubd,s	%f62,%f172,%f172


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f48,%f44,%f252,%f48
/*    726 */	fmuld,s	%f174,%f174,%f224


/*    726 */	sxar2
/*    726 */	std	%f418,[%o3+%fp]
/*    726 */	fcmpleed,s	%f240,%f94,%f204


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f146,%f192,%f228
/*    726 */	ldd	[%xg12+%xg22],%f344



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f38,%f98,%f202
/*    726 */	ldd	[%xg10+%xg23],%f84


/*    726 */	sxar2
/*    726 */	fmuld,s	%f208,%f188,%f208
/*    726 */	fpmaddxhi,s	%f170,%f124,%f110,%f170


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f200,%f124,%f110,%f200
/*    726 */	ldd	[%xg12+%xg23],%f340




/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f186,%f136,%f186
/*    726 */	ldd	[%xg10+%xg26],%f98



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f250,%f160,%f46,%f250
/*    726 */	fnmsubd,sc	%f122,%f62,%f220,%f220


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg26],%f354
/*    726 */	fmaddd,s	%f172,%f232,%f246,%f172



/*    726 */	sxar2
/*    726 */	frcpad,s	%f90,%f164
/*    726 */	std	%f412,[%xg11+8]


/*    726 */	sxar2
/*    726 */	fxtod,s	%f234,%f96
/*    726 */	fmaddd,s	%f174,%f174,%f174,%f226


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f224,%f174,%f224
/*    726 */	std	%f148,[%xg16]


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f48,%f94,%f212
/*    726 */	fselmovd,s	%f110,%f208,%f166,%f208


/*    726 */	sxar2
/*    726 */	std	%f74,[%xg30+%fp]
/*    726 */	fselmovd,s	%f110,%f240,%f204,%f248


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f228,%f116,%f44
/*    726 */	ldd	[%xg10+%xg27],%f100


/*    726 */	sxar2
/*    726 */	faddd,s	%f108,%f202,%f108
/*    726 */	fpmaddx,s	%f170,%f128,%f62,%f170




/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%xg27],%f356
/*    726 */	faddd,s	%f230,%f250,%f230


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f200,%f128,%f62,%f200
/*    726 */	std	%f172,[%xg17]


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%g4],%f42
/*    726 */	fmaddd,s	%f238,%f186,%f138,%f186


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f220,%f218,%f218
/*    726 */	fnmsubd,s	%f164,%f90,%f62,%f90


/*    726 */	sxar2
/*    726 */	std	%f156,[%xg11]
/*    726 */	fnmsubd,sc	%f122,%f62,%f96,%f96


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f216,%f216
/*    726 */	fselmovd,s	%f110,%f48,%f212,%f252


/*    726 */	sxar2
/*    726 */	std	%f404,[%xg16+8]
/*    726 */	fsubd,s	%f36,%f32,%f36


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f248,%f116,%f52
/*    726 */	std	%f428,[%xg17+8]


/*    726 */	sxar2
/*    726 */	fdtox,s	%f44,%f44
/*    726 */	fsubd,s	%f88,%f84,%f88


/*    726 */	sxar2
/*    726 */	std	%f330,[%xg31+%fp]
/*    726 */	ldd	[%xg6+%g4],%f298

/*    726 */	ldd	[%o4+%g4],%f54



/*    726 */	sxar2
/*    726 */	fmuld,s	%f170,%f108,%f170
/*    726 */	fsubd,s	%f100,%f98,%f100



/*    726 */	sxar2
/*    726 */	ldd	[%l2+%g4],%f310
/*    726 */	ldd	[%xg10+%xg28],%f174


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f220,%f218,%f220
/*    726 */	fmuld,s	%f200,%f230,%f200


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f164,%f164
/*    726 */	ldd	[%xg12+%xg28],%f430



/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%xg29],%f166
/*    726 */	fmaddd,sc	%f126,%f96,%f222,%f222


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f90,%f90,%f90,%f196
/*    726 */	fmuld,s	%f90,%f90,%f198


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg24],%f64
/*    726 */	ldd	[%xg12+%xg29],%f422



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f226,%f216,%f216,%f226
/*    726 */	ldd	[%i4+%xg24],%f320



/*    726 */	sxar2
/*    726 */	fmuld,s	%f42,%f238,%f238
/*    726 */	fmaddd,sc	%f114,%f252,%f116,%f50

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f76,%f36,%f32,%f36

/*    726 */	ldx	[%g5+%fp],%o4

/*    726 */	ldx	[%o0+%fp],%l2



/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f86,%f112,%f86
/*    726 */	fdtox,s	%f52,%f52


/*    726 */	sxar2
/*    726 */	ldx	[%o2+%fp],%xg5
/*    726 */	ldx	[%o3+%fp],%xg6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f242,%f88,%f84,%f88
/*    726 */	fmaddd,s	%f242,%f100,%f98,%f100


/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%xg10
/*    726 */	ldx	[%xg31+%fp],%xg12


/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg25],%f70
/*    726 */	fselmovd,s	%f110,%f170,%f106,%f170


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f60,%f112,%f60
/*    726 */	ldd	[%i4+%xg25],%f326



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f200,%f168,%f200
/*    726 */	fcmpgeed,s	%f92,%f112,%f92

/*    726 */	sub	%o4,%g3,%o4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f238,%f186,%f54,%f238
/*    726 */	fsubd,s	%f174,%f166,%f174


/*    726 */	sxar2
/*    726 */	sub	%xg5,%g3,%xg5
/*    726 */	sub	%xg6,%g3,%xg6


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f220,%f134,%f156
/*    726 */	std	%f300,[%o0+%fp]


/*    726 */	sxar2
/*    726 */	and	%xg5,255,%xg5
/*    726 */	fmaddd,sc	%f130,%f96,%f222,%f96


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f196,%f164,%f164,%f196
/*    726 */	fmaddd,s	%f198,%f198,%f90,%f198



/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+16],%f180
/*    726 */	and	%xg6,255,%xg6


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f224,%f226,%f216,%f224
/*    726 */	fdtox,s	%f50,%f50


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+16],%f186
/*    726 */	sllx	%xg6,4,%xg6


/*    726 */	sxar2
/*    726 */	frcpad,s	%f36,%f108
/*    726 */	fselmovd,s	%f140,%f208,%f86,%f208


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+16],%f190
/*    726 */	sllx	%xg5,4,%xg5


/*    726 */	sxar2
/*    726 */	fxtod,s	%f52,%f154
/*    726 */	fselmovd,s	%f140,%f170,%f60,%f170


/*    726 */	sxar2
/*    726 */	sub	%xg10,%g3,%xg10
/*    726 */	ldd	[%xg5+%g4],%f216


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f200,%f92,%f200
/*    726 */	fmaddd,s	%f242,%f174,%f166,%f242


/*    726 */	sxar2
/*    726 */	sub	%xg12,%g3,%xg12
/*    726 */	ldd	[%xg6+%g4],%f472


/*    726 */	sxar1
/*    726 */	fmaddd,s	%f220,%f156,%f136,%f156

/*    726 */	std	%f44,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	and	%xg10,255,%xg10
/*    726 */	fmaddd,sc	%f132,%f96,%f134,%f194


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f198,%f196,%f164,%f198
/*    726 */	fxtod,s	%f82,%f90


/*    726 */	sxar2
/*    726 */	and	%xg12,255,%xg12
/*    726 */	sllx	%xg10,4,%xg10



/*    726 */	sxar2
/*    726 */	fsubd,s	%f88,%f180,%f88
/*    726 */	fsubd,s	%f100,%f186,%f100


/*    726 */	sxar2
/*    726 */	sllx	%xg12,4,%xg12
/*    726 */	ldd	[%xg10+%g4],%f196


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f108,%f36,%f62,%f36
/*    726 */	fsubd,s	%f62,%f208,%f208


/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%g4],%f452
/*    726 */	add	%xg10,8,%xg10


/*    726 */	std	%f50,[%o2+%fp]


/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f154,%f154
/*    726 */	fsubd,s	%f62,%f170,%f170


/*    726 */	sxar2
/*    726 */	add	%xg12,8,%xg12
/*    726 */	fsubd,s	%f62,%f200,%f200


/*    726 */	sxar2
/*    726 */	fsubd,s	%f242,%f190,%f242
/*    726 */	add	%xg5,8,%xg5


/*    726 */	sxar2
/*    726 */	add	%xg6,8,%xg6
/*    726 */	fsubd,s	%f70,%f64,%f70


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f220,%f156,%f138,%f156
/*    726 */	ldd	[%xg10+%g4],%f226


/*    726 */	sxar2
/*    726 */	add	%xg17,32,%xg10
/*    726 */	ldd	[%xg12+%g4],%f482



/*    726 */	sxar2
/*    726 */	fmuld,s	%f216,%f96,%f202
/*    726 */	fmaddd,s	%f96,%f194,%f136,%f194


/*    726 */	sxar2
/*    726 */	add	%xg16,32,%xg12
/*    726 */	fpmaddx,s	%f214,%f118,%f120,%f214


/*    726 */	sxar2
/*    726 */	fxtod,s	%f44,%f144
/*    726 */	ldd	[%xg5+%g4],%f250


/*    726 */	sxar2
/*    726 */	add	%xg11,32,%xg10
/*    726 */	fnmsubd,sc	%f122,%f62,%f90,%f90


/*    726 */	sxar2
/*    726 */	fxtod,s	%f50,%f160
/*    726 */	ldd	[%xg6+%g4],%f506



/*    726 */	sxar2
/*    726 */	sub	%xg8,2,%xg12
/*    726 */	ldd	[%xg13+%xg26],%f162


/*    726 */	sxar2
/*    726 */	fmuld,s	%f184,%f108,%f108
/*    726 */	fmaddd,s	%f36,%f36,%f36,%f182

/*    726 */	sub	%l2,%g3,%l2



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg26],%f418
/*    726 */	fmaddd,s	%f208,%f88,%f180,%f208


/*    726 */	sxar2
/*    726 */	fmuld,s	%f36,%f36,%f188
/*    726 */	add	%xg17,48,%xg10


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg27],%f164
/*    726 */	fmaddd,sc	%f126,%f154,%f248,%f248


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f170,%f100,%f186,%f170
/*    726 */	add	%xg16,48,%xg12


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f76,%f70,%f64,%f70
/*    726 */	std	%f306,[%o3+%fp]

/*    726 */	sxar1
/*    726 */	fmaddd,s	%f200,%f242,%f190,%f200

/*    726 */	and	%o4,255,%o4



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg27],%f420
/*    726 */	fpmaddx,s	%f74,%f118,%f120,%f74

/*    726 */	sxar1
/*    726 */	fpmaddx,s	%f234,%f118,%f120,%f234

/*    726 */	and	%l2,255,%l2


/*    726 */	sxar2
/*    726 */	fmuld,s	%f196,%f220,%f220
/*    726 */	ldd	[%xg13+%xg22],%f32


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f96,%f194,%f138,%f96
/*    726 */	add	%xg11,48,%xg10


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f214,%f124,%f110,%f214
/*    726 */	frcpad,s	%f34,%f78


/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg22],%f288
/*    726 */	sub	%xg8,3,%xg12



/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f144,%f144
/*    726 */	fmaddd,s	%f182,%f108,%f108,%f182


/*    726 */	sllx	%o4,4,%o4


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg23],%f254
/*    726 */	fmaddd,s	%f188,%f188,%f36,%f188

/*    726 */	sxar1
/*    726 */	fmaddd,sc	%f126,%f90,%f66,%f66

/*    726 */	sllx	%l2,4,%l2




/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg23],%f510
/*    726 */	fnmsubd,sc	%f122,%f62,%f160,%f160


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f154,%f248,%f154
/*    726 */	add	%o4,8,%xg5



/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%xg28],%f38
/*    726 */	frcpad,s	%f70,%f178


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f74,%f124,%f110,%f74
/*    726 */	std	%f464,[%xg11+24]


/*    726 */	sxar2
/*    726 */	add	%l2,8,%xg6
/*    726 */	fpmaddxhi,s	%f234,%f124,%f110,%f234


/*    726 */	sxar2
/*    726 */	std	%f52,[%xg30+%fp]
/*    726 */	fmaddd,s	%f220,%f156,%f226,%f220


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f224,%f94,%f102
/*    726 */	std	%f170,[%xg16+16]


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f202,%f96,%f250,%f202
/*    726 */	faddd,s	%f42,%f238,%f42


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f214,%f128,%f62,%f214
/*    726 */	std	%f200,[%xg17+16]


/*    726 */	sxar2
/*    726 */	fnmsubd,s	%f78,%f34,%f62,%f34
/*    726 */	fmaddd,s	%f188,%f182,%f108,%f188



/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%xg28],%f294
/*    726 */	fmaddd,sc	%f130,%f90,%f66,%f90


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f160,%f252,%f252
/*    726 */	ldd	[%xg13+%xg29],%f36


/*    726 */	sxar2
/*    726 */	std	%f208,[%xg11+16]
/*    726 */	fmaddd,sc	%f126,%f144,%f228,%f228


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f154,%f134,%f232
/*    726 */	fnmsubd,s	%f178,%f70,%f62,%f70


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f74,%f128,%f62,%f74
/*    726 */	std	%f426,[%xg16+24]


/*    726 */	sxar2
/*    726 */	std	%f456,[%xg17+24]
/*    726 */	fpmaddx,s	%f234,%f128,%f62,%f234


/*    726 */	sxar2
/*    726 */	faddd,s	%f196,%f220,%f196
/*    726 */	fselmovd,s	%f110,%f224,%f102,%f148


/*    726 */	sxar2
/*    726 */	std	%f308,[%xg31+%fp]
/*    726 */	faddd,s	%f216,%f202,%f216


/*    726 */	sxar2
/*    726 */	fmuld,s	%f214,%f42,%f214
/*    726 */	fmuld,s	%f34,%f34,%f218

/*    726 */	sxar1
/*    726 */	ldd	[%xg15+%xg29],%f292


/*    726 */	ldd	[%o4+%g4],%f60


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f34,%f34,%f34,%f222
/*    726 */	fmuld,s	%f184,%f78,%f78



/*    726 */	sxar2
/*    726 */	ldd	[%l2+%g4],%f316
/*    726 */	add	%xg17,64,%o4


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f188,%f94,%f230
/*    726 */	fmaddd,sc	%f132,%f90,%f134,%f242


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg26],%f156
/*    726 */	fmaddd,s	%f154,%f232,%f136,%f232


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f144,%f228,%f144
/*    726 */	ldd,s	[%xg16+32],%f86


/*    726 */	sxar2
/*    726 */	fmuld,s	%f70,%f70,%f238
/*    726 */	fmaddd,sc	%f130,%f160,%f252,%f160


/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+32],%f88
/*    726 */	ldx	[%xg30+%fp],%xg13


/*    726 */	sxar2
/*    726 */	ldx	[%xg31+%fp],%xg15
/*    726 */	fmuld,s	%f74,%f196,%f74


/*    726 */	sxar2
/*    726 */	fmuld,s	%f234,%f216,%f234
/*    726 */	fmuld,s	%f184,%f178,%f178


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f70,%f70,%f70,%f236
/*    726 */	ldx	[%g5+%fp],%xg10


/*    726 */	sxar2
/*    726 */	fsubd,s	%f164,%f162,%f164
/*    726 */	fmaddd,s	%f222,%f78,%f78,%f222


/*    726 */	sxar2
/*    726 */	ldx	[%o0+%fp],%xg12
/*    726 */	fmaddd,s	%f218,%f218,%f34,%f218

/*    726 */	sxar1
/*    726 */	fselmovd,s	%f110,%f188,%f230,%f244

/*    726 */	ldx	[%o2+%fp],%l3


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f148,%f116,%f246
/*    726 */	fsubd,s	%f32,%f254,%f32


/*    726 */	sxar2
/*    726 */	sub	%xg13,%g3,%xg13
/*    726 */	sub	%xg15,%g3,%xg15


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f90,%f242,%f136,%f242
/*    726 */	and	%xg13,255,%xg13


/*    726 */	sxar2
/*    726 */	and	%xg15,255,%xg15
/*    726 */	fmaddd,s	%f154,%f232,%f138,%f232


/*    726 */	sxar2
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sllx	%xg15,4,%xg15


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f144,%f134,%f42
/*    726 */	fmaddd,sc	%f132,%f160,%f134,%f46


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f214,%f176,%f214
/*    726 */	fcmpgeed,s	%f104,%f112,%f104


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%g4],%f54
/*    726 */	add	%xg13,8,%xg13


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f150,%f112,%f150
/*    726 */	fmaddd,s	%f238,%f238,%f70,%f238


/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%g4],%f310
/*    726 */	add	%xg15,8,%xg15


/*    726 */	sxar1
/*    726 */	fselmovd,s	%f110,%f74,%f206,%f74

/*    726 */	ldx	[%o3+%fp],%l4


/*    726 */	sxar2
/*    726 */	sub	%xg10,%g3,%xg10
/*    726 */	fselmovd,s	%f110,%f234,%f210,%f234


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f198,%f94,%f56
/*    726 */	fmaddd,s	%f236,%f178,%f178,%f236

/*    726 */	sxar1
/*    726 */	ldd	[%xg13+%g4],%f70

/*    726 */	sub	%l3,%g3,%l3


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f158,%f112,%f158
/*    726 */	fmaddd,sc	%f114,%f244,%f116,%f34


/*    726 */	sxar2
/*    726 */	sub	%xg12,%g3,%xg12
/*    726 */	ldd	[%xg15+%g4],%f326



/*    726 */	sxar2
/*    726 */	fsubd,s	%f38,%f36,%f38
/*    726 */	fmaddd,s	%f218,%f222,%f78,%f218

/*    726 */	sxar1
/*    726 */	and	%xg10,255,%xg10

/*    726 */	and	%l3,255,%l3


/*    726 */	sxar2
/*    726 */	fdtox,s	%f246,%f246
/*    726 */	fpmaddx,s	%f52,%f118,%f120,%f52

/*    726 */	sub	%l4,%g3,%l4


/*    726 */	sxar2
/*    726 */	and	%xg12,255,%xg12
/*    726 */	fmaddd,s	%f40,%f164,%f162,%f164

/*    726 */	sxar1
/*    726 */	fmuld,s	%f54,%f154,%f154

/*    726 */	and	%l4,255,%l4


/*    726 */	sxar2
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	fmaddd,s	%f40,%f32,%f254,%f32

/*    726 */	sllx	%l4,4,%l4


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f90,%f242,%f138,%f242
/*    726 */	ldd,s	[%xg11+32],%f84

/*    726 */	sxar1
/*    726 */	sllx	%xg12,4,%xg12

/*    726 */	sllx	%l3,4,%l3


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f144,%f42,%f136,%f42
/*    726 */	fmaddd,s	%f160,%f46,%f136,%f46


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f74,%f150,%f74
/*    726 */	fselmovd,s	%f140,%f214,%f104,%f214


/*    726 */	sxar2
/*    726 */	ldd	[%xg5+%g4],%f78
/*    726 */	add	%xg10,8,%xg5


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f198,%f56,%f142
/*    726 */	fmaddd,s	%f238,%f236,%f178,%f238


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%g4],%f334
/*    726 */	add	%xg12,8,%xg6




/*    726 */	sxar2
/*    726 */	fdtox,s	%f34,%f34
/*    726 */	fmaddd,s	%f40,%f38,%f36,%f40


/*    726 */	sxar2
/*    726 */	add	%l3,8,%xg13
/*    726 */	ldd	[%xg10+%g4],%f98


/*    726 */	sxar2
/*    726 */	fmuld,s	%f60,%f90,%f90
/*    726 */	fpmaddx,s	%f82,%f118,%f120,%f82


/*    726 */	sxar2
/*    726 */	add	%l4,8,%xg15
/*    726 */	ldd	[%xg12+%g4],%f354



/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f218,%f94,%f64
/*    726 */	fxtod,s	%f246,%f66


/*    726 */	sxar2
/*    726 */	ldd	[%l3+%g4],%f100
/*    726 */	fpmaddxhi,s	%f52,%f124,%f110,%f52


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f154,%f232,%f70,%f154
/*    726 */	ldd	[%l4+%g4],%f356



/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f234,%f158,%f234
/*    726 */	ldd	[%xg5+%g4],%f108


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f144,%f42,%f138,%f42
/*    726 */	fsubd,s	%f62,%f214,%f214


/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%g4],%f364
/*    726 */	fmaddd,s	%f160,%f46,%f138,%f46




/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f74,%f74
/*    726 */	fsubd,s	%f164,%f86,%f164


/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%g4],%f150
/*    726 */	fsubd,s	%f32,%f84,%f32


/*    726 */	sxar2
/*    726 */	fcmpleed,s	%f238,%f94,%f92
/*    726 */	ldd	[%xg15+%g4],%f406



/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f142,%f116,%f152
/*    726 */	fpmaddx,s	%f44,%f118,%f120,%f44



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg26],%f412
/*    726 */	fmaddd,s	%f90,%f242,%f78,%f90


/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f82,%f124,%f110,%f82
/*    726 */	ldd	[%xg14+%xg27],%f158


/*    726 */	sxar2
/*    726 */	fsubd,s	%f40,%f88,%f40
/*    726 */	fselmovd,s	%f110,%f218,%f64,%f96



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg27],%f414
/*    726 */	fnmsubd,sc	%f122,%f62,%f66,%f66


/*    726 */	sxar2
/*    726 */	fmuld,s	%f98,%f144,%f144
/*    726 */	ldd	[%xg14+%xg22],%f166


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f50,%f118,%f120,%f50
/*    726 */	fmuld,s	%f100,%f160,%f160



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg22],%f422
/*    726 */	fsubd,s	%f62,%f234,%f234


/*    726 */	sxar2
/*    726 */	faddd,s	%f54,%f154,%f54
/*    726 */	ldd	[%xg14+%xg28],%f176


/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f52,%f128,%f62,%f52
/*    726 */	fmaddd,s	%f214,%f164,%f86,%f214


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg23],%f164
/*    726 */	fmaddd,s	%f74,%f32,%f84,%f74


/*    726 */	sxar2
/*    726 */	std	%f290,[%o0+%fp]
/*    726 */	fselmovd,s	%f110,%f238,%f92,%f104


/*    726 */	sxar2
/*    726 */	fdtox,s	%f152,%f152
/*    726 */	faddd,s	%f60,%f90,%f60



/*    726 */	sxar2
/*    726 */	ldd	[%l0+%xg23],%f420
/*    726 */	fpmaddx,s	%f82,%f128,%f62,%f82


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f114,%f96,%f116,%f106
/*    726 */	ldd	[%l0+%xg28],%f432



/*    726 */	sxar2
/*    726 */	fmaddd,s	%f144,%f42,%f108,%f144
/*    726 */	fpmaddxhi,s	%f44,%f124,%f110,%f44


/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%xg29],%f174
/*    726 */	fmaddd,s	%f234,%f40,%f88,%f234


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f66,%f148,%f148
/*    726 */	ldd	[%l0+%xg29],%f430



/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f50,%f124,%f110,%f50
/*    726 */	fmaddd,s	%f160,%f46,%f150,%f160




/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg26],%f190
/*    726 */	fmuld,s	%f52,%f54,%f52


/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg26],%f446
/*    726 */	fmaddd,sc	%f114,%f104,%f116,%f162



/*    726 */	sxar2
/*    726 */	fxtod,s	%f34,%f154
/*    726 */	fsubd,s	%f158,%f156,%f158

/*    726 */	std	%f34,[%g5+%fp]


/*    726 */	sxar2
/*    726 */	fmuld,s	%f82,%f60,%f82
/*    726 */	fdtox,s	%f106,%f106


/*    726 */	sxar2
/*    726 */	std	%f330,[%xg11+40]
/*    726 */	ldd	[%xg9+%xg27],%f194


/*    726 */	sxar2
/*    726 */	faddd,s	%f98,%f144,%f98
/*    726 */	fpmaddx,s	%f44,%f128,%f62,%f44



/*    726 */	sxar2
/*    726 */	std	%f214,[%xg16+32]
/*    726 */	fmaddd,sc	%f130,%f66,%f148,%f66


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f240,%f112,%f240
/*    726 */	std	%f234,[%xg17+32]


/*    726 */	sxar2
/*    726 */	faddd,s	%f100,%f160,%f100
/*    726 */	fpmaddx,s	%f50,%f128,%f62,%f50


/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f52,%f204,%f52
/*    726 */	fsubd,s	%f166,%f164,%f166


/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg27],%f450
/*    726 */	fxtod,s	%f152,%f168


/*    726 */	sxar2
/*    726 */	fdtox,s	%f162,%f162
/*    726 */	fnmsubd,sc	%f122,%f62,%f154,%f154


/*    726 */	sxar2
/*    726 */	std	%f152,[%o2+%fp]
/*    726 */	fmaddd,s	%f68,%f158,%f156,%f158


/*    726 */	sxar2
/*    726 */	std	%f74,[%xg11+32]
/*    726 */	fmuld,s	%f44,%f98,%f44


/*    726 */	sxar2
/*    726 */	fxtod,s	%f106,%f170
/*    726 */	std	%f470,[%xg16+40]


/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f66,%f134,%f172
/*    726 */	fselmovd,s	%f110,%f82,%f58,%f82


/*    726 */	sxar2
/*    726 */	std	%f490,[%xg17+40]
/*    726 */	fmuld,s	%f50,%f100,%f50


/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f80,%f112,%f80
/*    726 */	fselmovd,s	%f140,%f52,%f240,%f52


/*    726 */	sxar2
/*    726 */	fmaddd,s	%f68,%f166,%f164,%f166
/*    726 */	std	%f408,[%o3+%fp]



/*    726 */	sxar2
/*    726 */	fnmsubd,sc	%f122,%f62,%f168,%f168
/*    726 */	ldd,s	[%xg11+48],%f180
/*    726 */	sxar2
/*    726 */	std	%f246,[%xg30+%fp]
/*    726 */	fselmovd,s	%f110,%f50,%f212,%f50
/*    726 */	sxar2
/*    726 */	add	%xg11,64,%xg6
/*    726 */	fmaddd,sc	%f126,%f168,%f142,%f142
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f48,%f112,%f48
/*    726 */	fsubd,s	%f176,%f174,%f176
/*    726 */	sxar2
/*    726 */	std	%f502,[%xg31+%fp]
/*    726 */	sub	%xg8,4,%xg10
/*    726 */	sxar2
/*    726 */	fxtod,s	%f162,%f178
/*    726 */	add	%xg17,80,%xg12
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f82,%f80,%f82
/*    726 */	add	%xg16,80,%xg13
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+48],%f182
/*    726 */	fmaddd,s	%f66,%f172,%f136,%f172
/*    726 */	sxar2
/*    726 */	add	%xg11,80,%xg14
/*    726 */	sub	%xg8,5,%xg15
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f52,%f52
/*    726 */	fsubd,s	%f166,%f180,%f166
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+48],%f186
/*    726 */	ldd	[%xg9+%xg22],%f212
/*    726 */	sxar2
/*    726 */	add	%xg16,64,%xg5
/*    726 */	fnmsubd,sc	%f122,%f62,%f170,%f170
/*    726 */	sxar2
/*    726 */	ldd	[%xg9+%xg23],%f210
/*    726 */	fmaddd,sc	%f126,%f154,%f244,%f244
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f246,%f118,%f120,%f246
/*    726 */	ldd	[%xg9+%xg28],%f220
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f168,%f142,%f168
/*    726 */	add	%xg17,96,%xg5
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f50,%f48,%f50
/*    726 */	fmaddd,s	%f68,%f176,%f174,%f68
/*    726 */	sxar2
/*    726 */	ldx	[%o2+%fp],%xg10
/*    726 */	ldx	[%o3+%fp],%xg6
/*    726 */	sxar2
/*    726 */	fsubd,s	%f158,%f182,%f158
/*    726 */	fnmsubd,sc	%f122,%f62,%f178,%f178
/*    726 */	sxar2
/*    726 */	ldx	[%xg30+%fp],%xg12
/*    726 */	ldx	[%xg31+%fp],%xg13
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f66,%f172,%f138,%f172
/*    726 */	ldx	[%g5+%fp],%xg15
/*    726 */	sxar2
/*    726 */	ldx	[%o0+%fp],%xg14
/*    726 */	fsubd,s	%f62,%f82,%f82
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f152,%f118,%f120,%f152
/*    726 */	fmaddd,s	%f52,%f166,%f180,%f52
/*    726 */	sxar1
/*    726 */	std	%f162,[%o2+%fp]
/*    726 */	mov	%o7,%o4
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f170,%f96,%f96
/*    726 */	sub	%xg6,%g3,%xg6
/*    726 */	sxar2
/*    726 */	sub	%xg10,%g3,%xg10
/*    726 */	fmaddd,sc	%f130,%f154,%f244,%f154
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f246,%f124,%f110,%f246
/*    726 */	and	%xg6,255,%xg6
/*    726 */	sxar2
/*    726 */	and	%xg10,255,%xg10
/*    726 */	fmaddd,sc	%f132,%f168,%f134,%f196
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f50,%f50
/*    726 */	fsubd,s	%f68,%f186,%f68
/*    726 */	sxar2
/*    726 */	sllx	%xg6,4,%xg6
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	sxar2
/*    726 */	sub	%xg12,%g3,%xg12
/*    726 */	sub	%xg13,%g3,%xg13
/*    726 */	sxar2
/*    726 */	ldd	[%xg10+%g4],%f208
/*    726 */	ldd	[%xg6+%g4],%f464
/*    726 */	sxar2
/*    726 */	and	%xg12,255,%xg12
/*    726 */	and	%xg13,255,%xg13
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f126,%f178,%f104,%f104
/*    726 */	fmaddd,s	%f82,%f158,%f182,%f82
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f152,%f124,%f110,%f152
/*    726 */	ldd	[%xg9+%xg29],%f216
/*    726 */	sxar2
/*    726 */	sllx	%xg12,4,%xg12
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%g4],%f204
/*    726 */	ldd	[%xg13+%g4],%f460
/*    726 */	sxar2
/*    726 */	add	%xg12,8,%xg12
/*    726 */	add	%xg13,8,%xg13
/*    726 */	sxar2
/*    726 */	add	%xg10,8,%xg10
/*    726 */	add	%xg6,8,%xg6
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f168,%f196,%f136,%f196
/*    726 */	fmuld,s	%f208,%f168,%f206
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f170,%f96,%f170
/*    726 */	fmaddd,s	%f50,%f68,%f186,%f50
/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%g4],%f222
/*    726 */	sub	%xg14,%g3,%xg14
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f246,%f128,%f62,%f246
/*    726 */	std	%f418,[%o3+%fp]
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f154,%f134,%f200
/*    726 */	and	%xg14,255,%xg14
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f130,%f178,%f104,%f178
/*    726 */	ldd	[%xg13+%g4],%f478
/*    726 */	sxar2
/*    726 */	fmuld,s	%f204,%f66,%f66
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f152,%f128,%f62,%f152
/*    726 */	ldd	[%xg10+%g4],%f228
/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%g4],%f484
/*    726 */	add	%xg14,8,%xg9
/*    726 */	sxar2
/*    726 */	fsubd,s	%f194,%f190,%f194
/*    726 */	sub	%xg15,%g3,%xg15
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f224,%f112,%f224
/*    726 */	std	%f308,[%xg11+56]
/*    726 */	sxar2
/*    726 */	and	%xg15,255,%xg15
/*    726 */	sub	%xg8,6,%xg8
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f168,%f196,%f138,%f168
/*    726 */	ldd	[%xg14+%g4],%f488
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f170,%f134,%f202
/*    726 */	sllx	%xg15,4,%xg15
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f44,%f192,%f44
/*    726 */	std	%f82,[%xg16+48]
/*    726 */	sxar2
/*    726 */	add	%xg15,8,%xg6
/*    726 */	fcmpgeed,s	%f146,%f112,%f146
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f154,%f200,%f136,%f200
/*    726 */	std	%f50,[%xg17+48]
/*    726 */	sxar2
/*    726 */	fmaddd,sc	%f132,%f178,%f134,%f214
/*    726 */	std	%f106,[%xg30+%fp]
/*    726 */	sxar1
/*    726 */	fmaddd,s	%f66,%f172,%f222,%f66
/*    726 */	mov	%o5,%o7
/*    726 */	sxar2
/*    726 */	fcmpgeed,s	%f198,%f112,%f198
/*    726 */	std	%f52,[%xg11+48]
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f34,%f118,%f120,%f34
/*    726 */	fpmaddx,s	%f106,%f118,%f120,%f226
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f72,%f194,%f190,%f194
/*    726 */	std	%f338,[%xg16+56]
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg22],%f468
/*    726 */	fpmaddx,s	%f162,%f118,%f120,%f162
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f206,%f168,%f228,%f206
/*    726 */	fmaddd,s	%f170,%f202,%f136,%f202
/*    726 */	sxar2
/*    726 */	std	%f306,[%xg17+56]
/*    726 */	fcmpgeed,s	%f218,%f112,%f218
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f154,%f200,%f138,%f200
/*    726 */	std	%f362,[%xg31+%fp]
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f44,%f146,%f44
/*    726 */	ldd	[%l1+%xg23],%f466
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f178,%f214,%f136,%f214
/*    726 */	faddd,s	%f204,%f66,%f204
/*    726 */	sxar2
/*    726 */	ldd	[%l1+%xg28],%f476
/*    726 */	ldd	[%l1+%xg29],%f472
/*    726 */	sxar2
/*    726 */	fpmaddxhi,s	%f34,%f124,%f110,%f34
/*    726 */	fcmpgeed,s	%f188,%f112,%f188
/*    726 */	sxar2
/*    726 */	ldd	[%xg15+%g4],%f232
/*    726 */	fpmaddxhi,s	%f226,%f124,%f110,%f226
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg16+64],%f236
/*    726 */	fcmpgeed,s	%f238,%f112,%f238
/*    726 */	sxar2
/*    726 */	ldd	[%xg6+%g4],%f242
/*    726 */	fpmaddxhi,s	%f162,%f124,%f110,%f162
/*    726 */	sxar2
/*    726 */	faddd,s	%f208,%f206,%f208
/*    726 */	fsubd,s	%f212,%f210,%f212
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f170,%f202,%f138,%f202
/*    726 */	ldd	[%xg9+%g4],%f498
/*    726 */	sxar2
/*    726 */	fsubd,s	%f220,%f216,%f220
/*    726 */	ldx	[%o2+%fp],%xg12
/*    726 */	sxar2
/*    726 */	ldx	[%o3+%fp],%xg10
/*    726 */	fsubd,s	%f62,%f44,%f44
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f178,%f214,%f138,%f214
/*    726 */	ldx	[%xg30+%fp],%xg13
/*    726 */	sxar2
/*    726 */	ldx	[%xg31+%fp],%xg14
/*    726 */	fmuld,s	%f246,%f204,%f246
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg11+64],%f234
/*    726 */	fmuld,s	%f232,%f154,%f154
/*    726 */	sxar2
/*    726 */	fsubd,s	%f194,%f236,%f194
/*    726 */	ldd	[%xg7+%xg26],%f244
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+64],%f240
/*    726 */	fpmaddx,s	%f34,%f128,%f62,%f34
/*    726 */	sxar2
/*    726 */	fpmaddx,s	%f226,%f128,%f62,%f226
/*    726 */	sub	%xg10,%g3,%xg10
/*    726 */	sxar2
/*    726 */	sub	%xg12,%g3,%xg12
/*    726 */	fpmaddx,s	%f162,%f128,%f62,%f162
/*    726 */	sxar2
/*    726 */	fmuld,s	%f152,%f208,%f152
/*    726 */	fmaddd,s	%f72,%f212,%f210,%f212
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg26],%f500
/*    726 */	sub	%xg13,%g3,%xg13
/*    726 */	sxar2
/*    726 */	sub	%xg14,%g3,%xg14
/*    726 */	fmaddd,s	%f72,%f220,%f216,%f72
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg27],%f248
/*    726 */	and	%xg13,255,%xg13
/*    726 */	sxar2
/*    726 */	and	%xg14,255,%xg14
/*    726 */	ldd	[%i4+%xg27],%f504
/*    726 */	sxar2
/*    726 */	and	%xg10,255,%xg10
/*    726 */	and	%xg12,255,%xg12
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f246,%f102,%f246
/*    726 */	ldd	[%xg7+%xg22],%f32
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f154,%f200,%f242,%f154
/*    726 */	sllx	%xg13,4,%xg13
/*    726 */	sxar2
/*    726 */	sllx	%xg14,4,%xg14
/*    726 */	ldd	[%xg13+%g4],%f250
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f44,%f194,%f236,%f44
/*    726 */	sllx	%xg10,4,%xg10
/*    726 */	sxar2
/*    726 */	sllx	%xg12,4,%xg12
/*    726 */	ldd	[%xg14+%g4],%f506
/*    726 */	sxar2
/*    726 */	add	%xg13,8,%xg13
/*    726 */	ldd	[%xg12+%g4],%f252
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f152,%f56,%f152
/*    726 */	add	%xg14,8,%xg14
/*    726 */	sxar2
/*    726 */	ldd	[%xg13+%g4],%f36
/*    726 */	ldd	[%xg10+%g4],%f508
/*    726 */	sxar2
/*    726 */	add	%xg12,8,%xg12
/*    726 */	fsubd,s	%f212,%f234,%f212
/*    726 */	sxar2
/*    726 */	fsubd,s	%f72,%f240,%f72
/*    726 */	add	%xg10,8,%xg10
/*    726 */	sxar2
/*    726 */	ldd	[%xg14+%g4],%f292
/*    726 */	fsubd,s	%f248,%f244,%f248
/*    726 */	sxar2
/*    726 */	ldd	[%xg12+%g4],%f38
/*    726 */	ldd	[%xg10+%g4],%f294
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f246,%f224,%f246
/*    726 */	ldd	[%i4+%xg22],%f288
/*    726 */	sxar2
/*    726 */	faddd,s	%f232,%f154,%f232
/*    726 */	fmuld,s	%f250,%f170,%f170
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg23],%f254
/*    726 */	fmuld,s	%f252,%f178,%f178
/*    726 */	sxar2
/*    726 */	ldd	[%i4+%xg23],%f510
/*    726 */	fselmovd,s	%f140,%f152,%f198,%f152
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg28],%f42
/*    726 */	ldd	[%i4+%xg28],%f298
/*    726 */	sxar2
/*    726 */	ldd	[%xg7+%xg29],%f40
/*    726 */	ldd	[%i4+%xg29],%f296
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f76,%f248,%f244,%f248
/*    726 */	fsubd,s	%f62,%f246,%f246
/*    726 */	sxar2
/*    726 */	fmuld,s	%f34,%f232,%f34
/*    726 */	fmaddd,s	%f170,%f202,%f36,%f170
/*    726 */	sxar2
/*    726 */	fsubd,s	%f32,%f254,%f32
/*    726 */	fmaddd,s	%f178,%f214,%f38,%f178
/*    726 */	sxar2
/*    726 */	fsubd,s	%f42,%f40,%f42
/*    726 */	fsubd,s	%f62,%f152,%f152
/*    726 */	sxar2
/*    726 */	std	%f44,[%xg16+64]
/*    726 */	std	%f300,[%xg16+72]
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f246,%f212,%f234,%f246
/*    726 */	fselmovd,s	%f110,%f34,%f230,%f34
/*    726 */	sxar2
/*    726 */	faddd,s	%f250,%f170,%f250
/*    726 */	fmaddd,s	%f76,%f32,%f254,%f32
/*    726 */	sxar2
/*    726 */	faddd,s	%f252,%f178,%f252
/*    726 */	fmaddd,s	%f76,%f42,%f40,%f76
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f152,%f72,%f240,%f152
/*    726 */	ldd,s	[%xg16+80],%f44
/*    726 */	sxar2
/*    726 */	std	%f502,[%xg11+72]
/*    726 */	fselmovd,s	%f140,%f34,%f188,%f34
/*    726 */	sxar2
/*    726 */	fmuld,s	%f226,%f250,%f226
/*    726 */	fmuld,s	%f162,%f252,%f162
/*    726 */	sxar2
/*    726 */	fsubd,s	%f248,%f44,%f248
/*    726 */	std	%f152,[%xg17+64]
/*    726 */	sxar2
/*    726 */	std	%f246,[%xg11+64]
/*    726 */	std	%f408,[%xg17+72]
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f34,%f34
/*    726 */	fselmovd,s	%f110,%f226,%f64,%f226
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f110,%f162,%f92,%f162
/*    726 */	ldd,s	[%xg11+80],%f46
/*    726 */	sxar2
/*    726 */	ldd,s	[%xg17+80],%f48
/*    726 */	fmaddd,s	%f34,%f248,%f44,%f34
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f226,%f218,%f226
/*    726 */	fsubd,s	%f32,%f46,%f32
/*    726 */	sxar2
/*    726 */	fselmovd,s	%f140,%f162,%f238,%f162
/*    726 */	fsubd,s	%f76,%f48,%f76
/*    726 */	sxar2
/*    726 */	fsubd,s	%f62,%f226,%f226
/*    726 */	fsubd,s	%f62,%f162,%f162
/*    726 */	sxar2
/*    726 */	std	%f34,[%xg16+80]
/*    726 */	std	%f290,[%xg16+88]
/*    726 */	sxar2
/*    726 */	add	%xg16,96,%xg16
/*    726 */	fmaddd,s	%f226,%f32,%f46,%f226
/*    726 */	sxar2
/*    726 */	fmaddd,s	%f162,%f76,%f48,%f162
/*    726 */	std	%f482,[%xg11+88]
/*    726 */	sxar2
/*    726 */	std	%f162,[%xg17+80]
/*    726 */	std	%f226,[%xg11+80]
/*    726 */	sxar2
/*    726 */	add	%xg11,96,%xg11
/*    726 */	std	%f418,[%xg17+88]
/*    726 */	sxar1
/*    726 */	mov	%xg5,%xg17

.L831:


.L830:


.L833:
.LSSN1278:


/*    728 */	sxar2
/*    728 */	ldsw	[%o7+-4032],%xg5
/*    728 */	ldsw	[%o7+-4028],%xg6
.LSSN1279:

/*    758 */	add	%o7,8,%o7

.LSSN1280:

/*    756 */	sxar2
/*    756 */	subcc	%xg8,1,%xg8
/*    756 */	ldd,s	[%o4],%f204

.LSSN1281:

.LSSN1282:

/*    755 */	sxar2
/*    755 */	ldd,s	[%xg11],%f222
/*    755 */	ldd,s	[%xg16],%f226
.LSSN1283:

.LSSN1284:

/*    735 */	sxar2
/*    735 */	ldd,s	[%xg17],%f236
/*    735 */	srl	%xg5,%g0,%xg5


/*    735 */	sxar2
/*    735 */	srl	%xg6,%g0,%xg6
/*    735 */	add	%xg5,%xg5,%xg7


/*    735 */	sxar2
/*    735 */	add	%xg6,%xg6,%xg9
/*    735 */	add	%xg7,%xg5,%xg7


/*    735 */	sxar2
/*    735 */	add	%xg9,%xg6,%xg9
/*    735 */	sllx	%xg7,4,%xg7

.LSSN1285:

/*    734 */	sxar2
/*    734 */	sllx	%xg9,4,%xg9
/*    734 */	ldd	[%xg18+%xg7],%f192


.LSSN1286:

/*    741 */	sxar2
/*    741 */	ldd	[%xg18+%xg9],%f448
/*    741 */	ldd	[%xg19+%xg7],%f194


.LSSN1287:

/*    732 */	sxar2
/*    732 */	ldd	[%xg19+%xg9],%f450
/*    732 */	ldd	[%xg20+%xg7],%f196


.LSSN1288:

/*    739 */	sxar2
/*    739 */	ldd	[%xg20+%xg9],%f452
/*    739 */	ldd	[%xg21+%xg7],%f198


.LSSN1289:

/*    740 */	sxar2
/*    740 */	ldd	[%xg21+%xg9],%f454
/*    740 */	ldd	[%xg22+%xg7],%f202


.LSSN1290:

/*    733 */	sxar2
/*    733 */	ldd	[%xg22+%xg9],%f458
/*    733 */	ldd	[%xg23+%xg7],%f200
.LSSN1291:

.LSSN1292:

/*    733 */	sxar2
/*    733 */	fsubd,s	%f194,%f192,%f194
/*    733 */	ldd	[%xg23+%xg9],%f456
.LSSN1293:

.LSSN1294:

.LSSN1295:

/*    736 */	sxar2
/*    736 */	ldd	[%xg24+%xg7],%f206
/*    736 */	ldd	[%xg24+%xg9],%f462
.LSSN1296:

.LSSN1297:

.LSSN1298:

/*    743 */	sxar2
/*    743 */	fsubd,s	%f198,%f196,%f198
/*    743 */	ldd	[%xg25+%xg7],%f208


.LSSN1299:

/*    731 */	sxar2
/*    731 */	ldd	[%xg25+%xg9],%f464
/*    731 */	ldd	[%xg26+%xg7],%f210


.LSSN1300:

/*    756 */	sxar2
/*    756 */	ldd	[%xg26+%xg9],%f466
/*    756 */	fsubd,s	%f202,%f200,%f202
.LSSN1301:


/*    738 */	sxar2
/*    738 */	ldd	[%xg27+%xg7],%f212
/*    738 */	ldd	[%xg27+%xg9],%f468
.LSSN1302:

.LSSN1303:

.LSSN1304:

/*    742 */	sxar2
/*    742 */	fmaddd,s	%f204,%f194,%f192,%f194
/*    742 */	ldd	[%xg28+%xg7],%f218
.LSSN1305:

.LSSN1306:

/*    742 */	sxar2
/*    742 */	fsubd,s	%f208,%f206,%f208
/*    742 */	ldd	[%xg28+%xg9],%f474
.LSSN1307:

.LSSN1308:


/*    742 */	sxar2
/*    742 */	fmaddd,s	%f204,%f198,%f196,%f198
/*    742 */	ldd	[%xg29+%xg7],%f216


.LSSN1309:

/*    755 */	sxar2
/*    755 */	ldd	[%xg29+%xg9],%f472
/*    755 */	fsubd,s	%f212,%f210,%f212
.LSSN1310:


/*    756 */	sxar2
/*    756 */	fmaddd,s	%f204,%f202,%f200,%f202
/*    756 */	frcpad,s	%f194,%f214
.LSSN1311:


/*    757 */	sxar2
/*    757 */	fmaddd,s	%f204,%f208,%f206,%f208
/*    757 */	fsubd,s	%f218,%f216,%f218
.LSSN1312:


/*    755 */	sxar2
/*    755 */	frcpad,s	%f198,%f220
/*    755 */	fmaddd,s	%f204,%f212,%f210,%f212
.LSSN1313:


/*    756 */	sxar2
/*    756 */	fsubd,s	%f202,%f222,%f202
/*    756 */	fnmsubd,s	%f214,%f194,%f62,%f194

.LSSN1314:

/*    757 */	sxar2
/*    757 */	fmuld,s	%f184,%f214,%f214
/*    757 */	frcpad,s	%f208,%f224

.LSSN1315:

/*    755 */	sxar2
/*    755 */	fmaddd,s	%f204,%f218,%f216,%f204
/*    755 */	fnmsubd,s	%f220,%f198,%f62,%f198


/*    755 */	sxar2
/*    755 */	fmuld,s	%f184,%f220,%f220
/*    755 */	fsubd,s	%f212,%f226,%f212
.LSSN1316:


/*    756 */	sxar2
/*    756 */	fmaddd,s	%f194,%f194,%f194,%f228
/*    756 */	fmuld,s	%f194,%f194,%f230
.LSSN1317:


/*    757 */	sxar2
/*    757 */	fnmsubd,s	%f224,%f208,%f62,%f208
/*    757 */	fmuld,s	%f184,%f224,%f224
.LSSN1318:


/*    755 */	sxar2
/*    755 */	fmaddd,s	%f198,%f198,%f198,%f232
/*    755 */	fmuld,s	%f198,%f198,%f234
.LSSN1319:

.LSSN1320:

/*    756 */	sxar2
/*    756 */	fsubd,s	%f204,%f236,%f204
/*    756 */	fmaddd,s	%f228,%f214,%f214,%f228

.LSSN1321:

/*    757 */	sxar2
/*    757 */	fmaddd,s	%f230,%f230,%f194,%f230
/*    757 */	fmaddd,s	%f208,%f208,%f208,%f238

.LSSN1322:

/*    755 */	sxar2
/*    755 */	fmuld,s	%f208,%f208,%f240
/*    755 */	fmaddd,s	%f232,%f220,%f220,%f232

.LSSN1323:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f234,%f234,%f198,%f234
/*    756 */	fmaddd,s	%f230,%f228,%f214,%f230
.LSSN1324:


/*    757 */	sxar2
/*    757 */	fmaddd,s	%f238,%f224,%f224,%f238
/*    757 */	fmaddd,s	%f240,%f240,%f208,%f240
.LSSN1325:

.LSSN1326:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f234,%f232,%f220,%f234
/*    756 */	fcmpleed,s	%f230,%f94,%f242

.LSSN1327:

/*    757 */	sxar2
/*    757 */	fcmpgeed,s	%f230,%f112,%f244
/*    757 */	fmaddd,s	%f240,%f238,%f224,%f240
.LSSN1328:


/*    755 */	sxar2
/*    755 */	fcmpleed,s	%f234,%f94,%f246
/*    755 */	fcmpgeed,s	%f234,%f112,%f248
.LSSN1329:

.LSSN1330:

/*    757 */	sxar2
/*    757 */	fselmovd,s	%f110,%f230,%f242,%f230
/*    757 */	fcmpleed,s	%f240,%f94,%f250

.LSSN1331:

/*    755 */	sxar2
/*    755 */	fcmpgeed,s	%f240,%f112,%f252
/*    755 */	fselmovd,s	%f110,%f234,%f246,%f234
.LSSN1332:

.LSSN1333:

/*    757 */	sxar2
/*    757 */	fmaddd,sc	%f114,%f230,%f116,%f254
/*    757 */	fselmovd,s	%f110,%f240,%f250,%f240
.LSSN1334:

.LSSN1335:

/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f114,%f234,%f116,%f32
/*    756 */	fdtox,s	%f254,%f254
.LSSN1336:

.LSSN1337:

/*    755 */	sxar2
/*    755 */	fmaddd,sc	%f114,%f240,%f116,%f34
/*    755 */	fdtox,s	%f32,%f32
.LSSN1338:



/*    756 */	sxar2
/*    756 */	fxtod,s	%f254,%f36
/*    756 */	fpmaddx,s	%f254,%f118,%f120,%f38

.LSSN1339:

/*    757 */	sxar2
/*    757 */	std	%f254,[%fp+%xg30]
/*    757 */	fdtox,s	%f34,%f34
.LSSN1340:



/*    755 */	sxar2
/*    755 */	fxtod,s	%f32,%f40
/*    755 */	fpmaddx,s	%f32,%f118,%f120,%f42
.LSSN1341:


/*    756 */	sxar2
/*    756 */	fnmsubd,sc	%f122,%f62,%f36,%f36
/*    756 */	fpmaddxhi,s	%f38,%f124,%f110,%f38

.LSSN1342:

/*    757 */	sxar2
/*    757 */	ldx	[%fp+%xg30],%xg10
/*    757 */	fxtod,s	%f34,%f44


.LSSN1343:

/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f34,%f118,%f120,%f46
/*    756 */	std	%f510,[%fp+%xg31]
.LSSN1344:


/*    755 */	sxar2
/*    755 */	fnmsubd,sc	%f122,%f62,%f40,%f40
/*    755 */	fpmaddxhi,s	%f42,%f124,%f110,%f42
.LSSN1345:


/*    756 */	sxar2
/*    756 */	sub	%xg10,%g3,%xg10
/*    756 */	and	%xg10,255,%xg10


/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f126,%f36,%f230,%f230
/*    756 */	fpmaddx,s	%f38,%f128,%f62,%f38

.LSSN1346:

/*    757 */	sxar2
/*    757 */	sllx	%xg10,4,%xg10
/*    757 */	fnmsubd,sc	%f122,%f62,%f44,%f44

.LSSN1347:

/*    756 */	sxar2
/*    756 */	fpmaddxhi,s	%f46,%f124,%f110,%f46
/*    756 */	ldx	[%fp+%xg31],%xg12


/*    756 */	sxar2
/*    756 */	ldd	[%g4+%xg10],%f52
/*    756 */	add	%xg10,8,%xg10
.LSSN1348:

.LSSN1349:

/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f126,%f40,%f234,%f234
/*    756 */	ldd	[%g4+%xg10],%f58
.LSSN1350:

/*    755 */	sxar1
/*    755 */	fpmaddx,s	%f42,%f128,%f62,%f42

/*    755 */	std	%f32,[%fp+%g5]
.LSSN1351:


/*    756 */	sxar2
/*    756 */	sub	%xg12,%g3,%xg12
/*    756 */	fmaddd,sc	%f130,%f36,%f230,%f36

.LSSN1352:

/*    757 */	sxar2
/*    757 */	and	%xg12,255,%xg12
/*    757 */	fmaddd,sc	%f126,%f44,%f240,%f240

.LSSN1353:

/*    756 */	sxar2
/*    756 */	fpmaddx,s	%f46,%f128,%f62,%f46
/*    756 */	sllx	%xg12,4,%xg12
.LSSN1354:

.LSSN1355:

/*    756 */	sxar2
/*    756 */	fmaddd,sc	%f130,%f40,%f234,%f40
/*    756 */	ldd	[%g4+%xg12],%f308



/*    756 */	sxar2
/*    756 */	add	%xg12,8,%xg12
/*    756 */	ldd	[%g4+%xg12],%f314


.LSSN1356:

/*    757 */	sxar2
/*    757 */	fmaddd,sc	%f132,%f36,%f134,%f48
/*    757 */	fmaddd,sc	%f130,%f44,%f240,%f44
.LSSN1357:

.LSSN1358:

/*    755 */	sxar2
/*    755 */	fmuld,s	%f52,%f36,%f50
/*    755 */	fmaddd,sc	%f132,%f40,%f134,%f54
.LSSN1359:

.LSSN1360:

/*    757 */	sxar2
/*    757 */	fmaddd,s	%f36,%f48,%f136,%f48
/*    757 */	fmaddd,sc	%f132,%f44,%f134,%f56
.LSSN1361:

.LSSN1362:

/*    756 */	sxar2
/*    756 */	fmaddd,s	%f40,%f54,%f136,%f54
/*    756 */	fmaddd,s	%f36,%f48,%f138,%f36
.LSSN1363:

.LSSN1364:

/*    755 */	sxar2
/*    755 */	fmaddd,s	%f44,%f56,%f136,%f56
/*    755 */	fmaddd,s	%f40,%f54,%f138,%f54
.LSSN1365:

.LSSN1366:

/*    757 */	sxar2
/*    757 */	fmaddd,s	%f50,%f36,%f58,%f50
/*    757 */	fmaddd,s	%f44,%f56,%f138,%f56
.LSSN1367:


/*    756 */	sxar2
/*    756 */	faddd,s	%f52,%f50,%f52
/*    756 */	fmuld,s	%f38,%f52,%f38


/*    756 */	sxar2
/*    756 */	fselmovd,s	%f110,%f38,%f242,%f38
/*    756 */	fselmovd,s	%f140,%f38,%f244,%f38


/*    756 */	sxar2
/*    756 */	fsubd,s	%f62,%f38,%f38
/*    756 */	fmaddd,s	%f38,%f202,%f222,%f38



/*    756 */	sxar2
/*    756 */	std	%f38,[%xg11]
/*    756 */	std	%f294,[%xg11+8]
.LSSN1368:

.LSSN1369:

/*    755 */	sxar2
/*    755 */	add	%xg11,16,%xg11
/*    755 */	ldx	[%fp+%g5],%xg13


/*    755 */	sxar2
/*    755 */	std	%f288,[%fp+%o0]
/*    755 */	sub	%xg13,%g3,%xg13


/*    755 */	sxar2
/*    755 */	and	%xg13,255,%xg13
/*    755 */	sllx	%xg13,4,%xg13


/*    755 */	sxar2
/*    755 */	ldx	[%fp+%o0],%xg14
/*    755 */	ldd	[%g4+%xg13],%f60


/*    755 */	sxar2
/*    755 */	add	%xg13,8,%xg13
/*    755 */	ldd	[%g4+%xg13],%f64
.LSSN1370:

/*    757 */	std	%f34,[%fp+%o2]
.LSSN1371:


/*    755 */	sxar2
/*    755 */	sub	%xg14,%g3,%xg14
/*    755 */	and	%xg14,255,%xg14


/*    755 */	sxar2
/*    755 */	sllx	%xg14,4,%xg14
/*    755 */	ldd	[%g4+%xg14],%f316



/*    755 */	sxar2
/*    755 */	add	%xg14,8,%xg14
/*    755 */	ldd	[%g4+%xg14],%f320



/*    755 */	sxar2
/*    755 */	fmuld,s	%f60,%f40,%f40
/*    755 */	fmaddd,s	%f40,%f54,%f64,%f40


/*    755 */	sxar2
/*    755 */	faddd,s	%f60,%f40,%f60
/*    755 */	fmuld,s	%f42,%f60,%f42


/*    755 */	sxar2
/*    755 */	fselmovd,s	%f110,%f42,%f246,%f42
/*    755 */	fselmovd,s	%f140,%f42,%f248,%f42


/*    755 */	sxar2
/*    755 */	fsubd,s	%f62,%f42,%f42
/*    755 */	fmaddd,s	%f42,%f212,%f226,%f42



/*    755 */	sxar2
/*    755 */	std	%f42,[%xg16]
/*    755 */	std	%f298,[%xg16+8]
.LSSN1372:

.LSSN1373:

/*    757 */	sxar2
/*    757 */	add	%xg16,16,%xg16
/*    757 */	ldx	[%fp+%o2],%xg15


/*    757 */	sxar2
/*    757 */	std	%f290,[%fp+%o3]
/*    757 */	sub	%xg15,%g3,%xg15


/*    757 */	sxar2
/*    757 */	and	%xg15,255,%xg15
/*    757 */	sllx	%xg15,4,%xg15

/*    757 */	ldx	[%fp+%o3],%o5


/*    757 */	sxar2
/*    757 */	ldd	[%g4+%xg15],%f66
/*    757 */	add	%xg15,8,%xg15

/*    757 */	sxar1
/*    757 */	ldd	[%g4+%xg15],%f68

/*    757 */	sub	%o5,%g3,%o5

/*    757 */	and	%o5,255,%o5

/*    757 */	sllx	%o5,4,%o5

/*    757 */	sxar1
/*    757 */	ldd	[%g4+%o5],%f322

/*    757 */	add	%o5,8,%o5




/*    757 */	sxar2
/*    757 */	ldd	[%g4+%o5],%f324
/*    757 */	fmuld,s	%f66,%f44,%f44


/*    757 */	sxar2
/*    757 */	fmaddd,s	%f44,%f56,%f68,%f44
/*    757 */	faddd,s	%f66,%f44,%f66


/*    757 */	sxar2
/*    757 */	fmuld,s	%f46,%f66,%f46
/*    757 */	fselmovd,s	%f110,%f46,%f250,%f46


/*    757 */	sxar2
/*    757 */	fselmovd,s	%f140,%f46,%f252,%f46
/*    757 */	fsubd,s	%f62,%f46,%f46



/*    757 */	sxar2
/*    757 */	fmaddd,s	%f46,%f204,%f236,%f46
/*    757 */	std	%f46,[%xg17]

.LSSN1374:

/*    758 */	sxar2
/*    758 */	std	%f302,[%xg17+8]
/*    758 */	add	%xg17,16,%xg17

/*    758 */	bne,pt	%icc, .L833
/*    758 */	add	%o4,16,%o4


.L829:

/*    758 */	sxar1
/*    758 */	mov	%xg3,%xg16

.L683:
.LSSN1375:


/*    726 */	sxar2
/*    726 */	sllx	%xg2,3,%xg15
/*    726 */	sllx	%xg2,4,%xg2


/*    726 */	sxar2
/*    726 */	add	%xg15,%xg3,%xg15
/*    726 */	add	%xg2,%xg16,%xg2

/*    726 */	sxar1
/*    726 */	cmp	%xg4,%g0

/*    726 */	be	.L688
	nop


.L684:
.LSSN1376:


/*    728 */	sxar2
/*    728 */	add	%xg15,%fp,%xg15
/*    728 */	sethi	%hi(237952),%xg17
.LSSN1377:


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+984],%f108
/*    756 */	fzero	%f118
.LSSN1378:

.LSSN1379:

/*    733 */	sxar2
/*    733 */	xor	%xg17,-385,%xg17
/*    733 */	sethi	%h44(.LB0+30720144),%xg18
.LSSN1380:

.LSSN1381:

/*    728 */	sxar2
/*    728 */	ldd	[%xg1+976],%f112
/*    728 */	add	%xg15,%xg17,%xg15
.LSSN1382:

.LSSN1383:

/*    756 */	sxar2
/*    756 */	or	%xg18,%m44(.LB0+30720144),%xg18
/*    756 */	ldd	[%xg1+936],%f124
.LSSN1384:

.LSSN1385:

/*    728 */	sxar2
/*    728 */	sllx	%xg18,12,%xg18
/*    728 */	ldsw	[%xg15],%xg25
.LSSN1386:

.LSSN1387:

/*    756 */	sxar2
/*    756 */	sethi	%hi(157952),%xg20
/*    756 */	ldd	[%xg1+968],%f120
.LSSN1388:

.LSSN1389:

/*    729 */	sxar2
/*    729 */	or	%xg18,%l44(.LB0+30720144),%xg18
/*    729 */	add	%xg2,%fp,%xg19
.LSSN1390:

.LSSN1391:

/*    729 */	sxar2
/*    729 */	ldd	[%xg1+960],%f142
/*    729 */	xor	%xg20,-257,%xg20
.LSSN1392:


/*    756 */	sxar2
/*    756 */	sethi	%hi(237968),%xg21
/*    756 */	ldd	[%xg1+944],%f146
.LSSN1393:

.LSSN1394:

/*    756 */	sxar2
/*    756 */	add	%xg19,%xg20,%xg19
/*    756 */	xor	%xg21,-401,%xg21


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+952],%f150
/*    756 */	ldd	[%xg19],%f62

.LSSN1395:

/*    735 */	sxar2
/*    735 */	sethi	%hi(524288),%xg27
/*    735 */	srl	%xg25,%g0,%xg25
.LSSN1396:


/*    756 */	sxar2
/*    756 */	sethi	%h44(__fj_dlogexp2_const_),%xg22
/*    756 */	ldd	[%xg1+1016],%f156
.LSSN1397:

.LSSN1398:

/*    756 */	sxar2
/*    756 */	add	%xg25,%xg25,%xg26
/*    756 */	or	%xg22,%m44(__fj_dlogexp2_const_),%xg22

.LSSN1399:

/*    735 */	sxar2
/*    735 */	ldd	[%xg1+1008],%f152
/*    735 */	add	%xg26,%xg25,%xg26
.LSSN1400:


/*    756 */	sxar2
/*    756 */	sllx	%xg22,12,%xg22
/*    756 */	ldd	[%xg1+1000],%f164
.LSSN1401:

.LSSN1402:

/*    756 */	sxar2
/*    756 */	sllx	%xg26,4,%xg26
/*    756 */	or	%xg22,%l44(__fj_dlogexp2_const_),%xg22

.LSSN1403:

/*    733 */	sxar2
/*    733 */	ldd	[%xg1+1032],%f134
/*    733 */	add	%xg18,%xg26,%xg18
.LSSN1404:

.LSSN1405:

/*    757 */	sxar2
/*    757 */	sethi	%hi(237976),%xg23
/*    757 */	sethi	%hi(237984),%xg24
.LSSN1406:


/*    756 */	sxar2
/*    756 */	ldd	[%xg18+72],%f52
/*    756 */	ldd	[%xg18+24],%f50
.LSSN1407:

.LSSN1408:

/*    757 */	sxar2
/*    757 */	xor	%xg23,-409,%xg23
/*    757 */	xor	%xg24,-417,%xg24
.LSSN1409:


/*    755 */	sxar2
/*    755 */	ldd	[%xg18+56],%f56
/*    755 */	ldd	[%xg18+8],%f54
.LSSN1410:


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+1040],%f130
/*    756 */	ldd	[%xg1+992],%f166


/*    756 */	sxar2
/*    756 */	ldd	[%xg1+1048],%f144
/*    756 */	ldd	[%xg1+1056],%f148
.LSSN1411:

/*    757 */	sxar1
/*    757 */	ldd	[%xg18+88],%f60
.LSSN1412:

/*    756 */	fsubd	%f52,%f50,%f52
.LSSN1413:

/*    757 */	sxar1
/*    757 */	ldd	[%xg18+40],%f58
.LSSN1414:

/*    755 */	fsubd	%f56,%f54,%f56
.LSSN1415:

.LSSN1416:

/*    756 */	sxar2
/*    756 */	ldd	[%xg18+16],%f68
/*    756 */	ldd	[%xg1+1024],%f170


/*    756 */	sxar2
/*    756 */	ldd	[%xg0+%xg2],%f64
/*    756 */	ldd	[%xg18+64],%f70
.LSSN1417:


/*    755 */	sxar2
/*    755 */	ldd	[%xg18],%f76
/*    755 */	ldd	[%g2+%xg2],%f72
.LSSN1418:

/*    757 */	fsubd	%f60,%f58,%f60
.LSSN1419:

.LSSN1420:

/*    757 */	sxar2
/*    757 */	ldd	[%xg18+48],%f78
/*    757 */	ldd	[%xg18+32],%f84
.LSSN1421:

/*    756 */	fmaddd	%f62,%f52,%f50,%f52

.LSSN1422:

/*    757 */	sxar2
/*    757 */	fsubd	%f68,%f64,%f66
/*    757 */	ldd	[%g1+%xg2],%f80
.LSSN1423:

/*    755 */	fmaddd	%f62,%f56,%f54,%f56
.LSSN1424:

.LSSN1425:

/*    757 */	sxar2
/*    757 */	fsubd	%f70,%f68,%f70
/*    757 */	ldd	[%xg18+80],%f86
.LSSN1426:


/*    755 */	sxar2
/*    755 */	fsubd	%f76,%f72,%f74
/*    755 */	fsubd	%f78,%f76,%f78
.LSSN1427:

/*    757 */	fmaddd	%f62,%f60,%f58,%f60


/*    757 */	sxar2
/*    757 */	fsubd	%f84,%f80,%f82
/*    757 */	fsubd	%f86,%f84,%f86
.LSSN1428:

.LSSN1429:

/*    755 */	sxar2
/*    755 */	frcpad	%f52,%f88
/*    755 */	frcpad	%f56,%f90
.LSSN1430:

.LSSN1431:

/*    755 */	sxar2
/*    755 */	fmaddd	%f62,%f70,%f66,%f70
/*    755 */	fmaddd	%f62,%f78,%f74,%f78
.LSSN1432:

.LSSN1433:

/*    756 */	sxar2
/*    756 */	frcpad	%f60,%f92
/*    756 */	fnmsubd	%f88,%f52,%f318,%f52

.LSSN1434:

/*    755 */	sxar2
/*    755 */	fmuld	%f88,%f440,%f88
/*    755 */	fnmsubd	%f90,%f56,%f318,%f56

.LSSN1435:

/*    757 */	sxar2
/*    757 */	fmuld	%f90,%f440,%f90
/*    757 */	fmaddd	%f62,%f86,%f82,%f62


/*    757 */	sxar2
/*    757 */	fnmsubd	%f92,%f60,%f318,%f60
/*    757 */	fmuld	%f92,%f440,%f92
.LSSN1436:


/*    756 */	sxar2
/*    756 */	fmaddd	%f52,%f52,%f52,%f94
/*    756 */	fmuld	%f52,%f52,%f96
.LSSN1437:


/*    755 */	sxar2
/*    755 */	fmaddd	%f56,%f56,%f56,%f98
/*    755 */	fmuld	%f56,%f56,%f100
.LSSN1438:


/*    757 */	sxar2
/*    757 */	fmaddd	%f60,%f60,%f60,%f102
/*    757 */	fmuld	%f60,%f60,%f104
.LSSN1439:


/*    756 */	sxar2
/*    756 */	fmaddd	%f94,%f88,%f88,%f94
/*    756 */	fmaddd	%f96,%f96,%f52,%f96
.LSSN1440:


/*    755 */	sxar2
/*    755 */	fmaddd	%f98,%f90,%f90,%f98
/*    755 */	fmaddd	%f100,%f100,%f56,%f100
.LSSN1441:


/*    757 */	sxar2
/*    757 */	fmaddd	%f102,%f92,%f92,%f102
/*    757 */	fmaddd	%f104,%f104,%f60,%f104
.LSSN1442:

.LSSN1443:

/*    755 */	sxar2
/*    755 */	fmaddd	%f96,%f94,%f88,%f96
/*    755 */	fmaddd	%f100,%f98,%f90,%f100
.LSSN1444:

.LSSN1445:

/*    756 */	sxar2
/*    756 */	fmaddd	%f104,%f102,%f92,%f104
/*    756 */	fcmpleed	%f96,%f108,%f106

.LSSN1446:

/*    755 */	sxar2
/*    755 */	fcmpgeed	%f96,%f112,%f110
/*    755 */	fcmpleed	%f100,%f108,%f114

.LSSN1447:

/*    757 */	sxar2
/*    757 */	fcmpgeed	%f100,%f112,%f116
/*    757 */	fcmpleed	%f104,%f108,%f108

.LSSN1448:

/*    756 */	sxar2
/*    756 */	fcmpgeed	%f104,%f112,%f112
/*    756 */	fselmovd	%f118,%f96,%f106,%f96
.LSSN1449:

.LSSN1450:

/*    757 */	sxar2
/*    757 */	fselmovd	%f118,%f100,%f114,%f100
/*    757 */	fselmovd	%f118,%f104,%f108,%f104
.LSSN1451:

.LSSN1452:

/*    755 */	sxar2
/*    755 */	fmaddd	%f124,%f96,%f120,%f122
/*    755 */	fmaddd	%f124,%f100,%f120,%f126
.LSSN1453:

.LSSN1454:

/*    756 */	sxar2
/*    756 */	fmaddd	%f124,%f104,%f120,%f124
/*    756 */	fdtox	%f122,%f122
.LSSN1455:

.LSSN1456:

/*    757 */	sxar2
/*    757 */	fdtox	%f126,%f126
/*    757 */	fdtox	%f124,%f124
.LSSN1457:


/*    756 */	sxar2
/*    756 */	fxtod	%f122,%f128
/*    756 */	fpmaddx	%f122,%f134,%f130,%f132

.LSSN1458:

/*    755 */	sxar2
/*    755 */	std	%f122,[%fp+%xg21]
/*    755 */	fxtod	%f126,%f136

.LSSN1459:

/*    757 */	sxar2
/*    757 */	fpmaddx	%f126,%f134,%f130,%f138
/*    757 */	fxtod	%f124,%f140

.LSSN1460:

/*    756 */	sxar2
/*    756 */	fpmaddx	%f124,%f134,%f130,%f134
/*    756 */	fsubd	%f128,%f142,%f128


/*    756 */	sxar2
/*    756 */	fpmaddxhi	%f132,%f144,%f118,%f132
/*    756 */	ldx	[%fp+%xg21],%xg28
.LSSN1461:


/*    755 */	sxar2
/*    755 */	fsubd	%f136,%f142,%f136
/*    755 */	fpmaddxhi	%f138,%f144,%f118,%f138

.LSSN1462:

/*    757 */	sxar2
/*    757 */	std	%f126,[%fp+%xg23]
/*    757 */	fsubd	%f140,%f142,%f140

.LSSN1463:

/*    756 */	sxar2
/*    756 */	fpmaddxhi	%f134,%f144,%f118,%f134
/*    756 */	sub	%xg28,%xg27,%xg28


/*    756 */	sxar2
/*    756 */	and	%xg28,255,%xg28
/*    756 */	fmaddd	%f146,%f128,%f96,%f96


/*    756 */	sxar2
/*    756 */	fpmaddx	%f132,%f148,%f318,%f132
/*    756 */	sllx	%xg28,4,%xg28
.LSSN1464:


/*    755 */	sxar2
/*    755 */	fmaddd	%f146,%f136,%f100,%f100
/*    755 */	fpmaddx	%f138,%f148,%f318,%f138
.LSSN1465:


/*    756 */	sxar2
/*    756 */	ldd	[%xg22+%xg28],%f160
/*    756 */	add	%xg28,8,%xg28

.LSSN1466:

/*    757 */	sxar2
/*    757 */	ldd	[%xg22+%xg28],%f168
/*    757 */	fmaddd	%f146,%f140,%f104,%f146

.LSSN1467:

/*    756 */	sxar2
/*    756 */	fpmaddx	%f134,%f148,%f318,%f134
/*    756 */	fmaddd	%f150,%f128,%f96,%f128
.LSSN1468:

.LSSN1469:

/*    757 */	sxar2
/*    757 */	fmaddd	%f150,%f136,%f100,%f136
/*    757 */	fmaddd	%f150,%f140,%f146,%f150
.LSSN1470:


/*    756 */	sxar2
/*    756 */	fmaddd	%f156,%f128,%f152,%f154
/*    756 */	fmuld	%f160,%f128,%f158
.LSSN1471:

.LSSN1472:

/*    757 */	sxar2
/*    757 */	fmaddd	%f156,%f136,%f152,%f162
/*    757 */	fmaddd	%f156,%f150,%f152,%f156
.LSSN1473:

.LSSN1474:

/*    755 */	sxar2
/*    755 */	fmaddd	%f128,%f154,%f164,%f154
/*    755 */	fmaddd	%f136,%f162,%f164,%f162
.LSSN1475:

.LSSN1476:

/*    756 */	sxar2
/*    756 */	fmaddd	%f150,%f156,%f164,%f156
/*    756 */	fmaddd	%f128,%f154,%f166,%f128
.LSSN1477:

.LSSN1478:

/*    757 */	sxar2
/*    757 */	fmaddd	%f136,%f162,%f166,%f162
/*    757 */	fmaddd	%f150,%f156,%f166,%f156
.LSSN1479:


/*    756 */	sxar2
/*    756 */	fmaddd	%f158,%f128,%f168,%f158
/*    756 */	faddd	%f160,%f158,%f160


/*    756 */	sxar2
/*    756 */	fmuld	%f132,%f160,%f132
/*    756 */	fselmovd	%f118,%f132,%f106,%f132


/*    756 */	sxar2
/*    756 */	fselmovd	%f170,%f132,%f110,%f132
/*    756 */	fsubd	%f318,%f132,%f132


/*    756 */	sxar2
/*    756 */	fmaddd	%f132,%f70,%f64,%f132
/*    756 */	std	%f132,[%xg0+%xg2]
.LSSN1480:

.LSSN1481:

/*    757 */	sxar2
/*    757 */	ldx	[%fp+%xg23],%xg29
/*    757 */	std	%f124,[%fp+%xg24]
.LSSN1482:


/*    755 */	sxar2
/*    755 */	sub	%xg29,%xg27,%xg29
/*    755 */	and	%xg29,255,%xg29


/*    755 */	sxar2
/*    755 */	sllx	%xg29,4,%xg29
/*    755 */	ldd	[%xg22+%xg29],%f172


/*    755 */	sxar2
/*    755 */	add	%xg29,8,%xg29
/*    755 */	ldd	[%xg22+%xg29],%f174


/*    755 */	sxar2
/*    755 */	fmuld	%f172,%f136,%f136
/*    755 */	fmaddd	%f136,%f162,%f174,%f136


/*    755 */	sxar2
/*    755 */	faddd	%f172,%f136,%f172
/*    755 */	fmuld	%f138,%f172,%f138


/*    755 */	sxar2
/*    755 */	fselmovd	%f118,%f138,%f114,%f138
/*    755 */	fselmovd	%f170,%f138,%f116,%f138


/*    755 */	sxar2
/*    755 */	fsubd	%f318,%f138,%f138
/*    755 */	fmaddd	%f138,%f78,%f72,%f138

.LSSN1483:

/*    757 */	sxar2
/*    757 */	std	%f138,[%g2+%xg2]
/*    757 */	ldx	[%fp+%xg24],%xg30


/*    757 */	sxar2
/*    757 */	sub	%xg30,%xg27,%xg30
/*    757 */	and	%xg30,255,%xg30


/*    757 */	sxar2
/*    757 */	sllx	%xg30,4,%xg30
/*    757 */	ldd	[%xg22+%xg30],%f176


/*    757 */	sxar2
/*    757 */	add	%xg30,8,%xg30
/*    757 */	ldd	[%xg22+%xg30],%f178


/*    757 */	sxar2
/*    757 */	fmuld	%f176,%f150,%f150
/*    757 */	fmaddd	%f150,%f156,%f178,%f150


/*    757 */	sxar2
/*    757 */	faddd	%f176,%f150,%f176
/*    757 */	fmuld	%f134,%f176,%f134


/*    757 */	sxar2
/*    757 */	fselmovd	%f118,%f134,%f108,%f118
/*    757 */	fselmovd	%f170,%f118,%f112,%f170


/*    757 */	sxar2
/*    757 */	fsubd	%f318,%f170,%f318
/*    757 */	fmaddd	%f318,%f62,%f80,%f318

/*    757 */	sxar1
/*    757 */	std	%f318,[%g1+%xg2]

.L688:
.LSSN1484:

/*    763 */	cmp	%o1,%g0

/*    763 */	ble	.L695
	nop


.L689:


/*    763 */	subcc	%o1,6,%o1

/*    763 */	bneg	.L733
/*    763 */	mov	%g0,%o0


.L736:

/*    763 */	mov	%g2,%g3

/*    763 */	sxar1
/*    763 */	mov	%xg0,%g4

/*    763 */	mov	%g1,%g5

.L690:
.LSSN1485:

/*    765 */	ldx	[%i1+16],%o5
.LSSN1486:

/*    766 */	sxar1
/*    766 */	ldd	[%g3],%f242
.LSSN1487:

/*    769 */	subcc	%o1,6,%o1
.LSSN1488:

/*    765 */	ldx	[%o5+%o0],%o7
.LSSN1489:

.LSSN1490:

/*    767 */	sxar2
/*    767 */	std	%f242,[%o7+56]
/*    767 */	ldd	[%g4],%f244

.LSSN1491:

/*    768 */	sxar2
/*    768 */	std	%f244,[%o7+64]
/*    768 */	ldd	[%g5],%f246

.LSSN1492:

/*    765 */	sxar2
/*    765 */	std	%f246,[%o7+72]
/*    765 */	ldx	[%i1+16],%xg14
.LSSN1493:

.LSSN1494:

/*    765 */	sxar2
/*    765 */	ldd	[%g3+8],%f248
/*    765 */	add	%xg14,8,%xg14

.LSSN1495:

/*    766 */	sxar2
/*    766 */	ldx	[%xg14+%o0],%xg1
/*    766 */	std	%f248,[%xg1+56]
.LSSN1496:


/*    767 */	sxar2
/*    767 */	ldd	[%g4+8],%f250
/*    767 */	std	%f250,[%xg1+64]
.LSSN1497:


/*    768 */	sxar2
/*    768 */	ldd	[%g5+8],%f252
/*    768 */	std	%f252,[%xg1+72]
.LSSN1498:

.LSSN1499:

/*    766 */	sxar2
/*    766 */	ldx	[%i1+16],%xg15
/*    766 */	ldd	[%g3+16],%f254
.LSSN1500:


/*    765 */	sxar2
/*    765 */	add	%xg15,16,%xg15
/*    765 */	ldx	[%xg15+%o0],%xg2
.LSSN1501:

.LSSN1502:

/*    767 */	sxar2
/*    767 */	std	%f254,[%xg2+56]
/*    767 */	ldd	[%g4+16],%f256

.LSSN1503:

/*    768 */	sxar2
/*    768 */	std	%f256,[%xg2+64]
/*    768 */	ldd	[%g5+16],%f258

.LSSN1504:

/*    765 */	sxar2
/*    765 */	std	%f258,[%xg2+72]
/*    765 */	ldx	[%i1+16],%xg16
.LSSN1505:

.LSSN1506:

/*    765 */	sxar2
/*    765 */	ldd	[%g3+24],%f260
/*    765 */	add	%xg16,24,%xg16

.LSSN1507:

/*    766 */	sxar2
/*    766 */	ldx	[%xg16+%o0],%xg3
/*    766 */	std	%f260,[%xg3+56]
.LSSN1508:


/*    767 */	sxar2
/*    767 */	ldd	[%g4+24],%f262
/*    767 */	std	%f262,[%xg3+64]
.LSSN1509:


/*    768 */	sxar2
/*    768 */	ldd	[%g5+24],%f264
/*    768 */	std	%f264,[%xg3+72]
.LSSN1510:

.LSSN1511:

/*    766 */	sxar2
/*    766 */	ldx	[%i1+16],%xg17
/*    766 */	ldd	[%g3+32],%f266
.LSSN1512:


/*    765 */	sxar2
/*    765 */	add	%xg17,32,%xg17
/*    765 */	ldx	[%xg17+%o0],%xg4
.LSSN1513:

.LSSN1514:

/*    767 */	sxar2
/*    767 */	std	%f266,[%xg4+56]
/*    767 */	ldd	[%g4+32],%f268

.LSSN1515:

/*    768 */	sxar2
/*    768 */	std	%f268,[%xg4+64]
/*    768 */	ldd	[%g5+32],%f270

.LSSN1516:

/*    765 */	sxar2
/*    765 */	std	%f270,[%xg4+72]
/*    765 */	ldx	[%i1+16],%xg18
.LSSN1517:

/*    766 */	sxar1
/*    766 */	ldd	[%g3+40],%f272
.LSSN1518:

/*    769 */	add	%g3,48,%g3
.LSSN1519:


/*    765 */	sxar2
/*    765 */	add	%xg18,40,%xg18
/*    765 */	ldx	[%xg18+%o0],%xg5
.LSSN1520:

/*    769 */	add	%o0,48,%o0
.LSSN1521:

.LSSN1522:

/*    767 */	sxar2
/*    767 */	std	%f272,[%xg5+56]
/*    767 */	ldd	[%g4+40],%f274
.LSSN1523:

/*    769 */	add	%g4,48,%g4
.LSSN1524:

.LSSN1525:

/*    768 */	sxar2
/*    768 */	std	%f274,[%xg5+64]
/*    768 */	ldd	[%g5+40],%f276
.LSSN1526:

.LSSN1527:

/*    768 */	sxar1
/*    768 */	std	%f276,[%xg5+72]
.LSSN1528:

/*    769 */	bpos,pt	%icc, .L690
/*    769 */	add	%g5,48,%g5


.L737:


.L733:
.LSSN1529:

/*    763 */	addcc	%o1,5,%o1

/*    763 */	bneg	.L695
	nop


.L734:


.L743:
.LSSN1530:

/*    765 */	ldx	[%i1+16],%o3
.LSSN1531:

/*    766 */	sxar1
/*    766 */	ldd	[%g2+%o0],%f236
.LSSN1532:

/*    769 */	subcc	%o1,1,%o1
.LSSN1533:

/*    765 */	ldx	[%o3+%o0],%o4
.LSSN1534:

.LSSN1535:

/*    767 */	sxar2
/*    767 */	std	%f236,[%o4+56]
/*    767 */	ldd	[%xg0+%o0],%f238

.LSSN1536:

/*    768 */	sxar2
/*    768 */	std	%f238,[%o4+64]
/*    768 */	ldd	[%g1+%o0],%f240
.LSSN1537:

.LSSN1538:

/*    768 */	sxar1
/*    768 */	std	%f240,[%o4+72]
.LSSN1539:

/*    769 */	bpos,pt	%icc, .L743
/*    769 */	add	%o0,8,%o0


.L735:

/*    769 */	ret
	restore

.LSSN1540:


.L693:
.LSSN1541:

/*    682 */	add	%o0,320,%o0

/*    682 */	sethi	%hi(20000),%o2

/*    682 */	sra	%o1,%g0,%o1


/*    682 */	call	printf
/*    682 */	or	%o2,544,%o2
.LSSN1542:

/*    683 */	call	exit
/*    683 */	mov	-1,%o0
.LSSN1543:


.L694:
.LSSN1544:


/*    673 */	call	printf
/*    673 */	add	%o0,384,%o0
.LSSN1545:

/*    674 */	call	exit
/*    674 */	mov	-1,%o0
.LSSN1546:


.L695:
.LSSN1547:

/*    770 */	ret
	restore



.LSSN1548:
	.size	nrn_state,.-nrn_state
	.type	nrn_state,#function
	.section	".rodata"
	.local	jpj..loop_nrn_state
	.align	8
jpj..loop_nrn_state:
	.byte	1
	.byte	3
	.half	24
	.word	64
	.xword	0
	.word	4
	.byte	16
	.byte	0,0,0
	.word	690
	.word	696
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.word	701
	.word	723
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.word	726
	.word	757
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.word	763
	.word	769
	.half	1
	.half	0
	.byte	5
	.byte	0,0,0
	.ident	"$Compiler: Fujitsu C/C++ Compiler Version 1.2.0 P-id: L31100-01 (Nov  8 2013 14:27:32) hh_k.c _initlists $"
	.section	".text"
	.align	64
_initlists:
.L227:
.LSSN1549:

/*    778 */	save	%sp,-208,%sp


.L228:
.LSSN1550:

.LSSN1551:

/*    781 */	sethi	%h44(.LS0),%l0

/*    781 */	or	%l0,%m44(.LS0),%l0

/*    781 */	sllx	%l0,12,%l0

/*    781 */	or	%l0,%l44(.LS0),%l0


/*    781 */	sxar2
/*    781 */	ldsw	[%l0+24],%xg0
/*    781 */	cmp	%xg0,%g0

/*    781 */	be	.L231
/*    781 */	add	%fp,2039,%g1


.L230:
.LSSN1552:


/*    782 */	sxar2
/*    782 */	add	%fp,2095,%xg0
/*    782 */	add	%fp,2119,%xg2


/*    782 */	sxar2
/*    782 */	sub	%xg0,%g1,%xg0
/*    782 */	sub	%xg2,%g1,%xg2


/*    782 */	sxar2
/*    782 */	srax	%xg0,2,%xg3
/*    782 */	srax	%xg2,2,%xg4


/*    782 */	sxar2
/*    782 */	sethi	%h44(.LB0+30729856),%xg1
/*    782 */	srlx	%xg3,61,%xg3


/*    782 */	sxar2
/*    782 */	or	%xg1,%m44(.LB0+30729856),%xg1
/*    782 */	srlx	%xg4,61,%xg4


/*    782 */	sxar2
/*    782 */	add	%xg3,%xg0,%xg3
/*    782 */	add	%xg4,%xg2,%xg4


/*    782 */	sxar2
/*    782 */	sllx	%xg1,12,%xg1
/*    782 */	srax	%xg3,3,%xg3


/*    782 */	sxar2
/*    782 */	or	%xg1,%l44(.LB0+30729856),%xg1
/*    782 */	srax	%xg4,3,%xg4


/*    782 */	sxar2
/*    782 */	sra	%xg3,%g0,%xg3
/*    782 */	sra	%xg4,%g0,%xg4
.LSSN1553:


/*    783 */	sxar2
/*    783 */	add	%fp,2103,%xg5
/*    783 */	add	%fp,2127,%xg6
.LSSN1554:

.LSSN1555:

/*    783 */	sxar2
/*    783 */	stw	%xg3,[%xg1]
/*    783 */	sub	%xg5,%g1,%xg5

.LSSN1556:

/*    782 */	sxar2
/*    782 */	sub	%xg6,%g1,%xg6
/*    782 */	stw	%xg4,[%xg1+-16]
.LSSN1557:


/*    783 */	sxar2
/*    783 */	srax	%xg5,2,%xg7
/*    783 */	srax	%xg6,2,%xg8


/*    783 */	sxar2
/*    783 */	srlx	%xg7,61,%xg7
/*    783 */	srlx	%xg8,61,%xg8


/*    783 */	sxar2
/*    783 */	add	%xg7,%xg5,%xg7
/*    783 */	add	%xg8,%xg6,%xg8


/*    783 */	sxar2
/*    783 */	srax	%xg7,3,%xg7
/*    783 */	srax	%xg8,3,%xg8


/*    783 */	sxar2
/*    783 */	sra	%xg7,%g0,%xg7
/*    783 */	sra	%xg8,%g0,%xg8
.LSSN1558:


/*    784 */	sxar2
/*    784 */	add	%fp,2111,%xg9
/*    784 */	add	%fp,2135,%xg10
.LSSN1559:

.LSSN1560:

/*    784 */	sxar2
/*    784 */	stw	%xg7,[%xg1+4]
/*    784 */	sub	%xg9,%g1,%xg9

.LSSN1561:

/*    783 */	sxar2
/*    783 */	sub	%xg10,%g1,%xg10
/*    783 */	stw	%xg8,[%xg1+-12]
.LSSN1562:


/*    784 */	sxar2
/*    784 */	srax	%xg9,2,%xg11
/*    784 */	srax	%xg10,2,%xg12


/*    784 */	sxar2
/*    784 */	srlx	%xg11,61,%xg11
/*    784 */	srlx	%xg12,61,%xg12


/*    784 */	sxar2
/*    784 */	add	%xg11,%xg9,%xg11
/*    784 */	add	%xg12,%xg10,%xg12


/*    784 */	sxar2
/*    784 */	srax	%xg11,3,%xg11
/*    784 */	srax	%xg12,3,%xg12


/*    784 */	sxar2
/*    784 */	sra	%xg11,%g0,%xg11
/*    784 */	sra	%xg12,%g0,%xg12

/*    784 */	sxar1
/*    784 */	stw	%xg11,[%xg1+8]
.LSSN1563:

/*    786 */	mov	1608,%l2
.LSSN1564:

/*    784 */	sxar1
/*    784 */	stw	%xg12,[%xg1+-8]
.LSSN1565:


/*    786 */	call	makevector
/*    786 */	mov	%l2,%o0
/*    786 */	sethi	%h44(.LB0),%l1
/*    786 */	or	%l1,%m44(.LB0),%l1
/*    786 */	sllx	%l1,12,%l1
/*    786 */	or	%l1,%l44(.LB0),%l1
/*    786 */	stx	%o0,[%l1+80]
.LSSN1566:

/*    787 */	call	makevector
/*    787 */	mov	%l2,%o0
/*    787 */	stx	%o0,[%l1+72]
.LSSN1567:

/*    788 */	call	makevector
/*    788 */	mov	%l2,%o0
/*    788 */	stx	%o0,[%l1+64]
.LSSN1568:

/*    789 */	call	makevector
/*    789 */	mov	%l2,%o0
/*    789 */	stx	%o0,[%l1+56]
.LSSN1569:

/*    790 */	call	makevector
/*    790 */	mov	%l2,%o0
/*    790 */	stx	%o0,[%l1+48]
.LSSN1570:

/*    791 */	call	makevector
/*    791 */	mov	%l2,%o0
/*    791 */	stx	%o0,[%l1+40]
.LSSN1571:

/*    793 */	stw	%g0,[%l0+24]

.L231:
.LSSN1572:

/*    794 */	ret
	restore



.LSSN1573:
	.size	_initlists,.-_initlists
	.type	_initlists,#function
	.section	".rodata"
	.local	jpj..loop__initlists
	.align	8
jpj..loop__initlists:
	.byte	1
	.byte	3
	.half	24
	.word	0
	.xword	0
	.word	0
	.byte	16
	.byte	0,0,0
	.section	".rodata"
	.align	8
jli.ssn__initlists:
	.xword	0
	.word	0
	.word	400
	.xword	778,.LSSN1549-_initlists
	.xword	779,.LSSN1550-_initlists
	.xword	781,.LSSN1551-_initlists
	.xword	782,.LSSN1552-_initlists
	.xword	783,.LSSN1553-_initlists
	.xword	782,.LSSN1554-_initlists
	.xword	783,.LSSN1555-_initlists
	.xword	782,.LSSN1556-_initlists
	.xword	783,.LSSN1557-_initlists
	.xword	784,.LSSN1558-_initlists
	.xword	783,.LSSN1559-_initlists
	.xword	784,.LSSN1560-_initlists
	.xword	783,.LSSN1561-_initlists
	.xword	784,.LSSN1562-_initlists
	.xword	786,.LSSN1563-_initlists
	.xword	784,.LSSN1564-_initlists
	.xword	786,.LSSN1565-_initlists
	.xword	787,.LSSN1566-_initlists
	.xword	788,.LSSN1567-_initlists
	.xword	789,.LSSN1568-_initlists
	.xword	790,.LSSN1569-_initlists
	.xword	791,.LSSN1570-_initlists
	.xword	793,.LSSN1571-_initlists
	.xword	794,.LSSN1572-_initlists
	.xword	0,.LSSN1573-_initlists
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__initlists+440
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn_nrn_state:
	.xword	0
	.word	0
	.word	14928
	.xword	632,.LSSN616-nrn_state
	.xword	637,.LSSN617-nrn_state
	.xword	659,.LSSN618-nrn_state
	.xword	668,.LSSN619-nrn_state
	.xword	659,.LSSN620-nrn_state
	.xword	668,.LSSN621-nrn_state
	.xword	661,.LSSN622-nrn_state
	.xword	668,.LSSN623-nrn_state
	.xword	661,.LSSN624-nrn_state
	.xword	668,.LSSN625-nrn_state
	.xword	659,.LSSN626-nrn_state
	.xword	661,.LSSN627-nrn_state
	.xword	660,.LSSN628-nrn_state
	.xword	659,.LSSN629-nrn_state
	.xword	660,.LSSN630-nrn_state
	.xword	661,.LSSN631-nrn_state
	.xword	659,.LSSN632-nrn_state
	.xword	660,.LSSN633-nrn_state
	.xword	661,.LSSN634-nrn_state
	.xword	668,.LSSN635-nrn_state
	.xword	659,.LSSN636-nrn_state
	.xword	660,.LSSN637-nrn_state
	.xword	661,.LSSN638-nrn_state
	.xword	668,.LSSN639-nrn_state
	.xword	669,.LSSN640-nrn_state
	.xword	670,.LSSN641-nrn_state
	.xword	671,.LSSN642-nrn_state
	.xword	672,.LSSN643-nrn_state
	.xword	677,.LSSN644-nrn_state
	.xword	678,.LSSN645-nrn_state
	.xword	681,.LSSN646-nrn_state
	.xword	686,.LSSN647-nrn_state
	.xword	687,.LSSN648-nrn_state
	.xword	689,.LSSN649-nrn_state
	.xword	686,.LSSN650-nrn_state
	.xword	687,.LSSN651-nrn_state
	.xword	689,.LSSN652-nrn_state
	.xword	690,.LSSN653-nrn_state
	.xword	693,.LSSN654-nrn_state
	.xword	696,.LSSN655-nrn_state
	.xword	693,.LSSN656-nrn_state
	.xword	694,.LSSN657-nrn_state
	.xword	695,.LSSN658-nrn_state
	.xword	696,.LSSN659-nrn_state
	.xword	695,.LSSN660-nrn_state
	.xword	692,.LSSN661-nrn_state
	.xword	693,.LSSN662-nrn_state
	.xword	692,.LSSN663-nrn_state
	.xword	693,.LSSN664-nrn_state
	.xword	694,.LSSN665-nrn_state
	.xword	695,.LSSN666-nrn_state
	.xword	692,.LSSN667-nrn_state
	.xword	693,.LSSN668-nrn_state
	.xword	692,.LSSN669-nrn_state
	.xword	693,.LSSN670-nrn_state
	.xword	694,.LSSN671-nrn_state
	.xword	695,.LSSN672-nrn_state
	.xword	692,.LSSN673-nrn_state
	.xword	693,.LSSN674-nrn_state
	.xword	692,.LSSN675-nrn_state
	.xword	693,.LSSN676-nrn_state
	.xword	696,.LSSN677-nrn_state
	.xword	693,.LSSN678-nrn_state
	.xword	694,.LSSN679-nrn_state
	.xword	695,.LSSN680-nrn_state
	.xword	696,.LSSN681-nrn_state
	.xword	690,.LSSN682-nrn_state
	.xword	693,.LSSN683-nrn_state
	.xword	696,.LSSN684-nrn_state
	.xword	693,.LSSN685-nrn_state
	.xword	696,.LSSN686-nrn_state
	.xword	693,.LSSN687-nrn_state
	.xword	694,.LSSN688-nrn_state
	.xword	695,.LSSN689-nrn_state
	.xword	696,.LSSN690-nrn_state
	.xword	695,.LSSN691-nrn_state
	.xword	696,.LSSN692-nrn_state
	.xword	697,.LSSN693-nrn_state
	.xword	701,.LSSN694-nrn_state
	.xword	713,.LSSN695-nrn_state
	.xword	715,.LSSN696-nrn_state
	.xword	716,.LSSN697-nrn_state
	.xword	717,.LSSN698-nrn_state
	.xword	719,.LSSN699-nrn_state
	.xword	717,.LSSN700-nrn_state
	.xword	719,.LSSN701-nrn_state
	.xword	720,.LSSN702-nrn_state
	.xword	721,.LSSN703-nrn_state
	.xword	722,.LSSN704-nrn_state
	.xword	713,.LSSN705-nrn_state
	.xword	715,.LSSN706-nrn_state
	.xword	716,.LSSN707-nrn_state
	.xword	717,.LSSN708-nrn_state
	.xword	719,.LSSN709-nrn_state
	.xword	717,.LSSN710-nrn_state
	.xword	719,.LSSN711-nrn_state
	.xword	720,.LSSN712-nrn_state
	.xword	721,.LSSN713-nrn_state
	.xword	722,.LSSN714-nrn_state
	.xword	713,.LSSN715-nrn_state
	.xword	715,.LSSN716-nrn_state
	.xword	716,.LSSN717-nrn_state
	.xword	717,.LSSN718-nrn_state
	.xword	719,.LSSN719-nrn_state
	.xword	717,.LSSN720-nrn_state
	.xword	719,.LSSN721-nrn_state
	.xword	720,.LSSN722-nrn_state
	.xword	721,.LSSN723-nrn_state
	.xword	722,.LSSN724-nrn_state
	.xword	713,.LSSN725-nrn_state
	.xword	715,.LSSN726-nrn_state
	.xword	716,.LSSN727-nrn_state
	.xword	717,.LSSN728-nrn_state
	.xword	719,.LSSN729-nrn_state
	.xword	717,.LSSN730-nrn_state
	.xword	719,.LSSN731-nrn_state
	.xword	720,.LSSN732-nrn_state
	.xword	721,.LSSN733-nrn_state
	.xword	722,.LSSN734-nrn_state
	.xword	724,.LSSN735-nrn_state
	.xword	701,.LSSN736-nrn_state
	.xword	713,.LSSN737-nrn_state
	.xword	715,.LSSN738-nrn_state
	.xword	716,.LSSN739-nrn_state
	.xword	717,.LSSN740-nrn_state
	.xword	719,.LSSN741-nrn_state
	.xword	717,.LSSN742-nrn_state
	.xword	719,.LSSN743-nrn_state
	.xword	720,.LSSN744-nrn_state
	.xword	721,.LSSN745-nrn_state
	.xword	722,.LSSN746-nrn_state
	.xword	724,.LSSN747-nrn_state
	.xword	726,.LSSN748-nrn_state
	.xword	728,.LSSN749-nrn_state
	.xword	735,.LSSN750-nrn_state
	.xword	757,.LSSN751-nrn_state
	.xword	728,.LSSN752-nrn_state
	.xword	735,.LSSN753-nrn_state
	.xword	757,.LSSN754-nrn_state
	.xword	735,.LSSN755-nrn_state
	.xword	728,.LSSN756-nrn_state
	.xword	757,.LSSN757-nrn_state
	.xword	735,.LSSN758-nrn_state
	.xword	729,.LSSN759-nrn_state
	.xword	728,.LSSN760-nrn_state
	.xword	757,.LSSN761-nrn_state
	.xword	729,.LSSN762-nrn_state
	.xword	757,.LSSN763-nrn_state
	.xword	729,.LSSN764-nrn_state
	.xword	757,.LSSN765-nrn_state
	.xword	735,.LSSN766-nrn_state
	.xword	757,.LSSN767-nrn_state
	.xword	735,.LSSN768-nrn_state
	.xword	757,.LSSN769-nrn_state
	.xword	735,.LSSN770-nrn_state
	.xword	755,.LSSN771-nrn_state
	.xword	757,.LSSN772-nrn_state
	.xword	735,.LSSN773-nrn_state
	.xword	755,.LSSN774-nrn_state
	.xword	757,.LSSN775-nrn_state
	.xword	735,.LSSN776-nrn_state
	.xword	756,.LSSN777-nrn_state
	.xword	758,.LSSN778-nrn_state
	.xword	757,.LSSN779-nrn_state
	.xword	756,.LSSN780-nrn_state
	.xword	758,.LSSN781-nrn_state
	.xword	755,.LSSN782-nrn_state
	.xword	758,.LSSN783-nrn_state
	.xword	757,.LSSN784-nrn_state
	.xword	741,.LSSN785-nrn_state
	.xword	757,.LSSN786-nrn_state
	.xword	755,.LSSN787-nrn_state
	.xword	757,.LSSN788-nrn_state
	.xword	755,.LSSN789-nrn_state
	.xword	741,.LSSN790-nrn_state
	.xword	755,.LSSN791-nrn_state
	.xword	740,.LSSN792-nrn_state
	.xword	757,.LSSN793-nrn_state
	.xword	756,.LSSN794-nrn_state
	.xword	757,.LSSN795-nrn_state
	.xword	755,.LSSN796-nrn_state
	.xword	740,.LSSN797-nrn_state
	.xword	741,.LSSN798-nrn_state
	.xword	757,.LSSN799-nrn_state
	.xword	755,.LSSN800-nrn_state
	.xword	740,.LSSN801-nrn_state
	.xword	756,.LSSN802-nrn_state
	.xword	757,.LSSN803-nrn_state
	.xword	755,.LSSN804-nrn_state
	.xword	756,.LSSN805-nrn_state
	.xword	757,.LSSN806-nrn_state
	.xword	755,.LSSN807-nrn_state
	.xword	756,.LSSN808-nrn_state
	.xword	757,.LSSN809-nrn_state
	.xword	755,.LSSN810-nrn_state
	.xword	756,.LSSN811-nrn_state
	.xword	757,.LSSN812-nrn_state
	.xword	755,.LSSN813-nrn_state
	.xword	756,.LSSN814-nrn_state
	.xword	757,.LSSN815-nrn_state
	.xword	755,.LSSN816-nrn_state
	.xword	756,.LSSN817-nrn_state
	.xword	757,.LSSN818-nrn_state
	.xword	755,.LSSN819-nrn_state
	.xword	756,.LSSN820-nrn_state
	.xword	757,.LSSN821-nrn_state
	.xword	755,.LSSN822-nrn_state
	.xword	756,.LSSN823-nrn_state
	.xword	757,.LSSN824-nrn_state
	.xword	755,.LSSN825-nrn_state
	.xword	756,.LSSN826-nrn_state
	.xword	757,.LSSN827-nrn_state
	.xword	755,.LSSN828-nrn_state
	.xword	756,.LSSN829-nrn_state
	.xword	757,.LSSN830-nrn_state
	.xword	755,.LSSN831-nrn_state
	.xword	756,.LSSN832-nrn_state
	.xword	757,.LSSN833-nrn_state
	.xword	755,.LSSN834-nrn_state
	.xword	757,.LSSN835-nrn_state
	.xword	756,.LSSN836-nrn_state
	.xword	757,.LSSN837-nrn_state
	.xword	755,.LSSN838-nrn_state
	.xword	756,.LSSN839-nrn_state
	.xword	757,.LSSN840-nrn_state
	.xword	755,.LSSN841-nrn_state
	.xword	756,.LSSN842-nrn_state
	.xword	757,.LSSN843-nrn_state
	.xword	755,.LSSN844-nrn_state
	.xword	756,.LSSN845-nrn_state
	.xword	757,.LSSN846-nrn_state
	.xword	755,.LSSN847-nrn_state
	.xword	756,.LSSN848-nrn_state
	.xword	757,.LSSN849-nrn_state
	.xword	755,.LSSN850-nrn_state
	.xword	756,.LSSN851-nrn_state
	.xword	755,.LSSN852-nrn_state
	.xword	756,.LSSN853-nrn_state
	.xword	726,.LSSN854-nrn_state
	.xword	758,.LSSN855-nrn_state
	.xword	726,.LSSN856-nrn_state
	.xword	728,.LSSN857-nrn_state
	.xword	758,.LSSN858-nrn_state
	.xword	756,.LSSN859-nrn_state
	.xword	758,.LSSN860-nrn_state
	.xword	755,.LSSN861-nrn_state
	.xword	757,.LSSN862-nrn_state
	.xword	735,.LSSN863-nrn_state
	.xword	734,.LSSN864-nrn_state
	.xword	741,.LSSN865-nrn_state
	.xword	732,.LSSN866-nrn_state
	.xword	739,.LSSN867-nrn_state
	.xword	740,.LSSN868-nrn_state
	.xword	733,.LSSN869-nrn_state
	.xword	756,.LSSN870-nrn_state
	.xword	733,.LSSN871-nrn_state
	.xword	736,.LSSN872-nrn_state
	.xword	733,.LSSN873-nrn_state
	.xword	736,.LSSN874-nrn_state
	.xword	755,.LSSN875-nrn_state
	.xword	736,.LSSN876-nrn_state
	.xword	743,.LSSN877-nrn_state
	.xword	731,.LSSN878-nrn_state
	.xword	756,.LSSN879-nrn_state
	.xword	738,.LSSN880-nrn_state
	.xword	756,.LSSN881-nrn_state
	.xword	738,.LSSN882-nrn_state
	.xword	742,.LSSN883-nrn_state
	.xword	757,.LSSN884-nrn_state
	.xword	742,.LSSN885-nrn_state
	.xword	755,.LSSN886-nrn_state
	.xword	742,.LSSN887-nrn_state
	.xword	755,.LSSN888-nrn_state
	.xword	756,.LSSN889-nrn_state
	.xword	757,.LSSN890-nrn_state
	.xword	755,.LSSN891-nrn_state
	.xword	756,.LSSN892-nrn_state
	.xword	757,.LSSN893-nrn_state
	.xword	755,.LSSN894-nrn_state
	.xword	756,.LSSN895-nrn_state
	.xword	757,.LSSN896-nrn_state
	.xword	755,.LSSN897-nrn_state
	.xword	757,.LSSN898-nrn_state
	.xword	756,.LSSN899-nrn_state
	.xword	757,.LSSN900-nrn_state
	.xword	755,.LSSN901-nrn_state
	.xword	756,.LSSN902-nrn_state
	.xword	757,.LSSN903-nrn_state
	.xword	755,.LSSN904-nrn_state
	.xword	756,.LSSN905-nrn_state
	.xword	757,.LSSN906-nrn_state
	.xword	755,.LSSN907-nrn_state
	.xword	756,.LSSN908-nrn_state
	.xword	757,.LSSN909-nrn_state
	.xword	755,.LSSN910-nrn_state
	.xword	756,.LSSN911-nrn_state
	.xword	757,.LSSN912-nrn_state
	.xword	755,.LSSN913-nrn_state
	.xword	756,.LSSN914-nrn_state
	.xword	757,.LSSN915-nrn_state
	.xword	755,.LSSN916-nrn_state
	.xword	756,.LSSN917-nrn_state
	.xword	757,.LSSN918-nrn_state
	.xword	755,.LSSN919-nrn_state
	.xword	756,.LSSN920-nrn_state
	.xword	757,.LSSN921-nrn_state
	.xword	756,.LSSN922-nrn_state
	.xword	755,.LSSN923-nrn_state
	.xword	756,.LSSN924-nrn_state
	.xword	757,.LSSN925-nrn_state
	.xword	756,.LSSN926-nrn_state
	.xword	755,.LSSN927-nrn_state
	.xword	756,.LSSN928-nrn_state
	.xword	755,.LSSN929-nrn_state
	.xword	756,.LSSN930-nrn_state
	.xword	757,.LSSN931-nrn_state
	.xword	756,.LSSN932-nrn_state
	.xword	755,.LSSN933-nrn_state
	.xword	756,.LSSN934-nrn_state
	.xword	757,.LSSN935-nrn_state
	.xword	756,.LSSN936-nrn_state
	.xword	755,.LSSN937-nrn_state
	.xword	756,.LSSN938-nrn_state
	.xword	757,.LSSN939-nrn_state
	.xword	755,.LSSN940-nrn_state
	.xword	756,.LSSN941-nrn_state
	.xword	757,.LSSN942-nrn_state
	.xword	755,.LSSN943-nrn_state
	.xword	756,.LSSN944-nrn_state
	.xword	757,.LSSN945-nrn_state
	.xword	756,.LSSN946-nrn_state
	.xword	758,.LSSN947-nrn_state
	.xword	755,.LSSN948-nrn_state
	.xword	757,.LSSN949-nrn_state
	.xword	755,.LSSN950-nrn_state
	.xword	757,.LSSN951-nrn_state
	.xword	758,.LSSN952-nrn_state
	.xword	726,.LSSN953-nrn_state
	.xword	728,.LSSN954-nrn_state
	.xword	756,.LSSN955-nrn_state
	.xword	728,.LSSN956-nrn_state
	.xword	733,.LSSN957-nrn_state
	.xword	756,.LSSN958-nrn_state
	.xword	728,.LSSN959-nrn_state
	.xword	733,.LSSN960-nrn_state
	.xword	756,.LSSN961-nrn_state
	.xword	733,.LSSN962-nrn_state
	.xword	728,.LSSN963-nrn_state
	.xword	729,.LSSN964-nrn_state
	.xword	756,.LSSN965-nrn_state
	.xword	733,.LSSN966-nrn_state
	.xword	729,.LSSN967-nrn_state
	.xword	756,.LSSN968-nrn_state
	.xword	729,.LSSN969-nrn_state
	.xword	756,.LSSN970-nrn_state
	.xword	729,.LSSN971-nrn_state
	.xword	756,.LSSN972-nrn_state
	.xword	735,.LSSN973-nrn_state
	.xword	756,.LSSN974-nrn_state
	.xword	735,.LSSN975-nrn_state
	.xword	756,.LSSN976-nrn_state
	.xword	735,.LSSN977-nrn_state
	.xword	756,.LSSN978-nrn_state
	.xword	735,.LSSN979-nrn_state
	.xword	756,.LSSN980-nrn_state
	.xword	733,.LSSN981-nrn_state
	.xword	755,.LSSN982-nrn_state
	.xword	757,.LSSN983-nrn_state
	.xword	756,.LSSN984-nrn_state
	.xword	755,.LSSN985-nrn_state
	.xword	757,.LSSN986-nrn_state
	.xword	755,.LSSN987-nrn_state
	.xword	756,.LSSN988-nrn_state
	.xword	757,.LSSN989-nrn_state
	.xword	756,.LSSN990-nrn_state
	.xword	757,.LSSN991-nrn_state
	.xword	755,.LSSN992-nrn_state
	.xword	733,.LSSN993-nrn_state
	.xword	756,.LSSN994-nrn_state
	.xword	755,.LSSN995-nrn_state
	.xword	757,.LSSN996-nrn_state
	.xword	755,.LSSN997-nrn_state
	.xword	757,.LSSN998-nrn_state
	.xword	756,.LSSN999-nrn_state
	.xword	757,.LSSN1000-nrn_state
	.xword	755,.LSSN1001-nrn_state
	.xword	756,.LSSN1002-nrn_state
	.xword	757,.LSSN1003-nrn_state
	.xword	755,.LSSN1004-nrn_state
	.xword	757,.LSSN1005-nrn_state
	.xword	756,.LSSN1006-nrn_state
	.xword	755,.LSSN1007-nrn_state
	.xword	756,.LSSN1008-nrn_state
	.xword	755,.LSSN1009-nrn_state
	.xword	757,.LSSN1010-nrn_state
	.xword	756,.LSSN1011-nrn_state
	.xword	755,.LSSN1012-nrn_state
	.xword	757,.LSSN1013-nrn_state
	.xword	756,.LSSN1014-nrn_state
	.xword	755,.LSSN1015-nrn_state
	.xword	757,.LSSN1016-nrn_state
	.xword	756,.LSSN1017-nrn_state
	.xword	755,.LSSN1018-nrn_state
	.xword	757,.LSSN1019-nrn_state
	.xword	756,.LSSN1020-nrn_state
	.xword	755,.LSSN1021-nrn_state
	.xword	757,.LSSN1022-nrn_state
	.xword	756,.LSSN1023-nrn_state
	.xword	755,.LSSN1024-nrn_state
	.xword	757,.LSSN1025-nrn_state
	.xword	756,.LSSN1026-nrn_state
	.xword	755,.LSSN1027-nrn_state
	.xword	757,.LSSN1028-nrn_state
	.xword	756,.LSSN1029-nrn_state
	.xword	755,.LSSN1030-nrn_state
	.xword	757,.LSSN1031-nrn_state
	.xword	756,.LSSN1032-nrn_state
	.xword	755,.LSSN1033-nrn_state
	.xword	757,.LSSN1034-nrn_state
	.xword	756,.LSSN1035-nrn_state
	.xword	755,.LSSN1036-nrn_state
	.xword	757,.LSSN1037-nrn_state
	.xword	756,.LSSN1038-nrn_state
	.xword	755,.LSSN1039-nrn_state
	.xword	757,.LSSN1040-nrn_state
	.xword	756,.LSSN1041-nrn_state
	.xword	755,.LSSN1042-nrn_state
	.xword	756,.LSSN1043-nrn_state
	.xword	757,.LSSN1044-nrn_state
	.xword	756,.LSSN1045-nrn_state
	.xword	755,.LSSN1046-nrn_state
	.xword	757,.LSSN1047-nrn_state
	.xword	756,.LSSN1048-nrn_state
	.xword	755,.LSSN1049-nrn_state
	.xword	757,.LSSN1050-nrn_state
	.xword	756,.LSSN1051-nrn_state
	.xword	755,.LSSN1052-nrn_state
	.xword	757,.LSSN1053-nrn_state
	.xword	756,.LSSN1054-nrn_state
	.xword	755,.LSSN1055-nrn_state
	.xword	757,.LSSN1056-nrn_state
	.xword	756,.LSSN1057-nrn_state
	.xword	755,.LSSN1058-nrn_state
	.xword	757,.LSSN1059-nrn_state
	.xword	755,.LSSN1060-nrn_state
	.xword	757,.LSSN1061-nrn_state
	.xword	758,.LSSN1062-nrn_state
	.xword	726,.LSSN1063-nrn_state
	.xword	758,.LSSN1064-nrn_state
	.xword	726,.LSSN1065-nrn_state
	.xword	728,.LSSN1066-nrn_state
	.xword	758,.LSSN1067-nrn_state
	.xword	756,.LSSN1068-nrn_state
	.xword	758,.LSSN1069-nrn_state
	.xword	755,.LSSN1070-nrn_state
	.xword	757,.LSSN1071-nrn_state
	.xword	735,.LSSN1072-nrn_state
	.xword	734,.LSSN1073-nrn_state
	.xword	741,.LSSN1074-nrn_state
	.xword	732,.LSSN1075-nrn_state
	.xword	739,.LSSN1076-nrn_state
	.xword	740,.LSSN1077-nrn_state
	.xword	733,.LSSN1078-nrn_state
	.xword	756,.LSSN1079-nrn_state
	.xword	733,.LSSN1080-nrn_state
	.xword	736,.LSSN1081-nrn_state
	.xword	733,.LSSN1082-nrn_state
	.xword	736,.LSSN1083-nrn_state
	.xword	755,.LSSN1084-nrn_state
	.xword	736,.LSSN1085-nrn_state
	.xword	743,.LSSN1086-nrn_state
	.xword	731,.LSSN1087-nrn_state
	.xword	756,.LSSN1088-nrn_state
	.xword	738,.LSSN1089-nrn_state
	.xword	756,.LSSN1090-nrn_state
	.xword	738,.LSSN1091-nrn_state
	.xword	742,.LSSN1092-nrn_state
	.xword	757,.LSSN1093-nrn_state
	.xword	742,.LSSN1094-nrn_state
	.xword	755,.LSSN1095-nrn_state
	.xword	742,.LSSN1096-nrn_state
	.xword	755,.LSSN1097-nrn_state
	.xword	756,.LSSN1098-nrn_state
	.xword	757,.LSSN1099-nrn_state
	.xword	755,.LSSN1100-nrn_state
	.xword	756,.LSSN1101-nrn_state
	.xword	757,.LSSN1102-nrn_state
	.xword	755,.LSSN1103-nrn_state
	.xword	756,.LSSN1104-nrn_state
	.xword	757,.LSSN1105-nrn_state
	.xword	755,.LSSN1106-nrn_state
	.xword	757,.LSSN1107-nrn_state
	.xword	756,.LSSN1108-nrn_state
	.xword	757,.LSSN1109-nrn_state
	.xword	755,.LSSN1110-nrn_state
	.xword	756,.LSSN1111-nrn_state
	.xword	757,.LSSN1112-nrn_state
	.xword	755,.LSSN1113-nrn_state
	.xword	756,.LSSN1114-nrn_state
	.xword	757,.LSSN1115-nrn_state
	.xword	755,.LSSN1116-nrn_state
	.xword	756,.LSSN1117-nrn_state
	.xword	757,.LSSN1118-nrn_state
	.xword	755,.LSSN1119-nrn_state
	.xword	756,.LSSN1120-nrn_state
	.xword	757,.LSSN1121-nrn_state
	.xword	755,.LSSN1122-nrn_state
	.xword	756,.LSSN1123-nrn_state
	.xword	757,.LSSN1124-nrn_state
	.xword	755,.LSSN1125-nrn_state
	.xword	756,.LSSN1126-nrn_state
	.xword	757,.LSSN1127-nrn_state
	.xword	755,.LSSN1128-nrn_state
	.xword	756,.LSSN1129-nrn_state
	.xword	757,.LSSN1130-nrn_state
	.xword	756,.LSSN1131-nrn_state
	.xword	755,.LSSN1132-nrn_state
	.xword	756,.LSSN1133-nrn_state
	.xword	757,.LSSN1134-nrn_state
	.xword	756,.LSSN1135-nrn_state
	.xword	755,.LSSN1136-nrn_state
	.xword	756,.LSSN1137-nrn_state
	.xword	755,.LSSN1138-nrn_state
	.xword	756,.LSSN1139-nrn_state
	.xword	757,.LSSN1140-nrn_state
	.xword	756,.LSSN1141-nrn_state
	.xword	755,.LSSN1142-nrn_state
	.xword	756,.LSSN1143-nrn_state
	.xword	757,.LSSN1144-nrn_state
	.xword	756,.LSSN1145-nrn_state
	.xword	755,.LSSN1146-nrn_state
	.xword	756,.LSSN1147-nrn_state
	.xword	757,.LSSN1148-nrn_state
	.xword	755,.LSSN1149-nrn_state
	.xword	756,.LSSN1150-nrn_state
	.xword	757,.LSSN1151-nrn_state
	.xword	755,.LSSN1152-nrn_state
	.xword	756,.LSSN1153-nrn_state
	.xword	757,.LSSN1154-nrn_state
	.xword	756,.LSSN1155-nrn_state
	.xword	758,.LSSN1156-nrn_state
	.xword	755,.LSSN1157-nrn_state
	.xword	757,.LSSN1158-nrn_state
	.xword	755,.LSSN1159-nrn_state
	.xword	758,.LSSN1160-nrn_state
	.xword	757,.LSSN1161-nrn_state
	.xword	758,.LSSN1162-nrn_state
	.xword	726,.LSSN1163-nrn_state
	.xword	728,.LSSN1164-nrn_state
	.xword	756,.LSSN1165-nrn_state
	.xword	728,.LSSN1166-nrn_state
	.xword	733,.LSSN1167-nrn_state
	.xword	756,.LSSN1168-nrn_state
	.xword	728,.LSSN1169-nrn_state
	.xword	733,.LSSN1170-nrn_state
	.xword	756,.LSSN1171-nrn_state
	.xword	733,.LSSN1172-nrn_state
	.xword	728,.LSSN1173-nrn_state
	.xword	729,.LSSN1174-nrn_state
	.xword	756,.LSSN1175-nrn_state
	.xword	733,.LSSN1176-nrn_state
	.xword	729,.LSSN1177-nrn_state
	.xword	756,.LSSN1178-nrn_state
	.xword	729,.LSSN1179-nrn_state
	.xword	756,.LSSN1180-nrn_state
	.xword	729,.LSSN1181-nrn_state
	.xword	756,.LSSN1182-nrn_state
	.xword	735,.LSSN1183-nrn_state
	.xword	756,.LSSN1184-nrn_state
	.xword	735,.LSSN1185-nrn_state
	.xword	756,.LSSN1186-nrn_state
	.xword	735,.LSSN1187-nrn_state
	.xword	756,.LSSN1188-nrn_state
	.xword	735,.LSSN1189-nrn_state
	.xword	756,.LSSN1190-nrn_state
	.xword	733,.LSSN1191-nrn_state
	.xword	755,.LSSN1192-nrn_state
	.xword	757,.LSSN1193-nrn_state
	.xword	756,.LSSN1194-nrn_state
	.xword	755,.LSSN1195-nrn_state
	.xword	757,.LSSN1196-nrn_state
	.xword	755,.LSSN1197-nrn_state
	.xword	756,.LSSN1198-nrn_state
	.xword	757,.LSSN1199-nrn_state
	.xword	756,.LSSN1200-nrn_state
	.xword	757,.LSSN1201-nrn_state
	.xword	755,.LSSN1202-nrn_state
	.xword	733,.LSSN1203-nrn_state
	.xword	756,.LSSN1204-nrn_state
	.xword	755,.LSSN1205-nrn_state
	.xword	757,.LSSN1206-nrn_state
	.xword	755,.LSSN1207-nrn_state
	.xword	757,.LSSN1208-nrn_state
	.xword	756,.LSSN1209-nrn_state
	.xword	757,.LSSN1210-nrn_state
	.xword	755,.LSSN1211-nrn_state
	.xword	756,.LSSN1212-nrn_state
	.xword	757,.LSSN1213-nrn_state
	.xword	755,.LSSN1214-nrn_state
	.xword	757,.LSSN1215-nrn_state
	.xword	756,.LSSN1216-nrn_state
	.xword	755,.LSSN1217-nrn_state
	.xword	756,.LSSN1218-nrn_state
	.xword	755,.LSSN1219-nrn_state
	.xword	757,.LSSN1220-nrn_state
	.xword	756,.LSSN1221-nrn_state
	.xword	755,.LSSN1222-nrn_state
	.xword	757,.LSSN1223-nrn_state
	.xword	756,.LSSN1224-nrn_state
	.xword	755,.LSSN1225-nrn_state
	.xword	757,.LSSN1226-nrn_state
	.xword	756,.LSSN1227-nrn_state
	.xword	755,.LSSN1228-nrn_state
	.xword	757,.LSSN1229-nrn_state
	.xword	756,.LSSN1230-nrn_state
	.xword	755,.LSSN1231-nrn_state
	.xword	757,.LSSN1232-nrn_state
	.xword	756,.LSSN1233-nrn_state
	.xword	755,.LSSN1234-nrn_state
	.xword	757,.LSSN1235-nrn_state
	.xword	756,.LSSN1236-nrn_state
	.xword	755,.LSSN1237-nrn_state
	.xword	757,.LSSN1238-nrn_state
	.xword	756,.LSSN1239-nrn_state
	.xword	755,.LSSN1240-nrn_state
	.xword	757,.LSSN1241-nrn_state
	.xword	756,.LSSN1242-nrn_state
	.xword	755,.LSSN1243-nrn_state
	.xword	757,.LSSN1244-nrn_state
	.xword	756,.LSSN1245-nrn_state
	.xword	755,.LSSN1246-nrn_state
	.xword	757,.LSSN1247-nrn_state
	.xword	756,.LSSN1248-nrn_state
	.xword	755,.LSSN1249-nrn_state
	.xword	757,.LSSN1250-nrn_state
	.xword	756,.LSSN1251-nrn_state
	.xword	755,.LSSN1252-nrn_state
	.xword	756,.LSSN1253-nrn_state
	.xword	757,.LSSN1254-nrn_state
	.xword	756,.LSSN1255-nrn_state
	.xword	755,.LSSN1256-nrn_state
	.xword	757,.LSSN1257-nrn_state
	.xword	756,.LSSN1258-nrn_state
	.xword	755,.LSSN1259-nrn_state
	.xword	757,.LSSN1260-nrn_state
	.xword	756,.LSSN1261-nrn_state
	.xword	755,.LSSN1262-nrn_state
	.xword	757,.LSSN1263-nrn_state
	.xword	756,.LSSN1264-nrn_state
	.xword	755,.LSSN1265-nrn_state
	.xword	757,.LSSN1266-nrn_state
	.xword	756,.LSSN1267-nrn_state
	.xword	755,.LSSN1268-nrn_state
	.xword	757,.LSSN1269-nrn_state
	.xword	755,.LSSN1270-nrn_state
	.xword	757,.LSSN1271-nrn_state
	.xword	758,.LSSN1272-nrn_state
	.xword	726,.LSSN1273-nrn_state
	.xword	758,.LSSN1274-nrn_state
	.xword	726,.LSSN1275-nrn_state
	.xword	758,.LSSN1276-nrn_state
	.xword	726,.LSSN1277-nrn_state
	.xword	728,.LSSN1278-nrn_state
	.xword	758,.LSSN1279-nrn_state
	.xword	756,.LSSN1280-nrn_state
	.xword	758,.LSSN1281-nrn_state
	.xword	755,.LSSN1282-nrn_state
	.xword	757,.LSSN1283-nrn_state
	.xword	735,.LSSN1284-nrn_state
	.xword	734,.LSSN1285-nrn_state
	.xword	741,.LSSN1286-nrn_state
	.xword	732,.LSSN1287-nrn_state
	.xword	739,.LSSN1288-nrn_state
	.xword	740,.LSSN1289-nrn_state
	.xword	733,.LSSN1290-nrn_state
	.xword	756,.LSSN1291-nrn_state
	.xword	733,.LSSN1292-nrn_state
	.xword	736,.LSSN1293-nrn_state
	.xword	733,.LSSN1294-nrn_state
	.xword	736,.LSSN1295-nrn_state
	.xword	755,.LSSN1296-nrn_state
	.xword	736,.LSSN1297-nrn_state
	.xword	743,.LSSN1298-nrn_state
	.xword	731,.LSSN1299-nrn_state
	.xword	756,.LSSN1300-nrn_state
	.xword	738,.LSSN1301-nrn_state
	.xword	756,.LSSN1302-nrn_state
	.xword	738,.LSSN1303-nrn_state
	.xword	742,.LSSN1304-nrn_state
	.xword	757,.LSSN1305-nrn_state
	.xword	742,.LSSN1306-nrn_state
	.xword	755,.LSSN1307-nrn_state
	.xword	742,.LSSN1308-nrn_state
	.xword	755,.LSSN1309-nrn_state
	.xword	756,.LSSN1310-nrn_state
	.xword	757,.LSSN1311-nrn_state
	.xword	755,.LSSN1312-nrn_state
	.xword	756,.LSSN1313-nrn_state
	.xword	757,.LSSN1314-nrn_state
	.xword	755,.LSSN1315-nrn_state
	.xword	756,.LSSN1316-nrn_state
	.xword	757,.LSSN1317-nrn_state
	.xword	755,.LSSN1318-nrn_state
	.xword	757,.LSSN1319-nrn_state
	.xword	756,.LSSN1320-nrn_state
	.xword	757,.LSSN1321-nrn_state
	.xword	755,.LSSN1322-nrn_state
	.xword	756,.LSSN1323-nrn_state
	.xword	757,.LSSN1324-nrn_state
	.xword	755,.LSSN1325-nrn_state
	.xword	756,.LSSN1326-nrn_state
	.xword	757,.LSSN1327-nrn_state
	.xword	755,.LSSN1328-nrn_state
	.xword	756,.LSSN1329-nrn_state
	.xword	757,.LSSN1330-nrn_state
	.xword	755,.LSSN1331-nrn_state
	.xword	756,.LSSN1332-nrn_state
	.xword	757,.LSSN1333-nrn_state
	.xword	755,.LSSN1334-nrn_state
	.xword	756,.LSSN1335-nrn_state
	.xword	757,.LSSN1336-nrn_state
	.xword	755,.LSSN1337-nrn_state
	.xword	756,.LSSN1338-nrn_state
	.xword	757,.LSSN1339-nrn_state
	.xword	755,.LSSN1340-nrn_state
	.xword	756,.LSSN1341-nrn_state
	.xword	757,.LSSN1342-nrn_state
	.xword	756,.LSSN1343-nrn_state
	.xword	755,.LSSN1344-nrn_state
	.xword	756,.LSSN1345-nrn_state
	.xword	757,.LSSN1346-nrn_state
	.xword	756,.LSSN1347-nrn_state
	.xword	755,.LSSN1348-nrn_state
	.xword	756,.LSSN1349-nrn_state
	.xword	755,.LSSN1350-nrn_state
	.xword	756,.LSSN1351-nrn_state
	.xword	757,.LSSN1352-nrn_state
	.xword	756,.LSSN1353-nrn_state
	.xword	755,.LSSN1354-nrn_state
	.xword	756,.LSSN1355-nrn_state
	.xword	757,.LSSN1356-nrn_state
	.xword	756,.LSSN1357-nrn_state
	.xword	755,.LSSN1358-nrn_state
	.xword	756,.LSSN1359-nrn_state
	.xword	757,.LSSN1360-nrn_state
	.xword	755,.LSSN1361-nrn_state
	.xword	756,.LSSN1362-nrn_state
	.xword	757,.LSSN1363-nrn_state
	.xword	755,.LSSN1364-nrn_state
	.xword	756,.LSSN1365-nrn_state
	.xword	757,.LSSN1366-nrn_state
	.xword	756,.LSSN1367-nrn_state
	.xword	758,.LSSN1368-nrn_state
	.xword	755,.LSSN1369-nrn_state
	.xword	757,.LSSN1370-nrn_state
	.xword	755,.LSSN1371-nrn_state
	.xword	758,.LSSN1372-nrn_state
	.xword	757,.LSSN1373-nrn_state
	.xword	758,.LSSN1374-nrn_state
	.xword	726,.LSSN1375-nrn_state
	.xword	728,.LSSN1376-nrn_state
	.xword	756,.LSSN1377-nrn_state
	.xword	728,.LSSN1378-nrn_state
	.xword	733,.LSSN1379-nrn_state
	.xword	756,.LSSN1380-nrn_state
	.xword	728,.LSSN1381-nrn_state
	.xword	733,.LSSN1382-nrn_state
	.xword	756,.LSSN1383-nrn_state
	.xword	733,.LSSN1384-nrn_state
	.xword	728,.LSSN1385-nrn_state
	.xword	729,.LSSN1386-nrn_state
	.xword	756,.LSSN1387-nrn_state
	.xword	733,.LSSN1388-nrn_state
	.xword	729,.LSSN1389-nrn_state
	.xword	756,.LSSN1390-nrn_state
	.xword	729,.LSSN1391-nrn_state
	.xword	756,.LSSN1392-nrn_state
	.xword	729,.LSSN1393-nrn_state
	.xword	756,.LSSN1394-nrn_state
	.xword	735,.LSSN1395-nrn_state
	.xword	756,.LSSN1396-nrn_state
	.xword	735,.LSSN1397-nrn_state
	.xword	756,.LSSN1398-nrn_state
	.xword	735,.LSSN1399-nrn_state
	.xword	756,.LSSN1400-nrn_state
	.xword	735,.LSSN1401-nrn_state
	.xword	756,.LSSN1402-nrn_state
	.xword	733,.LSSN1403-nrn_state
	.xword	755,.LSSN1404-nrn_state
	.xword	757,.LSSN1405-nrn_state
	.xword	756,.LSSN1406-nrn_state
	.xword	755,.LSSN1407-nrn_state
	.xword	757,.LSSN1408-nrn_state
	.xword	755,.LSSN1409-nrn_state
	.xword	756,.LSSN1410-nrn_state
	.xword	757,.LSSN1411-nrn_state
	.xword	756,.LSSN1412-nrn_state
	.xword	757,.LSSN1413-nrn_state
	.xword	755,.LSSN1414-nrn_state
	.xword	733,.LSSN1415-nrn_state
	.xword	756,.LSSN1416-nrn_state
	.xword	755,.LSSN1417-nrn_state
	.xword	757,.LSSN1418-nrn_state
	.xword	755,.LSSN1419-nrn_state
	.xword	757,.LSSN1420-nrn_state
	.xword	756,.LSSN1421-nrn_state
	.xword	757,.LSSN1422-nrn_state
	.xword	755,.LSSN1423-nrn_state
	.xword	756,.LSSN1424-nrn_state
	.xword	757,.LSSN1425-nrn_state
	.xword	755,.LSSN1426-nrn_state
	.xword	757,.LSSN1427-nrn_state
	.xword	756,.LSSN1428-nrn_state
	.xword	755,.LSSN1429-nrn_state
	.xword	756,.LSSN1430-nrn_state
	.xword	755,.LSSN1431-nrn_state
	.xword	757,.LSSN1432-nrn_state
	.xword	756,.LSSN1433-nrn_state
	.xword	755,.LSSN1434-nrn_state
	.xword	757,.LSSN1435-nrn_state
	.xword	756,.LSSN1436-nrn_state
	.xword	755,.LSSN1437-nrn_state
	.xword	757,.LSSN1438-nrn_state
	.xword	756,.LSSN1439-nrn_state
	.xword	755,.LSSN1440-nrn_state
	.xword	757,.LSSN1441-nrn_state
	.xword	756,.LSSN1442-nrn_state
	.xword	755,.LSSN1443-nrn_state
	.xword	757,.LSSN1444-nrn_state
	.xword	756,.LSSN1445-nrn_state
	.xword	755,.LSSN1446-nrn_state
	.xword	757,.LSSN1447-nrn_state
	.xword	756,.LSSN1448-nrn_state
	.xword	755,.LSSN1449-nrn_state
	.xword	757,.LSSN1450-nrn_state
	.xword	756,.LSSN1451-nrn_state
	.xword	755,.LSSN1452-nrn_state
	.xword	757,.LSSN1453-nrn_state
	.xword	756,.LSSN1454-nrn_state
	.xword	755,.LSSN1455-nrn_state
	.xword	757,.LSSN1456-nrn_state
	.xword	756,.LSSN1457-nrn_state
	.xword	755,.LSSN1458-nrn_state
	.xword	757,.LSSN1459-nrn_state
	.xword	756,.LSSN1460-nrn_state
	.xword	755,.LSSN1461-nrn_state
	.xword	757,.LSSN1462-nrn_state
	.xword	756,.LSSN1463-nrn_state
	.xword	755,.LSSN1464-nrn_state
	.xword	756,.LSSN1465-nrn_state
	.xword	757,.LSSN1466-nrn_state
	.xword	756,.LSSN1467-nrn_state
	.xword	755,.LSSN1468-nrn_state
	.xword	757,.LSSN1469-nrn_state
	.xword	756,.LSSN1470-nrn_state
	.xword	755,.LSSN1471-nrn_state
	.xword	757,.LSSN1472-nrn_state
	.xword	756,.LSSN1473-nrn_state
	.xword	755,.LSSN1474-nrn_state
	.xword	757,.LSSN1475-nrn_state
	.xword	756,.LSSN1476-nrn_state
	.xword	755,.LSSN1477-nrn_state
	.xword	757,.LSSN1478-nrn_state
	.xword	756,.LSSN1479-nrn_state
	.xword	755,.LSSN1480-nrn_state
	.xword	757,.LSSN1481-nrn_state
	.xword	755,.LSSN1482-nrn_state
	.xword	757,.LSSN1483-nrn_state
	.xword	763,.LSSN1484-nrn_state
	.xword	765,.LSSN1485-nrn_state
	.xword	766,.LSSN1486-nrn_state
	.xword	769,.LSSN1487-nrn_state
	.xword	765,.LSSN1488-nrn_state
	.xword	766,.LSSN1489-nrn_state
	.xword	767,.LSSN1490-nrn_state
	.xword	768,.LSSN1491-nrn_state
	.xword	765,.LSSN1492-nrn_state
	.xword	766,.LSSN1493-nrn_state
	.xword	765,.LSSN1494-nrn_state
	.xword	766,.LSSN1495-nrn_state
	.xword	767,.LSSN1496-nrn_state
	.xword	768,.LSSN1497-nrn_state
	.xword	765,.LSSN1498-nrn_state
	.xword	766,.LSSN1499-nrn_state
	.xword	765,.LSSN1500-nrn_state
	.xword	766,.LSSN1501-nrn_state
	.xword	767,.LSSN1502-nrn_state
	.xword	768,.LSSN1503-nrn_state
	.xword	765,.LSSN1504-nrn_state
	.xword	766,.LSSN1505-nrn_state
	.xword	765,.LSSN1506-nrn_state
	.xword	766,.LSSN1507-nrn_state
	.xword	767,.LSSN1508-nrn_state
	.xword	768,.LSSN1509-nrn_state
	.xword	765,.LSSN1510-nrn_state
	.xword	766,.LSSN1511-nrn_state
	.xword	765,.LSSN1512-nrn_state
	.xword	766,.LSSN1513-nrn_state
	.xword	767,.LSSN1514-nrn_state
	.xword	768,.LSSN1515-nrn_state
	.xword	765,.LSSN1516-nrn_state
	.xword	766,.LSSN1517-nrn_state
	.xword	769,.LSSN1518-nrn_state
	.xword	765,.LSSN1519-nrn_state
	.xword	769,.LSSN1520-nrn_state
	.xword	766,.LSSN1521-nrn_state
	.xword	767,.LSSN1522-nrn_state
	.xword	769,.LSSN1523-nrn_state
	.xword	767,.LSSN1524-nrn_state
	.xword	768,.LSSN1525-nrn_state
	.xword	769,.LSSN1526-nrn_state
	.xword	768,.LSSN1527-nrn_state
	.xword	769,.LSSN1528-nrn_state
	.xword	763,.LSSN1529-nrn_state
	.xword	765,.LSSN1530-nrn_state
	.xword	766,.LSSN1531-nrn_state
	.xword	769,.LSSN1532-nrn_state
	.xword	765,.LSSN1533-nrn_state
	.xword	766,.LSSN1534-nrn_state
	.xword	767,.LSSN1535-nrn_state
	.xword	768,.LSSN1536-nrn_state
	.xword	769,.LSSN1537-nrn_state
	.xword	768,.LSSN1538-nrn_state
	.xword	769,.LSSN1539-nrn_state
	.xword	770,.LSSN1540-nrn_state
	.xword	682,.LSSN1541-nrn_state
	.xword	683,.LSSN1542-nrn_state
	.xword	684,.LSSN1543-nrn_state
	.xword	673,.LSSN1544-nrn_state
	.xword	674,.LSSN1545-nrn_state
	.xword	675,.LSSN1546-nrn_state
	.xword	770,.LSSN1547-nrn_state
	.xword	0,.LSSN1548-nrn_state
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn_nrn_state+14968
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn_nrn_jacob:
	.xword	0
	.word	0
	.word	864
	.xword	602,.LSSN562-nrn_jacob
	.xword	606,.LSSN563-nrn_jacob
	.xword	608,.LSSN564-nrn_jacob
	.xword	610,.LSSN565-nrn_jacob
	.xword	611,.LSSN566-nrn_jacob
	.xword	613,.LSSN567-nrn_jacob
	.xword	611,.LSSN568-nrn_jacob
	.xword	613,.LSSN569-nrn_jacob
	.xword	614,.LSSN570-nrn_jacob
	.xword	615,.LSSN571-nrn_jacob
	.xword	618,.LSSN572-nrn_jacob
	.xword	619,.LSSN573-nrn_jacob
	.xword	611,.LSSN574-nrn_jacob
	.xword	613,.LSSN575-nrn_jacob
	.xword	611,.LSSN576-nrn_jacob
	.xword	613,.LSSN577-nrn_jacob
	.xword	611,.LSSN578-nrn_jacob
	.xword	613,.LSSN579-nrn_jacob
	.xword	614,.LSSN580-nrn_jacob
	.xword	615,.LSSN581-nrn_jacob
	.xword	618,.LSSN582-nrn_jacob
	.xword	619,.LSSN583-nrn_jacob
	.xword	611,.LSSN584-nrn_jacob
	.xword	613,.LSSN585-nrn_jacob
	.xword	611,.LSSN586-nrn_jacob
	.xword	613,.LSSN587-nrn_jacob
	.xword	611,.LSSN588-nrn_jacob
	.xword	613,.LSSN589-nrn_jacob
	.xword	614,.LSSN590-nrn_jacob
	.xword	615,.LSSN591-nrn_jacob
	.xword	618,.LSSN592-nrn_jacob
	.xword	619,.LSSN593-nrn_jacob
	.xword	611,.LSSN594-nrn_jacob
	.xword	613,.LSSN595-nrn_jacob
	.xword	611,.LSSN596-nrn_jacob
	.xword	613,.LSSN597-nrn_jacob
	.xword	611,.LSSN598-nrn_jacob
	.xword	613,.LSSN599-nrn_jacob
	.xword	614,.LSSN600-nrn_jacob
	.xword	615,.LSSN601-nrn_jacob
	.xword	618,.LSSN602-nrn_jacob
	.xword	619,.LSSN603-nrn_jacob
	.xword	622,.LSSN604-nrn_jacob
	.xword	610,.LSSN605-nrn_jacob
	.xword	611,.LSSN606-nrn_jacob
	.xword	613,.LSSN607-nrn_jacob
	.xword	611,.LSSN608-nrn_jacob
	.xword	613,.LSSN609-nrn_jacob
	.xword	614,.LSSN610-nrn_jacob
	.xword	615,.LSSN611-nrn_jacob
	.xword	618,.LSSN612-nrn_jacob
	.xword	619,.LSSN613-nrn_jacob
	.xword	622,.LSSN614-nrn_jacob
	.xword	0,.LSSN615-nrn_jacob
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn_nrn_jacob+904
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn_nrn_cur:
	.xword	0
	.word	0
	.word	544
	.xword	558,.LSSN528-nrn_cur
	.xword	562,.LSSN529-nrn_cur
	.xword	564,.LSSN530-nrn_cur
	.xword	565,.LSSN531-nrn_cur
	.xword	566,.LSSN532-nrn_cur
	.xword	567,.LSSN533-nrn_cur
	.xword	569,.LSSN534-nrn_cur
	.xword	567,.LSSN535-nrn_cur
	.xword	569,.LSSN536-nrn_cur
	.xword	570,.LSSN537-nrn_cur
	.xword	571,.LSSN538-nrn_cur
	.xword	574,.LSSN539-nrn_cur
	.xword	575,.LSSN540-nrn_cur
	.xword	577,.LSSN541-nrn_cur
	.xword	579,.LSSN542-nrn_cur
	.xword	577,.LSSN543-nrn_cur
	.xword	579,.LSSN544-nrn_cur
	.xword	577,.LSSN545-nrn_cur
	.xword	578,.LSSN546-nrn_cur
	.xword	579,.LSSN547-nrn_cur
	.xword	584,.LSSN548-nrn_cur
	.xword	583,.LSSN549-nrn_cur
	.xword	584,.LSSN550-nrn_cur
	.xword	585,.LSSN551-nrn_cur
	.xword	586,.LSSN552-nrn_cur
	.xword	588,.LSSN553-nrn_cur
	.xword	589,.LSSN554-nrn_cur
	.xword	590,.LSSN555-nrn_cur
	.xword	592,.LSSN556-nrn_cur
	.xword	593,.LSSN557-nrn_cur
	.xword	594,.LSSN558-nrn_cur
	.xword	597,.LSSN559-nrn_cur
	.xword	600,.LSSN560-nrn_cur
	.xword	0,.LSSN561-nrn_cur
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn_nrn_cur+584
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__nrn_current:
	.xword	0
	.word	0
	.word	192
	.xword	544,.LSSN516-_nrn_current
	.xword	545,.LSSN517-_nrn_current
	.xword	546,.LSSN518-_nrn_current
	.xword	547,.LSSN519-_nrn_current
	.xword	548,.LSSN520-_nrn_current
	.xword	549,.LSSN521-_nrn_current
	.xword	553,.LSSN522-_nrn_current
	.xword	549,.LSSN523-_nrn_current
	.xword	553,.LSSN524-_nrn_current
	.xword	555,.LSSN525-_nrn_current
	.xword	556,.LSSN526-_nrn_current
	.xword	0,.LSSN527-_nrn_current
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__nrn_current+232
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn_nrn_init:
	.xword	0
	.word	0
	.word	1152
	.xword	515,.LSSN444-nrn_init
	.xword	519,.LSSN445-nrn_init
	.xword	521,.LSSN446-nrn_init
	.xword	522,.LSSN447-nrn_init
	.xword	523,.LSSN448-nrn_init
	.xword	524,.LSSN449-nrn_init
	.xword	530,.LSSN450-nrn_init
	.xword	524,.LSSN451-nrn_init
	.xword	530,.LSSN452-nrn_init
	.xword	531,.LSSN453-nrn_init
	.xword	532,.LSSN454-nrn_init
	.xword	535,.LSSN455-nrn_init
	.xword	536,.LSSN456-nrn_init
	.xword	538,.LSSN457-nrn_init
	.xword	338,.LSSN458-nrn_init
	.xword	539,.LSSN459-nrn_init
	.xword	540,.LSSN460-nrn_init
	.xword	502,.LSSN461-nrn_init
	.xword	503,.LSSN462-nrn_init
	.xword	504,.LSSN463-nrn_init
	.xword	338,.LSSN464-nrn_init
	.xword	507,.LSSN465-nrn_init
	.xword	542,.LSSN466-nrn_init
	.xword	507,.LSSN467-nrn_init
	.xword	508,.LSSN468-nrn_init
	.xword	509,.LSSN469-nrn_init
	.xword	524,.LSSN470-nrn_init
	.xword	530,.LSSN471-nrn_init
	.xword	524,.LSSN472-nrn_init
	.xword	530,.LSSN473-nrn_init
	.xword	531,.LSSN474-nrn_init
	.xword	532,.LSSN475-nrn_init
	.xword	535,.LSSN476-nrn_init
	.xword	536,.LSSN477-nrn_init
	.xword	538,.LSSN478-nrn_init
	.xword	338,.LSSN479-nrn_init
	.xword	539,.LSSN480-nrn_init
	.xword	540,.LSSN481-nrn_init
	.xword	502,.LSSN482-nrn_init
	.xword	503,.LSSN483-nrn_init
	.xword	504,.LSSN484-nrn_init
	.xword	338,.LSSN485-nrn_init
	.xword	507,.LSSN486-nrn_init
	.xword	542,.LSSN487-nrn_init
	.xword	507,.LSSN488-nrn_init
	.xword	508,.LSSN489-nrn_init
	.xword	509,.LSSN490-nrn_init
	.xword	542,.LSSN491-nrn_init
	.xword	523,.LSSN492-nrn_init
	.xword	524,.LSSN493-nrn_init
	.xword	530,.LSSN494-nrn_init
	.xword	524,.LSSN495-nrn_init
	.xword	530,.LSSN496-nrn_init
	.xword	531,.LSSN497-nrn_init
	.xword	532,.LSSN498-nrn_init
	.xword	535,.LSSN499-nrn_init
	.xword	536,.LSSN500-nrn_init
	.xword	538,.LSSN501-nrn_init
	.xword	338,.LSSN502-nrn_init
	.xword	539,.LSSN503-nrn_init
	.xword	540,.LSSN504-nrn_init
	.xword	502,.LSSN505-nrn_init
	.xword	503,.LSSN506-nrn_init
	.xword	504,.LSSN507-nrn_init
	.xword	338,.LSSN508-nrn_init
	.xword	507,.LSSN509-nrn_init
	.xword	542,.LSSN510-nrn_init
	.xword	507,.LSSN511-nrn_init
	.xword	508,.LSSN512-nrn_init
	.xword	509,.LSSN513-nrn_init
	.xword	542,.LSSN514-nrn_init
	.xword	0,.LSSN515-nrn_init
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn_nrn_init+1192
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__update_ion_pointer:
	.xword	0
	.word	0
	.word	144
	.xword	491,.LSSN435-_update_ion_pointer
	.xword	492,.LSSN436-_update_ion_pointer
	.xword	493,.LSSN437-_update_ion_pointer
	.xword	494,.LSSN438-_update_ion_pointer
	.xword	495,.LSSN439-_update_ion_pointer
	.xword	496,.LSSN440-_update_ion_pointer
	.xword	497,.LSSN441-_update_ion_pointer
	.xword	498,.LSSN442-_update_ion_pointer
	.xword	0,.LSSN443-_update_ion_pointer
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__update_ion_pointer+184
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__thread_cleanup:
	.xword	0
	.word	0
	.word	144
	.xword	483,.LSSN426-_thread_cleanup
	.xword	484,.LSSN427-_thread_cleanup
	.xword	487,.LSSN428-_thread_cleanup
	.xword	488,.LSSN429-_thread_cleanup
	.xword	489,.LSSN430-_thread_cleanup
	.xword	485,.LSSN431-_thread_cleanup
	.xword	486,.LSSN432-_thread_cleanup
	.xword	489,.LSSN433-_thread_cleanup
	.xword	0,.LSSN434-_thread_cleanup
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__thread_cleanup+184
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__thread_mem_init:
	.xword	0
	.word	0
	.word	144
	.xword	476,.LSSN417-_thread_mem_init
	.xword	477,.LSSN418-_thread_mem_init
	.xword	479,.LSSN419-_thread_mem_init
	.xword	480,.LSSN420-_thread_mem_init
	.xword	481,.LSSN421-_thread_mem_init
	.xword	477,.LSSN422-_thread_mem_init
	.xword	478,.LSSN423-_thread_mem_init
	.xword	481,.LSSN424-_thread_mem_init
	.xword	0,.LSSN425-_thread_mem_init
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__thread_mem_init+184
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__ode_matsol:
	.xword	0
	.word	0
	.word	336
	.xword	462,.LSSN396-_ode_matsol
	.xword	465,.LSSN397-_ode_matsol
	.xword	466,.LSSN398-_ode_matsol
	.xword	467,.LSSN399-_ode_matsol
	.xword	468,.LSSN400-_ode_matsol
	.xword	470,.LSSN401-_ode_matsol
	.xword	338,.LSSN402-_ode_matsol
	.xword	468,.LSSN403-_ode_matsol
	.xword	470,.LSSN404-_ode_matsol
	.xword	338,.LSSN405-_ode_matsol
	.xword	470,.LSSN406-_ode_matsol
	.xword	471,.LSSN407-_ode_matsol
	.xword	472,.LSSN408-_ode_matsol
	.xword	338,.LSSN409-_ode_matsol
	.xword	289,.LSSN410-_ode_matsol
	.xword	474,.LSSN411-_ode_matsol
	.xword	289,.LSSN412-_ode_matsol
	.xword	290,.LSSN413-_ode_matsol
	.xword	291,.LSSN414-_ode_matsol
	.xword	474,.LSSN415-_ode_matsol
	.xword	0,.LSSN416-_ode_matsol
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__ode_matsol+376
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__ode_map:
	.xword	0
	.word	0
	.word	400
	.xword	452,.LSSN371-_ode_map
	.xword	455,.LSSN372-_ode_map
	.xword	457,.LSSN373-_ode_map
	.xword	458,.LSSN374-_ode_map
	.xword	457,.LSSN375-_ode_map
	.xword	458,.LSSN376-_ode_map
	.xword	457,.LSSN377-_ode_map
	.xword	458,.LSSN378-_ode_map
	.xword	457,.LSSN379-_ode_map
	.xword	458,.LSSN380-_ode_map
	.xword	457,.LSSN381-_ode_map
	.xword	458,.LSSN382-_ode_map
	.xword	457,.LSSN383-_ode_map
	.xword	458,.LSSN384-_ode_map
	.xword	457,.LSSN385-_ode_map
	.xword	458,.LSSN386-_ode_map
	.xword	457,.LSSN387-_ode_map
	.xword	458,.LSSN388-_ode_map
	.xword	457,.LSSN389-_ode_map
	.xword	458,.LSSN390-_ode_map
	.xword	457,.LSSN391-_ode_map
	.xword	458,.LSSN392-_ode_map
	.xword	459,.LSSN393-_ode_map
	.xword	460,.LSSN394-_ode_map
	.xword	0,.LSSN395-_ode_map
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__ode_map+440
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__ode_spec:
	.xword	0
	.word	0
	.word	864
	.xword	438,.LSSN317-_ode_spec
	.xword	441,.LSSN318-_ode_spec
	.xword	442,.LSSN319-_ode_spec
	.xword	443,.LSSN320-_ode_spec
	.xword	444,.LSSN321-_ode_spec
	.xword	446,.LSSN322-_ode_spec
	.xword	338,.LSSN323-_ode_spec
	.xword	444,.LSSN324-_ode_spec
	.xword	446,.LSSN325-_ode_spec
	.xword	338,.LSSN326-_ode_spec
	.xword	446,.LSSN327-_ode_spec
	.xword	447,.LSSN328-_ode_spec
	.xword	448,.LSSN329-_ode_spec
	.xword	338,.LSSN330-_ode_spec
	.xword	281,.LSSN331-_ode_spec
	.xword	338,.LSSN332-_ode_spec
	.xword	281,.LSSN333-_ode_spec
	.xword	282,.LSSN334-_ode_spec
	.xword	283,.LSSN335-_ode_spec
	.xword	444,.LSSN336-_ode_spec
	.xword	445,.LSSN337-_ode_spec
	.xword	444,.LSSN338-_ode_spec
	.xword	445,.LSSN339-_ode_spec
	.xword	444,.LSSN340-_ode_spec
	.xword	446,.LSSN341-_ode_spec
	.xword	338,.LSSN342-_ode_spec
	.xword	446,.LSSN343-_ode_spec
	.xword	447,.LSSN344-_ode_spec
	.xword	448,.LSSN345-_ode_spec
	.xword	338,.LSSN346-_ode_spec
	.xword	281,.LSSN347-_ode_spec
	.xword	450,.LSSN348-_ode_spec
	.xword	281,.LSSN349-_ode_spec
	.xword	282,.LSSN350-_ode_spec
	.xword	283,.LSSN351-_ode_spec
	.xword	450,.LSSN352-_ode_spec
	.xword	443,.LSSN353-_ode_spec
	.xword	444,.LSSN354-_ode_spec
	.xword	446,.LSSN355-_ode_spec
	.xword	338,.LSSN356-_ode_spec
	.xword	444,.LSSN357-_ode_spec
	.xword	446,.LSSN358-_ode_spec
	.xword	338,.LSSN359-_ode_spec
	.xword	446,.LSSN360-_ode_spec
	.xword	447,.LSSN361-_ode_spec
	.xword	448,.LSSN362-_ode_spec
	.xword	338,.LSSN363-_ode_spec
	.xword	281,.LSSN364-_ode_spec
	.xword	450,.LSSN365-_ode_spec
	.xword	281,.LSSN366-_ode_spec
	.xword	282,.LSSN367-_ode_spec
	.xword	283,.LSSN368-_ode_spec
	.xword	450,.LSSN369-_ode_spec
	.xword	0,.LSSN370-_ode_spec
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__ode_spec+904
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__ode_count:
	.xword	0
	.word	0
	.word	32
	.xword	436,.LSSN315-_ode_count
	.xword	0,.LSSN316-_ode_count
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__ode_count+72
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__hoc_vtrap:
	.xword	0
	.word	0
	.word	144
	.xword	426,.LSSN306-_hoc_vtrap
	.xword	432,.LSSN307-_hoc_vtrap
	.xword	416,.LSSN308-_hoc_vtrap
	.xword	420,.LSSN309-_hoc_vtrap
	.xword	421,.LSSN310-_hoc_vtrap
	.xword	417,.LSSN311-_hoc_vtrap
	.xword	433,.LSSN312-_hoc_vtrap
	.xword	434,.LSSN313-_hoc_vtrap
	.xword	0,.LSSN314-_hoc_vtrap
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__hoc_vtrap+184
	.ascii "hh_k.c\000"
	.section	".rodata"
	.global	jli.ssn_vtrap_hh_k
	.align	8
jli.ssn_vtrap_hh_k:
	.xword	0
	.word	0
	.word	144
	.xword	412,.LSSN297-vtrap_hh_k
	.xword	416,.LSSN298-vtrap_hh_k
	.xword	420,.LSSN299-vtrap_hh_k
	.xword	421,.LSSN300-vtrap_hh_k
	.xword	424,.LSSN301-vtrap_hh_k
	.xword	417,.LSSN302-vtrap_hh_k
	.xword	418,.LSSN303-vtrap_hh_k
	.xword	424,.LSSN304-vtrap_hh_k
	.xword	0,.LSSN305-vtrap_hh_k
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn_vtrap_hh_k+184
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__hoc_rates:
	.xword	0
	.word	0
	.word	224
	.xword	397,.LSSN283-_hoc_rates
	.xword	400,.LSSN284-_hoc_rates
	.xword	401,.LSSN285-_hoc_rates
	.xword	402,.LSSN286-_hoc_rates
	.xword	405,.LSSN287-_hoc_rates
	.xword	402,.LSSN288-_hoc_rates
	.xword	405,.LSSN289-_hoc_rates
	.xword	402,.LSSN290-_hoc_rates
	.xword	405,.LSSN291-_hoc_rates
	.xword	408,.LSSN292-_hoc_rates
	.xword	338,.LSSN293-_hoc_rates
	.xword	409,.LSSN294-_hoc_rates
	.xword	410,.LSSN295-_hoc_rates
	.xword	0,.LSSN296-_hoc_rates
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__hoc_rates+264
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__f_rates:
	.xword	0
	.word	0
	.word	1520
	.xword	375,.LSSN188-_f_rates
	.xword	379,.LSSN189-_f_rates
	.xword	380,.LSSN190-_f_rates
	.xword	416,.LSSN191-_f_rates
	.xword	380,.LSSN192-_f_rates
	.xword	416,.LSSN193-_f_rates
	.xword	420,.LSSN194-_f_rates
	.xword	421,.LSSN195-_f_rates
	.xword	417,.LSSN196-_f_rates
	.xword	380,.LSSN197-_f_rates
	.xword	381,.LSSN198-_f_rates
	.xword	380,.LSSN199-_f_rates
	.xword	381,.LSSN200-_f_rates
	.xword	382,.LSSN201-_f_rates
	.xword	383,.LSSN202-_f_rates
	.xword	385,.LSSN203-_f_rates
	.xword	383,.LSSN204-_f_rates
	.xword	382,.LSSN205-_f_rates
	.xword	383,.LSSN206-_f_rates
	.xword	385,.LSSN207-_f_rates
	.xword	382,.LSSN208-_f_rates
	.xword	385,.LSSN209-_f_rates
	.xword	383,.LSSN210-_f_rates
	.xword	384,.LSSN211-_f_rates
	.xword	383,.LSSN212-_f_rates
	.xword	384,.LSSN213-_f_rates
	.xword	383,.LSSN214-_f_rates
	.xword	384,.LSSN215-_f_rates
	.xword	383,.LSSN216-_f_rates
	.xword	384,.LSSN217-_f_rates
	.xword	383,.LSSN218-_f_rates
	.xword	384,.LSSN219-_f_rates
	.xword	383,.LSSN220-_f_rates
	.xword	384,.LSSN221-_f_rates
	.xword	385,.LSSN222-_f_rates
	.xword	386,.LSSN223-_f_rates
	.xword	385,.LSSN224-_f_rates
	.xword	386,.LSSN225-_f_rates
	.xword	387,.LSSN226-_f_rates
	.xword	390,.LSSN227-_f_rates
	.xword	388,.LSSN228-_f_rates
	.xword	390,.LSSN229-_f_rates
	.xword	387,.LSSN230-_f_rates
	.xword	390,.LSSN231-_f_rates
	.xword	387,.LSSN232-_f_rates
	.xword	390,.LSSN233-_f_rates
	.xword	387,.LSSN234-_f_rates
	.xword	388,.LSSN235-_f_rates
	.xword	416,.LSSN236-_f_rates
	.xword	387,.LSSN237-_f_rates
	.xword	416,.LSSN238-_f_rates
	.xword	387,.LSSN239-_f_rates
	.xword	416,.LSSN240-_f_rates
	.xword	387,.LSSN241-_f_rates
	.xword	416,.LSSN242-_f_rates
	.xword	387,.LSSN243-_f_rates
	.xword	388,.LSSN244-_f_rates
	.xword	389,.LSSN245-_f_rates
	.xword	388,.LSSN246-_f_rates
	.xword	389,.LSSN247-_f_rates
	.xword	388,.LSSN248-_f_rates
	.xword	389,.LSSN249-_f_rates
	.xword	388,.LSSN250-_f_rates
	.xword	389,.LSSN251-_f_rates
	.xword	388,.LSSN252-_f_rates
	.xword	389,.LSSN253-_f_rates
	.xword	388,.LSSN254-_f_rates
	.xword	389,.LSSN255-_f_rates
	.xword	416,.LSSN256-_f_rates
	.xword	420,.LSSN257-_f_rates
	.xword	421,.LSSN258-_f_rates
	.xword	417,.LSSN259-_f_rates
	.xword	390,.LSSN260-_f_rates
	.xword	391,.LSSN261-_f_rates
	.xword	390,.LSSN262-_f_rates
	.xword	391,.LSSN263-_f_rates
	.xword	392,.LSSN264-_f_rates
	.xword	393,.LSSN265-_f_rates
	.xword	394,.LSSN266-_f_rates
	.xword	393,.LSSN267-_f_rates
	.xword	392,.LSSN268-_f_rates
	.xword	393,.LSSN269-_f_rates
	.xword	394,.LSSN270-_f_rates
	.xword	393,.LSSN271-_f_rates
	.xword	394,.LSSN272-_f_rates
	.xword	393,.LSSN273-_f_rates
	.xword	394,.LSSN274-_f_rates
	.xword	393,.LSSN275-_f_rates
	.xword	394,.LSSN276-_f_rates
	.xword	393,.LSSN277-_f_rates
	.xword	394,.LSSN278-_f_rates
	.xword	393,.LSSN279-_f_rates
	.xword	394,.LSSN280-_f_rates
	.xword	395,.LSSN281-_f_rates
	.xword	0,.LSSN282-_f_rates
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__f_rates+1560
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__n_rates:
	.xword	0
	.word	0
	.word	640
	.xword	342,.LSSN148-_n_rates
	.xword	344,.LSSN149-_n_rates
	.xword	347,.LSSN150-_n_rates
	.xword	348,.LSSN151-_n_rates
	.xword	349,.LSSN152-_n_rates
	.xword	348,.LSSN153-_n_rates
	.xword	349,.LSSN154-_n_rates
	.xword	357,.LSSN155-_n_rates
	.xword	365,.LSSN156-_n_rates
	.xword	366,.LSSN157-_n_rates
	.xword	365,.LSSN158-_n_rates
	.xword	366,.LSSN159-_n_rates
	.xword	365,.LSSN160-_n_rates
	.xword	366,.LSSN161-_n_rates
	.xword	365,.LSSN162-_n_rates
	.xword	366,.LSSN163-_n_rates
	.xword	367,.LSSN164-_n_rates
	.xword	368,.LSSN165-_n_rates
	.xword	369,.LSSN166-_n_rates
	.xword	370,.LSSN167-_n_rates
	.xword	371,.LSSN168-_n_rates
	.xword	372,.LSSN169-_n_rates
	.xword	358,.LSSN170-_n_rates
	.xword	359,.LSSN171-_n_rates
	.xword	360,.LSSN172-_n_rates
	.xword	361,.LSSN173-_n_rates
	.xword	362,.LSSN174-_n_rates
	.xword	363,.LSSN175-_n_rates
	.xword	364,.LSSN176-_n_rates
	.xword	350,.LSSN177-_n_rates
	.xword	351,.LSSN178-_n_rates
	.xword	352,.LSSN179-_n_rates
	.xword	353,.LSSN180-_n_rates
	.xword	354,.LSSN181-_n_rates
	.xword	355,.LSSN182-_n_rates
	.xword	356,.LSSN183-_n_rates
	.xword	345,.LSSN184-_n_rates
	.xword	346,.LSSN185-_n_rates
	.xword	372,.LSSN186-_n_rates
	.xword	0,.LSSN187-_n_rates
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__n_rates+680
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__check_rates:
	.xword	0
	.word	0
	.word	1168
	.xword	303,.LSSN75-_check_rates
	.xword	307,.LSSN76-_check_rates
	.xword	308,.LSSN77-_check_rates
	.xword	309,.LSSN78-_check_rates
	.xword	310,.LSSN79-_check_rates
	.xword	309,.LSSN80-_check_rates
	.xword	310,.LSSN81-_check_rates
	.xword	312,.LSSN82-_check_rates
	.xword	310,.LSSN83-_check_rates
	.xword	312,.LSSN84-_check_rates
	.xword	313,.LSSN85-_check_rates
	.xword	314,.LSSN86-_check_rates
	.xword	315,.LSSN87-_check_rates
	.xword	329,.LSSN88-_check_rates
	.xword	314,.LSSN89-_check_rates
	.xword	315,.LSSN90-_check_rates
	.xword	314,.LSSN91-_check_rates
	.xword	329,.LSSN92-_check_rates
	.xword	315,.LSSN93-_check_rates
	.xword	329,.LSSN94-_check_rates
	.xword	315,.LSSN95-_check_rates
	.xword	316,.LSSN96-_check_rates
	.xword	317,.LSSN97-_check_rates
	.xword	318,.LSSN98-_check_rates
	.xword	319,.LSSN99-_check_rates
	.xword	320,.LSSN100-_check_rates
	.xword	322,.LSSN101-_check_rates
	.xword	323,.LSSN102-_check_rates
	.xword	324,.LSSN103-_check_rates
	.xword	325,.LSSN104-_check_rates
	.xword	326,.LSSN105-_check_rates
	.xword	327,.LSSN106-_check_rates
	.xword	314,.LSSN107-_check_rates
	.xword	329,.LSSN108-_check_rates
	.xword	315,.LSSN109-_check_rates
	.xword	329,.LSSN110-_check_rates
	.xword	315,.LSSN111-_check_rates
	.xword	329,.LSSN112-_check_rates
	.xword	315,.LSSN113-_check_rates
	.xword	316,.LSSN114-_check_rates
	.xword	317,.LSSN115-_check_rates
	.xword	318,.LSSN116-_check_rates
	.xword	319,.LSSN117-_check_rates
	.xword	320,.LSSN118-_check_rates
	.xword	329,.LSSN119-_check_rates
	.xword	322,.LSSN120-_check_rates
	.xword	323,.LSSN121-_check_rates
	.xword	324,.LSSN122-_check_rates
	.xword	325,.LSSN123-_check_rates
	.xword	326,.LSSN124-_check_rates
	.xword	327,.LSSN125-_check_rates
	.xword	329,.LSSN126-_check_rates
	.xword	314,.LSSN127-_check_rates
	.xword	315,.LSSN128-_check_rates
	.xword	322,.LSSN129-_check_rates
	.xword	315,.LSSN130-_check_rates
	.xword	316,.LSSN131-_check_rates
	.xword	317,.LSSN132-_check_rates
	.xword	318,.LSSN133-_check_rates
	.xword	319,.LSSN134-_check_rates
	.xword	320,.LSSN135-_check_rates
	.xword	322,.LSSN136-_check_rates
	.xword	330,.LSSN137-_check_rates
	.xword	322,.LSSN138-_check_rates
	.xword	323,.LSSN139-_check_rates
	.xword	324,.LSSN140-_check_rates
	.xword	325,.LSSN141-_check_rates
	.xword	326,.LSSN142-_check_rates
	.xword	327,.LSSN143-_check_rates
	.xword	330,.LSSN144-_check_rates
	.xword	327,.LSSN145-_check_rates
	.xword	332,.LSSN146-_check_rates
	.xword	0,.LSSN147-_check_rates
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__check_rates+1208
	.ascii "hh_k.c\000"
	.section	".rodata"
	.global	jli.ssn__hh_k_reg
	.align	8
jli.ssn__hh_k_reg:
	.xword	0
	.word	0
	.word	496
	.xword	220,.LSSN44-_hh_k_reg
	.xword	222,.LSSN45-_hh_k_reg
	.xword	223,.LSSN46-_hh_k_reg
	.xword	224,.LSSN47-_hh_k_reg
	.xword	225,.LSSN48-_hh_k_reg
	.xword	226,.LSSN49-_hh_k_reg
	.xword	225,.LSSN50-_hh_k_reg
	.xword	226,.LSSN51-_hh_k_reg
	.xword	227,.LSSN52-_hh_k_reg
	.xword	228,.LSSN53-_hh_k_reg
	.xword	229,.LSSN54-_hh_k_reg
	.xword	477,.LSSN55-_hh_k_reg
	.xword	479,.LSSN56-_hh_k_reg
	.xword	480,.LSSN57-_hh_k_reg
	.xword	477,.LSSN58-_hh_k_reg
	.xword	478,.LSSN59-_hh_k_reg
	.xword	230,.LSSN60-_hh_k_reg
	.xword	231,.LSSN61-_hh_k_reg
	.xword	232,.LSSN62-_hh_k_reg
	.xword	233,.LSSN63-_hh_k_reg
	.xword	234,.LSSN64-_hh_k_reg
	.xword	235,.LSSN65-_hh_k_reg
	.xword	236,.LSSN66-_hh_k_reg
	.xword	237,.LSSN67-_hh_k_reg
	.xword	238,.LSSN68-_hh_k_reg
	.xword	239,.LSSN69-_hh_k_reg
	.xword	240,.LSSN70-_hh_k_reg
	.xword	241,.LSSN71-_hh_k_reg
	.xword	242,.LSSN72-_hh_k_reg
	.xword	243,.LSSN73-_hh_k_reg
	.xword	0,.LSSN74-_hh_k_reg
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__hh_k_reg+536
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn_nrn_alloc:
	.xword	0
	.word	0
	.word	512
	.xword	183,.LSSN12-nrn_alloc
	.xword	188,.LSSN13-nrn_alloc
	.xword	190,.LSSN14-nrn_alloc
	.xword	195,.LSSN15-nrn_alloc
	.xword	190,.LSSN16-nrn_alloc
	.xword	196,.LSSN17-nrn_alloc
	.xword	190,.LSSN18-nrn_alloc
	.xword	196,.LSSN19-nrn_alloc
	.xword	190,.LSSN20-nrn_alloc
	.xword	191,.LSSN21-nrn_alloc
	.xword	192,.LSSN22-nrn_alloc
	.xword	193,.LSSN23-nrn_alloc
	.xword	190,.LSSN24-nrn_alloc
	.xword	191,.LSSN25-nrn_alloc
	.xword	192,.LSSN26-nrn_alloc
	.xword	193,.LSSN27-nrn_alloc
	.xword	194,.LSSN28-nrn_alloc
	.xword	195,.LSSN29-nrn_alloc
	.xword	196,.LSSN30-nrn_alloc
	.xword	197,.LSSN31-nrn_alloc
	.xword	199,.LSSN32-nrn_alloc
	.xword	200,.LSSN33-nrn_alloc
	.xword	201,.LSSN34-nrn_alloc
	.xword	202,.LSSN35-nrn_alloc
	.xword	203,.LSSN36-nrn_alloc
	.xword	204,.LSSN37-nrn_alloc
	.xword	205,.LSSN38-nrn_alloc
	.xword	206,.LSSN39-nrn_alloc
	.xword	207,.LSSN40-nrn_alloc
	.xword	208,.LSSN41-nrn_alloc
	.xword	210,.LSSN42-nrn_alloc
	.xword	0,.LSSN43-nrn_alloc
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn_nrn_alloc+552
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__check_table_thread:
	.xword	0
	.word	0
	.word	64
	.xword	95,.LSSN8-_check_table_thread
	.xword	96,.LSSN9-_check_table_thread
	.xword	97,.LSSN10-_check_table_thread
	.xword	0,.LSSN11-_check_table_thread
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__check_table_thread+104
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	8
jli.ssn__hoc_setdata:
	.xword	0
	.word	0
	.word	112
	.xword	78,.LSSN1-_hoc_setdata
	.xword	80,.LSSN2-_hoc_setdata
	.xword	82,.LSSN3-_hoc_setdata
	.xword	80,.LSSN4-_hoc_setdata
	.xword	82,.LSSN5-_hoc_setdata
	.xword	83,.LSSN6-_hoc_setdata
	.xword	0,.LSSN7-_hoc_setdata
	.word	0
	.word	0
	.word	0
	.word	1
	.xword	jli.ssn__hoc_setdata+152
	.ascii "hh_k.c\000"
	.section	".rodata"
	.align	128
__fj_dlogexp2_const_:
	.word	0X3FF00000,0
	.word	0,0
	.word	0X3FF00B1A,0XFA5ABCBF
	.word	0XBC84F6B2,0XA7609F71
	.word	0X3FF0163D,0XA9FB3335
	.word	0X3C9B6129,0X9AB8CDB7
	.word	0X3FF02168,0X143B0281
	.word	0XBC82BF31,0XFC54EB6
	.word	0X3FF02C9A,0X3E778061
	.word	0XBC719083,0X535B085D
	.word	0X3FF037D4,0X2E11BBCC
	.word	0X3C656811,0XEEADE11A
	.word	0X3FF04315,0XE86E7F85
	.word	0XBC90A31C,0X1977C96E
	.word	0X3FF04E5F,0X72F654B1
	.word	0X3C84C379,0X3AA0D08C
	.word	0X3FF059B0,0XD3158574
	.word	0X3C8D73E2,0XA475B465
	.word	0X3FF0650A,0XE3C1F89
	.word	0XBC95CB7B,0X5799C397
	.word	0X3FF0706B,0X29DDF6DE
	.word	0XBC8C91DF,0XE2B13C27
	.word	0X3FF07BD4,0X2B72A836
	.word	0X3C832334,0X54458700
	.word	0X3FF08745,0X18759BC8
	.word	0X3C6186BE,0X4BB284FF
	.word	0X3FF092BD,0XF66607E0
	.word	0XBC968063,0X800A3FD1
	.word	0X3FF09E3E,0XCAC6F383
	.word	0X3C914878,0X18316136
	.word	0X3FF0A9C7,0X9B1F3919
	.word	0X3C85D16C,0X873D1D37
	.word	0X3FF0B558,0X6CF9890F
	.word	0X3C98A62E,0X4ADC610B
	.word	0X3FF0C0F1,0X45E46C85
	.word	0X3C94F989,0X6D21CEF
	.word	0X3FF0CC92,0X2B7247F7
	.word	0X3C901EDC,0X16E24F71
	.word	0X3FF0D83B,0X23395DEC
	.word	0XBC9BC14D,0XE43F316A
	.word	0X3FF0E3EC,0X32D3D1A2
	.word	0X3C403A17,0X27C57B53
	.word	0X3FF0EFA5,0X5FDFA9C5
	.word	0XBC949DB9,0XBC54021B
	.word	0X3FF0FB66,0XAFFED31B
	.word	0XBC6B9BED,0XC44EBD7B
	.word	0X3FF10730,0X28D7233E
	.word	0X3C8D46EB,0X1692FDD5
	.word	0X3FF11301,0XD0125B51
	.word	0XBC96C510,0X39449B3A
	.word	0X3FF11EDB,0XAB5E2AB6
	.word	0XBC9CA454,0XF703FB72
	.word	0X3FF12ABD,0XC06C31CC
	.word	0XBC51B514,0XB36CA5C7
	.word	0X3FF136A8,0X14F204AB
	.word	0XBC67108F,0XBA48DCEF
	.word	0X3FF1429A,0XAEA92DE0
	.word	0XBC932FBF,0X9AF1369E
	.word	0X3FF14E95,0X934F312E
	.word	0XBC8B91E8,0X39BF44AB
	.word	0X3FF15A98,0XC8A58E51
	.word	0X3C82406A,0XB9EEAB0A
	.word	0X3FF166A4,0X5471C3C2
	.word	0X3C58F23B,0X82EA1A32
	.word	0X3FF172B8,0X3C7D517B
	.word	0XBC819041,0XB9D78A76
	.word	0X3FF17ED4,0X8695BBC0
	.word	0X3C709E3F,0XE2AC5A64
	.word	0X3FF18AF9,0X388C8DEA
	.word	0XBC911023,0XD1970F6C
	.word	0X3FF19726,0X58375D2F
	.word	0X3C94AADD,0X85F17E08
	.word	0X3FF1A35B,0XEB6FCB75
	.word	0X3C8E5B4C,0X7B4968E4
	.word	0X3FF1AF99,0XF8138A1C
	.word	0X3C97BF85,0XA4B69280
	.word	0X3FF1BBE0,0X84045CD4
	.word	0XBC995386,0X352EF607
	.word	0X3FF1C82F,0X95281C6B
	.word	0X3C900977,0X8010F8C9
	.word	0X3FF1D487,0X3168B9AA
	.word	0X3C9E016E,0XA2643C
	.word	0X3FF1E0E7,0X5EB44027
	.word	0XBC96FDD8,0X88CB6DE
	.word	0X3FF1ED50,0X22FCD91D
	.word	0XBC91DF98,0X27BB78C
	.word	0X3FF1F9C1,0X8438CE4D
	.word	0XBC9BF524,0XA097AF5C
	.word	0X3FF2063B,0X88628CD6
	.word	0X3C8DC775,0X814A8495
	.word	0X3FF212BE,0X3578A819
	.word	0X3C93592D,0X2CFCAAC9
	.word	0X3FF21F49,0X917DDC96
	.word	0X3C82A97E,0X9494A5EE
	.word	0X3FF22BDD,0XA27912D1
	.word	0X3C8D34FB,0X5577D69F
	.word	0X3FF2387A,0X6E756238
	.word	0X3C99B07E,0XB6C70573
	.word	0X3FF2451F,0XFB82140A
	.word	0X3C8ACFCC,0X911CA996
	.word	0X3FF251CE,0X4FB2A63F
	.word	0X3C8AC155,0XBEF4F4A4
	.word	0X3FF25E85,0X711ECE75
	.word	0X3C93E1A2,0X4AC31B2C
	.word	0X3FF26B45,0X65E27CDD
	.word	0X3C82BD33,0X9940E9D9
	.word	0X3FF2780E,0X341DDF29
	.word	0X3C9E067C,0X5F9E76C
	.word	0X3FF284DF,0XE1F56381
	.word	0XBC9A4C3A,0X8C3F0D7E
	.word	0X3FF291BA,0X7591BB70
	.word	0XBC82CC72,0X28401CBD
	.word	0X3FF29E9D,0XF51FDEE1
	.word	0X3C8612E8,0XAFAD1255
	.word	0X3FF2AB8A,0X66D10F13
	.word	0XBC995743,0X191690A7
	.word	0X3FF2B87F,0XD0DAD990
	.word	0XBC410ADC,0XD6381AA4
	.word	0X3FF2C57E,0X39771B2F
	.word	0XBC950145,0XA6EB5125
	.word	0X3FF2D285,0XA6E4030B
	.word	0X3C900247,0X54DB41D5
	.word	0X3FF2DF96,0X1F641589
	.word	0X3C9D16CF,0XFBBCE198
	.word	0X3FF2ECAF,0XA93E2F56
	.word	0X3C71CA0F,0X45D52383
	.word	0X3FF2F9D2,0X4ABD886B
	.word	0XBC653C55,0X532BDA93
	.word	0X3FF306FE,0XA31B715
	.word	0X3C86F46A,0XD23182E4
	.word	0X3FF31432,0XEDEEB2FD
	.word	0X3C8959A3,0XF3F3FCD1
	.word	0X3FF32170,0XFC4CD831
	.word	0X3C8A9CE7,0X8E18047C
	.word	0X3FF32EB8,0X3BA8EA31
	.word	0X3CA1DD0B,0XE1A58674
	.word	0X3FF33C08,0XB26416FF
	.word	0X3C932721,0X843659A6
	.word	0X3FF34962,0X66E3FA2D
	.word	0XBC835A75,0X930881A4
	.word	0X3FF356C5,0X5F929FF1
	.word	0XBC8B5CEE,0X5C4E4628
	.word	0X3FF36431,0XA2DE883B
	.word	0XBC8C3144,0XA06CB85D
	.word	0X3FF371A7,0X373AA9CB
	.word	0XBC963AEA,0XBF42EAE2
	.word	0X3FF37F26,0X231E754A
	.word	0XBC99F5CA,0X9ECEB23C
	.word	0X3FF38CAE,0X6D05D866
	.word	0XBC9E958D,0X3C9904BD
	.word	0X3FF39A40,0X1B7140EF
	.word	0XBC99A9A5,0XFC8E2934
	.word	0X3FF3A7DB,0X34E59FF7
	.word	0XBC75E436,0XD661F5E3
	.word	0X3FF3B57F,0XBFEC6CF4
	.word	0X3C954C66,0XE26FFF18
	.word	0X3FF3C32D,0XC313A8E5
	.word	0XBC9EFFF8,0X375D29C4
	.word	0X3FF3D0E5,0X44EDE173
	.word	0X3C7FE8D0,0X8C284C71
	.word	0X3FF3DEA6,0X4C123422
	.word	0X3C8ADA09,0X11F09EBC
	.word	0X3FF3EC70,0XDF1C5175
	.word	0XBC8AF663,0X7B8C9BCA
	.word	0X3FF3FA45,0X4AC801C
	.word	0XBC97D023,0XF956F9F3
	.word	0X3FF40822,0XC367A024
	.word	0X3C8BDDF8,0XB6F4D048
	.word	0X3FF4160A,0X21F72E2A
	.word	0XBC5EF369,0X1C309278
	.word	0X3FF423FB,0X2709468A
	.word	0XBC98462D,0XC0B314DD
	.word	0X3FF431F5,0XD950A897
	.word	0XBC81C7DD,0XE35F7999
	.word	0X3FF43FFA,0X3F84B9D4
	.word	0X3C8880BE,0X9704C003
	.word	0X3FF44E08,0X6061892D
	.word	0X3C489B7A,0X4EF80D0
	.word	0X3FF45C20,0X42A7D232
	.word	0XBC686419,0X82FB1F8E
	.word	0X3FF46A41,0XED1D0057
	.word	0X3C9C944B,0XD1648A76
	.word	0X3FF4786D,0X668B3237
	.word	0XBC9C20F0,0XED445733
	.word	0X3FF486A2,0XB5C13CD0
	.word	0X3C73C1A3,0XB69062F0
	.word	0X3FF494E1,0XE192AED2
	.word	0XBC83B289,0X5E499EA0
	.word	0X3FF4A32A,0XF0D7D3DF
	.word	0XBCA31A4E,0X861720D5
	.word	0X3FF4B17D,0XEA6DB7D7
	.word	0XBC8125B8,0X7F2897F0
	.word	0X3FF4BFDA,0XD5362A27
	.word	0X3C7D4397,0XAFEC42E2
	.word	0X3FF4CE41,0XB817C114
	.word	0X3C905E29,0X690ABD5D
	.word	0X3FF4DCB2,0X99FDDD0D
	.word	0X3C98ECDB,0XBC6A7833
	.word	0X3FF4EB2D,0X81D8ABFF
	.word	0XBC95257D,0X2E5D7A52
	.word	0X3FF4F9B2,0X769D2CA7
	.word	0XBC94B309,0XD25957E3
	.word	0X3FF50841,0X7F4531EE
	.word	0X3C7A249B,0X49B7465F
	.word	0X3FF516DA,0XA2CF6642
	.word	0XBC8F7685,0X69BD93EF
	.word	0X3FF5257D,0XE83F4EEF
	.word	0XBC7C998D,0X43EFEF71
	.word	0X3FF5342B,0X569D4F82
	.word	0XBC807ABE,0X1DB13CAD
	.word	0X3FF542E2,0XF4F6AD27
	.word	0X3C87926D,0X192D5F7E
	.word	0X3FF551A4,0XCA5D920F
	.word	0XBC8D689C,0XEFEDE59B
	.word	0X3FF56070,0XDDE910D2
	.word	0XBC90FB6E,0X168EEBF0
	.word	0X3FF56F47,0X36B527DA
	.word	0X3C99BB2C,0X11D93AD
	.word	0X3FF57E27,0XDBE2C4CF
	.word	0XBC90B98C,0X8A57B9C4
	.word	0X3FF58D12,0XD497C7FD
	.word	0X3C8295E1,0X5B9A1DE8
	.word	0X3FF59C08,0X27FF07CB
	.word	0X3CA40E98,0X8DCC0CF9
	.word	0X3FF5AB07,0XDD485429
	.word	0X3C96324C,0X54647AD
	.word	0X3FF5BA11,0XFBA87A03
	.word	0XBC9B77A1,0X4C233E1A
	.word	0X3FF5C926,0X8A5946B7
	.word	0X3C3C4B1B,0X816986A2
	.word	0X3FF5D845,0X90998B93
	.word	0XBC9CD6A7,0XA8B45643
	.word	0X3FF5E76F,0X15AD2148
	.word	0X3C9BA6F9,0X3080E65E
	.word	0X3FF5F6A3,0X20DCEB71
	.word	0XBC89EADD,0XE3CDCF92
	.word	0X3FF605E1,0XB976DC09
	.word	0XBC93E242,0X9B56DE47
	.word	0X3FF6152A,0XE6CDF6F4
	.word	0X3C9E4B3E,0X4AB84C27
	.word	0X3FF6247E,0XB03A5585
	.word	0XBC9383C1,0X7E40B497
	.word	0X3FF633DD,0X1D1929FD
	.word	0X3C984710,0XBEB964E5
	.word	0X3FF64346,0X34CCC320
	.word	0XBC8C483C,0X759D8933
	.word	0X3FF652B9,0XFEBC8FB7
	.word	0XBC9AE3D5,0XC9A73E09
	.word	0X3FF66238,0X82552225
	.word	0XBC9BB609,0X87591C34
	.word	0X3FF671C1,0XC70833F6
	.word	0XBC8E8732,0X586C6133
	.word	0X3FF68155,0XD44CA973
	.word	0X3C6038AE,0X44F73E65
	.word	0X3FF690F4,0XB19E9538
	.word	0X3C8804BD,0X9AEB445D
	.word	0X3FF6A09E,0X667F3BCC
	.word	0X3CA21165,0XF626CDD5
	.word	0X3FF6B052,0XFA75173E
	.word	0X3C7A38F5,0X2C9A9D0E
	.word	0X3FF6C012,0X750BDABF
	.word	0XBC728956,0X67FF0B0D
	.word	0X3FF6CFDC,0XDDD47646
	.word	0XBCA1C2AB,0X2487467C
	.word	0X3FF6DFB2,0X3C651A2F
	.word	0XBC6BBE3A,0X683C88AB
	.word	0X3FF6EF92,0X98593AE5
	.word	0XBC90B974,0X9E1AC8B2
	.word	0X3FF6FF7D,0XF9519484
	.word	0XBC883C0F,0X25860EF6
	.word	0X3FF70F74,0X66F42E87
	.word	0X3C59D644,0XD45AA65F
	.word	0X3FF71F75,0XE8EC5F74
	.word	0XBC816E47,0X86887A99
	.word	0X3FF72F82,0X86EAD08A
	.word	0XBC920AA0,0X2CD62C72
	.word	0X3FF73F9A,0X48A58174
	.word	0XBC90A8D9,0X6C65D53C
	.word	0X3FF74FBD,0X35D7CBFD
	.word	0X3C9047FD,0X618A6E1C
	.word	0X3FF75FEB,0X564267C9
	.word	0XBC902459,0X57316DD3
	.word	0X3FF77024,0XB1AB6E0A
	.word	0XBCA243C4,0X74B75C04
	.word	0X3FF78069,0X4FDE5D3F
	.word	0X3C9866B8,0XA02162D
	.word	0X3FF790B9,0X38AC1CF6
	.word	0X3C9349A8,0X62AADD3E
	.word	0X3FF7A114,0X73EB0187
	.word	0XBC841577,0XEE04992F
	.word	0X3FF7B17B,0X976CFDB
	.word	0XBC9BEBB5,0X8468DC88
	.word	0X3FF7C1ED,0X130C133
	.word	0XBCA076D9,0X9774D915
	.word	0X3FF7D26A,0X62FF86F0
	.word	0X3C91BDDB,0XFB72B8B4
	.word	0X3FF7E2F3,0X36CF4E62
	.word	0X3C705D02,0XBA15797E
	.word	0X3FF7F387,0X8491C491
	.word	0XBC807F11,0XCF9311AE
	.word	0X3FF80427,0X543E1A12
	.word	0XBC927C86,0X626D972B
	.word	0X3FF814D2,0XADD106D9
	.word	0X3C946437,0XD151D4D
	.word	0X3FF82589,0X994CCE13
	.word	0XBC9D4C1D,0XD41532D8
	.word	0X3FF8364C,0X1EB941F7
	.word	0X3C999B9A,0X31DF2BD5
	.word	0X3FF8471A,0X4623C7AD
	.word	0XBC88D684,0XA341CDFB
	.word	0X3FF857F4,0X179F5B21
	.word	0XBC5BA748,0XF8B216CF
	.word	0X3FF868D9,0X9B4492ED
	.word	0XBC9FC6F8,0X9BD4F6BA
	.word	0X3FF879CA,0XD931A436
	.word	0X3C85D2D7,0XD2DB47BD
	.word	0X3FF88AC7,0XD98A6699
	.word	0X3C9994C2,0XF37CB53A
	.word	0X3FF89BD0,0XA478580F
	.word	0X3C9D5395,0X4475202B
	.word	0X3FF8ACE5,0X422AA0DB
	.word	0X3C96E9F1,0X56864B27
	.word	0X3FF8BE05,0XBAD61779
	.word	0XBCA09A50,0X81DE5DC9
	.word	0X3FF8CF32,0X16B5448C
	.word	0XBC70D55E,0X32E9E3AA
	.word	0X3FF8E06A,0X5E0866D9
	.word	0XBC97114A,0X6FC9B2E6
	.word	0X3FF8F1AE,0X99157736
	.word	0X3C85CC13,0XA2E3976C
	.word	0X3FF902FE,0XD0282C8A
	.word	0X3C9592CA,0X85FE3FD2
	.word	0X3FF9145B,0XB91FFC5
	.word	0X3CA114C3,0X68D3ED6E
	.word	0X3FF925C3,0X53AA2FE2
	.word	0XBC83455F,0XA639DB7F
	.word	0X3FF93737,0XB0CDC5E5
	.word	0XBC675FC7,0X81B57EBB
	.word	0X3FF948B8,0X2B5F98E5
	.word	0XBC8DC3D6,0X797D2D99
	.word	0X3FF95A44,0XCBC8520F
	.word	0XBC764B7C,0X96A5F039
	.word	0X3FF96BDD,0X9A7670B3
	.word	0XBC5BA596,0X7F19C895
	.word	0X3FF97D82,0X9FDE4E4F
	.word	0X3CA173D2,0X41F23D18
	.word	0X3FF98F33,0XE47A22A2
	.word	0X3C7CABDA,0XA24C78ED
	.word	0X3FF9A0F1,0X70CA07BA
	.word	0XBC9173BD,0X91CEE632
	.word	0X3FF9B2BB,0X4D53FE0C
	.word	0X3CA113D8,0XD9049574
	.word	0X3FF9C491,0X82A3F090
	.word	0X3C7C7C46,0XB071F2BE
	.word	0X3FF9D674,0X194BB8D5
	.word	0XBC9516BE,0XA3DD8233
	.word	0X3FF9E863,0X19E32323
	.word	0X3C7824CA,0X78E64C6E
	.word	0X3FF9FA5E,0X8D07F29E
	.word	0XBC84A9CE,0XAAF1FACE
	.word	0X3FFA0C66,0X7B5DE565
	.word	0XBC935949,0X5D1CD533
	.word	0X3FFA1E7A,0XED8EB8BB
	.word	0X3C9C6618,0XEE8BE70E
	.word	0X3FFA309B,0XEC4A2D33
	.word	0X3C96305C,0X7DDC36AB
	.word	0X3FFA42C9,0X80460AD8
	.word	0XBC9AA780,0X589FB120
	.word	0X3FFA5503,0XB23E255D
	.word	0XBC9D2F6E,0XDB8D41E1
	.word	0X3FFA674A,0X8AF46052
	.word	0X3C650F56,0X30670366
	.word	0X3FFA799E,0X1330B359
	.word	0XBCA21A40,0X9A9D4E1D
	.word	0X3FFA8BFE,0X53C12E59
	.word	0XBC94F867,0XB2BA15A9
	.word	0X3FFA9E6B,0X5579FDC0
	.word	0XBCA7829B,0X78840167
	.word	0X3FFAB0E5,0X21356EBB
	.word	0XBCA9D8F3,0X8945AEAF
	.word	0X3FFAC36B,0XBFD3F37A
	.word	0XBC8F9234,0XCAE76CD0
	.word	0X3FFAD5FF,0X3A3C2774
	.word	0X3C97EF3B,0XB6B1B8E5
	.word	0X3FFAE89F,0X995AD3AD
	.word	0X3C97A1CD,0X345DCC81
	.word	0X3FFAFB4C,0XE622F2FE
	.word	0X3CA5A681,0XF8675099
	.word	0X3FFB0E07,0X298DB665
	.word	0X3CA21085,0X59BF8DEE
	.word	0X3FFB20CE,0X6C9A8952
	.word	0X3C94DD02,0X4A0756CC
	.word	0X3FFB33A2,0XB84F15FB
	.word	0XBC62805E,0X3084D708
	.word	0X3FFB4684,0X15B749B1
	.word	0XBC7F763D,0XE9DF7C90
	.word	0X3FFB5972,0X8DE5593A
	.word	0XBC9C71DF,0XBBBA6DE3
	.word	0X3FFB6C6E,0X29F1C52A
	.word	0X3C92A8F3,0X52883F6E
	.word	0X3FFB7F76,0XF2FB5E47
	.word	0XBC75584F,0X7E54AC3B
	.word	0X3FFB928C,0XF22749E4
	.word	0XBC9B7216,0X54CB65C6
	.word	0X3FFBA5B0,0X30A1064A
	.word	0XBC9EFCD3,0XE54292E
	.word	0X3FFBB8E0,0XB79A6F1F
	.word	0XBC3F52D1,0XC9696205
	.word	0X3FFBCC1E,0X904BC1D2
	.word	0X3C823DD0,0X7A2D9E84
	.word	0X3FFBDF69,0XC3F3A207
	.word	0XBC3C2623,0X60EA5B53
	.word	0X3FFBF2C2,0X5BD71E08
	.word	0X3CA0811A,0XE04A31C6
	.word	0X3FFC0628,0X6141B33C
	.word	0X3CA89D69,0X57810D73
	.word	0X3FFC199B,0XDD85529C
	.word	0X3C811065,0X895048DD
	.word	0X3FFC2D1C,0XD9FA652B
	.word	0X3CA48D74,0XF41BAD14
	.word	0X3FFC40AB,0X5FFFD07A
	.word	0X3C9B4537,0XE083C60A
	.word	0X3FFC5447,0X78FAFB22
	.word	0X3C912F07,0X2493B5AF
	.word	0X3FFC67F1,0X2E57D14B
	.word	0X3C92884D,0XFF483CAD
	.word	0X3FFC7BA8,0X8988C933
	.word	0XBC8E76BB,0XBE255559
	.word	0X3FFC8F6D,0X9406E7B5
	.word	0X3C71ACBC,0X48805C44
	.word	0X3FFCA340,0X5751C4DB
	.word	0XBC87F2BE,0XD10D08F5
	.word	0X3FFCB720,0XDCEF9069
	.word	0X3C7503CB,0XD1E949DB
	.word	0X3FFCCB0F,0X2E6D1675
	.word	0XBC7D220F,0X86009093
	.word	0X3FFCDF0B,0X555DC3FA
	.word	0XBC8DD83B,0X53829D72
	.word	0X3FFCF315,0X5B5BAB74
	.word	0XBC9A08E9,0XB86DFF57
	.word	0X3FFD072D,0X4A07897C
	.word	0XBC9CBC37,0X43797A9C
	.word	0X3FFD1B53,0X2B08C969
	.word	0XBCA554E4,0XEF32E489
	.word	0X3FFD2F87,0X80D89F1
	.word	0X3CA15BC2,0X47313D44
	.word	0X3FFD43C8,0XEACAA1D6
	.word	0X3C93DB53,0XBF5A1614
	.word	0X3FFD5818,0XDCFBA487
	.word	0X3C82ED02,0XD75B3707
	.word	0X3FFD6C76,0XE862E6D3
	.word	0X3C5FE87A,0X4A8165A0
	.word	0X3FFD80E3,0X16C98398
	.word	0XBC911EC1,0X8BEDDFE8
	.word	0X3FFD955D,0X71FF6075
	.word	0X3C9A052D,0XBB9AF6BE
	.word	0X3FFDA9E6,0X3DB3285
	.word	0X3C9C2300,0X696DB532
	.word	0X3FFDBE7C,0XD63A8315
	.word	0XBC9B76F1,0X926B8BE4
	.word	0X3FFDD321,0XF301B460
	.word	0X3C92DA57,0X78F018C3
	.word	0X3FFDE7D5,0X641C0658
	.word	0XBC9CA552,0X8E79BA8F
	.word	0X3FFDFC97,0X337B9B5F
	.word	0XBC91A5CD,0X4F184B5C
	.word	0X3FFE1167,0X6B197D17
	.word	0XBC72B529,0XBD5C7F44
	.word	0X3FFE2646,0X14F5A129
	.word	0XBC97B627,0X817A1496
	.word	0X3FFE3B33,0X3B16EE12
	.word	0XBC99F4A4,0X31FDC68B
	.word	0X3FFE502E,0XE78B3FF7
	.word	0XBCAB185D,0X9FD58CDC
	.word	0X3FFE6539,0X24676D75
	.word	0X3CAA7001,0XE2B75233
	.word	0X3FFE7A51,0XFBC74C83
	.word	0X3C92D522,0XCA0C8DE2
	.word	0X3FFE8F79,0X77CDB73F
	.word	0X3CA77BB5,0XBFA7D5A8
	.word	0X3FFEA4AF,0XA2A490D9
	.word	0X3CA0B1EE,0X7431EBB6
	.word	0X3FFEB9F4,0X867CCA6E
	.word	0X3C94832F,0X2293E4F2
	.word	0X3FFECF48,0X2D8E67F0
	.word	0X3CA1B606,0X25F7293A
	.word	0X3FFEE4AA,0XA2188510
	.word	0X3C91C68D,0XA487568D
	.word	0X3FFEFA1B,0XEE615A27
	.word	0X3C9DC7F4,0X86A4B6B0
	.word	0X3FFF0F9C,0X1CB6412A
	.word	0XBC932200,0X65181D45
	.word	0X3FFF252B,0X376BBA97
	.word	0X3C93A1A5,0XBF0D8E43
	.word	0X3FFF3AC9,0X48DD7274
	.word	0XBC795A5A,0X3ED837DE
	.word	0X3FFF5076,0X5B6E4541
	.word	0XBCA3160F,0X6913AF3A
	.word	0X3FFF6632,0X798844F9
	.word	0XBCA02E42,0X656365E1
	.word	0X3FFF7BFD,0XAD9CBE14
	.word	0XBC9DBB12,0XD006350A
	.word	0X3FFF91D8,0X2243C89
	.word	0XBC612EA8,0XA779F689
	.word	0X3FFFA7C1,0X819E90D8
	.word	0X3C874853,0XF3A5931E
	.word	0X3FFFBDBA,0X3692D513
	.word	0X3CACD311,0X9D5ECE29
	.word	0X3FFFD3C2,0X2B8F71F1
	.word	0X3C62EB74,0X966579E7
	.word	0X3FFFE9D9,0X6B2A23D9
	.word	0X3C74A603,0X7442FDE3
	.section	".data"
	.global	usetable_hh_k
	.align	8
usetable_hh_k:
	.word	0X3FF00000,0
	.type	usetable_hh_k,#object
	.size	usetable_hh_k,.-usetable_hh_k
	.section	".data"
	.align	16
.LS0:
n0:
	.word	0,0
m0:
	.word	0,0
h0:
	.word	0,0
	.word	1
	.word	1
_thread1data_inuse:
	.word	0
hoc_nrnpointerindex:
	.word	-1
	.skip	8
_hoc_state_tol:
	.word	0,0
	.word	0
	.skip	4
_mechanism:
	.xword	.LR0+624
	.xword	.LR0+616
	.xword	.LR0+848
	.xword	.LR0+864
	.xword	.LR0+880
	.xword	.LR0+744
	.word	0,0
	.xword	.LR0+720
	.xword	.LR0+704
	.xword	.LR0+696
	.word	0,0
	.xword	.LR0+608
	.xword	.LR0+600
	.xword	.LR0+592
	.word	0,0
	.word	0,0
hoc_vdoub:
	.word	0,0
	.word	0,0
	.word	0
	.skip	4
	.skip	8
hoc_scdoub:
	.xword	.LR0+672
	.xword	.LB0+30729816
	.xword	.LR0+656
	.xword	.LB0+30729800
	.xword	.LR0+640
	.xword	.LB0+30729832
	.xword	.LR0+816
	.xword	.LB0+30729808
	.xword	.LR0+784
	.xword	.LB0+30729792
	.xword	.LR0+768
	.xword	.LB0+30729824
	.xword	.LR0+832
	.xword	usetable_hh_k
	.word	0,0
	.word	0,0
_hoc_parm_units:
	.xword	.LR0+816
	.xword	.LR0+800
	.xword	.LR0+784
	.xword	.LR0+800
	.xword	.LR0+768
	.xword	.LR0+800
	.xword	.LR0+848
	.xword	.LR0+752
	.xword	.LR0+864
	.xword	.LR0+752
	.xword	.LR0+880
	.xword	.LR0+752
	.xword	.LR0+744
	.xword	.LR0+736
	.xword	.LR0+720
	.xword	.LR0+752
	.xword	.LR0+704
	.xword	.LR0+752
	.xword	.LR0+696
	.xword	.LR0+688
	.word	0,0
	.word	0,0
_hoc_parm_limits:
	.xword	.LR0+880
	.word	0
	.word	1315859240
	.xword	.LR0+864
	.word	0
	.word	1315859240
	.xword	.LR0+848
	.word	0
	.word	1315859240
	.xword	.LR0+832
	.word	0
	.word	1065353216
	.word	0,0
	.word	0
	.word	0
hoc_intfunc:
	.xword	.LR0+928
	.xword	_hoc_setdata
	.xword	.LR0+912
	.xword	_hoc_rates
	.xword	.LR0+896
	.xword	_hoc_vtrap
	.word	0,0
	.word	0,0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.skip	128
	.align	4
	.word	1065353216
	.align	8
	.word	0X40771547,0X652B82FE
	.align	8
	.word	0XBF662E42,0XFE000000
	.align	8
	.word	0XBD9F473D,0XE6AF278E
	.align	8
	.word	0X41200000,0
	.align	8
	.word	0X41200001,0
	.align	8
	.word	0X40862E41,0X89374BC7
	.align	8
	.word	0XC08628B6,0X45A1CAC1
	.align	8
	.word	0X3FEFFFFF,0XFFFFFFB1
	.align	8
	.word	0X3FE00000,0X3B
	.align	8
	.word	0X3FC55555,0X7E548294
	.align	8
	.word	0X3FA55555,0X44670F74
	.align	8
	.word	0X7FF00000,0
	.align	8
	.word	0,0X1
	.align	8
	.word	0,0X80000
	.align	8
	.word	0X1000000,0
	.align	8
	.word	0X100000,0
	.section	".rodata"
	.align	16
.LR0:
	.word	0X3FAC71C7,0X1C71C71C
	.word	0X3F50624D,0XD2F1A9FC
	.word	0X3EB0C6F7,0XA0B5ED8D
	.word	0X3FB1EB85,0X1EB851EC
	.word	0X3FB99999,0X9999999A
	.word	0X3FA99999,0X9999999A
	.word	0X3F899999,0X9999999A
	.word	0X40193333,0X33333333
	.word	0XC04B2666,0X66666666
	.word	0X3F33A92A,0X30553261
	.word	0X3FA26E97,0X8D4FDF3B
	.word	0X3FBEB851,0XEB851EB8
	.word	0X3F847AE1,0X47AE147B
	.word	0X3F747AE1,0X47AE147B
	.word	0,0
	.word	0X3FF00000,0
	.word	0XC0C38800,0
	.word	0XBFF00000,0
	.word	0X40590000,0
	.word	0XC0590000,0
	.word	0X40690000,0
	.word	0X40080000,0
	.word	0X40240000,0
	.word	0X40440000,0
	.word	0X40100000,0
	.word	0X40504000,0
	.word	0X40320000,0
	.word	0X40340000,0
	.word	0X40418000,0
	.word	0X404B8000,0
	.word	0X3FC00000,0
	.word	0X40540000,0
	.word	0X40000000,0
	.word	0X40594000,0
	.word	0X3FE00000,0
	.word	0X408F4000,0
	.word	0XC0440000,0
	.word	0XC04B8000,0
	.word	0XC0418000,0
	.skip	8
	.ascii "KPLSU\040ERROR\040:\040Compartment\040size\040(%d)"
	.ascii	"\040is\040larger\040Buffer\040(%d)\012\000"
	.skip	5
	.ascii "KPLSU\040ERROR\040:\040usetable\040must\040be\040e"
	.ascii	"nabled\012\000"
	.skip	8
	.ascii "KPLSU\040ERROR\040:\040use_cachevec\040must\040be\040"
	.ascii	"enabled\012\000"
	.skip	4
	.ascii "help\040?1\040hh_k\040/home/e16002/test_neuron/spe"
	.ascii	"cials/sparc64/hh_k.mod\012\000"
	.skip	15
	.ascii "k_ion\000"
	.skip	2
	.ascii "na_ion\000"
	.skip	1
	.ascii "k\000"
	.skip	6
	.ascii "na\000"
	.skip	5
	.ascii "n_hh_k\000"
	.skip	1
	.ascii "h_hh_k\000"
	.skip	1
	.ascii "m_hh_k\000"
	.skip	1
	.ascii "hh_k\000"
	.skip	3
	.ascii "6.2.0\000"
	.skip	2
	.skip	8
	.ascii "ninf_hh_k\000"
	.skip	6
	.ascii "hinf_hh_k\000"
	.skip	6
	.ascii "minf_hh_k\000"
	.skip	6
	.ascii "mA/cm2\000"
	.skip	1
	.ascii "il_hh_k\000"
	.ascii "gk_hh_k\000"
	.skip	8
	.ascii "gna_hh_k\000"
	.skip	7
	.ascii "mV\000"
	.skip	5
	.ascii "el_hh_k\000"
	.ascii "S/cm2\000"
	.skip	2
	.skip	8
	.ascii "ntau_hh_k\000"
	.skip	6
	.ascii "htau_hh_k\000"
	.skip	6
	.ascii "ms\000"
	.skip	5
	.skip	8
	.ascii "mtau_hh_k\000"
	.skip	6
	.ascii "usetable_hh_k\000"
	.skip	2
	.ascii "gnabar_hh_k\000"
	.skip	4
	.ascii "gkbar_hh_k\000"
	.skip	5
	.ascii "gl_hh_k\000"
	.skip	8
	.ascii "vtrap_hh_k\000"
	.skip	5
	.ascii "rates_hh_k\000"
	.skip	5
	.ascii "setdata_hh_k\000"
	.skip	3
	.section	".bss"
	.align	16
.LB0:
	.skip	30729872
