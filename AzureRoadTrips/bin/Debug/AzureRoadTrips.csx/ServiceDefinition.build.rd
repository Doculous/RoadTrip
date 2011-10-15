<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureRoadTrips" generation="1" functional="0" release="0" Id="df79a106-3f7c-4553-830f-37df3810c1ff" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureRoadTripsGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="AzureRoadTripSite:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/LB:AzureRoadTripSite:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="AzureRoadTripSite:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/MapAzureRoadTripSite:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="AzureRoadTripSite:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/MapAzureRoadTripSite:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="AzureRoadTripSite:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/MapAzureRoadTripSite:?StartupTaskDebugger?" />
          </maps>
        </aCS>
        <aCS name="AzureRoadTripSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/MapAzureRoadTripSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="AzureRoadTripSiteInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/MapAzureRoadTripSiteInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:AzureRoadTripSite:Endpoint1">
          <toPorts>
            <inPortMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSite/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapAzureRoadTripSite:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSite/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapAzureRoadTripSite:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSite/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapAzureRoadTripSite:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSite/?StartupTaskDebugger?" />
          </setting>
        </map>
        <map name="MapAzureRoadTripSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSite/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapAzureRoadTripSiteInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSiteInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="AzureRoadTripSite" generation="1" functional="0" release="0" software="C:\Users\Mark\documents\visual studio 2010\Projects\AzureRoadTrips\AzureRoadTrips\bin\Debug\AzureRoadTrips.csx\roles\AzureRoadTripSite" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWebHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;AzureRoadTripSite&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;AzureRoadTripSite&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSiteInstances" />
            <sCSPolicyFaultDomainMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSiteFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="AzureRoadTripSiteFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="AzureRoadTripSiteInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="be9bba8c-4362-49d3-855c-c17783067860" ref="Microsoft.RedDog.Contract\ServiceContract\AzureRoadTripsContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="7e299a01-a3e2-4349-92e7-0a5a2059740a" ref="Microsoft.RedDog.Contract\Interface\AzureRoadTripSite:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/AzureRoadTrips/AzureRoadTripsGroup/AzureRoadTripSite:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>