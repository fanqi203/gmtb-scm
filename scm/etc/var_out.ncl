f=addfile("output_mycase_SCM_GFS_v15/output.nc","r")
fout="psuadeApps_ct.out."+getenv("exp_num")
cld=f->cldcov
cldcon=f->cldcov_conv
total_cld=sum(cld)+sum(cldcon)
asciiwrite(fout,total_cld)

