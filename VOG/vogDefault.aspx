<%@ Page Title="WebHead | VOG System" Language="VB" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="false" CodeFile="vogDefault.aspx.vb" Inherits="VOG_vogDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../Styles/vogCardStyle.css"/>
    <link href="../Styles/VOG.css" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div id="defaultMainBody">
        <section id="searchCreateBlock">
            <article>
                <asp:Imagebutton class="postCard" runat="server" ImageUrl='../Styles/Images/postIcon.png' Width="35" Height="35"></asp:Imagebutton>
                <span class="searchControl">
                    <asp:Textbox id="searchVogTextBox" runat="server" placeholder="Search VOG" CssClass="vogSearch" ></asp:Textbox>
                    <asp:Imagebutton id="searchIcon" runat="server" ImageUrl='../Styles/Images/searchIcon.png' Width="25" Height="25" CssClass="vogSearch"></asp:Imagebutton>
                </span>
            </article>
        </section>
        <section id="queueBlock">
            <article class="subQueue">
                <div class="queueHeader"><span class="subTitle">Top</span><span class="viewAll">View All</span></div>
                <div class="queueContainer">
                    <ul class="queueList">
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p><span style="font-size:1.2em">Blinds for lunch room.</span><br/><br />
	                                 During lunch hours the cafeteria room gets extremely hot. The tint does a great deal however does not keep everything out. The most south wall is made of windows. Nomex gets hot. -- 5/31/2016
                                         <br /><br /><span style="color:rgba(102, 255, 102,0.8);">Ken: We have looked into the problem and will be ordering blinds in the coming weeks.</span>
	                                 </p>
                                </div>
                                <div class="back">
                                <asp:TextBox ID="TextBox1" CssClass="vogCommentBox" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                                <asp:Button ID="Button1" CssClass="vogCommentButton" runat="server" Text="Submit" />
                                </div>
                            </div>
                            
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                           <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>

                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </article>
            <article class="subQueue">
                <div class="queueHeader"><span class="subTitle">Hot</span><span class="viewAll">View All</span></div>
                <div class="queueContainer">
                    <ul class="queueList">
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p><span style="font-size:1.2em">Blinds for lunch room.</span><br/><br />
	                                 During lunch hours the cafeteria room gets extremely hot. The tint does a great deal however does not keep everything out. The most south wall is made of windows. Nomex gets hot. -- 5/31/2016
                                         <br /><br /><span style="color:rgba(102, 255, 102,0.8);">Ken: We have looked into the problem and will be ordering blinds in the coming weeks.</span>
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                            
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                           <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>

                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </article>
            <article class="subQueue">
                <div class="queueHeader"><span class="subTitle">New</span><span class="viewAll">View All</span></div>
                <div class="queueContainer">
                    <ul class="queueList">
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p><span style="font-size:1.2em">Blinds for lunch room.</span><br/><br />
	                                 During lunch hours the cafeteria room gets extremely hot. The tint does a great deal however does not keep everything out. The most south wall is made of windows. Nomex gets hot. -- 5/31/2016
                                         <br /><br /><span style="color:rgba(102, 255, 102,0.8);">Ken: We have looked into the problem and will be ordering blinds in the coming weeks.</span>
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                            
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                           <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>

                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </article>
            <article class="subQueue">
                <div class="queueHeader"><span class="subTitle">Process 3</span><span class="viewAll">View All</span></div>
                <div class="queueContainer">
                    <ul class="queueList">
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p><span style="font-size:1.2em">Blinds for lunch room.</span><br/><br />
	                                 During lunch hours the cafeteria room gets extremely hot. The tint does a great deal however does not keep everything out. The most south wall is made of windows. Nomex gets hot. -- 5/31/2016
                                         <br /><br /><span style="color:rgba(102, 255, 102,0.8);">Ken: We have looked into the problem and will be ordering blinds in the coming weeks.</span>
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                            
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                           <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>

                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                        <li class="queueListItem">
                            <div class="cardFrame">
                                <div class="front">
	                                 <div class="cardHeader">
	 	                                <span class="pinIcon cardIcon"></span>
	 	                                <span class="commentIcon cardIcon" ></span>
	 	                                <span class="voiceIcon cardIcon"></span>
	                                 </div>
	                                 <p>This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.<br/><br/>
	                                 This is a sample vog card to help visualize what a submission looks like.<br/>
	                                 This paragraph contains a very long word: thisisaveryveryveryveryveryverylongword. The long word will break and wrap to the next line.
	                                 </p>
                                </div>
                                <div class="back">Back</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </article>
        </section>
    </div>
    <script type="text/javascript" src="../Scripts/VOG.js"></script>
</asp:Content>

