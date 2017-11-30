<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="CPU_CTRL_XMC4" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0" description="Defines the number of bits for priority grouping.&#xA; Handles NMI, memmanage, usage, bus &amp; hard fault exceptions and MPU settings." version="4.0.14" minDaveVersion="4.0.0" instanceLabel="CPU_CTRL_XMC4800" appLabel="">
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#//@requiredApps.0"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../ECAT_SSC/v4_0_14/ECAT_SSC_0.app#//@requiredApps.4"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../INTERRUPT/v4_0_8/INTERRUPT_1.app#//@requiredApps.0"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../INTERRUPT/v4_0_8/INTERRUPT_2.app#//@requiredApps.0"/>
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../I2C_MASTER/v4_1_20/I2C_MASTER_0.app#//@requiredApps.1"/>
  <properties singleton="true" sharable="true"/>
  <virtualSignals name="nmi_irq" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_nmi_irq" hwSignal="nmi_in" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="jtag tck" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_jtag_tck" hwSignal="db_tck" hwResource="//@hwResources.5" required="false" visible="true"/>
  <virtualSignals name="jtag tms" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_jtag_tms" hwSignal="db_tms" hwResource="//@hwResources.5" required="false" visible="true"/>
  <virtualSignals name="jtag tdi" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_jtag_tdi" hwSignal="db_tdi" hwResource="//@hwResources.5" required="false" visible="true"/>
  <virtualSignals name="jtag tdo" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_jtag_tdo" hwSignal="db_tdo_traceswo" hwResource="//@hwResources.5" required="false"/>
  <virtualSignals name="jtag ntrst" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_jtag_ntrst" hwSignal="db_trst" hwResource="//@hwResources.5" required="false" visible="true"/>
  <virtualSignals name="swd clk" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_swdclk" hwSignal="db_tck" hwResource="//@hwResources.6" visible="true"/>
  <virtualSignals name="swd io" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_swdio" hwSignal="db_tms" hwResource="//@hwResources.6" visible="true"/>
  <virtualSignals name="swo" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_swo" hwSignal="db_tdo_traceswo" hwResource="//@hwResources.6" required="false" visible="true"/>
  <virtualSignals name="swd etm traceclk" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_traceclk" hwSignal="db_etm_traceclk" hwResource="//@hwResources.6" required="false" visible="true"/>
  <virtualSignals name="swd etm tracedata0" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata0" hwSignal="db_etm_tracedata0" hwResource="//@hwResources.6" required="false" visible="true"/>
  <virtualSignals name="swd etm tracedata1" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata1" hwSignal="db_etm_tracedata1" hwResource="//@hwResources.6" required="false" visible="true"/>
  <virtualSignals name="swd etm tracedata2" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata2" hwSignal="db_etm_tracedata2" hwResource="//@hwResources.6" required="false" visible="true"/>
  <virtualSignals name="swd etm tracedata3" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata3" hwSignal="db_etm_tracedata3" hwResource="//@hwResources.6" required="false" visible="true"/>
  <virtualSignals name="tdo_hw_o" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_tdo_hw_o" hwSignal="hw_o" hwResource="//@hwResources.9" required="false"/>
  <virtualSignals name="tdo_pad" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_tdo" hwSignal="pad" hwResource="//@hwResources.9" required="false"/>
  <virtualSignals name="swo_pad" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_swo" hwSignal="pad" hwResource="//@hwResources.14" required="false"/>
  <virtualSignals name="swo_hw_o" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_swo_hw_o" hwSignal="hw_o" hwResource="//@hwResources.14" required="false"/>
  <virtualSignals name="etm_traceclk_hw_o" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_traceclk_hw_o" hwSignal="hw_o" hwResource="//@hwResources.15" required="false"/>
  <virtualSignals name="etm_traceclk_pad" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_traceclk" hwSignal="pad" hwResource="//@hwResources.15" required="false"/>
  <virtualSignals name="etm_tracedata0_hw_o" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata0_hw_o" hwSignal="hw_o" hwResource="//@hwResources.16" required="false"/>
  <virtualSignals name="etm_tracedata0_pad" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata0" hwSignal="pad" hwResource="//@hwResources.16" required="false"/>
  <virtualSignals name="etm_tracedata1_hw_o" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata1_hw_o" hwSignal="hw_o" hwResource="//@hwResources.17" required="false"/>
  <virtualSignals name="etm_tracedata1_pad" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata1" hwSignal="pad" hwResource="//@hwResources.17" required="false"/>
  <virtualSignals name="etm_tracedata2_hw_o" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata2_hw_o" hwSignal="hw_o" hwResource="//@hwResources.18" required="false"/>
  <virtualSignals name="etm_tracedata2_pad" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata2" hwSignal="pad" hwResource="//@hwResources.18" required="false"/>
  <virtualSignals name="etm_tracedata3_hw_o" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata3_hw_o" hwSignal="hw_o" hwResource="//@hwResources.19" required="false"/>
  <virtualSignals name="etm_tracedata3_pad" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata3" hwSignal="pad" hwResource="//@hwResources.19" required="false"/>
  <virtualSignals name="jtag tdo_signal" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_tdo" hwSignal="pin" hwResource="//@hwResources.20"/>
  <virtualSignals name="swo_signal" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_swo" hwSignal="pin" hwResource="//@hwResources.21"/>
  <virtualSignals name="swd etm traceclk_signal" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_traceclk" hwSignal="pin" hwResource="//@hwResources.22"/>
  <virtualSignals name="swd etm tracedata0_signal" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata0" hwSignal="pin" hwResource="//@hwResources.23"/>
  <virtualSignals name="swd etm tracedata1_signal" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata1" hwSignal="pin" hwResource="//@hwResources.24"/>
  <virtualSignals name="swd etm tracedata2_signal" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata2" hwSignal="pin" hwResource="//@hwResources.25"/>
  <virtualSignals name="swd etm tracedata3_signal" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata3" hwSignal="pin" hwResource="//@hwResources.26"/>
  <hwResources name="nmi_exception" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_exception_nmi" resourceGroupUri="peripheral/cpu/0/exception/nmi" mResGrpUri="peripheral/cpu/0/exception/nmi">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/cpu/cpu_0.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="hardfault_exception" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_exception_hardfault" resourceGroupUri="peripheral/cpu/0/exception/hardfault" mResGrpUri="peripheral/cpu/0/exception/hardfault">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/cpu/cpu_0.dd#//@provided.1"/>
  </hwResources>
  <hwResources name="memmanagefault_exception" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_exception_memmanage" resourceGroupUri="peripheral/cpu/0/exception/memmanage" mResGrpUri="peripheral/cpu/0/exception/memmanage">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/cpu/cpu_0.dd#//@provided.6"/>
  </hwResources>
  <hwResources name="busfault_exception" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_exception_busfault" resourceGroupUri="peripheral/cpu/0/exception/busfault" mResGrpUri="peripheral/cpu/0/exception/busfault">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/cpu/cpu_0.dd#//@provided.8"/>
  </hwResources>
  <hwResources name="usagefault_exception" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_exception_usagefault" resourceGroupUri="peripheral/cpu/0/exception/usagefault" mResGrpUri="peripheral/cpu/0/exception/usagefault">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/cpu/cpu_0.dd#//@provided.7"/>
  </hwResources>
  <hwResources name="jtag" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_jtag" resourceGroupUri="" required="false" mResGrpUri="peripheral/cpu/0/debug"/>
  <hwResources name="swd" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_swdclk" resourceGroupUri="peripheral/cpu/0/debug" mResGrpUri="peripheral/cpu/0/debug">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/cpu/cpu_0.dd#//@provided.5"/>
  </hwResources>
  <hwResources name="jtag tms" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_tms" resourceGroupUri="" required="false" mResGrpUri="port/debug_port/*/pad/*"/>
  <hwResources name="jtag tck" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_tck" resourceGroupUri="" required="false" mResGrpUri="port/debug_port/*/pad/*"/>
  <hwResources name="jtag tdo" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_tdo" resourceGroupUri="" required="false" mResGrpUri="port/p/*/pad/*"/>
  <hwResources name="jtag tdi" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_tdi" resourceGroupUri="" required="false" mResGrpUri="port/p/0/pad/7"/>
  <hwResources name="jtag ntrst" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_ntrst" resourceGroupUri="" required="false" mResGrpUri="port/p/0/pad/8"/>
  <hwResources name="swd io" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_swd_tms" resourceGroupUri="port/debug_port/*/pad/*" mResGrpUri="port/debug_port/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEBUG/DEBUG_0.dd#//@provided.1"/>
  </hwResources>
  <hwResources name="swd clk" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_swd_tck" resourceGroupUri="port/debug_port/*/pad/*" mResGrpUri="port/debug_port/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEBUG/DEBUG_0.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="swo" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_swd_tdo" resourceGroupUri="" required="false" mResGrpUri="port/p/*/pad/*"/>
  <hwResources name="swd etm traceclk" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_etm_traceclk" resourceGroupUri="" required="false" mResGrpUri="port/p/*/pad/*"/>
  <hwResources name="swd etm tracedata0" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_etm_tracedata0" resourceGroupUri="" required="false" mResGrpUri="port/p/*/pad/*"/>
  <hwResources name="swd etm tracedata1" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_etm_tracedata1" resourceGroupUri="" required="false" mResGrpUri="port/p/*/pad/*"/>
  <hwResources name="swd etm tracedata2" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_etm_tracedata2" resourceGroupUri="" required="false" mResGrpUri="port/p/*/pad/*"/>
  <hwResources name="swd etm tracedata3" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/hwres_port_pad_etm_tracedata3" resourceGroupUri="" required="false" mResGrpUri="port/p/*/pad/*"/>
  <hwResources name="jtag tdo" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_hwres_port_pad_tdo" resourceGroupUri="" required="false" mResGrpUri="devicepackage/0/*"/>
  <hwResources name="swo" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_hwres_port_pad_swd_tdo" resourceGroupUri="" required="false" mResGrpUri="devicepackage/0/*"/>
  <hwResources name="swd etm traceclk" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_hwres_port_pad_etm_traceclk" resourceGroupUri="" required="false" mResGrpUri="devicepackage/0/*"/>
  <hwResources name="swd etm tracedata0" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_hwres_port_pad_etm_tracedata0" resourceGroupUri="" required="false" mResGrpUri="devicepackage/0/*"/>
  <hwResources name="swd etm tracedata1" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_hwres_port_pad_etm_tracedata1" resourceGroupUri="" required="false" mResGrpUri="devicepackage/0/*"/>
  <hwResources name="swd etm tracedata2" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_hwres_port_pad_etm_tracedata2" resourceGroupUri="" required="false" mResGrpUri="devicepackage/0/*"/>
  <hwResources name="swd etm tracedata3" URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_hwres_port_pad_etm_tracedata3" resourceGroupUri="" required="false" mResGrpUri="devicepackage/0/*"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_jtag_tdo/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_tdo_hw_o" systemDefined="true" sourceSignal="jtag tdo" targetSignal="tdo_hw_o" required="false" srcVirtualSignal="//@virtualSignals.4" targetVirtualSignal="//@virtualSignals.14"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_swo/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_swo_hw_o" systemDefined="true" sourceSignal="swo" targetSignal="swo_hw_o" required="false" srcVirtualSignal="//@virtualSignals.8" targetVirtualSignal="//@virtualSignals.17"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_traceclk/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_traceclk_hw_o" systemDefined="true" sourceSignal="swd etm traceclk" targetSignal="etm_traceclk_hw_o" required="false" srcVirtualSignal="//@virtualSignals.9" targetVirtualSignal="//@virtualSignals.18"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata0_hw_o" systemDefined="true" sourceSignal="swd etm tracedata0" targetSignal="etm_tracedata0_hw_o" required="false" srcVirtualSignal="//@virtualSignals.10" targetVirtualSignal="//@virtualSignals.20"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata1/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata1_hw_o" systemDefined="true" sourceSignal="swd etm tracedata1" targetSignal="etm_tracedata1_hw_o" required="false" srcVirtualSignal="//@virtualSignals.11" targetVirtualSignal="//@virtualSignals.22"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata2/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata2_hw_o" systemDefined="true" sourceSignal="swd etm tracedata2" targetSignal="etm_tracedata2_hw_o" required="false" srcVirtualSignal="//@virtualSignals.12" targetVirtualSignal="//@virtualSignals.24"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_etm_tracedata3/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata3_hw_o" systemDefined="true" sourceSignal="swd etm tracedata3" targetSignal="etm_tracedata3_hw_o" required="false" srcVirtualSignal="//@virtualSignals.13" targetVirtualSignal="//@virtualSignals.26"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_tdo/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_tdo" systemDefined="true" sourceSignal="tdo_pad" targetSignal="jtag tdo_signal" srcVirtualSignal="//@virtualSignals.15" targetVirtualSignal="//@virtualSignals.28"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_tdo/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_tdo" systemDefined="true" sourceSignal="jtag tdo_signal" targetSignal="tdo_pad" srcVirtualSignal="//@virtualSignals.28" targetVirtualSignal="//@virtualSignals.15"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_swo/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_swo" systemDefined="true" sourceSignal="swo_pad" targetSignal="swo_signal" srcVirtualSignal="//@virtualSignals.16" targetVirtualSignal="//@virtualSignals.29"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_swo/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_swo" systemDefined="true" sourceSignal="swo_signal" targetSignal="swo_pad" srcVirtualSignal="//@virtualSignals.29" targetVirtualSignal="//@virtualSignals.16"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_traceclk/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_traceclk" systemDefined="true" sourceSignal="etm_traceclk_pad" targetSignal="swd etm traceclk_signal" srcVirtualSignal="//@virtualSignals.19" targetVirtualSignal="//@virtualSignals.30"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_traceclk/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_traceclk" systemDefined="true" sourceSignal="swd etm traceclk_signal" targetSignal="etm_traceclk_pad" srcVirtualSignal="//@virtualSignals.30" targetVirtualSignal="//@virtualSignals.19"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata0" systemDefined="true" sourceSignal="etm_tracedata0_pad" targetSignal="swd etm tracedata0_signal" srcVirtualSignal="//@virtualSignals.21" targetVirtualSignal="//@virtualSignals.31"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata0" systemDefined="true" sourceSignal="swd etm tracedata0_signal" targetSignal="etm_tracedata0_pad" srcVirtualSignal="//@virtualSignals.31" targetVirtualSignal="//@virtualSignals.21"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata1/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata1" systemDefined="true" sourceSignal="etm_tracedata1_pad" targetSignal="swd etm tracedata1_signal" srcVirtualSignal="//@virtualSignals.23" targetVirtualSignal="//@virtualSignals.32"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata1/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata1" systemDefined="true" sourceSignal="swd etm tracedata1_signal" targetSignal="etm_tracedata1_pad" srcVirtualSignal="//@virtualSignals.32" targetVirtualSignal="//@virtualSignals.23"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata2/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata2" systemDefined="true" sourceSignal="etm_tracedata2_pad" targetSignal="swd etm tracedata2_signal" srcVirtualSignal="//@virtualSignals.25" targetVirtualSignal="//@virtualSignals.33"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata2/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata2" systemDefined="true" sourceSignal="swd etm tracedata2_signal" targetSignal="etm_tracedata2_pad" srcVirtualSignal="//@virtualSignals.33" targetVirtualSignal="//@virtualSignals.25"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata3/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata3" systemDefined="true" sourceSignal="etm_tracedata3_pad" targetSignal="swd etm tracedata3_signal" srcVirtualSignal="//@virtualSignals.27" targetVirtualSignal="//@virtualSignals.34"/>
  <connections URI="http://resources/4.0.14/app/CPU_CTRL_XMC4/0/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/__pin_vs_cpu_etm_tracedata3/http://resources/4.0.14/app/CPU_CTRL_XMC4/0/vs_cpu_etm_tracedata3" systemDefined="true" sourceSignal="swd etm tracedata3_signal" targetSignal="etm_tracedata3_pad" srcVirtualSignal="//@virtualSignals.34" targetVirtualSignal="//@virtualSignals.27"/>
</ResourceModel:App>
