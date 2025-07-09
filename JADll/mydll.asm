.data
    abs_mask dq 7FFFFFFF7FFFFFFFh, 7FFFFFFF7FFFFFFFh
         dq 7FFFFFFF7FFFFFFFh, 7FFFFFFF7FFFFFFFh
    minus_mask dq 0000000000000000h, 0000000000000000h
         dq 0000000000000000h, 0000000000000000h
    minus_one DWORD -1.0
    zero DWORD 0.0      
    one DWORD 1.0         

.CODE
MyProc1 proc
    vbroadcastss ymm1, dword ptr [rdx]
    vbroadcastss ymm5, dword ptr [minus_one]
    vbroadcastss ymm7, dword ptr [one] 
    vbroadcastss ymm8, dword ptr [abs_mask]
    vbroadcastss ymm9, dword ptr [minus_mask]
    vbroadcastss ymm10, dword ptr [zero]
    shr r8, 2               
    jz skip_all  
    
process_loop:
    vmovups ymm0, ymmword ptr [rcx]
    vandps ymm2, ymm0, ymm8
    vcmpps ymm4, ymm0, ymm9, 2
    vandps ymm4, ymm4, ymm5
    vpcmpeqd ymm6, ymm4, ymm10
    vblendvps ymm4, ymm4, ymm7, ymm6
    vcmpps ymm3, ymm2, ymm1, 2
    vandnps ymm2, ymm3, ymm2
    vmulps ymm2, ymm2, ymm4
    vmovups ymmword ptr [rcx], ymm2
    add rcx, 16                        
    dec r8
    jnz process_loop
skip_all:
    test r8, 3                   
    jz done                        
scalar_loop:
    movss xmm0, dword ptr [rcx]
    comiss xmm0, xmm1
    ja skip_zeroing             
    xorps xmm0, xmm0
    movss dword ptr [rcx], xmm0
skip_zeroing:
    add rcx, 4                    
    dec r8                        
    jnz scalar_loop                
done:                      
    ret
MyProc1 endp
END