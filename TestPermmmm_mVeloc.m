
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

[p_btw_ESL_mVeloc, ~,d_btw_ESL_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx1),MasterData.mVeloc(lsnidx1),10000);
[p_btw_ESR_mVeloc, ~,d_btw_ESR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx2),MasterData.mVeloc(lsnidx2),10000);
[p_btw_ELL_mVeloc, ~,d_btw_ELL_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx3),MasterData.mVeloc(lsnidx3),10000);
[p_btw_ELR_mVeloc, ~,d_btw_ELR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx4),MasterData.mVeloc(lsnidx4),10000);
[p_btw_VSL_mVeloc, ~,d_btw_VSL_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx5),MasterData.mVeloc(lsnidx5),10000);
[p_btw_VSR_mVeloc, ~,d_btw_VSR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx6),MasterData.mVeloc(lsnidx6),10000);
[p_btw_VLL_mVeloc, ~,d_btw_VLL_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx7),MasterData.mVeloc(lsnidx7),10000);
[p_btw_VLR_mVeloc, ~,d_btw_VLR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx8),MasterData.mVeloc(lsnidx8),10000);

[p_wictrl_ESLxESR_mVeloc, ~,d_wictrl_ESLxESR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx1),MasterData.mVeloc(ctrlidx2),10000);
[p_wictrl_ESLxELL_mVeloc, ~,d_wictrl_ESLxELL_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx1),MasterData.mVeloc(ctrlidx3),10000);
[p_wictrl_ESRxELR_mVeloc, ~,d_wictrl_ESRxELR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx2),MasterData.mVeloc(ctrlidx4),10000);
[p_wictrl_ELLxELR_mVeloc, ~,d_wictrl_ELLxELR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx3),MasterData.mVeloc(ctrlidx4),10000);
[p_wictrl_VSLxVSR_mVeloc, ~,d_wictrl_VSLxVSR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx5),MasterData.mVeloc(ctrlidx6),10000);
[p_wictrl_VSLxVLL_mVeloc, ~,d_wictrl_VSLxVLL_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx4),MasterData.mVeloc(ctrlidx7),10000);
[p_wictrl_VSRxVLR_mVeloc, ~,d_wictrl_VSRxVLR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx6),MasterData.mVeloc(ctrlidx8),10000);
[p_wictrl_VLLxVLR_mVeloc, ~,d_wictrl_VLLxVLR_mVeloc] = permutationTest(MasterData.mVeloc(ctrlidx7),MasterData.mVeloc(ctrlidx8),10000);

[p_wilsn_ESLxESR_mVeloc, ~,d_wilsn_ESLxESR_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx1),MasterData.mVeloc(lsnidx2),10000);
[p_wilsn_ESLxELL_mVeloc, ~,d_wilsn_ESLxELL_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx1),MasterData.mVeloc(lsnidx3),10000);
[p_wilsn_ESRxELR_mVeloc, ~,d_wilsn_ESRxELR_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx2),MasterData.mVeloc(lsnidx4),10000);
[p_wilsn_ELLxELR_mVeloc, ~,d_wilsn_ELLxELR_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx3),MasterData.mVeloc(lsnidx4),10000);
[p_wilsn_VSLxVSR_mVeloc, ~,d_wilsn_VSLxVSR_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx5),MasterData.mVeloc(lsnidx6),10000);
[p_wilsn_VSLxVLL_mVeloc, ~,d_wilsn_VSLxVLL_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx4),MasterData.mVeloc(lsnidx7),10000);
[p_wilsn_VSRxVLR_mVeloc, ~,d_wilsn_VSRxVLR_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx6),MasterData.mVeloc(lsnidx8),10000);
[p_wilsn_VLLxVLR_mVeloc, ~,d_wilsn_VLLxVLR_mVeloc] = permutationTest(MasterData.mVeloc(lsnidx7),MasterData.mVeloc(lsnidx8),10000);
