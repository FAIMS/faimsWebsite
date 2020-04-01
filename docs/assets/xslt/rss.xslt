<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" encoding="utf-8" />
<xsl:template match="/rss">
	<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html &gt;</xsl:text>
	<html>
	<head>
		<xsl:text disable-output-escaping="yes"><![CDATA[
			<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>RSS Feed (Styled)</title>
	<link rel="stylesheet" type="text/css" href="http://localhost:4000/assets/css/styles_feeling_responsive.css" />
	<script src="http://localhost:4000/assets/js/modernizr.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js"></script>
  <script>
    WebFont.load({
      google: {
        families: [ 'Lato:400,700,400italic:latin', 'Volkhov::latin' ]
      }
    });
  </script>

  <noscript>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic|Volkhov' rel='stylesheet' type='text/css' />
  </noscript>

  <meta name="google-site-verification" content="5B-8nVUE8kLQPqBEKgPipvcaQMgXYVm3T3_50vKrFK0" />
	
	<meta name="description" content="FAIMS provides tools for the collection of born-digital field data through to archiving for any research discipline, workflow, ontology, and standard." />

	

	



	
	<link rel="icon" sizes="32x32" href="http://localhost:4000/assets/img/favicon-32x32.png" />




	
	<link rel="icon" sizes="192x192" href="http://localhost:4000/assets/img/android-icon-192x192.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="180x180" href="http://localhost:4000/assets/img/apple-icon-180x180.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="http://localhost:4000/assets/img/apple-icon-152x152.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://localhost:4000/assets/img/apple-icon-144x144.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="http://localhost:4000/assets/img/apple-icon-120x120.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://localhost:4000/assets/img/apple-icon-114x114.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="76x76" href="http://localhost:4000/assets/img/apple-icon-76x76.png" />




	
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://localhost:4000/assets/img/apple-icon-72x72.png" />




	
	<link rel="apple-touch-icon-precomposed" href="http://localhost:4000/assets/img/apple-icon.png" />	




	
	<meta name="msapplication-TileImage" content="http://localhost:4000/assets/img/ms-icon-144x144.png" />




	
	<meta name="msapplication-TileColor" content="#fabb00" />



	<!-- Facebook Optimization -->
	<meta property="og:locale" content="en_EN" />
	
	<meta property="og:title" content="RSS Feed (Styled)" />
	<meta property="og:description" content="FAIMS provides tools for the collection of born-digital field data through to archiving for any research discipline, workflow, ontology, and standard." />
	<meta property="og:url" content="http://localhost:4000//assets/xslt/rss.xslt" />
	<meta property="og:site_name" content="FAIMS Project" />
	

	

	<!-- Search Engine Optimization -->
	

	<link type="text/plain" rel="author" href="http://localhost:4000/humans.txt" />

	

	

	<meta name="twitter:card" content="summary">
	<meta name="twitter:site" content="@site_username">
	<meta name="twitter:creator" content="@creator_username">
	
	  <meta name="twitter:title" content="RSS Feed (Styled)">
	
	
	  <meta name="twitter:url" content="http://localhost:4000/assets/xslt/rss.xslt">
	
	
	  <meta name="twitter:description" content="FAIMS provides tools for the collection of born-digital field data through to archiving for any research discipline, workflow, ontology, and standard.">
	
	
	  <meta name="twitter:image:src" content="http://localhost:4000/images/FAIMS-CYMK-FULL-VECTOR.png">
	

		]]></xsl:text>
	</head>
	<body id="top-of-page">
		<xsl:text disable-output-escaping="yes"><![CDATA[
		
<div id="navigation" class="sticky">
  <nav class="top-bar" role="navigation" data-topbar>
    <ul class="title-area">
      <li class="name">
      <h1 class="show-for-small-only"><a href="http://localhost:4000" class="icon-tree"> FAIMS Project</a></h1>
    </li>
       <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
      <li class="toggle-topbar menu-icon"><a href="#"><span>Navigation</span></a></li>
    </ul>
    <section class="top-bar-section">

      <ul class="right">
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a href="http://localhost:4000/info/">Info</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a href="http://localhost:4000/search/">Search</a></li>

            
            
          
        

              

          
          
            
            
              <li class="divider"></li>
              <li><a href="http://localhost:4000/contact/">Contact</a></li>

            
            
          
        
        
      </ul>

      <ul class="left">
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="http://localhost:4000/about">About</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="http://localhost:4000/about/#About">About Us</a></li>
                    

                      

                      <li><a href="http://localhost:4000/about/#Team">Our Team</a></li>
                    

                      

                      <li><a href="http://localhost:4000/privacy">Privacy Policy</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="http://localhost:4000/#About">Home</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="http://localhost:4000/#Mobile">FAIMS Mobile Platform</a></li>
                    

                      

                      <li><a href="http://localhost:4000/#Services">Online Services</a></li>
                    

                      

                      <li><a href="http://localhost:4000/#Federated">Federated Data Services</a></li>
                    

                      

                      <li><a href="http://localhost:4000/contact">Contact Us</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="http://localhost:4000/faims-mobile">FAIMS Mobile</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="http://localhost:4000/faims-mobile">FAIMS Mobile</a></li>
                    

                      

                      <li><a href="http://localhost:4000/privacy">Privacy Policy</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            
              <li><a href="http://localhost:4000/support/#2">Get Started!</a></li>
              <li class="divider"></li>

            
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="http://support.fedarch.org" target="_blank">Support</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="http://localhost:4000/support/#1">FAQ</a></li>
                    

                      

                      <li><a href="http://localhost:4000/support/#2">Getting Started</a></li>
                    

                      

                      <li><a href="http://localhost:4000/support/#3">Documentation</a></li>
                    

                      

                      <li><a href="http://localhost:4000/support/#Pamphlets">Pamphlets</a></li>
                    

                      

                      <li><a href="http://support.fedarch.org" target="_blank">Get Help</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="http://localhost:4000/research">Research</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="http://localhost:4000/research/#publications">Publications</a></li>
                    

                      

                      <li><a href="http://localhost:4000/research/#posters">Posters</a></li>
                    

                      

                      <li><a href="http://localhost:4000/research/#research">Research and Reports</a></li>
                    

                      

                      <li><a href="http://localhost:4000/research/#workshop">Workshop Presentations</a></li>
                    

                      

                      <li><a href="http://localhost:4000/research/#Links">Other Projects</a></li>
                    

                      

                      <li><a href="http://localhost:4000/grant/">Use us in your Grant</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          

            
            

              <li class="has-dropdown">
                <a href="http://localhost:4000/blog/">Blog</a>

                  <ul class="dropdown">
                    

                      

                      <li><a href="http://localhost:4000/blog/archive/">Blog Archive</a></li>
                    
                  </ul>
                  
              </li>
              <li class="divider"></li>
            
          
        

              

          
          
        

              

          
          
        

              

          
          
        
        
      </ul>
    </section>
  </nav>
</div><!-- /#navigation -->

		

<div id="masthead-no-image-header">
	<div class="row">
		<div class="small-12 columns">
			<a id="logo" href="http://localhost:4000" title="FAIMS Project -- Creating eResearch tools for Field Researchers, Humanities, and the Sciences">
				<img src="http://localhost:4000/assets/img/logo.svg" alt="FAIMS Project -- Creating eResearch tools for Field Researchers, Humanities, and the Sciences">
			</a>
		</div><!-- /.small-12.columns -->
	</div><!-- /.row -->
</div><!-- /#masthead -->








		


<div class="alert-box warning radius text-center"><p>This <a href="https://en.wikipedia.org/wiki/RSS" target="_blank">RSS feed</a> is meant to be used by <a href="https://en.wikipedia.org/wiki/Template:Aggregators" target="_blank">RSS reader applications and websites</a>.</p>
</div>



		]]></xsl:text>
		<header class="t30 row">
	<p class="subheadline"><xsl:value-of select="channel/description" disable-output-escaping="yes" /></p>
	<h1>
		<xsl:element name="a">
			<xsl:attribute name="href">
				<xsl:value-of select="channel/link" />
			</xsl:attribute>
			<xsl:value-of select="channel/title" disable-output-escaping="yes" />
		</xsl:element>
	</h1>
</header>
<ul class="accordion row" data-accordion="">
	<xsl:for-each select="channel/item">
		<li class="accordion-navigation">
			<xsl:variable name="slug-id">
				<xsl:call-template name="slugify">
					<xsl:with-param name="text" select="guid" />
				</xsl:call-template>
			</xsl:variable>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="concat('#', $slug-id)"/></xsl:attribute>
				<xsl:value-of select="title"/>
				<br/>
				<small><xsl:value-of select="pubDate"/></small>
			</xsl:element>
			<xsl:element name="div">
				<xsl:attribute name="id"><xsl:value-of select="$slug-id"/></xsl:attribute>
				<xsl:attribute name="class">content</xsl:attribute>
				<h1>
					<xsl:element name="a">
						<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
						<xsl:value-of select="title"/>
					</xsl:element>
				</h1>
				<xsl:value-of select="description" disable-output-escaping="yes" />
			</xsl:element>
		</li>
	</xsl:for-each>
</ul>

		<xsl:text disable-output-escaping="yes"><![CDATA[
		    <div id="up-to-top" class="row">
      <div class="small-12 columns" style="text-align: right;">
        <a class="iconfont" href="#top-of-page">&#xf108;</a>
      </div><!-- /.small-12.columns -->
    </div><!-- /.row -->


    <footer id="footer-content" class="bg-grau">
      <div id="footer">
        <div class="row">
          <div class="medium-6 large-5 columns">
            <h5 class="shadow-black">About This Site</h5>

            <p class="shadow-black">
              FAIMS provides tools for the collection of born-digital field data through to archiving for any research discipline, workflow, ontology, and standard.
              <a href="http://localhost:4000/info/">More ›</a>
            </p>
          </div><!-- /.large-6.columns -->


          <div class="small-6 medium-3 large-3 large-offset-1 columns">
            
              
                <h5 class="shadow-black">Services</h5>
              
            
              
            
              
            
              
            
              
            
              
            
              
              <ul class="no-bullet shadow-black">
              
                
                  <li >
                    <a href=""  title=""></a>
                  </li>
              
                
                  <li >
                    <a href="/contact/"  title="Contact">Contact</a>
                  </li>
              
                
                  <li >
                    <a href="/feed.xml"  title="Subscribe to RSS Feed">RSS</a>
                  </li>
              
                
                  <li >
                    <a href="https://faimsproject.atlassian.net/wiki" target="_blank"  title="FAIMS Wiki">Wiki</a>
                  </li>
              
                
                  <li >
                    <a href="https://play.google.com/store/apps/details?id=au.edu.faims.mq.fieldresearch2" target="_blank"  title="Install FAIMS on your Android 6+">Install FAIMS 2.5</a>
                  </li>
              
                
                  <li >
                    <a href="/sitemap.xml"  title="Sitemap for Google Webmaster Tools">sitemap.xml</a>
                  </li>
              
              </ul>
          </div><!-- /.large-4.columns -->


          <div class="small-6 medium-3 large-3 columns">
            
              
                <h5 class="shadow-black">Partner Organisations</h5>
              
            
              
            
              
            
              
            
              
            
              
            
              
            
              
            
              
            
              
            
              
            
              
            
              
            
              
            <ul class="no-bullet shadow-black">
            
              
                <li >
                  <a href=""  title=""></a>
                </li>
            
              
                <li >
                  <a href="http://anchist.mq.edu.au" target="_blank"  title="">Macquarie University</a>
                </li>
            
              
                <li >
                  <a href="http://uq.edu.au" target="_blank"  title="">University of Queensland</a>
                </li>
            
              
                <li >
                  <a href="http://unsw.edu.au" target="_blank"  title="">Universty of New South Wales</a>
                </li>
            
              
                <li >
                  <a href="http://latrobe.edu.au" target="_blank"  title="">LaTrobe University</a>
                </li>
            
              
                <li >
                  <a href="http://usyd.edu.au" target="_blank"  title="">University of Sydney</a>
                </li>
            
              
                <li >
                  <a href="http://flinders.edu.au" target="_blank"  title="">Flinders University</a>
                </li>
            
              
                <li >
                  <a href="http://scu.edu.au" target="_blank"  title="">Southern Cross University</a>
                </li>
            
              
                <li >
                  <a href="http://opencontext.org" target="_blank"  title="">Open Context</a>
                </li>
            
              
                <li >
                  <a href="http://digitalantiquity.org" target="_blank"  title="">Digital Antiquity</a>
                </li>
            
              
                <li >
                  <a href="http://archaeologydataservice.ac.uk/" target="_blank"  title="">Archaeology Data Service (UK)</a>
                </li>
            
              
                <li class="network-entypo" >
                  <a href="http://www.arc.gov.au/2015-linkage-projects" target="_blank"  title="Funded by the Australian Research Council (LE140100151)">Australian Research Council</a>
                </li>
            
              
                <li >
                  <a href="http://nectar.org.au" target="_blank"  title="Funded by the National eResearch Collaboration Tools and Resources (eResearch Tools) scheme (RT043)">NeCTAR</a>
                </li>
            
            </ul>
          </div><!-- /.large-3.columns -->
        </div><!-- /.row -->

      </div><!-- /#footer -->


      <div id="subfooter">
        <nav class="row">
          <section id="subfooter-left" class="b30 small-12 medium-6 columns credits">
            <p>
              Site powered by <a href="http://jekyllrb.com/">Jekyll</a>. Theme by <a href="http://phlow.de" alt="Theme created by Phlow">Phlow</a>. 
            </p>
            <p>All content <a href="https://creativecommons.org/licenses/by/4.0/"> <img src="https://www.fedarch.org/images/cc-by.png" alt="CC-BY"/></a> FAIMS Project .</p>
           </section>

          <section id="subfooter-right" class="small-12 medium-6 columns social-icons">
            <ul class="inline-list">
            
              <li><a href="http://github.com/FAIMS" target="_blank" class="icon-github" title="FAIMS Project"></a></li>
            
              <li><a href="https://www.youtube.com/user/FAIMSProject" target="_blank" class="icon-youtube" title="FAIMS Youtube"></a></li>
            
              <li><a href="https://play.google.com/store/apps/details?id=au.edu.faims.mq.fieldresearch2" target="_blank" class="" title="Get it on Google Play"></a></li>
            
            </ul>
          </section>
        </nav>
      </div><!-- /#subfooter -->
    </footer>

		


<script src="http://localhost:4000/assets/js/javascript.min.js"></script>







<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-33640207-1', 'auto');
  ga('set', 'anonymizeIp', true);
  ga('send', 'pageview');

</script>








		]]></xsl:text>
	</body>
	</html>
</xsl:template>
<xsl:template name="slugify">
	<xsl:param name="text" select="''" />
	<xsl:variable name="dodgyChars" select="' ,.#_-!?*:;=+|&amp;/\\'" />
	<xsl:variable name="replacementChar" select="'-----------------'" />
	<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
	<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
	<xsl:variable name="lowercased"><xsl:value-of select="translate( $text, $uppercase, $lowercase )" /></xsl:variable>
	<xsl:variable name="escaped"><xsl:value-of select="translate( $lowercased, $dodgyChars, $replacementChar )" /></xsl:variable>
	<xsl:value-of select="$escaped" />
</xsl:template>
</xsl:stylesheet>
