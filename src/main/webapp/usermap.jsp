<%@ page trimDirectiveWhitespaces="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="teammates.common.util.FrontEndLibrary" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="jsIncludes">
  <script type="text/javascript" src="https://unpkg.com/d3@3.5.17/d3.min.js"></script>
  <script type="text/javascript" src="https://unpkg.com/topojson@1.6.27/build/topojson.min.js"></script>
  <script type="text/javascript" src="https://unpkg.com/datamaps@0.5.8/dist/datamaps.none.min.js"></script>
  <script type="text/javascript" src="/js/userMap.js"></script>
</c:set>
<c:set var="geoDataUrl" value="https://unpkg.com/datamaps@0.5.8/src/js/data/world.hires.topo.json" />
<t:staticPage jsIncludes="${jsIncludes}">
  <main>
    <input type="hidden" id="geo-data-url" value="${geoDataUrl}">
    <h1 class="color-orange">Who is using TEAMMATES?</h1>
    <div id="world-map"></div>
    <p class="text-right">Last updated: <span id="lastUpdate" ></span></p>
    <h2 class="text-center color-blue">
      <span id="totalUserCount" class="color-orange"></span>
      institutions from
      <span id="totalCountryCount" class="color-orange"></span>
      countries
    </h2>
  </main>
</t:staticPage>
