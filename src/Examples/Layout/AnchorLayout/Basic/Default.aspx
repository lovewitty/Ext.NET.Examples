<%@ Page Language="C#" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Anchor Layout - Ext.NET Examples</title>
    <link href="/resources/css/examples.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" />
        <%--The container using the AnchorLayout can supply an anchoring-specific config properties: Width and Height.
            By default, AnchorLayout will calculate anchor measurements based on the size of the container itself.
            However, if Width and Height are specifed, the layout will use it as a virtual container for the purposes
            of calculating anchor measurements based on it instead, allowing the container to be sized independently
            of the anchoring logic if necessary.

            The items added to an AnchorLayout can also supply an anchoring-specific config property of anchor which is a
            string containing two values: the horizontal anchor value and the vertical anchor value (for example, '100% 50%').
            This value is what tells the layout how the item should be anchored to the container.

            The following types of anchor values are supported:

            Percentage: Any value between 1 and 100, expressed as a percentage. The first anchor is the percentage width
            that the item should take up within the container, and the second is the percentage height.
            Example: '100% 50%' would render an item the complete width of the container and 1/2 its height.
            If only one anchor value is supplied it is assumed to be the width value and the height will default to auto.

            Offsets: Any positive or negative integer value. The first anchor is the offset from the right edge of the
            container, and the second is the offset from the bottom edge. Example: '-50 -100' would render an item the
            complete width of the container minus 50 pixels and the complete height minus 100 pixels. If only one anchor
            value is supplied it is assumed to be the right offset value and the bottom offset will default to 0.

            Sides: Valid values are 'right' (or 'r') and 'bottom' (or 'b'). Either the container must have a fixed size or an
            anchorSize config value defined at render time in order for these to have any effect.

            Anchor values can also be mixed as needed. For example, '-50 75%' would render the width offset from the container
            right edge by 50 pixels and 75% of the container's height.

        --%>
        <ext:Viewport runat="server" Layout="Anchor">
            <Items>
                <ext:Panel runat="server" Title="Item 1: 100% 20%" AnchorHorizontal="100%" AnchorVertical="20%" />
                <ext:Panel ID="Panel1" runat="server" Title="Item 2: 50% 30%" AnchorHorizontal="50%" AnchorVertical="30%" />
                <ext:Panel ID="Panel2" runat="server" Title="Item 3: -100 50%" AnchorHorizontal="-100" AnchorVertical="50%" />
            </Items>
        </ext:Viewport>
    </form>
</body>
</html>