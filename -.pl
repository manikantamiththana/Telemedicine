13-06-2018:
-----------

Using custom styels:

<apex:page>
<style type="text/css">
p { font-weight: bold; }
</style>
<p>This is some strong text!</p>
</apex:page>

Static resource:
h1 { color: #f00; }
p { background-color: #eec; }
newLink { color: #f60; font-weight: bold; }

<apex:page>
<apex:stylesheet value="{!$Resource.customCSS}" />
<h1>Testing Custom Stylesheets</h1>
<p>This text could go on forever...<br/><br/>
But it won't!</p>
<apex:outputLink value="http://www.salesforce.com" styleClass="newLink">
Click here to switch to www.salesforce.com
</apex:outputLink>
</apex:page>

We can remove standard Style sheets using below code:

<apex:page standardStylesheets="false">
<!-- page content here -->
</apex:page>


style and styleClass attributes allow you to
use your own styles and style classes to control the look and feel of the resulting HTML. style allows you to set styles directly on a
component, while styleClass lets you attach classes for styles defined elsewhere.

<apex:page>
<style type="text/css">
.asideText { font-style: italic; }
</style>
<apex:outputText style="font-weight: bold;"
value="This text is styled directly."/>
<apex:outputText styleClass="asideText"
value="This text is styled via a stylesheet class."/>
</apex:page>




Combine the entire images directory and the parent CSS file into a single zip file. In this example, the zip file resource name is myStyles.


<apex:page>
<apex:stylesheet value="{!URLFOR($Resource.myStyles, 'styles.css')}" />
<h1>Testing Custom Stylesheets</h1>
<p>This text could go on forever...<br/><br/>
But it won't!</p>
<apex:outputLink value="http://www.salesforce.com" styleClass="newLink">
Click here to switch to www.salesforce.com
</apex:outputLink>
</apex:page>

Suppressing the Salesforce User Interface and Styles:

sidebar= false
showHeader=false
standardStylesheets=false
in <apex:page> component

Display a PDF page:

renderAs="pdf"