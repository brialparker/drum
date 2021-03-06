<%--
  - home.jsp
  -
  - Version: $Revision: 1.10 $
  -
  - Date: $Date: 2003/02/21 19:51:46 $
  -
  - Copyright (c) 2002, Hewlett-Packard Company and Massachusetts
  - Institute of Technology.  All rights reserved.
  -
  - Redistribution and use in source and binary forms, with or without
  - modification, are permitted provided that the following conditions are
  - met:
  -
  - - Redistributions of source code must retain the above copyright
  - notice, this list of conditions and the following disclaimer.
  -
  - - Redistributions in binary form must reproduce the above copyright
  - notice, this list of conditions and the following disclaimer in the
  - documentation and/or other materials provided with the distribution.
  -
  - - Neither the name of the Hewlett-Packard Company nor the name of the
  - Massachusetts Institute of Technology nor the names of their
  - contributors may be used to endorse or promote products derived from
  - this software without specific prior written permission.
  -
  - THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  - ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  - LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  - A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  - HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  - INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
  - BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
  - OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  - ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
  - TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
  - USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
  - DAMAGE.
  --%>

<%--
  - Home page JSP
  -
  - Attributes:
  -    communities - Community[] all communities in DSpace
  --%>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.core.ConfigurationManager" %>

<%
    Community[] communities = (Community[]) request.getAttribute("communities");
%>

<dspace:layout locbar="nolink" title="Home">

    <table class="standard" width="95%" align="center">
        <tr>
            <td class="standard">
                <dspace:include page="/components/news.jsp" />
            </td>
        </tr>
    </table>
  
    <br>

    <table class="standard" width="95%" align="center">
        <tr>
            <td class="standard">
                <dspace:include page="/components/home-links.jsp" />
            </td>
        </tr>
    </table>
<br>
    <table class="standard" width="95%" align="center">
        <tr>
            <td class="standard">
                <p>The following communities of digital works are available:</p>
                
                <table border=0 cellpadding=8>
<%
    for (int i = 0; i < communities.length; i++)
    {
%>                  <tr>
                        <td class="standard">
                            <A HREF="<%= request.getContextPath() %>/handle/<%= communities[i].getHandle() %>"><%= communities[i].getMetadata("name") %> Community[i] = <%= communities[i] %></A>
                        </td>
                    </tr>
<%
    }
%>

            </td>
        </tr>
    </table>

</tr>
</td>
</table>
<br>



</dspace:layout>
