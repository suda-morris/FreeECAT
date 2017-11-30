<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="E_EEPROM_XMC4" URI="http://resources/4.0.14/app/E_EEPROM_XMC4/0" description="Emulates a portion of program flash as EEPROM for permanent data storage." version="4.0.14" minDaveVersion="4.0.0" instanceLabel="E_EEPROM_XMC4800" appLabel="">
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../ECAT_SSC/v4_0_14/ECAT_SSC_0.app#//@requiredApps.2"/>
  <properties singleton="true" provideInit="true" sharable="true"/>
  <hwResources name="flexible crc engine" URI="http://resources/4.0.14/app/E_EEPROM_XMC4/0/hwres_fce_slice" resourceGroupUri="peripheral/fce/*/kernel/sv0" solverVariable="true" mResGrpUri="peripheral/fce/*/kernel/sv0">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/fce/fce_0.dd#//@provided.0"/>
    <solverVarMap index="4">
      <value variableName="sv0" solverValue="0"/>
    </solverVarMap>
    <solverVarMap index="4">
      <value variableName="sv0" solverValue="0"/>
    </solverVarMap>
  </hwResources>
</ResourceModel:App>
