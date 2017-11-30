<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="GLOBAL_CCU4" URI="http://resources/4.1.12/app/GLOBAL_CCU4/0" description="Initializes CCU4 Global Register Set." version="4.1.12" minDaveVersion="4.0.0" instanceLabel="GLOBAL_CCU4_SSC" appLabel="" containingProxySignal="true">
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../TIMER/v4_1_10/TIMER_0.app#//@requiredApps.0"/>
  <properties provideInit="true" sharable="true"/>
  <virtualSignals name="ccu4_global" URI="http://resources/4.1.12/app/GLOBAL_CCU4/0/vs_global_ccu4_globalsignal" hwSignal="global_signal" hwResource="//@hwResources.0">
    <upwardMapList xsi:type="ResourceModel:Connections" href="../../TIMER/v4_1_10/TIMER_0.app#//@connections.0"/>
  </virtualSignals>
  <virtualSignals name="clock_ccu" URI="http://resources/4.1.12/app/GLOBAL_CCU4/0/vs_global_ccu4_clk" hwSignal="clk" hwResource="//@hwResources.0"/>
  <virtualSignals name="ccu4_global_start" URI="http://resources/4.1.12/app/GLOBAL_CCU4/0/vs_global_ccu4_gsc_enable" hwSignal="gsc_enable" hwResource="//@hwResources.1" visible="true"/>
  <requiredApps URI="http://resources/4.1.12/app/GLOBAL_CCU4/0/appres_clock" requiredAppName="CLOCK_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CLOCK_XMC4/v4_0_22/CLOCK_XMC4_0.app#/"/>
  </requiredApps>
  <hwResources name="Global" URI="http://resources/4.1.12/app/GLOBAL_CCU4/0/hwres_peripheral_ccu4_global" resourceGroupUri="peripheral/ccu4/sv0/global" solverVariable="true" mResGrpUri="peripheral/ccu4/sv0/global">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/ccu43/ccu43_3.dd#//@provided.15"/>
    <solverVarMap index="2">
      <value variableName="sv0" solverValue="3"/>
    </solverVarMap>
    <solverVarMap index="2">
      <value variableName="sv0" solverValue="3"/>
    </solverVarMap>
  </hwResources>
  <hwResources name="CCU4 sync start" URI="http://resources/4.1.12/app/GLOBAL_CCU4/0/hwres_peripheral_scu_gcu_ccu4_global_enable" resourceGroupUri="peripheral/scu/*/gcu/ccu4_global_enable/sv0" solverVariable="true" mResGrpUri="peripheral/scu/*/gcu/ccu4_global_enable/sv0">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/SCU/SCU_0.dd#//@provided.1"/>
    <solverVarMap index="5">
      <value variableName="sv0" solverValue="3"/>
    </solverVarMap>
    <solverVarMap index="5">
      <value variableName="sv0" solverValue="3"/>
    </solverVarMap>
  </hwResources>
  <connections URI="http://resources/4.1.12/app/GLOBAL_CCU4/0/http://resources/4.1.12/app/GLOBAL_CCU4/0/vs_clock_fccu/http://resources/4.1.12/app/GLOBAL_CCU4/0/vs_global_ccu4_clk" systemDefined="true" sourceSignal="clk_ccu_output" targetSignal="clock_ccu" targetVirtualSignal="//@virtualSignals.1" proxySrcVirtualSignalUri="http://resources/4.0.22/app/CLOCK_XMC4/0/vs_fccu" containingProxySignal="true">
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../CLOCK_XMC4/v4_0_22/CLOCK_XMC4_0.app#//@virtualSignals.1"/>
    <srcVirtualSignal href="../../CLOCK_XMC4/v4_0_22/CLOCK_XMC4_0.app#//@virtualSignals.1"/>
  </connections>
</ResourceModel:App>
