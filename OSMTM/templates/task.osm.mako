<osm version="0.5" generator="HOT Tasking Manager">
    <%
        id = -2
    %>
    % for point in polygon.exterior.coords:
    <node id="${id}" lon="${point[0]}" lat="${point[1]}"/>
    <% id = id -1 %>
    % endfor
<way id="-1">
    % for i in [-2, -3, -4, -5, -6]:
        <nd ref="${i}"/>
    % endfor
</way>
</osm>