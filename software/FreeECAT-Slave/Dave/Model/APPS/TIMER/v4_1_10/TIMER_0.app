<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="TIMER" URI="http://resources/4.1.10/app/TIMER/0" description="Provides an accurate timer by using hardware CCU timer.&#xA; This can be used as a trigger input to other peripherals or to create an event" mode="NOTSHARABLE" version="4.1.10" minDaveVersion="4.3.2" instanceLabel="TIMER_SSC" appLabel="" containingProxySignal="true">
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../ECAT_SSC/v4_0_14/ECAT_SSC_0.app#//@requiredApps.0"/>
  <properties provideInit="true"/>
  <virtualSignals name="event_time_interval" URI="http://resources/4.1.10/app/TIMER/0/vs_timer_ccu4_period_match_interrupt" hwSignal="pmus_omds" hwResource="//@hwResources.0" visible="true">
    <upwardMapList xsi:type="ResourceModel:Connections" href="../../ECAT_SSC/v4_0_14/ECAT_SSC_0.app#//@connections.37"/>
  </virtualSignals>
  <virtualSignals name="event_time_interval" URI="http://resources/4.1.10/app/TIMER/0/vs_timer_ccu8_period_match_interrupt" hwSignal="pmus_omds" hwResource="//@hwResources.1" required="false" visible="true"/>
  <virtualSignals name="global_enable" URI="http://resources/4.1.10/app/TIMER/0/vs_timer_ccu4_global_enable" hwSignal="global_signal" hwResource="//@hwResources.0"/>
  <virtualSignals name="global_enable" URI="http://resources/4.1.10/app/TIMER/0/vs_timer_ccu8_global_enable" hwSignal="global_signal" hwResource="//@hwResources.1" required="false"/>
  <requiredApps URI="http://resources/4.1.10/app/TIMER/0/app_global_ccu4" requiredAppName="GLOBAL_CCU4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../GLOBAL_CCU4/v4_1_12/GLOBAL_CCU4_0.app#/"/>
  </requiredApps>
  <requiredApps URI="http://resources/4.1.10/app/TIMER/0/app_global_ccu8" requiredAppName="GLOBAL_CCU8" required="false" requiringMode="SHARABLE"/>
  <hwResources name="CC4 Timer" URI="http://resources/4.1.10/app/TIMER/0/hwres_ccu4_cc4" resourceGroupUri="peripheral/ccu4/*/cc4/*" mResGrpUri="peripheral/ccu4/*/cc4/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/ccu43/ccu43_3.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="CC8 Timer" URI="http://resources/4.1.10/app/TIMER/0/hwres_ccu8_cc8" resourceGroupUri="" required="false" mResGrpUri="peripheral/ccu8/*/cc8/*"/>
  <connections URI="http://resources/4.1.10/app/TIMER/0/http://resources/4.1.10/app/TIMER/0/vs_global_ccu4_enable/http://resources/4.1.10/app/TIMER/0/vs_timer_ccu4_global_enable" systemDefined="true" sourceSignal="ccu4_global" targetSignal="global_enable" targetVirtualSignal="//@virtualSignals.2" proxySrcVirtualSignalUri="http://resources/4.1.12/app/GLOBAL_CCU4/0/vs_global_ccu4_globalsignal" containingProxySignal="true">
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../GLOBAL_CCU4/v4_1_12/GLOBAL_CCU4_0.app#//@virtualSignals.0"/>
    <srcVirtualSignal href="../../GLOBAL_CCU4/v4_1_12/GLOBAL_CCU4_0.app#//@virtualSignals.0"/>
  </connections>
  <connections URI="http://resources/4.1.10/app/TIMER/0/http://resources/4.1.10/app/TIMER/0/vs_global_ccu8_enable/http://resources/4.1.10/app/TIMER/0/vs_timer_ccu8_global_enable" systemDefined="true" targetSignal="global_enable" required="false" targetVirtualSignal="//@virtualSignals.3" containingProxySignal="true"/>
</ResourceModel:App>
