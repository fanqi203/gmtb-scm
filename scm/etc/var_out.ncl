f=addfile("output_twpice_SCM_GFS_v15/output.nc","r")
fout="psuadeApps_ct.out."+getenv("exp_num")
cld=f->cldcov
cldcon=f->cldcov_conv
total_cld=sum(cld)+sum(cldcon)

t=f->T
qi=f->qi
qc_conv=f->qc_conv
rain=f->rain
rain_conv=f->rainc

total_high_cld=sum(cld(:,30:40,:))+sum(cldcon(:,30:40,:))
total_qi=sum(qi(:,30:40,:))
total_qc_conv=sum(qc_conv(:,30:40,:))
total_rain=sum(rain)+sum(rain_conv)

asciiwrite(fout,(/total_cld,total_high_cld, total_qi, total_qc_conv,total_rain/))




