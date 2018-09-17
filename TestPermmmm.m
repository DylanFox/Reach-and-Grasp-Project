
ctrlidx1 = cntrlidx(TestData(:,1)==1);
ctrlidx2 = cntrlidx(TestData(:,1)==2);
ctrlidx3 = cntrlidx(TestData(:,1)==3);
ctrlidx4 = cntrlidx(TestData(:,1)==4);
ctrlidx5 = cntrlidx(TestData(:,1)==5);
ctrlidx6 = cntrlidx(TestData(:,1)==6);
ctrlidx7 = cntrlidx(TestData(:,1)==7);
ctrlidx8 = cntrlidx(TestData(:,1)==8);

lsnidx1 = ~cntrlidx(TestData(:,1)==1);
lsnidx2 = ~cntrlidx(TestData(:,1)==2);
lsnidx3 = ~cntrlidx(TestData(:,1)==3);
lsnidx4 = ~cntrlidx(TestData(:,1)==4);
lsnidx5 = ~cntrlidx(TestData(:,1)==5);
lsnidx6 = ~cntrlidx(TestData(:,1)==6);
lsnidx7 = ~cntrlidx(TestData(:,1)==7);
lsnidx8 = ~cntrlidx(TestData(:,1)==8);

[p_btw_ESL_MGA, ~,d_btw_ESL_MGA] = permutationTest(MasterData.MGA(ctrlidx1),MasterData.MGA(lsnidx1),10000);
[p_btw_ESR_MGA, ~,d_btw_ESR_MGA] = permutationTest(MasterData.MGA(ctrlidx2),MasterData.MGA(lsnidx2),10000);
[p_btw_ELL_MGA, ~,d_btw_ELL_MGA] = permutationTest(MasterData.MGA(ctrlidx3),MasterData.MGA(lsnidx3),10000);
[p_btw_ELR_MGA, ~,d_btw_ELR_MGA] = permutationTest(MasterData.MGA(ctrlidx4),MasterData.MGA(lsnidx4),10000);
[p_btw_VSL_MGA, ~,d_btw_VSL_MGA] = permutationTest(MasterData.MGA(ctrlidx5),MasterData.MGA(lsnidx5),10000);
[p_btw_VSR_MGA, ~,d_btw_VSR_MGA] = permutationTest(MasterData.MGA(ctrlidx6),MasterData.MGA(lsnidx6),10000);
[p_btw_VLL_MGA, ~,d_btw_VLL_MGA] = permutationTest(MasterData.MGA(ctrlidx7),MasterData.MGA(lsnidx7),10000);
[p_btw_VLR_MGA, ~,d_btw_VLR_MGA] = permutationTest(MasterData.MGA(ctrlidx8),MasterData.MGA(lsnidx8),10000);

[p_wictrl_ESLxESR_MGA, ~,d_wictrl_ESLxESR_MGA] = permutationTest(MasterData.MGA(ctrlidx1),MasterData.MGA(ctrlidx2),10000);
[p_wictrl_ESLxELL_MGA, ~,d_wictrl_ESLxELL_MGA] = permutationTest(MasterData.MGA(ctrlidx1),MasterData.MGA(ctrlidx3),10000);
[p_wictrl_ESRxELR_MGA, ~,d_wictrl_ESRxELR_MGA] = permutationTest(MasterData.MGA(ctrlidx2),MasterData.MGA(ctrlidx4),10000);
[p_wictrl_ELLxELR_MGA, ~,d_wictrl_ELLxELR_MGA] = permutationTest(MasterData.MGA(ctrlidx3),MasterData.MGA(ctrlidx4),10000);
[p_wictrl_VSLxVSR_MGA, ~,d_wictrl_VSLxVSR_MGA] = permutationTest(MasterData.MGA(ctrlidx5),MasterData.MGA(ctrlidx6),10000);
[p_wictrl_VSLxVLL_MGA, ~,d_wictrl_VSLxVLL_MGA] = permutationTest(MasterData.MGA(ctrlidx4),MasterData.MGA(ctrlidx7),10000);
[p_wictrl_VSRxVLR_MGA, ~,d_wictrl_VSRxVLR_MGA] = permutationTest(MasterData.MGA(ctrlidx6),MasterData.MGA(ctrlidx8),10000);
[p_wictrl_VLLxVLR_MGA, ~,d_wictrl_VLLxVLR_MGA] = permutationTest(MasterData.MGA(ctrlidx7),MasterData.MGA(ctrlidx8),10000);

[p_wilsn_ESLxESR_MGA, ~,d_wilsn_ESLxESR_MGA] = permutationTest(MasterData.MGA(lsnidx1),MasterData.MGA(lsnidx2),10000);
[p_wilsn_ESLxELL_MGA, ~,d_wilsn_ESLxELL_MGA] = permutationTest(MasterData.MGA(lsnidx1),MasterData.MGA(lsnidx3),10000);
[p_wilsn_ESRxELR_MGA, ~,d_wilsn_ESRxELR_MGA] = permutationTest(MasterData.MGA(lsnidx2),MasterData.MGA(lsnidx4),10000);
[p_wilsn_ELLxELR_MGA, ~,d_wilsn_ELLxELR_MGA] = permutationTest(MasterData.MGA(lsnidx3),MasterData.MGA(lsnidx4),10000);
[p_wilsn_VSLxVSR_MGA, ~,d_wilsn_VSLxVSR_MGA] = permutationTest(MasterData.MGA(lsnidx5),MasterData.MGA(lsnidx6),10000);
[p_wilsn_VSLxVLL_MGA, ~,d_wilsn_VSLxVLL_MGA] = permutationTest(MasterData.MGA(lsnidx4),MasterData.MGA(lsnidx7),10000);
[p_wilsn_VSRxVLR_MGA, ~,d_wilsn_VSRxVLR_MGA] = permutationTest(MasterData.MGA(lsnidx6),MasterData.MGA(lsnidx8),10000);
[p_wilsn_VLLxVLR_MGA, ~,d_wilsn_VLLxVLR_MGA] = permutationTest(MasterData.MGA(lsnidx7),MasterData.MGA(lsnidx8),10000);
