<%@ Page Title="Admin" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="yapeh.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ProductDataSource" CellSpacing="-1" GridLines="None" ShowFooter="True" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button"></asp:CommandField>
            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:LinkButton ValidationGroup="ADD" OnClick="linkAdd_Click" ID="linkAdd" runat="server">Add</asp:LinkButton>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUpdateName" runat="server" ErrorMessage="Please enter product name" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="ADD" ID="rfvInsertName" runat="server" ErrorMessage="Please enter product name" ControlToValidate="txtName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Code" SortExpression="Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Code") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUpdateCode" runat="server" ErrorMessage="Please enter product code" ControlToValidate="TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Code") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="ADD" ID="rfvInsertCode" runat="server" ErrorMessage="Please enter product code" ControlToValidate="txtCode" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUpdatePrice" runat="server" ErrorMessage="Please enter product price" ControlToValidate="TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="ADD" ID="rfvInsertPrice" runat="server" ErrorMessage="Please enter product price" ControlToValidate="txtPrice" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="Stock" SortExpression="Stock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Stock") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUpdateStock" runat="server" ErrorMessage="Please enter product stock" ControlToValidate="TextBox4" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Stock") %>'></asp:Label>
                </ItemTemplate>

                <FooterTemplate>
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="ADD" ID="rfvInsertStock" runat="server" ErrorMessage="Please enter product stock" ControlToValidate="txtStock" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </FooterTemplate>

            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="uploadImages.aspx?id={0}" Text="Set Image" />
        </Columns>
</asp:GridView>

    <asp:ValidationSummary ValidationGroup="ADD" ID="ValidationSummary1" ForeColor="Red" runat="server" />
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />

<asp:SqlDataSource ID="ProductDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526893_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))" InsertCommand="INSERT INTO [Product] ([Name], [Code], [Price], [Stock]) VALUES (@Name, @Code, @Price, @Stock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Code] = @Code, [Price] = @Price, [Stock] = @Stock WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Code] = @original_Code) OR ([Code] IS NULL AND @original_Code IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Code" Type="String" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Stock" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Code" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Stock" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Code" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Stock" Type="Int32" />
        <asp:Parameter Name="original_Id" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Code" Type="String" />
        <asp:Parameter Name="original_Price" Type="Decimal" />
        <asp:Parameter Name="original_Stock" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
