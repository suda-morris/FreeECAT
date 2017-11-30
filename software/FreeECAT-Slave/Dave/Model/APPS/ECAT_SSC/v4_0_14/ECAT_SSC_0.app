<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="ECAT_SSC" URI="http://resources/4.0.14/app/ECAT_SSC/0" description="EtherCAT slave stack code APP serves as an interface between the EtherCAT fieldbus (Ethernet) and the slave application." mode="NOTSHARABLE" version="4.0.14" minDaveVersion="4.1.2" instanceLabel="ECAT_Slave" appLabel="" containingProxySignal="true">
  <properties singleton="true" provideInit="true"/>
  <virtualSignals name="port_pad_phy_clk25" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_clk25" hwSignal="pad" hwResource="//@hwResources.1"/>
  <virtualSignals name="port_pad_phy_reset" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_reset" hwSignal="pad" hwResource="//@hwResources.2"/>
  <virtualSignals name="port_pad_led_run" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_run" hwSignal="pad" hwResource="//@hwResources.5"/>
  <virtualSignals name="port_pad_led_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_err" hwSignal="pad" hwResource="//@hwResources.6"/>
  <virtualSignals name="port_pad_led_link_act_p0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p0" hwSignal="pad" hwResource="//@hwResources.7"/>
  <virtualSignals name="port_pad_led_link_act_p1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p1" hwSignal="pad" hwResource="//@hwResources.8"/>
  <virtualSignals name="port_pad_mdio" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdio" hwSignal="pad" hwResource="//@hwResources.3"/>
  <virtualSignals name="port_pad_mdio_hw_o" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdio_hw_o" hwSignal="hw_o" hwResource="//@hwResources.3"/>
  <virtualSignals name="port_pad_mdc" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdc" hwSignal="pad" hwResource="//@hwResources.4"/>
  <virtualSignals name="port_pad_p0_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd0" hwSignal="pad" hwResource="//@hwResources.12"/>
  <virtualSignals name="port_pad_p0_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd1" hwSignal="pad" hwResource="//@hwResources.13"/>
  <virtualSignals name="port_pad_p0_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd2" hwSignal="pad" hwResource="//@hwResources.14"/>
  <virtualSignals name="port_pad_p0_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd3" hwSignal="pad" hwResource="//@hwResources.15"/>
  <virtualSignals name="port_pad_p0_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_dv" hwSignal="pad" hwResource="//@hwResources.11"/>
  <virtualSignals name="port_pad_p0_rx-err" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_err" hwSignal="pad" hwResource="//@hwResources.16"/>
  <virtualSignals name="port_pad_p0_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_clk" hwSignal="pad" hwResource="//@hwResources.10"/>
  <virtualSignals name="port_pad_p0_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_link" hwSignal="pad" hwResource="//@hwResources.9"/>
  <virtualSignals name="port_pad_p1_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd0" hwSignal="pad" hwResource="//@hwResources.26"/>
  <virtualSignals name="port_pad_p1_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd1" hwSignal="pad" hwResource="//@hwResources.27"/>
  <virtualSignals name="port_pad_p1_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd2" hwSignal="pad" hwResource="//@hwResources.28"/>
  <virtualSignals name="port_pad_p1_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd3" hwSignal="pad" hwResource="//@hwResources.29"/>
  <virtualSignals name="port_pad_p1_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_dv" hwSignal="pad" hwResource="//@hwResources.25"/>
  <virtualSignals name="port_pad_p1_rx-err" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_err" hwSignal="pad" hwResource="//@hwResources.30"/>
  <virtualSignals name="port_pad_p1_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_clk" hwSignal="pad" hwResource="//@hwResources.24"/>
  <virtualSignals name="port_pad_p1_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_link" hwSignal="pad" hwResource="//@hwResources.23"/>
  <virtualSignals name="port_pad_p0_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd0" hwSignal="pad" hwResource="//@hwResources.17"/>
  <virtualSignals name="port_pad_p0_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd1" hwSignal="pad" hwResource="//@hwResources.18"/>
  <virtualSignals name="port_pad_p0_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd2" hwSignal="pad" hwResource="//@hwResources.19"/>
  <virtualSignals name="port_pad_p0_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd3" hwSignal="pad" hwResource="//@hwResources.20"/>
  <virtualSignals name="port_pad_p0_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_clk" hwSignal="pad" hwResource="//@hwResources.22"/>
  <virtualSignals name="port_pad_p0_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_ena" hwSignal="pad" hwResource="//@hwResources.21"/>
  <virtualSignals name="port_pad_p1_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd0" hwSignal="pad" hwResource="//@hwResources.31"/>
  <virtualSignals name="port_pad_p1_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd1" hwSignal="pad" hwResource="//@hwResources.32"/>
  <virtualSignals name="port_pad_p1_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd2" hwSignal="pad" hwResource="//@hwResources.33"/>
  <virtualSignals name="port_pad_p1_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd3" hwSignal="pad" hwResource="//@hwResources.34"/>
  <virtualSignals name="port_pad_p1_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_clk" hwSignal="pad" hwResource="//@hwResources.36"/>
  <virtualSignals name="port_pad_p1_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_ena" hwSignal="pad" hwResource="//@hwResources.35"/>
  <virtualSignals name="ecat_phy_clk25" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_phy_clk25" hwSignal="phy_clk25" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_phy_reset" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_phy_reset" hwSignal="phy_reset" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_led_run" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_run" hwSignal="led_run" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_led_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_err" hwSignal="led_err" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_led_link_act" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_link_act_p0" hwSignal="p0_led_link_act" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_led_link_act" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_link_act_p1" hwSignal="p1_led_link_act" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_mdio" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_mdio" hwSignal="mdio" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_mdio" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_mdo" hwSignal="mdo" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_mdc" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_mdc" hwSignal="mclk" hwResource="//@hwResources.0"/>
  <virtualSignals name="latch_in_0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_latch0" hwSignal="latchin0" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="latch_in_1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_latch1" hwSignal="latchin1" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="sync_out_0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_sync0" hwSignal="sync0" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="sync_out_1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_sync1" hwSignal="sync1" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="ecat_p0_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd0" hwSignal="p0_rxd0" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd1" hwSignal="p0_rxd1" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd2" hwSignal="p0_rxd2" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd3" hwSignal="p0_rxd3" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rx_dv" hwSignal="p0_rx_dv" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_rx_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rx_err" hwSignal="p0_rx_err" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rx_clk" hwSignal="p0_rx_clk" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_link" hwSignal="p0_link" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd0" hwSignal="p1_rxd0" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd1" hwSignal="p1_rxd1" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd2" hwSignal="p1_rxd2" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd3" hwSignal="p1_rxd3" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rx_dv" hwSignal="p1_rx_dv" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_rx_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rx_err" hwSignal="p1_rx_err" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rx_clk" hwSignal="p1_rx_clk" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_link" hwSignal="p1_link" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd0" hwSignal="p0_txd0" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd1" hwSignal="p0_txd1" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd2" hwSignal="p0_txd2" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd3" hwSignal="p0_txd3" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_tx_clk" hwSignal="p0_tx_clk" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p0_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_tx_ena" hwSignal="p0_tx_ena" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd0" hwSignal="p1_txd0" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd1" hwSignal="p1_txd1" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd2" hwSignal="p1_txd2" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd3" hwSignal="p1_txd3" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_tx_clk" hwSignal="p1_tx_clk" hwResource="//@hwResources.0"/>
  <virtualSignals name="ecat_p1_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_tx_ena" hwSignal="p1_tx_ena" hwResource="//@hwResources.0"/>
  <virtualSignals name="phy_clk25_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_phy_clk25" hwSignal="pin" hwResource="//@hwResources.37"/>
  <virtualSignals name="phy_reset_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_phy_reset" hwSignal="pin" hwResource="//@hwResources.38"/>
  <virtualSignals name="mdio_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_mdio" hwSignal="pin" hwResource="//@hwResources.39"/>
  <virtualSignals name="mdc_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_mdc" hwSignal="pin" hwResource="//@hwResources.40"/>
  <virtualSignals name="led_run_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_run" hwSignal="pin" hwResource="//@hwResources.41"/>
  <virtualSignals name="led_err_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_err" hwSignal="pin" hwResource="//@hwResources.42"/>
  <virtualSignals name="led_link_act_p0_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_link_act_p0" hwSignal="pin" hwResource="//@hwResources.43"/>
  <virtualSignals name="led_link_act_p1_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_link_act_p1" hwSignal="pin" hwResource="//@hwResources.44"/>
  <virtualSignals name="p0_rxd0_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd0" hwSignal="pin" hwResource="//@hwResources.45"/>
  <virtualSignals name="p0_rxd1_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd1" hwSignal="pin" hwResource="//@hwResources.46"/>
  <virtualSignals name="p0_rxd2_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd2" hwSignal="pin" hwResource="//@hwResources.47"/>
  <virtualSignals name="p0_rxd3_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd3" hwSignal="pin" hwResource="//@hwResources.48"/>
  <virtualSignals name="p0_rx_dv_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_dv" hwSignal="pin" hwResource="//@hwResources.49"/>
  <virtualSignals name="p0_rx_err_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_err" hwSignal="pin" hwResource="//@hwResources.50"/>
  <virtualSignals name="p0_rx_clk_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_clk" hwSignal="pin" hwResource="//@hwResources.51"/>
  <virtualSignals name="p0_link_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_link" hwSignal="pin" hwResource="//@hwResources.52"/>
  <virtualSignals name="p1_rxd0_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd0" hwSignal="pin" hwResource="//@hwResources.53"/>
  <virtualSignals name="p1_rxd1_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd1" hwSignal="pin" hwResource="//@hwResources.54"/>
  <virtualSignals name="p1_rxd2_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd2" hwSignal="pin" hwResource="//@hwResources.55"/>
  <virtualSignals name="p1_rxd3_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd3" hwSignal="pin" hwResource="//@hwResources.56"/>
  <virtualSignals name="p1_rx_dv_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_dv" hwSignal="pin" hwResource="//@hwResources.57"/>
  <virtualSignals name="p1_rx_err_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_err" hwSignal="pin" hwResource="//@hwResources.58"/>
  <virtualSignals name="p1_rx_clk_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_clk" hwSignal="pin" hwResource="//@hwResources.59"/>
  <virtualSignals name="p1_link_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_link" hwSignal="pin" hwResource="//@hwResources.60"/>
  <virtualSignals name="p0_txd0_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd0" hwSignal="pin" hwResource="//@hwResources.61"/>
  <virtualSignals name="p0_txd1_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd1" hwSignal="pin" hwResource="//@hwResources.62"/>
  <virtualSignals name="p0_txd2_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd2" hwSignal="pin" hwResource="//@hwResources.63"/>
  <virtualSignals name="p0_txd3_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd3" hwSignal="pin" hwResource="//@hwResources.64"/>
  <virtualSignals name="p0_tx_clk_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_tx_clk" hwSignal="pin" hwResource="//@hwResources.65"/>
  <virtualSignals name="p0_tx_ena_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_tx_ena" hwSignal="pin" hwResource="//@hwResources.66"/>
  <virtualSignals name="p1_txd0_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd0" hwSignal="pin" hwResource="//@hwResources.67"/>
  <virtualSignals name="p1_txd1_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd1" hwSignal="pin" hwResource="//@hwResources.68"/>
  <virtualSignals name="p1_txd2_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd2" hwSignal="pin" hwResource="//@hwResources.69"/>
  <virtualSignals name="p1_txd3_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd3" hwSignal="pin" hwResource="//@hwResources.70"/>
  <virtualSignals name="p1_tx_clk_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_tx_clk" hwSignal="pin" hwResource="//@hwResources.71"/>
  <virtualSignals name="p1_tx_ena_signal" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_tx_ena" hwSignal="pin" hwResource="//@hwResources.72"/>
  <requiredApps URI="http://resources/4.0.14/app/ECAT_SSC/0/appres_timer" requiredAppName="TIMER">
    <downwardMapList xsi:type="ResourceModel:App" href="../../TIMER/v4_1_10/TIMER_0.app#/"/>
  </requiredApps>
  <requiredApps URI="http://resources/4.0.14/app/ECAT_SSC/0/appres_interrupt" requiredAppName="INTERRUPT">
    <downwardMapList xsi:type="ResourceModel:App" href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#/"/>
  </requiredApps>
  <requiredApps URI="http://resources/4.0.14/app/ECAT_SSC/0/appres_eeprom" requiredAppName="E_EEPROM_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../E_EEPROM_XMC4/v4_0_14/E_EEPROM_XMC4_0.app#/"/>
  </requiredApps>
  <requiredApps URI="http://resources/4.0.14/app/ECAT_SSC/0/appres_clock" requiredAppName="CLOCK_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CLOCK_XMC4/v4_0_22/CLOCK_XMC4_0.app#/"/>
  </requiredApps>
  <requiredApps URI="http://resources/4.0.14/app/ECAT_SSC/0/appres_cpu" requiredAppName="CPU_CTRL_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CPU_CTRL_XMC4/v4_0_14/CPU_CTRL_XMC4_0.app#/"/>
  </requiredApps>
  <hwResources name="ECAT" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_ecat" resourceGroupUri="peripheral/ecat/0/ecat" mResGrpUri="peripheral/ecat/0/ecat">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/ecat0/ecat0_0.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="phy_clk25" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_phy_clk25" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port6/port6_6.dd#//@provided.27"/>
  </hwResources>
  <hwResources name="phy_reset" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_phy_reset" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.40"/>
  </hwResources>
  <hwResources name="mdio" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_mdio" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.44"/>
  </hwResources>
  <hwResources name="mdc" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_mdc" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port3/port3_3.dd#//@provided.15"/>
  </hwResources>
  <hwResources name="led_run" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_led_run" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.28"/>
  </hwResources>
  <hwResources name="led_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_led_err" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.24"/>
  </hwResources>
  <hwResources name="led_link_act_p0" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_led_link_act_p0" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port6/port6_6.dd#//@provided.14"/>
  </hwResources>
  <hwResources name="led_link_act_p1" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_led_link_act_p1" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port3/port3_3.dd#//@provided.10"/>
  </hwResources>
  <hwResources name="p0_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_link" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port1/port1_1.dd#//@provided.41"/>
  </hwResources>
  <hwResources name="p0_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_rx_clk" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port5/port5_5.dd#//@provided.6"/>
  </hwResources>
  <hwResources name="p0_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_rx_dv" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port5/port5_5.dd#//@provided.14"/>
  </hwResources>
  <hwResources name="p0_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_rxd0" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port5/port5_5.dd#//@provided.32"/>
  </hwResources>
  <hwResources name="p0_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_rxd1" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port5/port5_5.dd#//@provided.27"/>
  </hwResources>
  <hwResources name="p0_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_rxd2" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port5/port5_5.dd#//@provided.36"/>
  </hwResources>
  <hwResources name="p0_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_rxd3" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port5/port5_5.dd#//@provided.10"/>
  </hwResources>
  <hwResources name="p0_rx_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_rx_err" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port2/port2_2.dd#//@provided.15"/>
  </hwResources>
  <hwResources name="p0_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_txd0" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port6/port6_6.dd#//@provided.19"/>
  </hwResources>
  <hwResources name="p0_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_txd1" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port6/port6_6.dd#//@provided.10"/>
  </hwResources>
  <hwResources name="p0_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_txd2" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port6/port6_6.dd#//@provided.6"/>
  </hwResources>
  <hwResources name="p0_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_txd3" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port6/port6_6.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="p0_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_tx_ena" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port6/port6_6.dd#//@provided.23"/>
  </hwResources>
  <hwResources name="p0_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p0_tx_clk" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port5/port5_5.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="p1_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_link" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port3/port3_3.dd#//@provided.19"/>
  </hwResources>
  <hwResources name="p1_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_rx_clk" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.16"/>
  </hwResources>
  <hwResources name="p1_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_rx_dv" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="p1_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_rxd0" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.49"/>
  </hwResources>
  <hwResources name="p1_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_rxd1" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.36"/>
  </hwResources>
  <hwResources name="p1_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_rxd2" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.32"/>
  </hwResources>
  <hwResources name="p1_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_rxd3" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.11"/>
  </hwResources>
  <hwResources name="p1_rx_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_rx_err" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port15/port15_15.dd#//@provided.5"/>
  </hwResources>
  <hwResources name="p1_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_txd0" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port3/port3_3.dd#//@provided.6"/>
  </hwResources>
  <hwResources name="p1_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_txd1" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port3/port3_3.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="p1_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_txd2" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.20"/>
  </hwResources>
  <hwResources name="p1_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_txd3" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.6"/>
  </hwResources>
  <hwResources name="p1_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_tx_ena" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port3/port3_3.dd#//@provided.24"/>
  </hwResources>
  <hwResources name="p1_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/hwres_port_pad_p1_tx_clk" resourceGroupUri="port/p/*/pad/*" mResGrpUri="port/p/*/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/port0/port0_0.dd#//@provided.53"/>
  </hwResources>
  <hwResources name="phy_clk25" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_phy_clk25" resourceGroupUri="devicepackage/0/101" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.44"/>
  </hwResources>
  <hwResources name="phy_reset" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_phy_reset" resourceGroupUri="devicepackage/0/2" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.57"/>
  </hwResources>
  <hwResources name="mdio" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_mdio" resourceGroupUri="devicepackage/0/138" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.47"/>
  </hwResources>
  <hwResources name="mdc" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_mdc" resourceGroupUri="devicepackage/0/132" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.49"/>
  </hwResources>
  <hwResources name="led_run" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_led_run" resourceGroupUri="devicepackage/0/127" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.61"/>
  </hwResources>
  <hwResources name="led_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_led_err" resourceGroupUri="devicepackage/0/128" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.60"/>
  </hwResources>
  <hwResources name="led_link_act_p0" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_led_link_act_p0" resourceGroupUri="devicepackage/0/98" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.38"/>
  </hwResources>
  <hwResources name="led_link_act_p1" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_led_link_act_p1" resourceGroupUri="devicepackage/0/9" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.19"/>
  </hwResources>
  <hwResources name="p0_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_rxd0" resourceGroupUri="devicepackage/0/84" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.11"/>
  </hwResources>
  <hwResources name="p0_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_rxd1" resourceGroupUri="devicepackage/0/83" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.12"/>
  </hwResources>
  <hwResources name="p0_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_rxd2" resourceGroupUri="devicepackage/0/82" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.10"/>
  </hwResources>
  <hwResources name="p0_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_rxd3" resourceGroupUri="devicepackage/0/77" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.6"/>
  </hwResources>
  <hwResources name="p0_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_rx_dv" resourceGroupUri="devicepackage/0/78" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.8"/>
  </hwResources>
  <hwResources name="p0_rx_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_rx_err" resourceGroupUri="devicepackage/0/76" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.45"/>
  </hwResources>
  <hwResources name="p0_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_rx_clk" resourceGroupUri="devicepackage/0/80" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.9"/>
  </hwResources>
  <hwResources name="p0_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_link" resourceGroupUri="devicepackage/0/94" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.40"/>
  </hwResources>
  <hwResources name="p1_rxd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_rxd0" resourceGroupUri="devicepackage/0/139" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.46"/>
  </hwResources>
  <hwResources name="p1_rxd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_rxd1" resourceGroupUri="devicepackage/0/140" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.53"/>
  </hwResources>
  <hwResources name="p1_rxd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_rxd2" resourceGroupUri="devicepackage/0/141" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.54"/>
  </hwResources>
  <hwResources name="p1_rxd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_rxd3" resourceGroupUri="devicepackage/0/142" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.51"/>
  </hwResources>
  <hwResources name="p1_rx_dv" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_rx_dv" resourceGroupUri="devicepackage/0/4" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.55"/>
  </hwResources>
  <hwResources name="p1_rx_err" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_rx_err" resourceGroupUri="devicepackage/0/30" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.31"/>
  </hwResources>
  <hwResources name="p1_rx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_rx_clk" resourceGroupUri="devicepackage/0/1" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.58"/>
  </hwResources>
  <hwResources name="p1_link" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_link" resourceGroupUri="devicepackage/0/131" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.48"/>
  </hwResources>
  <hwResources name="p0_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_txd0" resourceGroupUri="devicepackage/0/99" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.37"/>
  </hwResources>
  <hwResources name="p0_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_txd1" resourceGroupUri="devicepackage/0/97" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.41"/>
  </hwResources>
  <hwResources name="p0_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_txd2" resourceGroupUri="devicepackage/0/96" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.42"/>
  </hwResources>
  <hwResources name="p0_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_txd3" resourceGroupUri="devicepackage/0/95" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.39"/>
  </hwResources>
  <hwResources name="p0_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_tx_clk" resourceGroupUri="devicepackage/0/79" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.7"/>
  </hwResources>
  <hwResources name="p0_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p0_tx_ena" resourceGroupUri="devicepackage/0/100" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.43"/>
  </hwResources>
  <hwResources name="p1_txd0" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_txd0" resourceGroupUri="devicepackage/0/6" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.20"/>
  </hwResources>
  <hwResources name="p1_txd1" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_txd1" resourceGroupUri="devicepackage/0/5" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.21"/>
  </hwResources>
  <hwResources name="p1_txd2" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_txd2" resourceGroupUri="devicepackage/0/144" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.50"/>
  </hwResources>
  <hwResources name="p1_txd3" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_txd3" resourceGroupUri="devicepackage/0/143" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.52"/>
  </hwResources>
  <hwResources name="p1_tx_clk" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_tx_clk" resourceGroupUri="devicepackage/0/3" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.56"/>
  </hwResources>
  <hwResources name="p1_tx_ena" URI="http://resources/4.0.14/app/ECAT_SSC/0/__pin_hwres_port_pad_p1_tx_ena" resourceGroupUri="devicepackage/0/7" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.59"/>
  </hwResources>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_phy_clk25/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_clk25" systemDefined="true" sourceSignal="ecat_phy_clk25" targetSignal="port_pad_phy_clk25" srcVirtualSignal="//@virtualSignals.37" targetVirtualSignal="//@virtualSignals.0"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_phy_reset/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_reset" systemDefined="true" sourceSignal="ecat_phy_reset" targetSignal="port_pad_phy_reset" srcVirtualSignal="//@virtualSignals.38" targetVirtualSignal="//@virtualSignals.1"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdio/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_mdio" systemDefined="true" sourceSignal="port_pad_mdio" targetSignal="ecat_mdio" srcVirtualSignal="//@virtualSignals.6" targetVirtualSignal="//@virtualSignals.43"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_mdo/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdio_hw_o" systemDefined="true" sourceSignal="ecat_mdio" targetSignal="port_pad_mdio_hw_o" srcVirtualSignal="//@virtualSignals.44" targetVirtualSignal="//@virtualSignals.7"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_mdc/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdc" systemDefined="true" sourceSignal="ecat_mdc" targetSignal="port_pad_mdc" srcVirtualSignal="//@virtualSignals.45" targetVirtualSignal="//@virtualSignals.8"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_run/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_run" systemDefined="true" sourceSignal="ecat_led_run" targetSignal="port_pad_led_run" srcVirtualSignal="//@virtualSignals.39" targetVirtualSignal="//@virtualSignals.2"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_err/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_err" systemDefined="true" sourceSignal="ecat_led_err" targetSignal="port_pad_led_err" srcVirtualSignal="//@virtualSignals.40" targetVirtualSignal="//@virtualSignals.3"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_link_act_p0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p0" systemDefined="true" sourceSignal="ecat_p0_led_link_act" targetSignal="port_pad_led_link_act_p0" srcVirtualSignal="//@virtualSignals.41" targetVirtualSignal="//@virtualSignals.4"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_led_link_act_p1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p1" systemDefined="true" sourceSignal="ecat_p1_led_link_act" targetSignal="port_pad_led_link_act_p1" srcVirtualSignal="//@virtualSignals.42" targetVirtualSignal="//@virtualSignals.5"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd0" systemDefined="true" sourceSignal="port_pad_p0_rxd0" targetSignal="ecat_p0_rxd0" srcVirtualSignal="//@virtualSignals.9" targetVirtualSignal="//@virtualSignals.50"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd1" systemDefined="true" sourceSignal="port_pad_p0_rxd1" targetSignal="ecat_p0_rxd1" srcVirtualSignal="//@virtualSignals.10" targetVirtualSignal="//@virtualSignals.51"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd2" systemDefined="true" sourceSignal="port_pad_p0_rxd2" targetSignal="ecat_p0_rxd2" srcVirtualSignal="//@virtualSignals.11" targetVirtualSignal="//@virtualSignals.52"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rxd3" systemDefined="true" sourceSignal="port_pad_p0_rxd3" targetSignal="ecat_p0_rxd3" srcVirtualSignal="//@virtualSignals.12" targetVirtualSignal="//@virtualSignals.53"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_dv/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rx_dv" systemDefined="true" sourceSignal="port_pad_p0_rx_dv" targetSignal="ecat_p0_rx_dv" srcVirtualSignal="//@virtualSignals.13" targetVirtualSignal="//@virtualSignals.54"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_err/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rx_err" systemDefined="true" sourceSignal="port_pad_p0_rx-err" targetSignal="ecat_p0_rx_err" srcVirtualSignal="//@virtualSignals.14" targetVirtualSignal="//@virtualSignals.55"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_rx_clk" systemDefined="true" sourceSignal="port_pad_p0_rx_clk" targetSignal="ecat_p0_rx_clk" srcVirtualSignal="//@virtualSignals.15" targetVirtualSignal="//@virtualSignals.56"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_link/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_link" systemDefined="true" sourceSignal="port_pad_p0_link" targetSignal="ecat_p0_link" srcVirtualSignal="//@virtualSignals.16" targetVirtualSignal="//@virtualSignals.57"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd0" systemDefined="true" sourceSignal="port_pad_p1_rxd0" targetSignal="ecat_p1_rxd0" srcVirtualSignal="//@virtualSignals.17" targetVirtualSignal="//@virtualSignals.58"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd1" systemDefined="true" sourceSignal="port_pad_p1_rxd1" targetSignal="ecat_p1_rxd1" srcVirtualSignal="//@virtualSignals.18" targetVirtualSignal="//@virtualSignals.59"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd2" systemDefined="true" sourceSignal="port_pad_p1_rxd2" targetSignal="ecat_p1_rxd2" srcVirtualSignal="//@virtualSignals.19" targetVirtualSignal="//@virtualSignals.60"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rxd3" systemDefined="true" sourceSignal="port_pad_p1_rxd3" targetSignal="ecat_p1_rxd3" srcVirtualSignal="//@virtualSignals.20" targetVirtualSignal="//@virtualSignals.61"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_dv/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rx_dv" systemDefined="true" sourceSignal="port_pad_p1_rx_dv" targetSignal="ecat_p1_rx_dv" srcVirtualSignal="//@virtualSignals.21" targetVirtualSignal="//@virtualSignals.62"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_err/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rx_err" systemDefined="true" sourceSignal="port_pad_p1_rx-err" targetSignal="ecat_p1_rx_err" srcVirtualSignal="//@virtualSignals.22" targetVirtualSignal="//@virtualSignals.63"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_rx_clk" systemDefined="true" sourceSignal="port_pad_p1_rx_clk" targetSignal="ecat_p1_rx_clk" srcVirtualSignal="//@virtualSignals.23" targetVirtualSignal="//@virtualSignals.64"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_link/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_link" systemDefined="true" sourceSignal="port_pad_p1_link" targetSignal="ecat_p1_link" srcVirtualSignal="//@virtualSignals.24" targetVirtualSignal="//@virtualSignals.65"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd0" systemDefined="true" sourceSignal="ecat_p0_txd0" targetSignal="port_pad_p0_txd0" srcVirtualSignal="//@virtualSignals.66" targetVirtualSignal="//@virtualSignals.25"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd1" systemDefined="true" sourceSignal="ecat_p0_txd1" targetSignal="port_pad_p0_txd1" srcVirtualSignal="//@virtualSignals.67" targetVirtualSignal="//@virtualSignals.26"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd2" systemDefined="true" sourceSignal="ecat_p0_txd2" targetSignal="port_pad_p0_txd2" srcVirtualSignal="//@virtualSignals.68" targetVirtualSignal="//@virtualSignals.27"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_txd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd3" systemDefined="true" sourceSignal="ecat_p0_txd3" targetSignal="port_pad_p0_txd3" srcVirtualSignal="//@virtualSignals.69" targetVirtualSignal="//@virtualSignals.28"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_tx_clk" systemDefined="true" sourceSignal="port_pad_p0_tx_clk" targetSignal="ecat_p0_tx_clk" srcVirtualSignal="//@virtualSignals.29" targetVirtualSignal="//@virtualSignals.70"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p0_tx_ena/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_ena" systemDefined="true" sourceSignal="ecat_p0_tx_ena" targetSignal="port_pad_p0_tx_ena" srcVirtualSignal="//@virtualSignals.71" targetVirtualSignal="//@virtualSignals.30"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd0" systemDefined="true" sourceSignal="ecat_p1_txd0" targetSignal="port_pad_p1_txd0" srcVirtualSignal="//@virtualSignals.72" targetVirtualSignal="//@virtualSignals.31"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd1" systemDefined="true" sourceSignal="ecat_p1_txd1" targetSignal="port_pad_p1_txd1" srcVirtualSignal="//@virtualSignals.73" targetVirtualSignal="//@virtualSignals.32"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd2" systemDefined="true" sourceSignal="ecat_p1_txd2" targetSignal="port_pad_p1_txd2" srcVirtualSignal="//@virtualSignals.74" targetVirtualSignal="//@virtualSignals.33"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_txd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd3" systemDefined="true" sourceSignal="ecat_p1_txd3" targetSignal="port_pad_p1_txd3" srcVirtualSignal="//@virtualSignals.75" targetVirtualSignal="//@virtualSignals.34"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_tx_clk" systemDefined="true" sourceSignal="port_pad_p1_tx_clk" targetSignal="ecat_p1_tx_clk" srcVirtualSignal="//@virtualSignals.35" targetVirtualSignal="//@virtualSignals.76"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_p1_tx_ena/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_ena" systemDefined="true" sourceSignal="ecat_p1_tx_ena" targetSignal="port_pad_p1_tx_ena" srcVirtualSignal="//@virtualSignals.77" targetVirtualSignal="//@virtualSignals.36"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_timer_ccu4_period_match_interrupt/http://resources/4.0.14/app/ECAT_SSC/0/vs_nvic_signal_in" systemDefined="true" sourceSignal="event_time_interval" targetSignal="sr_irq" proxySrcVirtualSignalUri="http://resources/4.1.10/app/TIMER/0/vs_timer_ccu4_period_match_interrupt" proxyTargetVirtualSignalUri="http://resources/4.0.8/app/INTERRUPT/0/vs_nvic_signal_in" containingProxySignal="true">
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../TIMER/v4_1_10/TIMER_0.app#//@virtualSignals.0"/>
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#//@virtualSignals.0"/>
    <srcVirtualSignal href="../../TIMER/v4_1_10/TIMER_0.app#//@virtualSignals.0"/>
    <targetVirtualSignal href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#//@virtualSignals.0"/>
  </connections>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_timer_ccu8_period_match_interrupt/http://resources/4.0.14/app/ECAT_SSC/0/vs_nvic_signal_in" systemDefined="true" sourceSignal="event_time_interval" targetSignal="sr_irq" required="false" proxySrcVirtualSignalUri="http://resources/4.1.10/app/TIMER/0/vs_timer_ccu8_period_match_interrupt" proxyTargetVirtualSignalUri="http://resources/4.0.8/app/INTERRUPT/0/vs_nvic_signal_in" containingProxySignal="true">
    <srcVirtualSignal href="../../TIMER/v4_1_10/TIMER_0.app#//@virtualSignals.1"/>
    <targetVirtualSignal href="../../INTERRUPT/v4_0_8/INTERRUPT_0.app#//@virtualSignals.0"/>
  </connections>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_clk25/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_phy_clk25" systemDefined="true" sourceSignal="port_pad_phy_clk25" targetSignal="phy_clk25_signal" srcVirtualSignal="//@virtualSignals.0" targetVirtualSignal="//@virtualSignals.78"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_phy_clk25/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_clk25" systemDefined="true" sourceSignal="phy_clk25_signal" targetSignal="port_pad_phy_clk25" srcVirtualSignal="//@virtualSignals.78" targetVirtualSignal="//@virtualSignals.0"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_reset/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_phy_reset" systemDefined="true" sourceSignal="port_pad_phy_reset" targetSignal="phy_reset_signal" srcVirtualSignal="//@virtualSignals.1" targetVirtualSignal="//@virtualSignals.79"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_phy_reset/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_phy_reset" systemDefined="true" sourceSignal="phy_reset_signal" targetSignal="port_pad_phy_reset" srcVirtualSignal="//@virtualSignals.79" targetVirtualSignal="//@virtualSignals.1"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdio/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_mdio" systemDefined="true" sourceSignal="port_pad_mdio" targetSignal="mdio_signal" srcVirtualSignal="//@virtualSignals.6" targetVirtualSignal="//@virtualSignals.80"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_mdio/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdio" systemDefined="true" sourceSignal="mdio_signal" targetSignal="port_pad_mdio" srcVirtualSignal="//@virtualSignals.80" targetVirtualSignal="//@virtualSignals.6"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdc/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_mdc" systemDefined="true" sourceSignal="port_pad_mdc" targetSignal="mdc_signal" srcVirtualSignal="//@virtualSignals.8" targetVirtualSignal="//@virtualSignals.81"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_mdc/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_mdc" systemDefined="true" sourceSignal="mdc_signal" targetSignal="port_pad_mdc" srcVirtualSignal="//@virtualSignals.81" targetVirtualSignal="//@virtualSignals.8"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_run/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_run" systemDefined="true" sourceSignal="port_pad_led_run" targetSignal="led_run_signal" srcVirtualSignal="//@virtualSignals.2" targetVirtualSignal="//@virtualSignals.82"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_run/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_run" systemDefined="true" sourceSignal="led_run_signal" targetSignal="port_pad_led_run" srcVirtualSignal="//@virtualSignals.82" targetVirtualSignal="//@virtualSignals.2"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_err/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_err" systemDefined="true" sourceSignal="port_pad_led_err" targetSignal="led_err_signal" srcVirtualSignal="//@virtualSignals.3" targetVirtualSignal="//@virtualSignals.83"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_err/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_err" systemDefined="true" sourceSignal="led_err_signal" targetSignal="port_pad_led_err" srcVirtualSignal="//@virtualSignals.83" targetVirtualSignal="//@virtualSignals.3"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_link_act_p0" systemDefined="true" sourceSignal="port_pad_led_link_act_p0" targetSignal="led_link_act_p0_signal" srcVirtualSignal="//@virtualSignals.4" targetVirtualSignal="//@virtualSignals.84"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_link_act_p0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p0" systemDefined="true" sourceSignal="led_link_act_p0_signal" targetSignal="port_pad_led_link_act_p0" srcVirtualSignal="//@virtualSignals.84" targetVirtualSignal="//@virtualSignals.4"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p1/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_link_act_p1" systemDefined="true" sourceSignal="port_pad_led_link_act_p1" targetSignal="led_link_act_p1_signal" srcVirtualSignal="//@virtualSignals.5" targetVirtualSignal="//@virtualSignals.85"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_led_link_act_p1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_led_link_act_p1" systemDefined="true" sourceSignal="led_link_act_p1_signal" targetSignal="port_pad_led_link_act_p1" srcVirtualSignal="//@virtualSignals.85" targetVirtualSignal="//@virtualSignals.5"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd0" systemDefined="true" sourceSignal="port_pad_p0_rxd0" targetSignal="p0_rxd0_signal" srcVirtualSignal="//@virtualSignals.9" targetVirtualSignal="//@virtualSignals.86"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd0" systemDefined="true" sourceSignal="p0_rxd0_signal" targetSignal="port_pad_p0_rxd0" srcVirtualSignal="//@virtualSignals.86" targetVirtualSignal="//@virtualSignals.9"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd1/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd1" systemDefined="true" sourceSignal="port_pad_p0_rxd1" targetSignal="p0_rxd1_signal" srcVirtualSignal="//@virtualSignals.10" targetVirtualSignal="//@virtualSignals.87"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd1" systemDefined="true" sourceSignal="p0_rxd1_signal" targetSignal="port_pad_p0_rxd1" srcVirtualSignal="//@virtualSignals.87" targetVirtualSignal="//@virtualSignals.10"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd2/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd2" systemDefined="true" sourceSignal="port_pad_p0_rxd2" targetSignal="p0_rxd2_signal" srcVirtualSignal="//@virtualSignals.11" targetVirtualSignal="//@virtualSignals.88"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd2" systemDefined="true" sourceSignal="p0_rxd2_signal" targetSignal="port_pad_p0_rxd2" srcVirtualSignal="//@virtualSignals.88" targetVirtualSignal="//@virtualSignals.11"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd3/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd3" systemDefined="true" sourceSignal="port_pad_p0_rxd3" targetSignal="p0_rxd3_signal" srcVirtualSignal="//@virtualSignals.12" targetVirtualSignal="//@virtualSignals.89"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rxd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rxd3" systemDefined="true" sourceSignal="p0_rxd3_signal" targetSignal="port_pad_p0_rxd3" srcVirtualSignal="//@virtualSignals.89" targetVirtualSignal="//@virtualSignals.12"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_dv/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_dv" systemDefined="true" sourceSignal="port_pad_p0_rx_dv" targetSignal="p0_rx_dv_signal" srcVirtualSignal="//@virtualSignals.13" targetVirtualSignal="//@virtualSignals.90"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_dv/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_dv" systemDefined="true" sourceSignal="p0_rx_dv_signal" targetSignal="port_pad_p0_rx_dv" srcVirtualSignal="//@virtualSignals.90" targetVirtualSignal="//@virtualSignals.13"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_err/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_err" systemDefined="true" sourceSignal="port_pad_p0_rx-err" targetSignal="p0_rx_err_signal" srcVirtualSignal="//@virtualSignals.14" targetVirtualSignal="//@virtualSignals.91"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_err/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_err" systemDefined="true" sourceSignal="p0_rx_err_signal" targetSignal="port_pad_p0_rx-err" srcVirtualSignal="//@virtualSignals.91" targetVirtualSignal="//@virtualSignals.14"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_clk/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_clk" systemDefined="true" sourceSignal="port_pad_p0_rx_clk" targetSignal="p0_rx_clk_signal" srcVirtualSignal="//@virtualSignals.15" targetVirtualSignal="//@virtualSignals.92"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_rx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_rx_clk" systemDefined="true" sourceSignal="p0_rx_clk_signal" targetSignal="port_pad_p0_rx_clk" srcVirtualSignal="//@virtualSignals.92" targetVirtualSignal="//@virtualSignals.15"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_link/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_link" systemDefined="true" sourceSignal="port_pad_p0_link" targetSignal="p0_link_signal" srcVirtualSignal="//@virtualSignals.16" targetVirtualSignal="//@virtualSignals.93"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_link/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_link" systemDefined="true" sourceSignal="p0_link_signal" targetSignal="port_pad_p0_link" srcVirtualSignal="//@virtualSignals.93" targetVirtualSignal="//@virtualSignals.16"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd0" systemDefined="true" sourceSignal="port_pad_p1_rxd0" targetSignal="p1_rxd0_signal" srcVirtualSignal="//@virtualSignals.17" targetVirtualSignal="//@virtualSignals.94"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd0" systemDefined="true" sourceSignal="p1_rxd0_signal" targetSignal="port_pad_p1_rxd0" srcVirtualSignal="//@virtualSignals.94" targetVirtualSignal="//@virtualSignals.17"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd1/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd1" systemDefined="true" sourceSignal="port_pad_p1_rxd1" targetSignal="p1_rxd1_signal" srcVirtualSignal="//@virtualSignals.18" targetVirtualSignal="//@virtualSignals.95"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd1" systemDefined="true" sourceSignal="p1_rxd1_signal" targetSignal="port_pad_p1_rxd1" srcVirtualSignal="//@virtualSignals.95" targetVirtualSignal="//@virtualSignals.18"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd2/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd2" systemDefined="true" sourceSignal="port_pad_p1_rxd2" targetSignal="p1_rxd2_signal" srcVirtualSignal="//@virtualSignals.19" targetVirtualSignal="//@virtualSignals.96"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd2" systemDefined="true" sourceSignal="p1_rxd2_signal" targetSignal="port_pad_p1_rxd2" srcVirtualSignal="//@virtualSignals.96" targetVirtualSignal="//@virtualSignals.19"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd3/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd3" systemDefined="true" sourceSignal="port_pad_p1_rxd3" targetSignal="p1_rxd3_signal" srcVirtualSignal="//@virtualSignals.20" targetVirtualSignal="//@virtualSignals.97"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rxd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rxd3" systemDefined="true" sourceSignal="p1_rxd3_signal" targetSignal="port_pad_p1_rxd3" srcVirtualSignal="//@virtualSignals.97" targetVirtualSignal="//@virtualSignals.20"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_dv/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_dv" systemDefined="true" sourceSignal="port_pad_p1_rx_dv" targetSignal="p1_rx_dv_signal" srcVirtualSignal="//@virtualSignals.21" targetVirtualSignal="//@virtualSignals.98"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_dv/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_dv" systemDefined="true" sourceSignal="p1_rx_dv_signal" targetSignal="port_pad_p1_rx_dv" srcVirtualSignal="//@virtualSignals.98" targetVirtualSignal="//@virtualSignals.21"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_err/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_err" systemDefined="true" sourceSignal="port_pad_p1_rx-err" targetSignal="p1_rx_err_signal" srcVirtualSignal="//@virtualSignals.22" targetVirtualSignal="//@virtualSignals.99"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_err/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_err" systemDefined="true" sourceSignal="p1_rx_err_signal" targetSignal="port_pad_p1_rx-err" srcVirtualSignal="//@virtualSignals.99" targetVirtualSignal="//@virtualSignals.22"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_clk/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_clk" systemDefined="true" sourceSignal="port_pad_p1_rx_clk" targetSignal="p1_rx_clk_signal" srcVirtualSignal="//@virtualSignals.23" targetVirtualSignal="//@virtualSignals.100"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_rx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_rx_clk" systemDefined="true" sourceSignal="p1_rx_clk_signal" targetSignal="port_pad_p1_rx_clk" srcVirtualSignal="//@virtualSignals.100" targetVirtualSignal="//@virtualSignals.23"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_link/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_link" systemDefined="true" sourceSignal="port_pad_p1_link" targetSignal="p1_link_signal" srcVirtualSignal="//@virtualSignals.24" targetVirtualSignal="//@virtualSignals.101"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_link/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_link" systemDefined="true" sourceSignal="p1_link_signal" targetSignal="port_pad_p1_link" srcVirtualSignal="//@virtualSignals.101" targetVirtualSignal="//@virtualSignals.24"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd0" systemDefined="true" sourceSignal="port_pad_p0_txd0" targetSignal="p0_txd0_signal" srcVirtualSignal="//@virtualSignals.25" targetVirtualSignal="//@virtualSignals.102"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd0" systemDefined="true" sourceSignal="p0_txd0_signal" targetSignal="port_pad_p0_txd0" srcVirtualSignal="//@virtualSignals.102" targetVirtualSignal="//@virtualSignals.25"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd1/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd1" systemDefined="true" sourceSignal="port_pad_p0_txd1" targetSignal="p0_txd1_signal" srcVirtualSignal="//@virtualSignals.26" targetVirtualSignal="//@virtualSignals.103"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd1" systemDefined="true" sourceSignal="p0_txd1_signal" targetSignal="port_pad_p0_txd1" srcVirtualSignal="//@virtualSignals.103" targetVirtualSignal="//@virtualSignals.26"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd2/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd2" systemDefined="true" sourceSignal="port_pad_p0_txd2" targetSignal="p0_txd2_signal" srcVirtualSignal="//@virtualSignals.27" targetVirtualSignal="//@virtualSignals.104"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd2" systemDefined="true" sourceSignal="p0_txd2_signal" targetSignal="port_pad_p0_txd2" srcVirtualSignal="//@virtualSignals.104" targetVirtualSignal="//@virtualSignals.27"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd3/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd3" systemDefined="true" sourceSignal="port_pad_p0_txd3" targetSignal="p0_txd3_signal" srcVirtualSignal="//@virtualSignals.28" targetVirtualSignal="//@virtualSignals.105"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_txd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_txd3" systemDefined="true" sourceSignal="p0_txd3_signal" targetSignal="port_pad_p0_txd3" srcVirtualSignal="//@virtualSignals.105" targetVirtualSignal="//@virtualSignals.28"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_clk/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_tx_clk" systemDefined="true" sourceSignal="port_pad_p0_tx_clk" targetSignal="p0_tx_clk_signal" srcVirtualSignal="//@virtualSignals.29" targetVirtualSignal="//@virtualSignals.106"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_tx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_clk" systemDefined="true" sourceSignal="p0_tx_clk_signal" targetSignal="port_pad_p0_tx_clk" srcVirtualSignal="//@virtualSignals.106" targetVirtualSignal="//@virtualSignals.29"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_ena/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_tx_ena" systemDefined="true" sourceSignal="port_pad_p0_tx_ena" targetSignal="p0_tx_ena_signal" srcVirtualSignal="//@virtualSignals.30" targetVirtualSignal="//@virtualSignals.107"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p0_tx_ena/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p0_tx_ena" systemDefined="true" sourceSignal="p0_tx_ena_signal" targetSignal="port_pad_p0_tx_ena" srcVirtualSignal="//@virtualSignals.107" targetVirtualSignal="//@virtualSignals.30"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd0" systemDefined="true" sourceSignal="port_pad_p1_txd0" targetSignal="p1_txd0_signal" srcVirtualSignal="//@virtualSignals.31" targetVirtualSignal="//@virtualSignals.108"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd0" systemDefined="true" sourceSignal="p1_txd0_signal" targetSignal="port_pad_p1_txd0" srcVirtualSignal="//@virtualSignals.108" targetVirtualSignal="//@virtualSignals.31"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd1/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd1" systemDefined="true" sourceSignal="port_pad_p1_txd1" targetSignal="p1_txd1_signal" srcVirtualSignal="//@virtualSignals.32" targetVirtualSignal="//@virtualSignals.109"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd1/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd1" systemDefined="true" sourceSignal="p1_txd1_signal" targetSignal="port_pad_p1_txd1" srcVirtualSignal="//@virtualSignals.109" targetVirtualSignal="//@virtualSignals.32"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd2/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd2" systemDefined="true" sourceSignal="port_pad_p1_txd2" targetSignal="p1_txd2_signal" srcVirtualSignal="//@virtualSignals.33" targetVirtualSignal="//@virtualSignals.110"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd2/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd2" systemDefined="true" sourceSignal="p1_txd2_signal" targetSignal="port_pad_p1_txd2" srcVirtualSignal="//@virtualSignals.110" targetVirtualSignal="//@virtualSignals.33"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd3/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd3" systemDefined="true" sourceSignal="port_pad_p1_txd3" targetSignal="p1_txd3_signal" srcVirtualSignal="//@virtualSignals.34" targetVirtualSignal="//@virtualSignals.111"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_txd3/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_txd3" systemDefined="true" sourceSignal="p1_txd3_signal" targetSignal="port_pad_p1_txd3" srcVirtualSignal="//@virtualSignals.111" targetVirtualSignal="//@virtualSignals.34"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_clk/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_tx_clk" systemDefined="true" sourceSignal="port_pad_p1_tx_clk" targetSignal="p1_tx_clk_signal" srcVirtualSignal="//@virtualSignals.35" targetVirtualSignal="//@virtualSignals.112"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_tx_clk/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_clk" systemDefined="true" sourceSignal="p1_tx_clk_signal" targetSignal="port_pad_p1_tx_clk" srcVirtualSignal="//@virtualSignals.112" targetVirtualSignal="//@virtualSignals.35"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_ena/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_tx_ena" systemDefined="true" sourceSignal="port_pad_p1_tx_ena" targetSignal="p1_tx_ena_signal" srcVirtualSignal="//@virtualSignals.36" targetVirtualSignal="//@virtualSignals.113"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/__pin_vs_port_pad_p1_tx_ena/http://resources/4.0.14/app/ECAT_SSC/0/vs_port_pad_p1_tx_ena" systemDefined="true" sourceSignal="p1_tx_ena_signal" targetSignal="port_pad_p1_tx_ena" srcVirtualSignal="//@virtualSignals.113" targetVirtualSignal="//@virtualSignals.36"/>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_sync0/http://resources/4.0.6/app/EVENT_DETECTOR/0/vs_event_detector_input_B" sourceSignal="sync_out_0" targetSignal="signal_b" srcVirtualSignal="//@virtualSignals.48">
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../EVENT_DETECTOR/v4_0_6/EVENT_DETECTOR_0.app#//@virtualSignals.1"/>
    <targetVirtualSignal href="../../EVENT_DETECTOR/v4_0_6/EVENT_DETECTOR_0.app#//@virtualSignals.1"/>
  </connections>
  <connections URI="http://resources/4.0.14/app/ECAT_SSC/0/http://resources/4.0.14/app/ECAT_SSC/0/vs_ecat_sync1/http://resources/4.0.6/app/EVENT_DETECTOR/1/vs_event_detector_input_A" sourceSignal="sync_out_1" targetSignal="signal_a" srcVirtualSignal="//@virtualSignals.49">
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../EVENT_DETECTOR/v4_0_6/EVENT_DETECTOR_1.app#//@virtualSignals.0"/>
    <targetVirtualSignal href="../../EVENT_DETECTOR/v4_0_6/EVENT_DETECTOR_1.app#//@virtualSignals.0"/>
  </connections>
</ResourceModel:App>
